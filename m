Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D8F31B04
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 11:38:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EBLKdOlwqLB3Pp+Cy2PjlX3UrmYxG6OfrnzS6TfouMs=; b=iPmU8RNQ+RPIAU
	cNMF3Nzt8f8bd3AHRyHdLil8vNXjZpO71qSCaqpN3RoqUJ9heqHaPv6xW45GAu7ys63Xu50EIAgsj
	w12kvr9hfnQWlDaUQm8vlYPLPH3ez8HXJdvppXJlhAdUvt2C0l3in5ioZTc1wfGNs0m4EV2eE+uvB
	NLV1ahjenAlnAtVQVZ/576jAj2z77XitfivqGV8CW1Nl2wFK2IS2UV1jEAhjYT1rerCHgNUBdBUf3
	BGEpWZAUH5XU+xGd3RXnJHK3/3y61zhjKbirUdsxIAenv6VUx+InXlWj0cmWPSgN6snV1IHBQAffU
	Gg23p0qJbvgmYU6pxXeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX0TM-0008Fw-C2; Sat, 01 Jun 2019 09:38:44 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX0TF-0008Fa-8y
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 09:38:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0B916341;
 Sat,  1 Jun 2019 02:38:36 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 E630B3F5AF; Sat,  1 Jun 2019 02:38:32 -0700 (PDT)
Date: Sat, 1 Jun 2019 10:38:30 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v6 15/19] arm64: Add vDSO compat support
Message-ID: <20190601093830.GA13589@arrakis.emea.arm.com>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-16-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530141531.43462-16-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_023837_329820_BDFBCFEA 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Huw Davies <huw@codeweavers.com>,
 Shuah Khan <shuah@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-mips@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, linux-kselftest@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 03:15:27PM +0100, Vincenzo Frascino wrote:
> Add vDSO compat support to the arm64 building system.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  arch/arm64/Kconfig         |  1 +
>  arch/arm64/Makefile        | 23 +++++++++++++++++++++--
>  arch/arm64/kernel/Makefile |  6 +++++-
>  3 files changed, 27 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 952c9f8cf3b8..3e1d4f8347f4 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -108,6 +108,7 @@ config ARM64
>  	select GENERIC_STRNLEN_USER
>  	select GENERIC_TIME_VSYSCALL
>  	select GENERIC_GETTIMEOFDAY
> +	select GENERIC_COMPAT_VDSO if !CPU_BIG_ENDIAN

This select needs to also depend on COMPAT (or rather be selected from
the COMPAT menuconfig), otherwise, trying to build this series with 64K
pages where COMPAT is disabled, I get:

  VDSOC_GTD   arch/arm64/kernel/vdso32/vgettimeofday.o
  VDSOA   arch/arm64/kernel/vdso32/sigreturn.o
arch/arm64/kernel/vdso32/sigreturn.S: Assembler messages:
arch/arm64/kernel/vdso32/sigreturn.S:25: Error: expected #constant
arch/arm64/kernel/vdso32/sigreturn.S:35: Error: expected #constant
arch/arm64/kernel/vdso32/sigreturn.S:46: Error: expected #constant
arch/arm64/kernel/vdso32/sigreturn.S:56: Error: expected #constant
arch/arm64/kernel/vdso32/sigreturn.S:28: Error: undefined symbol __NR_compat_sigreturn used as an immediate value
arch/arm64/kernel/vdso32/sigreturn.S:38: Error: undefined symbol __NR_compat_rt_sigreturn used as an immediate value
make[2]: *** [arch/arm64/kernel/vdso32/Makefile:154: arch/arm64/kernel/vdso32/sigreturn.o] Error 1
make[2]: *** Waiting for unfinished jobs....
In file included from lib/vdso/gettimeofday.c:25:0,
                 from <command-line>:0:
arch/arm64/include/asm/vdso/compat_gettimeofday.h: In function 'gettimeofday_fallback':
arch/arm64/include/asm/vdso/compat_gettimeofday.h:22:31: error: '__NR_compat_gettimeofday' undeclared (first use in this function); did you mean '__NR_gettimeofday'?
  register long nr asm("r7") = __NR_compat_gettimeofday;
                               ^~~~~~~~~~~~~~~~~~~~~~~~
                               __NR_gettimeofday
arch/arm64/include/asm/vdso/compat_gettimeofday.h:22:31: note: each undeclared identifier is reported only once for each function it appears in
arch/arm64/include/asm/vdso/compat_gettimeofday.h: In function 'clock_gettime_fallback':
arch/arm64/include/asm/vdso/compat_gettimeofday.h:40:31: error: '__NR_compat_clock_gettime64' undeclared (first use in this function); did you mean '__NR_clock_gettime'?
  register long nr asm("r7") = __NR_compat_clock_gettime64;
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~
                               __NR_clock_gettime
arch/arm64/include/asm/vdso/compat_gettimeofday.h: In function 'clock_getres_fallback':
arch/arm64/include/asm/vdso/compat_gettimeofday.h:58:31: error: '__NR_compat_clock_getres_time64' undeclared (first use in this function); did you mean '__NR_clock_gettime'?
  register long nr asm("r7") = __NR_compat_clock_getres_time64;
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                               __NR_clock_gettime
arch/arm64/kernel/vdso32/vgettimeofday.c: In function '__vdso_clock_gettime':
arch/arm64/kernel/vdso32/vgettimeofday.c:15:17: error: 'TASK_SIZE_32' undeclared (first use in this function); did you mean 'TASK_SIZE_64'?
  if ((u32)ts >= TASK_SIZE_32)
                 ^~~~~~~~~~~~
                 TASK_SIZE_64
arch/arm64/kernel/vdso32/vgettimeofday.c: In function '__vdso_clock_gettime64':
arch/arm64/kernel/vdso32/vgettimeofday.c:25:17: error: 'TASK_SIZE_32' undeclared (first use in this function); did you mean 'TASK_SIZE_64'?
  if ((u32)ts >= TASK_SIZE_32)
                 ^~~~~~~~~~~~
                 TASK_SIZE_64
arch/arm64/kernel/vdso32/vgettimeofday.c: In function '__vdso_clock_getres':
arch/arm64/kernel/vdso32/vgettimeofday.c:41:18: error: 'TASK_SIZE_32' undeclared (first use in this function); did you mean 'TASK_SIZE_64'?
  if ((u32)res >= TASK_SIZE_32)
                  ^~~~~~~~~~~~
                  TASK_SIZE_64
make[2]: *** [arch/arm64/kernel/vdso32/Makefile:152: arch/arm64/kernel/vdso32/vgettimeofday.o] Error 1
make[1]: *** [arch/arm64/Makefile:182: vdso_prepare] Error 2
make: *** [Makefile:179: sub-make] Error 2

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
