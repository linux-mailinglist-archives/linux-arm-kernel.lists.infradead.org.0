Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CDF41749E5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 23:59:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=33nR1cxBaVgMOZV6tXBhwv24A/iOcYu/IpnIIKkoENE=; b=THtGrpL1Bfc4Al
	ijbx5AfBjbOBn7L2iVI2gFPbSITb3kqCUbzdhen5ePzwHOSgepyNYTPzD5KgtMXADJ3Bu8pi6J0ys
	9YLH2mk8mQ3dsTqMnTMSMwIXNQNIyhROvFGSwvA0mN0ZYUtAlkuJ/hbXPb36x3Dqr/cZU6FbJx328
	CqeefPi/fZQSKHos34NvMZaNy36qV/hYPQSWaT0cTP5lb0iOjPyNQK3sqnKcQoUf2gIyVWzBttIGQ
	h+tQBhNoCJPwl9rVtfGAXcTqiUIH9PyYTuFjC7tEmbC6/1MX602Bj2qFWx8kdd0lZNS26m5YPeusD
	uhZ+Nf2X1+bK991u4kYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8B4R-0006Dt-Om; Sat, 29 Feb 2020 22:58:55 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8B4I-0006D7-Mz
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 22:58:49 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 41C925C181D;
 Sat, 29 Feb 2020 23:58:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1583017120;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1bNoDWsqYYisEb5EWkUaz01QS0co4YAIEIGe5+hEj+U=;
 b=A139eRSyQyNXPVTIsJ3cfUjNzmrFsFsTKyMDqp6QhZE4kOTffHOuo2ZbE9wlSFDhc2ico9
 4dnIaiM2FXpRxxeJp711+7dntKFuESDuS9pXPO7aLg5UNAWX5jdDpqzZMIDAjS8MMV+gnC
 8BRLBArPg8ArpQ7NLYHkC2BMk03vWp8=
MIME-Version: 1.0
Date: Sat, 29 Feb 2020 23:58:40 +0100
From: Stefan Agner <stefan@agner.ch>
To: linux@armlinux.org.uk
Subject: Re: [PATCH] ARM: use assembly mnemonics for VFP register access
In-Reply-To: <8bb16ac4b15a7e28a8e819ef9aae20bfc3f75fbc.1582266841.git.stefan@agner.ch>
References: <8bb16ac4b15a7e28a8e819ef9aae20bfc3f75fbc.1582266841.git.stefan@agner.ch>
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <4366c303e707a43071d5bc54f00cce01@agner.ch>
X-Sender: stefan@agner.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_145847_197735_1E3B8633 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: arnd@arndb.de, linux-kernel@vger.kernel.org, jiancai@google.com,
 clang-built-linux@googlegroups.com, manojgupta@google.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-21 07:34, Stefan Agner wrote:
> Clang's integrated assembler does not allow to to use the mcr
> instruction to access floating point co-processor registers:
> arch/arm/vfp/vfpmodule.c:342:2: error: invalid operand for instruction
>         fmxr(FPEXC, fpexc &
> ~(FPEXC_EX|FPEXC_DEX|FPEXC_FP2V|FPEXC_VV|FPEXC_TRAP_MASK));
>         ^
> arch/arm/vfp/vfpinstr.h:79:6: note: expanded from macro 'fmxr'
>         asm("mcr p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmxr   "
> #_vfp_ ", %0" \
>             ^
> <inline asm>:1:6: note: instantiated into assembly here
>         mcr p10, 7, r0, cr8, cr0, 0 @ fmxr      FPEXC, r0
>             ^
> 
> The GNU assembler supports the .fpu directive at least since 2.17 (when
> documentation has been added). Since Linux requires binutils 2.21 it is
> safe to use .fpu directive. Use the .fpu directive and mnemonics for VFP
> register access.
> 
> This allows to build vfpmodule.c with Clang and its integrated assembler.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/905
> Signed-off-by: Stefan Agner <stefan@agner.ch>
> ---
>  arch/arm/vfp/vfpinstr.h | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/vfp/vfpinstr.h b/arch/arm/vfp/vfpinstr.h
> index 38dc154e39ff..799ccf065406 100644
> --- a/arch/arm/vfp/vfpinstr.h
> +++ b/arch/arm/vfp/vfpinstr.h
> @@ -62,21 +62,17 @@
>  #define FPSCR_C (1 << 29)
>  #define FPSCR_V	(1 << 28)
>  
> -/*
> - * Since we aren't building with -mfpu=vfp, we need to code
> - * these instructions using their MRC/MCR equivalents.
> - */
> -#define vfpreg(_vfp_) #_vfp_
> -
>  #define fmrx(_vfp_) ({			\
>  	u32 __v;			\
> -	asm("mrc p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmrx	%0, " #_vfp_	\
> +	asm(".fpu	vfpv2\n"	\
> +	    "vmrs	%0, " #_vfp_	\
>  	    : "=r" (__v) : : "cc");	\
>  	__v;				\
>   })
>  
>  #define fmxr(_vfp_,_var_)		\
> -	asm("mcr p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmxr	" #_vfp_ ", %0"	\
> +	asm(".fpu	vfpv2\n"	\
> +	    "vmsr	" #_vfp_ ", %0"	\
>  	   : : "r" (_var_) : "cc")
>  
>  u32 vfp_single_cpdo(u32 inst, u32 fpscr);

I just found out that this fails with binutils 2.23.1. Since we support
binutils back to 2.21 I guess that is not OK..?

  CC      arch/arm/vfp/vfpmodule.o
/tmp/cc2Vcw98.s: Assembler messages:
/tmp/cc2Vcw98.s:920: Error: operand 1 must be a VFP extension System
Register -- `vmrs r6,FPINST'
/tmp/cc2Vcw98.s:948: Error: operand 1 must be a VFP extension System
Register -- `vmrs r6,FPINST2'

Looking into binutils history reveals that FPINST/FPINST2 has been
allowed with 16d02dc907c5717b5f47076bb90ae3795e73b59f
("gas/config/tc-arm.c (do_vmrs): Accept all control registers") which
made it into binutils 2.24...

I don't have a particular good idea how to make this work for Clang and
GCC other than a some ifdef's...

--
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
