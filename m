Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F125D9493
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 16:58:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=630AiZcttMPynay3Cct4RKQCGMpjyIvMNkkinzyFAjU=; b=dl
	1tVfu/qo97+qPP/hw4uGW3r9M3FZ4tozymHb7c7I93OiIzeOQKWaO2SJyPmsB7o1ocY4VDHPv4GbY
	edcoOwz15mYx/2nbLE+ZoUsBA6lJJq7irXHhwW+XIywIZEGMjYo2Jpl0tRTPRo0M9qzOyicwtQO9E
	/d171iYVKZ1IwJZmpVKJUd4r8Lrm/GUuQlNXpxRYZSE0PmZt9umEm0xBlpF1+xjKnRLzd8EXRQjva
	WPy1T+biRySWNEl2gC3DcJheaCvvPf6waYBduMf3UE6h/ufUCsJXB0+ngPqAQKXlxTN6vTguT6k2p
	cbgJ2psjb80A75MXlxQKYKgvmCqJ1RqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKkkv-0005HJ-CA; Wed, 16 Oct 2019 14:58:29 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKkke-0005G0-EV
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 14:58:14 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191016145807euoutp022740734546c51fc1df39ab8620fe857e~OKIiuzFTW0999709997euoutp02N
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 14:58:07 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191016145807euoutp022740734546c51fc1df39ab8620fe857e~OKIiuzFTW0999709997euoutp02N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1571237887;
 bh=JoncVjC24KKiQlne8enrxBMTgaWnwTqTsB0Y6vkF3D4=;
 h=From:To:Cc:Subject:Date:References:From;
 b=W1mLcDpAkTbhx7u3RSLkQsdair8sLShVUbYO2GGrwHwlJDMykV/jh8j7JtEshyxdC
 cGcifTJ/zeTb02W4J9luoPWQ/TgZKc9946PjdDONyHlibTj1+UKvzMaj9Pqv5MNwCM
 SD0SJ7PSXbl9yUYFmREFjeALsHqH3OMn+xR0ifHk=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191016145807eucas1p2fcf58664104fe0626ed54bacb5cb2724~OKIidPp332484024840eucas1p2n;
 Wed, 16 Oct 2019 14:58:07 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 66.FF.04309.FFF27AD5; Wed, 16
 Oct 2019 15:58:07 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191016145806eucas1p2d522901fc79e1ca6e03f1bb516a81370~OKIiOa-_n2480624806eucas1p2s;
 Wed, 16 Oct 2019 14:58:06 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191016145806eusmtrp285c288b5253066094ea66dc8d39dd4a2~OKIiNqFVL2395523955eusmtrp2X;
 Wed, 16 Oct 2019 14:58:06 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-1b-5da72fff42c1
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 11.0E.04166.EFF27AD5; Wed, 16
 Oct 2019 15:58:06 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191016145806eusmtip2d2c6d98211d8ee8d35793b9b4aeed72a~OKIhro0oC0671206712eusmtip2g;
 Wed, 16 Oct 2019 14:58:06 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org, vireshk@kernel.org, robh+dt@kernel.org
Subject: [PATCH v5 0/4] Exynos Adaptive Supply Voltage support
Date: Wed, 16 Oct 2019 16:57:52 +0200
Message-Id: <20191016145756.16004-1-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpjleLIzCtJLcpLzFFi42LZduznOd3/+stjDW4/57bYOGM9q8X8I+dY
 Lc6f38BusenxNVaLz71HGC1mnN/HZLH2yF12i9a9R9gtLj/eyGZx+E07q8W/axtZLDY/OMbm
 wOOxaVUnm8fmJfUeLSf3s3j0bVnF6PF5k1wAaxSXTUpqTmZZapG+XQJXxur1q1gKrgtUrJg7
 m72BsYm3i5GTQ0LAROL45SeMXYxcHEICKxgl+h6+ZoFwvjBKtDzbxwrhfGaU6N0yn62LkQOs
 ZWaXEUR8OaPE9+5OVpBRYB2rbhWD2GwChhK9R/sYQepFBKwlPp0UA6lnFpjIJPFidhc7SI2w
 gJ3Ey+Mb2UBsFgFViYmz77GA2LxA9Y9+9LFAnCcvsXrDAWaQZgmB/2wSUxpfsEMkXCS+nWln
 grCFJV4d3wIVl5H4v3M+E0RDM6NEz+7b7BDOBEaJ+8cXMEJUWUscPn6RFeQ8ZgFNifW79CHC
 jhLX23pYIb7kk7jxVhAkzAxkTto2nRkizCvR0SYEUa0i8XvVdKgTpCS6n/yHutlDYsXGbWyQ
 MImV+PToDtsERrlZCLsWMDKuYhRPLS3OTU8tNspLLdcrTswtLs1L10vOz93ECEwdp/8d/7KD
 cdefpEOMAhyMSjy8L5iXxwqxJpYVV+YeYpTgYFYS4Z3fsiRWiDclsbIqtSg/vqg0J7X4EKM0
 B4uSOG81w4NoIYH0xJLU7NTUgtQimCwTB6dUA2PhhqnXDCR3sT1bkarn0nEt/XBs2nWB3L2d
 dg7JwrzlvscWhWzcHLbvw4FdK4OeyS8yn+yftWS1shRDwd62b1Pad2y5IluwdFO6yePJnDEt
 ac4bLD+lzaq2W1iwrex5dqfaco/KxI4Yp69PpnivY1ZPKhXcVznZIWy73D/lE98t5tjaipbP
 3qPEUpyRaKjFXFScCADnQN0DGQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrFLMWRmVeSWpSXmKPExsVy+t/xe7r/9JfHGnx9Z26xccZ6Vov5R86x
 Wpw/v4HdYtPja6wWn3uPMFrMOL+PyWLtkbvsFq17j7BbXH68kc3i8Jt2Vot/1zayWGx+cIzN
 gcdj06pONo/NS+o9Wk7uZ/Ho27KK0ePzJrkA1ig9m6L80pJUhYz84hJbpWhDCyM9Q0sLPSMT
 Sz1DY/NYKyNTJX07m5TUnMyy1CJ9uwS9jNXrV7EUXBeoWDF3NnsDYxNvFyMHh4SAicTMLqMu
 Ri4OIYGljBLP/+xghYhLScxvUepi5AQyhSX+XOtiA7GFBD4xSrw+Yw5iswkYSvQe7WMEKRcR
 sJfY/k0EZAyzwGwmiTO/ellBaoQF7CReHt8I1ssioCoxcfY9FhCbV8Ba4tGPPhaI+fISqzcc
 YJ7AyLOAkWEVo0hqaXFuem6xoV5xYm5xaV66XnJ+7iZGYLhuO/Zz8w7GSxuDDzEKcDAq8fBO
 YFweK8SaWFZcmXuIUYKDWUmEd37Lklgh3pTEyqrUovz4otKc1OJDjKZAyycyS4km5wNjKa8k
 3tDU0NzC0tDc2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA2PL988WC/bahO/qFnLe
 f0iCQyuXRXpCpUrKg2bfvifBbXMC66o3blQ4ekmw+M/3fosbxyufTd30ryT9zL3uH6e2i766
 bN3/b8lB75NvrZ4YTr7ykavg8TWNs5cYOb9LR35REDwQusj/jUjFLiY7Nfu5ez65L6qQU47a
 G+J/bXn4F8PTby9c4DytxFKckWioxVxUnAgAMsEoIm0CAAA=
X-CMS-MailID: 20191016145806eucas1p2d522901fc79e1ca6e03f1bb516a81370
X-Msg-Generator: CA
X-RootMTR: 20191016145806eucas1p2d522901fc79e1ca6e03f1bb516a81370
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191016145806eucas1p2d522901fc79e1ca6e03f1bb516a81370
References: <CGME20191016145806eucas1p2d522901fc79e1ca6e03f1bb516a81370@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_075812_620857_17ED831F 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, sboyd@kernel.org, b.zolnierkie@samsung.com,
 roger.lu@mediatek.com, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds ASV (Adaptive Supply Voltage) support
for Exynos SoCs. Previous version can be found at:
https://lore.kernel.org/linux-arm-kernel/20190917181322.GA683@bogus/t/

The first one is a patch for drivers/opp adding support for adjusting
OPP voltage at runtime [1], including my update to also handle OPP min/max
voltage.

The dt-bindings patch has been converted to YAML and needs to be aplied
to Rob's tree as it depends on a patch already applied there
("daa629cdba21 dt-bindings: arm: samsung: Convert Exynos Chipid bindings
to json-schema").

Already applied dts patches were dropped from the series.

The patch set is based on for-next branch,
git://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git

Tested on Odroid XU3, XU3 Lite, XU4.

[1] "[PATCH v4 6/8] PM / OPP: Support adjusting OPP voltages at runtime"
    https://lore.kernel.org/linux-arm-kernel/1565703113-31479-7-git-send-email-andrew-sh.cheng@mediatek.com

Stephen Boyd (1):
  PM / OPP: Support adjusting OPP voltages at runtime

Sylwester Nawrocki (3):
  dt-bindings: arm: samsung: Update the CHIPID binding for ASV
  soc: samsung: Add Exynos Adaptive Supply Voltage driver
  ARM: EXYNOS: Enable exynos-asv driver for ARCH_EXYNOS

 .../bindings/arm/samsung/exynos-chipid.yaml   |  31 +-
 arch/arm/mach-exynos/Kconfig                  |   1 +
 drivers/opp/core.c                            |  69 +++
 drivers/soc/samsung/Kconfig                   |  10 +
 drivers/soc/samsung/Makefile                  |   3 +
 drivers/soc/samsung/exynos-asv.c              | 179 ++++++
 drivers/soc/samsung/exynos-asv.h              |  82 +++
 drivers/soc/samsung/exynos5422-asv.c          | 509 ++++++++++++++++++
 drivers/soc/samsung/exynos5422-asv.h          |  25 +
 include/linux/pm_opp.h                        |  13 +
 10 files changed, 919 insertions(+), 3 deletions(-)
 create mode 100644 drivers/soc/samsung/exynos-asv.c
 create mode 100644 drivers/soc/samsung/exynos-asv.h
 create mode 100644 drivers/soc/samsung/exynos5422-asv.c
 create mode 100644 drivers/soc/samsung/exynos5422-asv.h

--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
