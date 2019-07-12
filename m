Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9EC0671BC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 16:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N97YksAH2BX1IgBYPrVrI9Y6EzxO6vWZL80Hr4jmR4w=; b=fIWYyllJb+jhn7
	Ld1WcbsHgaXXIOy3sK+OT4rivgkuJBRB0CT6PWaI43KFTsGy2gvBK/lJW+zeKkrefstJ9PqeW+GtM
	LVsbGzdtqKZf4vnHU4N7WYzSsGSidaQwIuQw+U4LWjlgntZg6K87y8L8RjssGe51lHHWQ3sidtGmY
	wlebYBlDte9pTSkUi3Hu3b2RyvhOe6gu0XP3HsJ9wtdPRu+R0AJmpmDhG6O5JVI6IX0v4pptiA78y
	jpDWBcz25xE6ldSx7lKYFIkRonzZTVHshGJto8W7/P5bg455ZECCD2sn0QlVg+anMnT3rsKXGcXhB
	KNxB8PitjjCUNrq+JVpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlwxb-00005B-Dh; Fri, 12 Jul 2019 14:55:43 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlwxN-0008W7-DM
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 14:55:31 +0000
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com
 [209.85.217.48]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id x6CEtDNI020897
 for <linux-arm-kernel@lists.infradead.org>; Fri, 12 Jul 2019 23:55:14 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x6CEtDNI020897
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1562943314;
 bh=2pCn3yeZu/5Q2TZ7hwyekTh8gaDXfLpUYTMHRaRKfZ0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vbwJLkfhAyD6kysrcM2dBwlzd9/P4agKISRgG1KHBDsnjLPSxtMJUFtDQxXVdjrYd
 2lxM2g9nOjmUdc+25f1RYKJ/VItylPv4CwCO6XIgja3x+fYuuQs778NbE9NaQDCzeC
 XpoKcrITF+VnVhLgp8J0J0512FNW7m98T2gpzWcxMGFvviv4UfZWtwKm111aH5/Haz
 LLVS7B7vrH6riB0/bS3OE7mqUCKrj1weGoyGF7BqgwlUQ3Ys8D7LUP7/NoA4WpjMMt
 kfr8GktKxBofKDSOtN6T7mWeBwNn22iiBIo0SRHZsuVFfLRavSwZQxZK/Ef0bDrtdn
 9rg8xTtQ71hBQ==
X-Nifty-SrcIP: [209.85.217.48]
Received: by mail-vs1-f48.google.com with SMTP id m23so6881359vso.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 07:55:14 -0700 (PDT)
X-Gm-Message-State: APjAAAUXw/nDzE/EuA4vvW8uSbN2RcRtPA5E/EMFfchNfIWIcXbta7Ah
 uZdYwQTrmttuLTEBvFzFHyxM6lvN1DEHKzOLNIc=
X-Google-Smtp-Source: APXvYqyOblEoxiyJtJYBVHt1jiVIyAbvLUdk4h6mGGG8agisxPfBXzNJ9vXVUD4fHABlfzzua3TIhyZa7QPG+rEnIVM=
X-Received: by 2002:a67:8e0a:: with SMTP id q10mr8670685vsd.215.1562943313188; 
 Fri, 12 Jul 2019 07:55:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190712101556.17833-1-naohiro.aota@wdc.com>
In-Reply-To: <20190712101556.17833-1-naohiro.aota@wdc.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 12 Jul 2019 23:54:37 +0900
X-Gmail-Original-Message-ID: <CAK7LNARBunev7O3k06hv22aPh9DuW53CKbuvM1TwscuM_5uOUg@mail.gmail.com>
Message-ID: <CAK7LNARBunev7O3k06hv22aPh9DuW53CKbuvM1TwscuM_5uOUg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] x86/vdso: fix flip/flop vdso build bug
To: Naohiro Aota <naohiro.aota@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_075529_673974_72505DC1 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
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
> ---

Reviewed-by: Masahiro Yamada <yamada.masahiro@socionext.com>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
