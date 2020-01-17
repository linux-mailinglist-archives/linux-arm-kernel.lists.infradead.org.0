Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E10140EC7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 17:18:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W/Mxy/CB3ngL07kwxoCtPGGRnJAWm385vYVA2F2cFpE=; b=C2pRhAM3aWhPq8
	8j0hhEfhsWyOhSSdN8c+u9RTgWXTI6G6jsKMoUugIFb7ah613fPXm7l8VQgljNKVbRjP0pc8zkvSl
	qoa/+gNR6KLy3AtAOChvZFajq9gnwsp7pRZy9Ju68whqWZ5VLIVerYhRaPS4moM9MI44H6cn8hVzz
	Wm8kBqhT9GY3xOL4BE+e8AKaOqAmKl+rYveVlfnh1VeZBSkqQJBptA/owhbha3kAq3KMBa7OhIEn4
	YRPqbNuxRcJFO2/GR6NgF+ENj2bpwGmaj0BvfiCrmv0rsUXR5Ugw/mkcdDarwugPMQuMSGco7CXwf
	5zUKHeTu/FlBRXE5NJ8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isUJl-0001cm-FV; Fri, 17 Jan 2020 16:17:53 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isUJZ-0001bw-2N
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 16:17:45 +0000
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com
 [209.85.221.174]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id 00HGHPfB024488
 for <linux-arm-kernel@lists.infradead.org>; Sat, 18 Jan 2020 01:17:25 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 00HGHPfB024488
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1579277845;
 bh=I3ut7fRPhrMVRpNLHqwLkp4DT8+R+lRU1N1ykqfVyVM=;
 h=From:Date:Subject:To:Cc:From;
 b=pnkROUmJt/MX4GjaBlKa/emow39nhrsPKAn3pGbnMt4fvsxMIuUAtFMTLUWn2T47M
 QUdeEHRdoyNavCWqEIhyY2QP1ELygS8k2NElSAEwAyoNnpZDqFN6LxKltGXZ3KJAb0
 bjFPUx/J5gC2GRxmP9QLTRjyvQ5YgPtThl7P1Jx67Wky26hYFkagoQPCVP/YfISLRV
 OgHzoWnDV5d8t23lukaKz8s1B5BQJQQRPxcQdL7suzbeT+l3oh3Xs+XmONRWH9FeEh
 zyrgMdzCR2Qr29krv33sQbn26EykZFx95LWqo5WkJjd2MmQIIwKRHOAGJ6hOUGtkpM
 0J0HKsrG+fLtw==
X-Nifty-SrcIP: [209.85.221.174]
Received: by mail-vk1-f174.google.com with SMTP id g7so6786424vkl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 08:17:25 -0800 (PST)
X-Gm-Message-State: APjAAAU/B03jf5GFf1lt0ZaQ4mZxaBfVlr/pZrTZBK5X0noRQPoE2smZ
 rbQgb/WFw600Vv33CeowABdob0TzMWM4ECbutjg=
X-Google-Smtp-Source: APXvYqxHSvowQPk4UTnHnWLjFJjpHtO78N8FWGDQXqpkhwKdrjrCbTgyX27LLY6X4gDjRNNR9AcXazktPpwapFpPbRw=
X-Received: by 2002:a1f:72c3:: with SMTP id n186mr23949934vkc.12.1579277844236; 
 Fri, 17 Jan 2020 08:17:24 -0800 (PST)
MIME-Version: 1.0
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 18 Jan 2020 01:16:48 +0900
X-Gmail-Original-Message-ID: <CAK7LNASSVYHunCn154ktOVDm=MOe+jhEq8Xc8g0JAtCjjJRHwQ@mail.gmail.com>
Message-ID: <CAK7LNASSVYHunCn154ktOVDm=MOe+jhEq8Xc8g0JAtCjjJRHwQ@mail.gmail.com>
Subject: [GIT PULL] ARM: dts: uniphier: UniPhier DT updates for v5.6
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_081741_352501_A96D4702 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
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
Cc: Masahiro Yamada <masahiroy@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Olof,

Here are UniPhier DT (32bit) updates for the v5.6 merge window.
Please pull!



The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-uniphier.git
tags/uniphier-dt-v5.6

for you to fetch changes up to 37f3e0096f716b06338a4771633b32b8e2a36f7f:

  ARM: dts: uniphier: add reset-names to NAND controller node
(2020-01-18 00:56:09 +0900)

----------------------------------------------------------------
UniPhier ARM SoC DT updates for v5.6

- Add pinmux nodes for I2C ch5, ch6

- Add reset-names to NAND controller node

----------------------------------------------------------------
Masahiro Yamada (2):
      ARM: dts: uniphier: add pinmux nodes for I2C ch5, ch6
      ARM: dts: uniphier: add reset-names to NAND controller node

 arch/arm/boot/dts/uniphier-ld4.dtsi     |  3 ++-
 arch/arm/boot/dts/uniphier-pinctrl.dtsi | 10 ++++++++++
 arch/arm/boot/dts/uniphier-pro4.dtsi    |  3 ++-
 arch/arm/boot/dts/uniphier-pro5.dtsi    |  3 ++-
 arch/arm/boot/dts/uniphier-pxs2.dtsi    |  3 ++-
 arch/arm/boot/dts/uniphier-sld8.dtsi    |  3 ++-
 6 files changed, 20 insertions(+), 5 deletions(-)


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
