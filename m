Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F016EC80
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 00:26:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dgunl+/9sDEF3xuA4ek3bsf303nQvAU6yYeN6G+b10w=; b=T797kHfCKtqA/28u+3LN/T1oy
	Q5XrqvDjsmMoxtnc3a3atg95KkVnFWdv20Ky0jysnjHctyT+no11zwXj7NKj5LocU4LgbT5NhQ6In
	boKV1pG6NpM1NVtUgVEUfvjSkCm1BTw8hoK5RRJQzpfWOYQk2vxWcf7O1maA4wVeNl8D6K8KlK+HD
	XezlWPwMj02rAbsdz6HHt7AFKJ+WaskUdWzIAthQEvcF3ejepuZQ7Q3dL7MThx/J7SaVDQJFnmd7W
	rf1ngJhoFd8pktwPU6r5GRf21p49LRrBmbBHLLlxBDYSq5AdPlqaB4z+iApOv4irW9HTlDPe0iM17
	iwzNax0KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hobKQ-0000pc-NQ; Fri, 19 Jul 2019 22:26:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hobK4-0000p5-W0
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 22:25:54 +0000
Received: from [172.20.8.67] (fs96f9c61d.tkyc509.ap.nuro.jp [150.249.198.29])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 22F662089C;
 Fri, 19 Jul 2019 22:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563575151;
 bh=8BWoO3DvmgmHko8VDYdzETwa/D8Uvwa79H4eUTG3YyA=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=2d21roDptAiEMN+/t1Tn1VqLwtXAzfhagrwnPWLFbYgAsIvJrwHrLthScReql/x37
 AR35y/eDLcde0w6tvfWPiYxJdZI5Xmb/Wqr3rItqjuiTHCL3Wa/X60g/Pf/v1glDZV
 /OWIM04HKP6cE2E1wkO2gqhjsIBpm7gFFRxIlREI=
Subject: Re: [PATCH v10 8/9] kselftest: save-and-restore errno to allow for %m
 formatting
To: Aleksa Sarai <cyphar@cyphar.com>, Al Viro <viro@zeniv.linux.org.uk>,
 Jeff Layton <jlayton@kernel.org>, "J. Bruce Fields" <bfields@fieldses.org>,
 Arnd Bergmann <arnd@arndb.de>, David Howells <dhowells@redhat.com>,
 Shuah Khan <skhan@linuxfoundation.org>
References: <20190719164225.27083-1-cyphar@cyphar.com>
 <20190719164225.27083-9-cyphar@cyphar.com>
From: shuah <shuah@kernel.org>
Message-ID: <b32d95a1-8a49-65ef-4ddd-fe86a7ca01d5@kernel.org>
Date: Fri, 19 Jul 2019 16:25:46 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190719164225.27083-9-cyphar@cyphar.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_152553_081447_B764AD1A 
X-CRM114-Status: GOOD (  20.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org,
 shuah <shuah@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Tycho Andersen <tycho@tycho.ws>,
 Aleksa Sarai <asarai@suse.de>, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 linuxppc-dev@lists.ozlabs.org, linux-m68k@lists.linux-m68k.org,
 Andy Lutomirski <luto@kernel.org>, David Drysdale <drysdale@google.com>,
 Christian Brauner <christian@brauner.io>, linux-parisc@vger.kernel.org,
 linux-api@vger.kernel.org, Chanho Min <chanho.min@lge.com>,
 linux-kernel@vger.kernel.org, Eric Biederman <ebiederm@xmission.com>,
 linux-alpha@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/19/19 10:42 AM, Aleksa Sarai wrote:
> Previously, using "%m" in a ksft_* format string can result in strange
> output because the errno value wasn't saved before calling other libc
> functions. The solution is to simply save and restore the errno before
> we format the user-supplied format string.
> 
> Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
> ---
>   tools/testing/selftests/kselftest.h | 15 +++++++++++++++
>   1 file changed, 15 insertions(+)
> 
> diff --git a/tools/testing/selftests/kselftest.h b/tools/testing/selftests/kselftest.h
> index ec15c4f6af55..0ac49d91a260 100644
> --- a/tools/testing/selftests/kselftest.h
> +++ b/tools/testing/selftests/kselftest.h
> @@ -10,6 +10,7 @@
>   #ifndef __KSELFTEST_H
>   #define __KSELFTEST_H
>   
> +#include <errno.h>
>   #include <stdlib.h>
>   #include <unistd.h>
>   #include <stdarg.h>
> @@ -81,58 +82,68 @@ static inline void ksft_print_cnts(void)
>   
>   static inline void ksft_print_msg(const char *msg, ...)
>   {
> +	int saved_errno = errno;
>   	va_list args;
>   
>   	va_start(args, msg);
>   	printf("# ");
> +	errno = saved_errno;
>   	vprintf(msg, args);
>   	va_end(args);
>   }
>   
>   static inline void ksft_test_result_pass(const char *msg, ...)
>   {
> +	int saved_errno = errno;
>   	va_list args;
>   
>   	ksft_cnt.ksft_pass++;
>   
>   	va_start(args, msg);
>   	printf("ok %d ", ksft_test_num());
> +	errno = saved_errno;
>   	vprintf(msg, args);
>   	va_end(args);
>   }
>   
>   static inline void ksft_test_result_fail(const char *msg, ...)
>   {
> +	int saved_errno = errno;
>   	va_list args;
>   
>   	ksft_cnt.ksft_fail++;
>   
>   	va_start(args, msg);
>   	printf("not ok %d ", ksft_test_num());
> +	errno = saved_errno;
>   	vprintf(msg, args);
>   	va_end(args);
>   }
>   
>   static inline void ksft_test_result_skip(const char *msg, ...)
>   {
> +	int saved_errno = errno;
>   	va_list args;
>   
>   	ksft_cnt.ksft_xskip++;
>   
>   	va_start(args, msg);
>   	printf("not ok %d # SKIP ", ksft_test_num());
> +	errno = saved_errno;
>   	vprintf(msg, args);
>   	va_end(args);
>   }
>   
>   static inline void ksft_test_result_error(const char *msg, ...)
>   {
> +	int saved_errno = errno;
>   	va_list args;
>   
>   	ksft_cnt.ksft_error++;
>   
>   	va_start(args, msg);
>   	printf("not ok %d # error ", ksft_test_num());
> +	errno = saved_errno;
>   	vprintf(msg, args);
>   	va_end(args);
>   }
> @@ -152,10 +163,12 @@ static inline int ksft_exit_fail(void)
>   
>   static inline int ksft_exit_fail_msg(const char *msg, ...)
>   {
> +	int saved_errno = errno;
>   	va_list args;
>   
>   	va_start(args, msg);
>   	printf("Bail out! ");
> +	errno = saved_errno;
>   	vprintf(msg, args);
>   	va_end(args);
>   
> @@ -178,10 +191,12 @@ static inline int ksft_exit_xpass(void)
>   static inline int ksft_exit_skip(const char *msg, ...)
>   {
>   	if (msg) {
> +		int saved_errno = errno;
>   		va_list args;
>   
>   		va_start(args, msg);
>   		printf("not ok %d # SKIP ", 1 + ksft_test_num());
> +		errno = saved_errno;
>   		vprintf(msg, args);
>   		va_end(args);
>   	} else {
> 

Hi Aleksa,

Can you send this patch separate from the patch series. I will apply
this as bug fix to 5.3-rc2 or rc3.

This isn't part of this series anyway and I would like to get this in
right away.

thanks,
-- Shuah

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
