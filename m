Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E4C188BF0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 18:23:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iT5n58UwNPcQxWQGytFaz2wmd2lmg33+epgPEWPu6Ys=; b=hRSivmI2ksjo0l
	fsQi1/HYlrtmy2WZwFAQfW9R0V0+xW2HoLngq3UlcvTKnohomiefKLIt8uCBKsuhzQ+R81fLrp+in
	A3RdGrzbvT6tFxueM3qpqIXCRpElZLwlVsPdwgb77MsCwbQfuPEcGSvzoIIDbwtfL2aPMdNY2KHUO
	ZbyGu5qEEP0JKGejIqTHZn96HNfO7FE7xqVp2NXCSBuy+yGScUIGq6AT2Tt5cBqBIsjCN9TNbPsRT
	/sPEASiU3qO3d23ca5DEIY9YDG+V4du1SdFNc7bnBpZvsIpfrSkZSkl0mxv0rJGtNGQfUszV+mT/l
	mkZeYaC06aT3O9fptU4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEFvW-0006uY-Il; Tue, 17 Mar 2020 17:22:50 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEFvP-0006tn-0q
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 17:22:44 +0000
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com
 [209.85.217.46]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id 02HHMIiB025840
 for <linux-arm-kernel@lists.infradead.org>; Wed, 18 Mar 2020 02:22:18 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 02HHMIiB025840
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1584465739;
 bh=qt1uWWm7ISvityjdtDvwYf1kohJ6ZdQMbO9zhQ0vl7Y=;
 h=From:Date:Subject:To:Cc:From;
 b=vCHQorYCgGGy5Ssc1rk314dwcVPWw2497vPo52OlnymJ7oGY5fJD7u62kSxJYfsFE
 4gYNpzZBuvbfr0LXw5fu7ieSO6IIo+QjV9IiJCl/7DzdyDpvJwkAEJ/DrwrPIgr04R
 oFPcV7WYOwxA+oXuicj2whWh8KQHrpb68SDx9OuLgeQfgqBvXib+b4WDZrAT+XLEpr
 XPenUX8MqTJ2fWpCcbn54lmBX7UxfdMQCLex1eKe+dyaWJvf+WrU8L5MArgeHw5AxG
 fvyPPSBQY50vrZsQfXzHqBDWGMId6UmYBc6csrspvhdFeo/tcWeMzAw0NJZR70vazv
 Fl9AOa2uW1cQA==
X-Nifty-SrcIP: [209.85.217.46]
Received: by mail-vs1-f46.google.com with SMTP id n6so14448042vsc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 10:22:18 -0700 (PDT)
X-Gm-Message-State: ANhLgQ0ZVApk2g4M2tSA33OLD/i85ShlFIYZl5RWr/b6FOEgfzYSKxpV
 QfJDSvuGIJT/6Gs7aAZaITlXwi2bu0+XMVAXspU=
X-Google-Smtp-Source: ADFU+vvbJG2vaP5bPmGeZEHouqfbCcWLyLooWYq6AiMCOy3mriUVlYcMoPQ04cCF0JYhs8EppYYiAs3qvm9I0pcm0RQ=
X-Received: by 2002:a67:3201:: with SMTP id y1mr11682vsy.54.1584465737556;
 Tue, 17 Mar 2020 10:22:17 -0700 (PDT)
MIME-Version: 1.0
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 18 Mar 2020 02:21:41 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ-AOTyqpV1E_S-hksjqexHfVauwGV9rrfDvjRVnu8-UQ@mail.gmail.com>
Message-ID: <CAK7LNAQ-AOTyqpV1E_S-hksjqexHfVauwGV9rrfDvjRVnu8-UQ@mail.gmail.com>
Subject: [GIT PULL] ARM: dts: uniphier: UniPhier DT updates for v5.7
To: soc@kernel.org, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_102243_331891_CCEA9A3D 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
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
Cc: Masahiro Yamada <masahiroy@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof, Arnd,

Here are UniPhier DT (32bit) updates for the v5.7 merge window.

Please pull!



The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-uniphier.git
tags/uniphier-dt-v5.7

for you to fetch changes up to d1876a0bcf3e57165ff7dda9725db81490ec081a:

  ARM: dts: uniphier: Set SCSSI clock and reset IDs for each channel
(2020-03-17 00:01:02 +0900)

----------------------------------------------------------------
UniPhier ARM SoC DT updates for v5.7

- Rename nodes to avoid dt-schema warnings

- Add a generic compatible to EEPROM so that it matches OF table

- Add USB controller nodes to Pro5 SoC

- Fix clock and reset of SPI nodes

----------------------------------------------------------------
Kunihiko Hayashi (2):
      ARM: dts: uniphier: Add USB3 controller nodes for Pro5
      ARM: dts: uniphier: Set SCSSI clock and reset IDs for each channel

Masahiro Yamada (5):
      ARM: dts: uniphier: change SD/eMMC node names to follow json-schema
      ARM: dts: uniphier: rename aidet node names to follow json-schema
      ARM: dts: uniphier: rename NAND node names to follow json-schema
      ARM: dts: uniphier: rename cache controller nodes to follow json-schema
      ARM: dts: uniphier: Add one more generic compatible string for I2C EEPROM

 arch/arm/boot/dts/uniphier-ld4.dtsi          |  10 +--
 arch/arm/boot/dts/uniphier-pro4.dtsi         |  12 ++--
 arch/arm/boot/dts/uniphier-pro5.dtsi         | 164
+++++++++++++++++++++++++++++++++++++++---
 arch/arm/boot/dts/uniphier-pxs2.dtsi         |  14 ++--
 arch/arm/boot/dts/uniphier-ref-daughter.dtsi |   2 +-
 arch/arm/boot/dts/uniphier-sld8.dtsi         |  10 +--
 6 files changed, 180 insertions(+), 32 deletions(-)


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
