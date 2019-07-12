Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E207671BE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 16:56:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s8BbKn5b+CDsCxN0JEMah1HuUXlOhZaD6fr2Q3XB370=; b=PFvMxY6p0xZOLW
	+U/cpbiyn/iV3QGANGPuMtCP6SYZAYRCeN55mHyJUzmQ4a4ylA+DCO/WdEKi4Hjx/fl9V+bEonxI9
	ke1UpwhLL1a2nXN0X01wu9kQAf56BiWbAc08ULnCmAGG8LgQW0gkagaI8x06jj1sbb87oE8O8NhKa
	/1CMgaBTA1I6Vjk/vh5x1Y6I7zLFF6UZlUz1kieWL9Cg4TG+JWkzD85rhwnP/am8ZYiWANiVZ6pQ7
	REAAjM1pqamIa44RuZ7gn/HK3cBuQhPzE0R/GqGdKr/JAM8Paqd3Bl3PD0sPdG7uz7Q+SWhCAzZck
	Lu6mf55Jc1IQFO5YZ8Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlwyF-0000LZ-VA; Fri, 12 Jul 2019 14:56:24 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlwxz-0000Jn-2c
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 14:56:08 +0000
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com
 [209.85.217.42]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id x6CEtk20019399
 for <linux-arm-kernel@lists.infradead.org>; Fri, 12 Jul 2019 23:55:47 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x6CEtk20019399
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1562943347;
 bh=6FhfPi35nywJuz76CvGaaD2GY6Th8cqwAFaZPK60WPg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=OtEP9WddgHX8iLcY6+MtcE1Q7uNpmugN2+PC2T0RWqFd/ywXmy+L++42o2SMQIBWA
 /1GcADf1FLaFVV1Xf/cHVW+BGkHcI8VyE5AQqyzHOowbv0e5EpqJnKFoGV1V8YJnRX
 60Fwd30GrO1SHO6DZfIiUW5exAduKP8PTl3P469C3Yy9Bndh040EPgSVw/GSV4o6xw
 zkx/KWmrdwVeGhKCmvMfL0F/NtNUXQ7ONhPbTYF1wvaTwc1ttwYQneER9LSvK49Qp7
 Ih6aa4xkOdzY5xD2p0h0mkNkQd+QFCMnBEvFoc6Bp2R1O/0bj5ymmNL50sFjK9pExz
 jkgr7JRmWh0Qg==
X-Nifty-SrcIP: [209.85.217.42]
Received: by mail-vs1-f42.google.com with SMTP id 190so6853243vsf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 07:55:47 -0700 (PDT)
X-Gm-Message-State: APjAAAUd2XI+FHJAurPsW4FR5XQViivmmSs5bIry/uQ0wBOm3uT2E7Qq
 JjGsXmviWANBEOeeOdHRMeG6kHajvaCxVDw9g1c=
X-Google-Smtp-Source: APXvYqzQS0/29Qt4updS1sUcWeQlS15A6ishYNIxSYU+nuoKb9gD8iaF+UiiHqYuAcBI2W/oy3RUEwl/CswoBIzMSSE=
X-Received: by 2002:a67:d46:: with SMTP id 67mr9042919vsn.181.1562943346190;
 Fri, 12 Jul 2019 07:55:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190712101556.17833-1-naohiro.aota@wdc.com>
 <20190712101556.17833-2-naohiro.aota@wdc.com>
In-Reply-To: <20190712101556.17833-2-naohiro.aota@wdc.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 12 Jul 2019 23:55:09 +0900
X-Gmail-Original-Message-ID: <CAK7LNARj+ZAdQVBOEJfq3h22g20d8DH6h83=4giBOD-NqQoNjg@mail.gmail.com>
Message-ID: <CAK7LNARj+ZAdQVBOEJfq3h22g20d8DH6h83=4giBOD-NqQoNjg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64/vdso: fix flip/flop vdso build bug
To: Naohiro Aota <naohiro.aota@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_075607_320351_7D6C9EA9 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Fri, Jul 12, 2019 at 7:16 PM Naohiro Aota <naohiro.aota@wdc.com> wrote:
>
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
> ---

Reviewed-by: Masahiro Yamada <yamada.masahiro@socionext.com>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
