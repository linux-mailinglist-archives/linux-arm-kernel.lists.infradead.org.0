Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF78E55347
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 17:23:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sg5JZbn2szi7WgkTw9642sWAEVy0watut1koX5wYyvk=; b=aqTh01Q3NxLjAu
	RD4N5KbsyaFmtKpY+/BmQW/refprULhSmVKE9Aqkip82K4MXHvJYikjXs/RuklJgUdIdPPZ4MDqXq
	oho0zcBEBGlYo++uoih166vnngQqQRuI3j4kgpKq1ccbxCVWaN5YdwFTIAfwOse03WdtO6rxevTd/
	SlQHWiOfiOh/WBjNsYxmids92q2nrtnRfUCdUrfjKI8qngaVgYq9JuBqPmyfRWU1YOQdSBm6mNtY2
	4f03nnIdG7Cbm6vnONdLGnDNXrzaPUljrmMSrceF8x8ms5lASQD+38fQQRcfxjjVVoPZHLlcVGv1x
	sHqZDr2CCPV6dV4vS/Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfnHr-0004uZ-1J; Tue, 25 Jun 2019 15:23:11 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfnHS-0004k4-GO
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 15:22:48 +0000
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com
 [209.85.217.52]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id x5PFMJnf001802
 for <linux-arm-kernel@lists.infradead.org>; Wed, 26 Jun 2019 00:22:20 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x5PFMJnf001802
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1561476140;
 bh=I4gn4zhWUu8CS8xq7uHMDWTl3vK+1KN7KiPYqeN5XG4=;
 h=From:Date:Subject:To:Cc:From;
 b=IUbkxvew3coDHXBh1wbNW8DZulxXDMMOC9ub60hnqscwj+VHOAQjk9M6qqzlIHfpU
 M+4qUigtcanahmxyTVa4ODzwHkzmu1d273V7sHpQGtWfbcX1MWjY2XxRzmQHgQzF6l
 GCIcYl/ylkcyTxXjm3P8EGKOraWIElrrMNt3d7ujNPizRBYABz/4LWrT2VdCTn1DFb
 YjPiizwRj46lCNS+1vRN63XY9Qlu7LDMI138BjWmGHJFTpCSZYuJHL32ow9X4RJnnR
 HeLVGonywzEdigD7MZxzGzV9ggFHlv/fixRv9QH+ZJ2q91Kqo9//4rvgifawv53itL
 XSGP5b7mVnKlA==
X-Nifty-SrcIP: [209.85.217.52]
Received: by mail-vs1-f52.google.com with SMTP id m8so11164949vsj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 08:22:19 -0700 (PDT)
X-Gm-Message-State: APjAAAXwukH44RW7vHU7PpqbkYbQo2yydewgRTnIiLLIjAPvX2dK61cv
 AqQ2ZxpBHlIH0lGkVst8kMB1YWf7OuXWWjLDFWQ=
X-Google-Smtp-Source: APXvYqwWtj7ZIxvvgGhAtUAx2CLtVniyMTTW+OkeTFlWaM/0Lwm1ata1J+FSKX2nmJVuupuYCeIa5nm9RLoFWJql2Ws=
X-Received: by 2002:a67:d46:: with SMTP id 67mr1416351vsn.181.1561476138869;
 Tue, 25 Jun 2019 08:22:18 -0700 (PDT)
MIME-Version: 1.0
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 26 Jun 2019 00:21:42 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQKmSUkXtJOOcr1q8b_yTU_NRcgCvDAo8aZ+CkOXGTWNA@mail.gmail.com>
Message-ID: <CAK7LNAQKmSUkXtJOOcr1q8b_yTU_NRcgCvDAo8aZ+CkOXGTWNA@mail.gmail.com>
Subject: [GIT PULL] arm64: dts: uniphier: UniPhier DT updates for v5.3
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 arm-soc <arm@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_082246_794998_9EB18B91 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: masahiroy@kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Olof,

Please pull UniPhier DT updates (64bit) for the v5.3 MW.

Thanks.


The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-uniphier.git
tags/uniphier-dt64-v5.3

for you to fetch changes up to aa38571246c6ac279ebebd141157297bcb959d76:

  arm64: dts: uniphier: add reserved-memory for secure memory
(2019-06-26 00:08:47 +0900)

----------------------------------------------------------------
UniPhier ARM64 SoC DT updates for v5.3

- Migrate to the new binding for the Denali NAND controller

- Use reserved-memory node instead of /memreserve/ for the
  secure memory area

----------------------------------------------------------------
Masahiro Yamada (2):
      arm64: dts: uniphier: update to new Denali NAND binding
      arm64: dts: uniphier: add reserved-memory for secure memory

 arch/arm64/boot/dts/socionext/uniphier-ld11-global.dts |  4 ++++
 arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi       | 15 +++++++++++++--
 arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi       | 15 +++++++++++++--
 arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts    |  4 ++++
 arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi       | 15 +++++++++++++--
 5 files changed, 47 insertions(+), 6 deletions(-)


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
