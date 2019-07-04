Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 481595F49A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 10:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1vdY59qx+p8qpeFxRh/9CtgT0mS5pjaiqHYJNI/Qo4Q=; b=Oymn4H1Yj6c9Dj
	GWtFHpN//Hu/p2Ost3EIUBCC2KZooIqPxYXMom8EdUMkGC1ZRS2gF+78i2CXdSisvaKWs+HZ8Cfxh
	fNGeA4qMtbOe6X+Lt9RRWp7vWWqn9e4GTieg3ybKOBPKjI48bhA838oKb7wHKNf4ud6CdFVepZ5Cu
	E+Xep3Z9VXG1KZJe4XdPePLrf+YQhEABHfG5v427vUjjsd3rH1Q6YqNny6JSlUytY2DLOcDQCO5Ps
	Ocllp1sWE/fZz2/6tP4BgN84sOKOYP9dcNwKmfOvY9yqV0QY8BBDDeBfO5PsQ5IqffaCNtx8fMNmR
	1nE7ZKgjBUG3Nly47NGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hix8O-0007bL-RN; Thu, 04 Jul 2019 08:30:29 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hix7p-0006UT-An
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 08:29:56 +0000
Received: by mail-qt1-f195.google.com with SMTP id a15so7200807qtn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 01:29:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RFmMgkVZHIc+hggtnVg4fw1omd/KE2MoFxH+LLbDpD4=;
 b=kJzBOaUCuS0qTthMGhMpT1vDv2z41tOr15TttPLWiX7LNXrJgOInc1Pau4QMyJt/We
 8/+efHG6oBJfNrSKDzyx8cNBgnRMCvWhwQeZix84ipvejLGohCsmVb8OKSc7YNCXhN5U
 ora3ioWfRduTKnALc0EXSl8p0Xwjr0N8kPb2eaw9R3yOP+yXEXznWPb0L8+AnFKe/Xm+
 JvGl4K0PJn6VUnbEsKmfdtGQbeJuxX6/hEpG6Fi7CNZilEN6aFb9aqjxEwZ7F9eTIOEd
 XWDtnkMfkwk+LZzz5cVRuAppvDf9EGUh8tKO/JresSbcf4wBGmivWNr/ojfevjeGgpuq
 mrCQ==
X-Gm-Message-State: APjAAAWwQArV/UNL5Fy6R7sx6hnAwTYABR8JOYfUStipxDOprQIG6nAn
 /HOu+b17vg15GX5Wy5ELG+o9yo/0AUhmbqYf+Ow=
X-Google-Smtp-Source: APXvYqwJFMCQCtMsTiaLiR6XMLB1UTBw7xYeSw8A7ovdT5Dz/5yZZGGu3AyB+xVCIvV7IyZSiu3LSVM0ayKR5cZo3rc=
X-Received: by 2002:a0c:d941:: with SMTP id t1mr36020008qvj.176.1562228992003; 
 Thu, 04 Jul 2019 01:29:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190625210441.199514-1-ndesaulniers@google.com>
 <CACRpkdb+WO4WDS5S1uqPgYFHnz1ch0=DwTKaAxTF3_zid+zH4g@mail.gmail.com>
In-Reply-To: <CACRpkdb+WO4WDS5S1uqPgYFHnz1ch0=DwTKaAxTF3_zid+zH4g@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 4 Jul 2019 10:29:35 +0200
Message-ID: <CAK8P3a1Oucpi0smL1poiKJj9Gc=s_6tVirTDkZwA68cuOjvB7g@mail.gmail.com>
Subject: Re: [PATCH] ARM: Kconfig: default to AEABI w/ Clang
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_012953_390500_DA253258 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Marc Zyngier <marc.zyngier@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Paul Burton <paul.burton@mips.com>, Mark Brown <broonie@kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 4, 2019 at 10:13 AM Linus Walleij <linus.walleij@linaro.org> wrote:
> On Tue, Jun 25, 2019 at 11:04 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> > Clang produces references to __aeabi_uidivmod and __aeabi_idivmod for
> > arm-linux-gnueabi and arm-linux-gnueabihf targets incorrectly when AEABI
> > is not selected (such as when OABI_COMPAT is selected).
> >
> > While this means that OABI userspaces wont be able to upgraded to
> > kernels built with Clang, it means that boards that don't enable AEABI
> > like s3c2410_defconfig will stop failing to link in KernelCI when built
> > with Clang.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/482
> > Link: https://groups.google.com/forum/#!msg/clang-built-linux/yydsAAux5hk/GxjqJSW-AQAJ
> > Suggested-by: Arnd Bergmann <arnd@arndb.de>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
> As reflecting the state of things with CLANG it's:
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>
> But I think we in general need to have some discussion on how to
> proceed with OABI userspaces.
>
> I am well aware of distributions like OpenWrt using EABI even
> on ARMv4 with "tricks" like this:
> https://github.com/openwrt/openwrt/blob/master/toolchain/gcc/patches/9.1.0/840-armv4_pass_fix-v4bx_to_ld.patch

I did not expect that to be necessary in gcc as long as it supports
building for armv4 (non-t), but I might be missing something here.

> I have one OABI that I can think of would be nice to live on
> and it's the RedHat derivative on my Foorbridge NetWinder.
> OK I wouldn't cry if we have to kill it because it is too hard to
> keep supporting it, but it has been running the latest kernels
> all along so if it's not a huge effort I'd be interested in knowing
> the options.

But do you see any problems with cross-compiling kernels to
EABI with CONFIG_OABI_COMPAT for machines like that?

I would guess that you can't actually build modern kernels
on the RedHat OABI compiler any more as they presumably
predate the current minimum gcc-4.6.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
