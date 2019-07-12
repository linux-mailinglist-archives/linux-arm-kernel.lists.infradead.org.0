Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0C466C34
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 14:10:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9FWPqqPQV13SFoCdqKgG8vCBfxAZouuENkKAIlOFHzo=; b=X5dIzrno/6Y957
	yi5k6r+gk/i21YzgajyY1RMjtsLNBcMCLZh611bJdrY7mvsXTztFjM8v2FVbjgC7GP4MnhZJzFzNW
	9wehZ3o3NLUia+0gDjGM0Efkta0Zu3e43QWWjdrjqmc+rPSkSiguSXJhtGq9EaNUEP3o9IUo01xHV
	swD3OC/2Q/VMVJru18gUdoiVa3y63l3iUAInbiFXZKTLIQ0uBtjXUT86lhqIwkZqvSiM0JryEbzRr
	aK8vWaUfsROy7VxgpsOR/nJ5lG9a/72ol2uGWum3VgsFhno1dC5GZEgHvYRTrG8OzbyLSlQngjK/R
	UdyOcDLMDB8/FvtSP2kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hluNm-0007Sd-JD; Fri, 12 Jul 2019 12:10:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hluNe-0007SB-Vq
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 12:10:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2440228;
 Fri, 12 Jul 2019 05:10:26 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DEC153F71F;
 Fri, 12 Jul 2019 05:10:24 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] arm64/vdso: fix flip/flop vdso build bug
To: Naohiro Aota <naohiro.aota@wdc.com>, linux-kernel@vger.kernel.org
References: <20190712101556.17833-1-naohiro.aota@wdc.com>
 <20190712101556.17833-2-naohiro.aota@wdc.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <b3d06dc3-f8be-9744-f45b-608e17a4f76f@arm.com>
Date: Fri, 12 Jul 2019 13:10:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712101556.17833-2-naohiro.aota@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_051027_115821_56F608C9 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Peter Collingbourne <pcc@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/07/2019 11:15, Naohiro Aota wrote:
> Running "make" on an already compiled kernel tree will rebuild the kernel
> even without any modifications:
> 
> $ make ARCH=arm64 CROSS_COMPILE=/usr/bin/aarch64-unknown-linux-gnu-
> arch/arm64/Makefile:58: CROSS_COMPILE_COMPAT not defined or empty, the compat vDSO will not be built
>   CALL    scripts/checksyscalls.sh
>   CALL    scripts/atomic/check-atomics.sh
>   VDSOCHK arch/arm64/kernel/vdso/vdso.so.dbg
>   VDSOSYM include/generated/vdso-offsets.h
>   CHK     include/generated/compile.h
>   CC      arch/arm64/kernel/signal.o
>   CC      arch/arm64/kernel/vdso.o
>   CC      arch/arm64/kernel/signal32.o
>   LD      arch/arm64/kernel/vdso/vdso.so.dbg
>   OBJCOPY arch/arm64/kernel/vdso/vdso.so
>   AS      arch/arm64/kernel/vdso/vdso.o
>   AR      arch/arm64/kernel/vdso/built-in.a
>   AR      arch/arm64/kernel/built-in.a
>   GEN     .version
>   CHK     include/generated/compile.h
>   UPD     include/generated/compile.h
>   CC      init/version.o
>   AR      init/built-in.a
>   LD      vmlinux.o
> 
> This is the same bug fixed in commit 92a4728608a8 ("x86/boot: Fix
> if_changed build flip/flop bug"). We cannot use two "if_changed" in one
> target. Fix this build bug by merging two commands into one function.
> 
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> Fixes: 28b1a824a4f4 ("arm64: vdso: Substitute gettimeofday() with C implementation")
> Signed-off-by: Naohiro Aota <naohiro.aota@wdc.com>

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Tested-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

> ---
>  arch/arm64/kernel/vdso/Makefile | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
> index 4ab863045188..068c614b1231 100644
> --- a/arch/arm64/kernel/vdso/Makefile
> +++ b/arch/arm64/kernel/vdso/Makefile
> @@ -57,8 +57,7 @@ $(obj)/vdso.o : $(obj)/vdso.so
>  
>  # Link rule for the .so file, .lds has to be first
>  $(obj)/vdso.so.dbg: $(obj)/vdso.lds $(obj-vdso) FORCE
> -	$(call if_changed,ld)
> -	$(call if_changed,vdso_check)
> +	$(call if_changed,ld_and_vdso_check)
>  
>  # Strip rule for the .so file
>  $(obj)/%.so: OBJCOPYFLAGS := -S
> @@ -77,6 +76,9 @@ include/generated/vdso-offsets.h: $(obj)/vdso.so.dbg FORCE
>  quiet_cmd_vdsocc = VDSOCC   $@
>        cmd_vdsocc = $(CC) $(a_flags) $(c_flags) -c -o $@ $<
>  
> +quiet_cmd_ld_and_vdso_check = LD      $@
> +      cmd_ld_and_vdso_check = $(cmd_ld); $(cmd_vdso_check)
> +
>  # Install commands for the unstripped file
>  quiet_cmd_vdso_install = INSTALL $@
>        cmd_vdso_install = cp $(obj)/$@.dbg $(MODLIB)/vdso/$@
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
