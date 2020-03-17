Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D193188BFA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 18:27:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U75z1PSpfdTQcPMMuJtYQe3B4nmBbR1vOHjK/r/WTqM=; b=jLa9OsQ2ir1PdM
	z6MZ/Sg8EQv3pd2u+DmeFfxJJZWhH4CcUAI6U7rcwM2K0qBX6cb8Cu3PfgKDJZ8Ig8l6M3qhmp4C8
	wXEDa8yaLCkAYeR37ENkqE9GL0TtE2/IZmmeiiiTvC1pNgtnWYx+4OLwmS7UNQNkCJTr+jVfI4Uyw
	6azlbVlBGP9mA85L8RD54KI/wXQ5sKnMPMqmD0OnQ3nRwICx4OuTAlnPifVgfmJe+rX4z62784wWN
	0PQg9SJbvJ6e+Y3u6QI8r5veQZmPMIiNYXE08foyiqI+Jupoy3ohZ5FXaL9bmfRkqFIwx/79vS3Q9
	us5ThW1WZJWkP5d1yyxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEFzy-0000IO-H0; Tue, 17 Mar 2020 17:27:26 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEFzq-0000HS-S9
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 17:27:20 +0000
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com
 [209.85.217.47]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id 02HHR1V1010681
 for <linux-arm-kernel@lists.infradead.org>; Wed, 18 Mar 2020 02:27:01 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 02HHR1V1010681
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1584466021;
 bh=KE22OfskZjd5vE5dPHURGA/IBqPekBZi9gfXTzufvbI=;
 h=From:Date:Subject:To:Cc:From;
 b=KxY8p4Kdp+sRuJPEqGXlrpBACirqwDr8AoJu0jj0eZNE+Xe3mfXGjuqe4CSU7vxbE
 xAuVKhu5x+Ep0nUvGef0D9LarnSgzyIl3/nv0mb6WzugyG1YUUYDLqaeJ2fhsSRXCv
 1to0kZvBsTPDjcyFceyt/qLQ2uiVdAZup1b1fenqGTc1VbPi4+x/io31NHtlRhzkaN
 rQDSW+785L0yj83HQxv1AdaLcf0THBAJBrg/N1MC2RF7de1pg9gqv0w0Hn90HsiPyN
 agHkSseJYieihhq95Rr/ujoXrpBKTmD9g4Wyzlvef9fTQuJVi/zsammUSkXjyF0ElB
 vxskJoGWGbE+Q==
X-Nifty-SrcIP: [209.85.217.47]
Received: by mail-vs1-f47.google.com with SMTP id a63so4490025vsa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 10:27:01 -0700 (PDT)
X-Gm-Message-State: ANhLgQ2JDO56WSwy4zcOdJxvGyGWXWNjYKJKSoy4HvCBTNGPWfIWRpqP
 iJ+RDIDwafzPelVvLe8GeIDU0zCdHRsp5eiCCFU=
X-Google-Smtp-Source: ADFU+vubTUpqtaivmHWe3D2yWqtuuxkGL/Nx3ogaJy6wwOrcos6V3IHJWr0KPtRS9EP0E3hzsf4J64iSZ6L0rhqRbGg=
X-Received: by 2002:a67:8745:: with SMTP id j66mr4425184vsd.181.1584466020438; 
 Tue, 17 Mar 2020 10:27:00 -0700 (PDT)
MIME-Version: 1.0
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 18 Mar 2020 02:26:23 +0900
X-Gmail-Original-Message-ID: <CAK7LNASMD-zqNfG02WhU1LeAJevnjBv=oT2N_7y6C8w7kryotQ@mail.gmail.com>
Message-ID: <CAK7LNASMD-zqNfG02WhU1LeAJevnjBv=oT2N_7y6C8w7kryotQ@mail.gmail.com>
Subject: [GIT PULL] arm64: dts: uniphier: UniPhier DT updates for v5.7
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_102719_141893_21809819 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
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

Here are UniPhier DT (64bit) updates for the v5.7 merge window.

Please pull!


The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-uniphier.git
tags/uniphier-dt64-v5.7

for you to fetch changes up to fdf9c17b51910d19113dd85d6b3b2dce0b88d7f0:

  arm64: dts: uniphier: Set SCSSI clock and reset IDs for each channel
(2020-03-17 00:01:27 +0900)

----------------------------------------------------------------
UniPhier ARM64 SoC DT updates for v5.7

- Rename nodes to avoid dt-schema warnings

- Enable SPI for PXs3 reference board

- Enable thermal monitor for PXs3 SoC

- Fix clock and reset of SPI nodes

----------------------------------------------------------------
Kunihiko Hayashi (3):
      arm64: dts: uniphier: Enable spi node for PXs3 reference board
      arm64: dts: uniphier: Add nodes of thermal monitor and thermal
zone for PXs3
      arm64: dts: uniphier: Set SCSSI clock and reset IDs for each channel

Masahiro Yamada (3):
      arm64: dts: uniphier: change SD/eMMC node names to follow json-schema
      arm64: dts: uniphier: rename aidet node names to follow json-schema
      arm64: dts: uniphier: rename NAND node names to follow json-schema

 arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi    | 10 +++----
 arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi    | 20 ++++++-------
 arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts | 10 +++++++
 arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi    | 55
++++++++++++++++++++++++++++++++----
 4 files changed, 74 insertions(+), 21 deletions(-)


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
