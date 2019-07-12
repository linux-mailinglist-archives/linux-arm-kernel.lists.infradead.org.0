Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D2D66C2E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 14:09:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EwknB5kRx45/3rNWkyantmodx3p1M84LDyWP4LgsBEc=; b=FI+ukxlResCqph
	x5GUKwqTRNGwb8EiNAY9BU7aPSBMGkMspitg8NS2R/r9Mcr4+eiAURNxsP+DkHrFeqqBeTfqnFr94
	I/ad7peAvKo1SKXbjpU8p18rpC28yATh6WmmRFE8Y+Vj4PBBgQ85cq3bJCe1x0pWJ0/m43xBkSPVs
	+8rqo1y7Teqwi81bgUp88dA1Iuy3gsVz2ZTFUpGKlX49gaKAvmY1xtUNf7PIuQ0DHMHk6LOv/YEhy
	b37zKEu7U8q5sc4pada1040i3Yi0oopOccwnUysObKRSk1+iIS+yiev/Y3RbPchl7pDfChoRqemyn
	lBp5j+3rHzwrsF8ZEQPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hluNB-0005yd-2A; Fri, 12 Jul 2019 12:09:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hluN3-0005y4-EF
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 12:09:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7AAD928;
 Fri, 12 Jul 2019 05:09:48 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2FE9C3F71F;
 Fri, 12 Jul 2019 05:09:47 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] x86/vdso: fix flip/flop vdso build bug
To: Naohiro Aota <naohiro.aota@wdc.com>, linux-kernel@vger.kernel.org
References: <20190712101556.17833-1-naohiro.aota@wdc.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <55d3bd43-d703-83f2-1258-6be9df8330b6@arm.com>
Date: Fri, 12 Jul 2019 13:09:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712101556.17833-1-naohiro.aota@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_050949_566557_55940967 
X-CRM114-Status: GOOD (  17.84  )
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

Hi Naohiro,

I was working on a similar patch set, but I just noticed you posted this one.
Thanks for that.

In reply to your series I am adding similar fix for arm64 compat.

On 12/07/2019 11:15, Naohiro Aota wrote:
> Two consecutive "make" on an already compiled kernel tree will show
> different behavior:
> 
> $ make
>   CALL    scripts/checksyscalls.sh
>   CALL    scripts/atomic/check-atomics.sh
>   DESCEND  objtool
>   CHK     include/generated/compile.h
>   VDSOCHK arch/x86/entry/vdso/vdso64.so.dbg
>   VDSOCHK arch/x86/entry/vdso/vdso32.so.dbg
> Kernel: arch/x86/boot/bzImage is ready  (#3)
>   Building modules, stage 2.
>   MODPOST 12 modules
> 
> $ make
> make
>   CALL    scripts/checksyscalls.sh
>   CALL    scripts/atomic/check-atomics.sh
>   DESCEND  objtool
>   CHK     include/generated/compile.h
>   VDSO    arch/x86/entry/vdso/vdso64.so.dbg
>   OBJCOPY arch/x86/entry/vdso/vdso64.so
>   VDSO2C  arch/x86/entry/vdso/vdso-image-64.c
>   CC      arch/x86/entry/vdso/vdso-image-64.o
>   VDSO    arch/x86/entry/vdso/vdso32.so.dbg
>   OBJCOPY arch/x86/entry/vdso/vdso32.so
>   VDSO2C  arch/x86/entry/vdso/vdso-image-32.c
>   CC      arch/x86/entry/vdso/vdso-image-32.o
>   AR      arch/x86/entry/vdso/built-in.a
>   AR      arch/x86/entry/built-in.a
>   AR      arch/x86/built-in.a
>   GEN     .version
>   CHK     include/generated/compile.h
>   UPD     include/generated/compile.h
>   CC      init/version.o
>   AR      init/built-in.a
>   LD      vmlinux.o
> <snip>
> 
> This is causing "LD vmlinux" once every two times even without any
> modifications. This is the same bug fixed in commit 92a4728608a8
> ("x86/boot: Fix if_changed build flip/flop bug"). We cannot use two
> "if_changed" in one target. Fix this build bug by merging two commands into
> one function.
> 
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> Fixes: 7ac870747988 ("x86/vdso: Switch to generic vDSO implementation")
> Signed-off-by: Naohiro Aota <naohiro.aota@wdc.com>

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Tested-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

> ---
>  arch/x86/entry/vdso/Makefile | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/x86/entry/vdso/Makefile b/arch/x86/entry/vdso/Makefile
> index 39106111be86..34773395139a 100644
> --- a/arch/x86/entry/vdso/Makefile
> +++ b/arch/x86/entry/vdso/Makefile
> @@ -56,8 +56,7 @@ VDSO_LDFLAGS_vdso.lds = -m elf_x86_64 -soname linux-vdso.so.1 --no-undefined \
>  			-z max-page-size=4096
>  
>  $(obj)/vdso64.so.dbg: $(obj)/vdso.lds $(vobjs) FORCE
> -	$(call if_changed,vdso)
> -	$(call if_changed,vdso_check)
> +	$(call if_changed,vdso_and_check)
>  
>  HOST_EXTRACFLAGS += -I$(srctree)/tools/include -I$(srctree)/include/uapi -I$(srctree)/arch/$(SUBARCH)/include/uapi
>  hostprogs-y			+= vdso2c
> @@ -127,8 +126,7 @@ $(obj)/%.so: $(obj)/%.so.dbg FORCE
>  	$(call if_changed,objcopy)
>  
>  $(obj)/vdsox32.so.dbg: $(obj)/vdsox32.lds $(vobjx32s) FORCE
> -	$(call if_changed,vdso)
> -	$(call if_changed,vdso_check)
> +	$(call if_changed,vdso_and_check)
>  
>  CPPFLAGS_vdso32.lds = $(CPPFLAGS_vdso.lds)
>  VDSO_LDFLAGS_vdso32.lds = -m elf_i386 -soname linux-gate.so.1
> @@ -167,8 +165,7 @@ $(obj)/vdso32.so.dbg: FORCE \
>  		      $(obj)/vdso32/note.o \
>  		      $(obj)/vdso32/system_call.o \
>  		      $(obj)/vdso32/sigreturn.o
> -	$(call if_changed,vdso)
> -	$(call if_changed,vdso_check)
> +	$(call if_changed,vdso_and_check)
>  
>  #
>  # The DSO images are built using a special linker script.
> @@ -184,6 +181,9 @@ VDSO_LDFLAGS = -shared $(call ld-option, --hash-style=both) \
>  	-Bsymbolic
>  GCOV_PROFILE := n
>  
> +quiet_cmd_vdso_and_check = VDSO    $@
> +      cmd_vdso_and_check = $(cmd_vdso); $(cmd_vdso_check)
> +
>  #
>  # Install the unstripped copies of vdso*.so.  If our toolchain supports
>  # build-id, install .build-id links as well.
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
