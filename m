Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CDB5F45F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 10:14:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pk5MIUOYWmKPxGAnW3HswCZpxoRFiBtHDGugFLnU7Gg=; b=Y77kPhk2Frv4cd
	8THVaX+i9imYFOzzFDmi75QID3qSdfay2UBjakQzlpNhsfavdjHxrhwCkiBeYjE+nS0Mqu1waZx6i
	r7ZO28PGBG9Cd1qoJ3GtvR8nlkqPEQVQSH2FmcqNtfWEazJzbIfqnsa8HVlhvuPbmk7MXzRnDAkL8
	FiIsFwE45zuxphCH3umUBRXvZcvp3BooUwT/xceq6BGft+VWOeyPA6brVt530wJz/7zAgETHAvotR
	ioGiPd+wph6/ZOS4KDvgiAsCFcMmugBpQr9bvouQx3B5+SqDIsMbRIbfyJBpbAPJFcapCmge4SBYl
	4X3SiQO8ojnuMrp9bLaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiwsP-0008Ht-UD; Thu, 04 Jul 2019 08:13:57 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiwsD-0008H3-HN
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 08:13:47 +0000
Received: by mail-lj1-x241.google.com with SMTP id i21so5268796ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 01:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=W8/CcxemkjOqw5vcRGpz7IYCIwc+17181uPGqaEJ7DY=;
 b=APAkpnfHLvATo/cfO3VfhryPgqeKWK3eEzpcEb4pRP1HLVWneySxnm8R2wn6T44lcQ
 Dvum7So8gTEHI6athp0y5DDOIDKEr0UHL+SMuN2r/iWLAGUUSXBKo7ee6X6SNTXN2PSx
 K70PNJw0ET+Lrq1cVf0W28fL1Tmw1yhEshBcTe0DhcFgAAomD/C0Uhock2tBPmZNYQsD
 Nei1naxT+HjPVUa2JIPGcD5/JCqHQlpx5c8cVIhBHTJWl9U072uiFf2h7Poz6hQ2UgWB
 VPR7dETeyIFU2ISmA5ow6Az2GQL85/AFU+803NNSYdJlGXM3lFkBM+ppggCKbJXnQg4i
 Q6kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W8/CcxemkjOqw5vcRGpz7IYCIwc+17181uPGqaEJ7DY=;
 b=XYugYd7rZTLaJvwYBsG7BYwEXuh74ZxJVXMdj+y++WwV0PPbjD0/+N/sm9xoMcEvcT
 MquugpSnBbeZRSOXFqPbRhJfBmHJYJ84xltoAzNAf7xl/S1YxaXZgVLsl7yXHBAMYGRE
 819g6dypT7LNR2myJVCqfQHa3faDZhfe2GGSb21Zl+pxaLecddvLciJ0aqoUkTkMe3j2
 Mji0hmNUYSXOJ+SPtsDNPtyLsvnB1K1nXhi7hMPwvD9ub3vvrl8bYl+T6m0bstKo9mvu
 HWPPI9q2XZtNLfc7lfjE9xfZ/YGO2OgM/5/dKeEEI6BibD7Qo9k/NTaoj5Xt0pEL5Z29
 apIg==
X-Gm-Message-State: APjAAAXODYocqCr1I30AXG+tmgAzbRnQvCZVNDFaNRCi52493OxX/Z+r
 cEnpJWI2BEjVs/xSFlq3lvgeo6bvdz/2ekAH7OmucQ==
X-Google-Smtp-Source: APXvYqwqS8eE5mm2UJA47bQpgGFKawwQlQgyL0E+56rYCcHzHx7Ty1GdAApYQ9TLFZ0jRsmLISKBV0pCKV38BATWBLI=
X-Received: by 2002:a2e:a0cf:: with SMTP id f15mr24105118ljm.180.1562228020926; 
 Thu, 04 Jul 2019 01:13:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190625210441.199514-1-ndesaulniers@google.com>
In-Reply-To: <20190625210441.199514-1-ndesaulniers@google.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 4 Jul 2019 10:13:29 +0200
Message-ID: <CACRpkdb+WO4WDS5S1uqPgYFHnz1ch0=DwTKaAxTF3_zid+zH4g@mail.gmail.com>
Subject: Re: [PATCH] ARM: Kconfig: default to AEABI w/ Clang
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_011345_580814_AF2C47E0 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
 Arnd Bergmann <arnd@arndb.de>, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Marc Zyngier <marc.zyngier@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 clang-built-linux@googlegroups.com, Paul Burton <paul.burton@mips.com>,
 Mark Brown <broonie@kernel.org>, Palmer Dabbelt <palmer@sifive.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 11:04 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:

> Clang produces references to __aeabi_uidivmod and __aeabi_idivmod for
> arm-linux-gnueabi and arm-linux-gnueabihf targets incorrectly when AEABI
> is not selected (such as when OABI_COMPAT is selected).
>
> While this means that OABI userspaces wont be able to upgraded to
> kernels built with Clang, it means that boards that don't enable AEABI
> like s3c2410_defconfig will stop failing to link in KernelCI when built
> with Clang.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/482
> Link: https://groups.google.com/forum/#!msg/clang-built-linux/yydsAAux5hk/GxjqJSW-AQAJ
> Suggested-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

As reflecting the state of things with CLANG it's:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

But I think we in general need to have some discussion on how to
proceed with OABI userspaces.

I am well aware of distributions like OpenWrt using EABI even
on ARMv4 with "tricks" like this:
https://github.com/openwrt/openwrt/blob/master/toolchain/gcc/patches/9.1.0/840-armv4_pass_fix-v4bx_to_ld.patch

I have one OABI that I can think of would be nice to live on
and it's the RedHat derivative on my Foorbridge NetWinder.
OK I wouldn't cry if we have to kill it because it is too hard to
keep supporting it, but it has been running the latest kernels
all along so if it's not a huge effort I'd be interested in knowing
the options.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
