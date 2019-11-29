Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A6510DAFE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 22:33:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8XhJ7n2xbemqOgJm8ahtz/U23SSOGFo1npHqoqd9iYw=; b=KfjvIt1e7/MDGM
	aaJWAj22lrKRyqx1u4WFODdmRbdjSmx0yG8/q6yT2H+lNQEbLpX94/NTiMPCtgORH4VMw9SOIoC+d
	XnkpGR05Ho4nqM5TYZFVCa+7DMJAq7Bc2YxRBdVFSK29JrAOTPNef/3j0RJzjYnLXLa7PAl0VQxqY
	OKSHPw2wH5fps9C4fTpc5bAYKHlJEQ6w//V1FwsqIQ6MBb/hglAQ+1+efVZZb9kEfkKo8p135qn41
	eCXsNELtdDPhaLDgj2BuBK0WyY9DwFX8i7tkIK0hotOLEdAK5xNkFcpNz0OclP6NFzm0Fr1ouCDDp
	rum9lNWKfZFaSCDE2JyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iantU-0006EH-S5; Fri, 29 Nov 2019 21:33:40 +0000
Received: from pb-smtp20.pobox.com ([173.228.157.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iantH-0006Dt-EI
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 21:33:29 +0000
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id E7AA594B11;
 Fri, 29 Nov 2019 16:33:21 -0500 (EST)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
 :cc:subject:in-reply-to:message-id:references:mime-version
 :content-type; s=sasl; bh=qsjoBcgCxyaID9uJZoXhE7gN8Qg=; b=fJLISc
 TjHDSD+xsDF7WgIN09KBQuxcjL2q2WDxtjlsKM8Fy0bSe/QuB8fih8zzQyw+xh3R
 DgnVQWJQ5mpSq5tXB6PwrBOGDjrXc4+2LBWoBN12nmFkGYninZDaFnR2wXqSQG1y
 Yed3wiffysE99y78dqQzOGhcpQY6yMvLFKeEo=
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id CD3B694B10;
 Fri, 29 Nov 2019 16:33:21 -0500 (EST)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=date:from:to:cc:subject:in-reply-to:message-id:references:mime-version:content-type;
 s=2016-12.pbsmtp; bh=7emamvWS9iC1jKWQznUYgA1WdYW41jXGMGz2oY925AQ=;
 b=pZw+3rec2kggzCeUe1aDsbNeZvMmmxD/Z3NNp2tZRa5P2lFgQ/RkKwSliuLBNHB19ndlPDnwVSLUqNHeOIG41azWE8DzmPkCRV8u6GxNO8kEQfum3e2s1aqZI6a75mct+kBuSGcsEANCBNlAeQx/W0tkUPAL/hKEjA//lfAC1vc=
Received: from yoda.home (unknown [24.203.50.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp20.pobox.com (Postfix) with ESMTPSA id C152294B0F;
 Fri, 29 Nov 2019 16:33:18 -0500 (EST)
 (envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
 by yoda.home (Postfix) with ESMTPSA id E396D2DA01D7;
 Fri, 29 Nov 2019 16:33:16 -0500 (EST)
Date: Fri, 29 Nov 2019 16:33:16 -0500 (EST)
From: Nicolas Pitre <nico@fluxnic.net>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] arm: explicitly place .fixup in .text
In-Reply-To: <20191122185522.20582-1-ndesaulniers@google.com>
Message-ID: <nycvar.YSQ.7.76.1911291614480.8537@knanqh.ubzr>
References: <20191122185522.20582-1-ndesaulniers@google.com>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-Pobox-Relay-ID: DC23B8F4-12EF-11EA-9534-B0405B776F7B-78420484!pb-smtp20.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_133327_560333_8B9349F9 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [173.228.157.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 manojgupta@google.com, natechancellor@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 22 Nov 2019, Nick Desaulniers wrote:

> From: Kees Cook <keescook@chromium.org>
> 
> There's an implicit dependency on the section ordering of the orphaned
> section .fixup that can break arm_copy_from_user if the linker places
> the .fixup section before the .text section. Since .fixup is not
> explicitly placed in the existing ARM linker scripts, the linker is free
> to order it anywhere with respect to the rest of the sections.
> 
> Multiple users from different distros (Raspbian, CrOS) reported kernel
> panics executing seccomp() syscall with Linux kernels linked with LLD.
> 
> Documentation/x86/exception-tables.rst alludes to the ordering
> dependency. The relevant quote:
> 
> ```
> NOTE:
> Due to the way that the exception table is built and needs to be ordered,
> only use exceptions for code in the .text section.  Any other section
> will cause the exception table to not be sorted correctly, and the
> exceptions will fail.
> 
> Things changed when 64-bit support was added to x86 Linux. Rather than
> double the size of the exception table by expanding the two entries
> from 32-bits to 64 bits, a clever trick was used to store addresses
> as relative offsets from the table itself. The assembly code changed
> from::
> 
>     .long 1b,3b
>   to:
>           .long (from) - .
>           .long (to) - .
> 
> and the C-code that uses these values converts back to absolute addresses
> like this::
> 
>         ex_insn_addr(const struct exception_table_entry *x)
>         {
>                 return (unsigned long)&x->insn + x->insn;
>         }
> ```
> 
> Since the addresses stored in the __ex_table are RELATIVE offsets and
> not ABSOLUTE addresses, ordering the fixup anywhere that's not
> immediately preceding .text causes the relative offset of the faulting
> instruction to be wrong, causing the wrong (or no) address of the fixup
> handler to looked up in __ex_table.

This explanation makes no sense.

The above is valid only when ARCH_HAS_RELATIVE_EXTABLE is defined. On 
ARM32 it is not, nor would it make sense to be.


Nicolas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
