Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5251A6BE8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 20:08:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tTxEIKGcJKAO4mZbyV50HTqJYk0l/1n2M8ScsLPUFEI=; b=scfrreVoLA4LuK
	gw0jdZr99xrghgfeRlhznb5JXKWDJh4QHrn6q7DAuLDJDO6oguN8fcqpRYk9PeGRJI+77HbdgI1Eq
	4U7f/qVXrx2jC93CG1K607JZowWFUhHLd+OWwthQZ7Gh+H79uM7e/b00n4tgRAE9ypcdOGm1NyhsR
	HKt1YPNJQKbA0Qfu2EyKq8EUXhf6XNMFmIba35xUf4WddXPC5l9O3bJ1Pop9qZpjxCpvnU5YXJoD9
	Ed902841zvePunKHbvM6Tb1SxPDvENAv8jRpqlI3o/pQ3ssDbgFjnSdSI/OLXlj8ZSrSS3Dw80Z7J
	aQtxxhom9B8hn5quGKaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO3V0-0001I0-GT; Mon, 13 Apr 2020 18:07:58 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO3Ut-0001Hd-DB
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 18:07:53 +0000
Received: by mail-pf1-x441.google.com with SMTP id c138so4866173pfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 11:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XGx7qFwHLiVd4V1d68uSwgIpjNRKonWDkoXdUUpJdmU=;
 b=MsUxuzO8lWza4IDAgKmbcE58BeSxidJVPD8d41B6WQkHuYQiWuox58R4hrZyfYImH+
 aG62uSXK90iOIw6wd/xPilPwCkapK+hPKP4pFn2CfMlIMYGiCND/S1J0Yz5/uj9vWZQb
 +ANK8Thwg3DqA4R5z5sF3HQGcwVTb0rUo/pFXkUlb0Tqp2xl8GlvruWuLqK6sveKzvOW
 cYbOgQhjtNcauJqQtCifBfn8eB+bn0G0UVG00DSR6GDHK9UMn+wHcd3K0TYWEfysj7lE
 QmdDQ02RPvWbZA6bOpV62Sd/ZLNdk4hQ8NCmKN5QRVwhadATPJocCJgmmEtl2lfWLwZr
 m6Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XGx7qFwHLiVd4V1d68uSwgIpjNRKonWDkoXdUUpJdmU=;
 b=OHQtAyAP0tAzMKc+LprSWdDKxf6NnoGh+fVak7TjA+Mk9DBJ/RxBNut8ktau251uBM
 SjiswgmdcB9CJu0G29DYrV5fqA7BaLkkcWZNblVsdktjhWFO2LE39zEZqL6IkcB8aAWT
 +vt6uLtqex/NQgvFxjF3YzO+FybNNHKoi0MHfQ3E86y1Uj+L7BtzVWcOktkF+2aN7XZ7
 RMZ5BJiARBV8Fut48chzJlonGyk7NPJK2MfJmjycMQVQISEA87LBPVEugYp0O1aSDHou
 TJJMcqLStzj4oiXiX8NfdcvxCGT5lZjV+xO6eDZS/7vhZTDdwK08Zc51naYRGNELlaKg
 /8Pw==
X-Gm-Message-State: AGi0Pub1kIfeE00msUinAnnX8JJZjBZpRWUn8acS1ztdSPGoHdsVJ2p5
 v2e2V3im3u+pFtDQrT39Pt0Dcwo5J5Km+Gp0gr8RmWOMuPk=
X-Google-Smtp-Source: APiQypL5Itwso83J6130zSW1Vy0Vx1a7F1inJTmOwekbLOse4lUtOAVtXjT8lXgdWc+kouQdtpbj0NenWGIEDGqpSkQ=
X-Received: by 2002:a63:6604:: with SMTP id a4mr17243102pgc.381.1586801268806; 
 Mon, 13 Apr 2020 11:07:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200413033811.75074-1-maskray@google.com>
In-Reply-To: <20200413033811.75074-1-maskray@google.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 13 Apr 2020 11:07:37 -0700
Message-ID: <CAKwvOdkwpAJp2aw+PFybi11rjxvk5tc5zOhaFw9=Xim0k73DAQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: Delete the space separator in __emit_inst
To: Fangrui Song <maskray@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_110751_468025_254DE492 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ilie Halip <ilie.halip@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Jian Cai <jiancai@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 12, 2020 at 8:38 PM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Many instances of __emit_inst(x) expand to a directive. In a few places
> it is used as a macro argument, e.g.
>
>   arch/arm64/include/asm/sysreg.h
>   #define __emit_inst(x)                       .inst (x)
>
>   arch/arm64/include/asm/sysreg.h
>   #define SET_PSTATE_PAN(x)            __emit_inst(0xd500401f | PSTATE_PAN | ((!!x) << PSTATE_Imm_shift))
>
>   arch/arm64/kvm/hyp/entry.S
>   ALTERNATIVE(nop, SET_PSTATE_PAN(1), ARM64_HAS_PAN, CONFIG_ARM64_PAN)
>
> Clang integrated assembler parses `.inst (x)` as two arguments passing
> to a macro. We delete the space separator so that `.inst(x)` will be
> parsed as one argument.
>
> Note, GNU as parsing `.inst (x)` as one argument is unintentional (for
> example the x86 backend will parse the construct as two arguments).
> See https://sourceware.org/bugzilla/show_bug.cgi?id=25750#c10

Thanks for the patch and for leading the discussion with the binutils
developers on this curious parsing case.

>
> Link: https://github.com/ClangBuiltLinux/linux/issues/939
> Cc: clang-built-linux@googlegroups.com
> Signed-off-by: Fangrui Song <maskray@google.com>

Shouldn't this have:
Suggested-by: Ilie Halip <ilie.halip@gmail.com>
Since Ilie sugguested this in
https://github.com/ClangBuiltLinux/linux/issues/939#issuecomment-601776123?

> ---
>  arch/arm64/include/asm/sysreg.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index ebc622432831..af21e2ec5e3e 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -49,7 +49,9 @@
>  #ifndef CONFIG_BROKEN_GAS_INST
>
>  #ifdef __ASSEMBLY__
> -#define __emit_inst(x)                 .inst (x)
> +// The space separator is omitted so that __emit_inst(x) can be parsed as
> +// either a directive or a macro argument.
> +#define __emit_inst(x)                 .inst(x)
>  #else
>  #define __emit_inst(x)                 ".inst " __stringify((x)) "\n\t"

What happens if someone starts using `__emit_inst` from inline
assembly, and passes that subexpression to a macro?  There are no
users today in arch/arm64/, but I think it's better to change both.

With this applied on -next, and testing via:
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make LLVM=1 LLVM_IAS=1
-j71 defconfig
$ qemu-system-aarch64 -kernel arch/arm64/boot/Image.gz -machine virt
-cpu cortex-a57 -nographic --append "console=ttyAMA0" -m 2048 -initrd
<path to my buildroot.cpio>

I was able to build and boot, modulo:
https://github.com/ClangBuiltLinux/linux/issues/988 (new)
https://github.com/ClangBuiltLinux/linux/issues/716
https://github.com/ClangBuiltLinux/linux/issues/510 (more specific to
LLD than AS)
so we're pretty close to being able to assemble an arm64 defconfig with Clang.
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
