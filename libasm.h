/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cjani <cjani@studen.21-school.ru>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/10/25 12:50:21 by flexer            #+#    #+#             */
/*   Updated: 2020/10/31 20:37:52 by cjani            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef _LIBASM_H_
# define _LIBASM_H_

# include <unistd.h>
# define _WRITE 0x2000004
# define _READ 0x2000003

int		ft_strcmp(const char *s1, const char *s2);
char 	*ft_strdup(const char *s);
char	*ft_strcpy(char *dest, const char *src);
size_t	ft_strlen(const char *s);
ssize_t	ft_write(int fildes, const void *buf, size_t nbyte);
ssize_t	ft_read(int fildes, const void *buf, size_t nbyte);

#endif