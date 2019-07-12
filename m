Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AD9666F0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 08:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4j0CPbgROFZ7UKTcKlRt21Bz6X5tvSYCpsv92DElbtI=; b=uevYIoHJOoK4BT
	NflixW9p/KjMvzQeHNA2UCiFWLnV1MCLtsq1Lzl3yvc5sABQYLzInajuzcu0taKv2G0jR0795dDbG
	wlAeXGrhn6MqdlgWpHUBuQ3jKhYmqIvgR93gd/72snid67kJLJ6GOpZT4fOLPGGATXwxyJwK/FvE/
	/eyAh8X1UV92Q+J/fQAlU75hOn05wKugWh8wmrDdR7SgHvBV0CORvdeAWN498VoWGDvCyAblTvX/b
	hM7rtb0thsyPdZhY/TObRiCyirAnZm3SpUoWG/WycBdu8/WqK9Us8usadYQZTYdn6h/96sqhfRWJq
	AtFHDkNFGswq4gL8Ttuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlozg-0005KG-W1; Fri, 12 Jul 2019 06:25:21 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlozK-0005Fq-UC
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 06:25:00 +0000
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com
 [209.85.222.46]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id x6C6OcrN010920
 for <linux-arm-kernel@lists.infradead.org>; Fri, 12 Jul 2019 15:24:38 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x6C6OcrN010920
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1562912679;
 bh=beC6PlncI7VLFBQDho8ZRldcBbmcJMqjPnUh0ZyMQ1I=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=1i0PeyXqnMbPUzkpzDnoUiwHVGyxLNFu+b3zOrSGYG/KRJQut/VaYFtoaF71Xrfrv
 1eyk31dFfOzIKyDfxh8xdB+af9I7ziI0k/Y+6FWVw+gZKNXm7m9wlQS9dAG/J8TMGy
 aKRDKtnBxoU/7Gjymez1744fS1sNQua7X8E7uKn+kd302PJHseDUpjv34zKanmPIJe
 HH4LOfHI9DGQYHAO7iFGq7goUqr0pl9AjjI5bLXV+NjGjYH9dixbgOiaHXUURZb4b1
 BolDm4DpMQJKwsIac6oHcs1+HPVfV5+YaUuMdmc6m2W7QrqKvYYlaRZYdQfn4j5iX4
 QXiWUTFfO3l5A==
X-Nifty-SrcIP: [209.85.222.46]
Received: by mail-ua1-f46.google.com with SMTP id v18so3567510uad.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 23:24:38 -0700 (PDT)
X-Gm-Message-State: APjAAAWHuR84IphAn10QJDBbV3MKupz915LJdtnJGO/P2fsDIjdWlsni
 WKsxHHyVhFDeoEZeZBI+56vLHpgkIyat2pGUcxQ=
X-Google-Smtp-Source: APXvYqyG77NKkLEfjvk9tccV2S/mfm1w2Mnljrte9YX2RfJ87jgQC2i+nOjMV60Xi4I63bXGGCUOYU39jbWOVCnKa9U=
X-Received: by 2002:ab0:5ea6:: with SMTP id y38mr7820294uag.40.1562912677515; 
 Thu, 11 Jul 2019 23:24:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190712054350.12300-1-naohiro.aota@wdc.com>
In-Reply-To: <20190712054350.12300-1-naohiro.aota@wdc.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 12 Jul 2019 15:24:01 +0900
X-Gmail-Original-Message-ID: <CAK7LNATFRqRMbJb3d4JoMyCdHDQWxmx05wJ2yBXyukcj05Au-g@mail.gmail.com>
Message-ID: <CAK7LNATFRqRMbJb3d4JoMyCdHDQWxmx05wJ2yBXyukcj05Au-g@mail.gmail.com>
Subject: Re: [PATCH] x86/vdso, arm64/vdso: fix flip/flop vdso build bug
To: Naohiro Aota <naohiro.aota@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_232459_181737_63A877E3 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Catalin Marinas <catalin.marinas@arm.com>, X86 ML <x86@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 2:46 PM Naohiro Aota <naohiro.aota@wdc.com> wrote:
>
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
> ("x86/boot: Fix if_changed build flip/flop bug").  We cannot use two
> "if_changed" in one target. Fix this build bug by merging two commands
> into one function.
>
> Signed-off-by: Naohiro Aota <naohiro.aota@wdc.com>


The code looks OK, but you should split this
into two patches, for arm64 and x86,
and then add Fixes: for each of them.



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
