Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED00D68877
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:04:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=szekcTEAXT0mNDLRKwmksjVTxJyiT1OXwjumuhwcjSk=; b=szs+m5Uoyy/f3J
	pVyiRmvCFom0NFQL4YxvubCZadTGWPvu9OYSc06HB9NV223LOgIyUgNCzg34uTTYbQdw9GENLmwgC
	EXHJPCKKYxwM/5XiDNB9/EHQ83Ivwy9S6cyb564MDZ7Vcfh3TbcA+EJJ2NDQgZMjKpvieZvi3Wj2Q
	zMV/7fnMclUMM3wnvW0dbjpi7P63eNADPma0h+tt+S3/afxWlWdEw1gopXDKDmOkAhE/FtQI6tf0v
	AIXhDC2n+yMi3R5YIoeoOXJU3yrSrartxQIVI8MZZs1u+hQR4rpiQmzlRKq0R7uhzkgCa4S6JLUGO
	FDWpVNcjXnaICg5VkJDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmziv-000478-Fi; Mon, 15 Jul 2019 12:04:53 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmzid-00044t-U2
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:04:37 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715120431euoutp02d876fd3f4e59c040a4d446dda6a93802~xkxbGKfIT1733917339euoutp02e
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:04:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190715120431euoutp02d876fd3f4e59c040a4d446dda6a93802~xkxbGKfIT1733917339euoutp02e
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563192271;
 bh=i3auGkJgw9SKm0S7pYs8dDdYpDEpYz2cgpDsLc2zkj4=;
 h=From:To:Cc:Subject:Date:References:From;
 b=CqFPTPXcAZ2vTTbELUe1bWzUwtkNa0FdfG2OUQShdziCO2Ze/PM4hvvU4y1Q8PlMC
 uZ+4bK8xqAj8kTFGb3UsjgpSLkw7+1HELxdLaAqXVJqXaCoJaoslNhomXsY8hOSk1e
 KGa6vfy25Br/UqZ4pGUBaqvz62LECMJ+a5DlvnrA=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190715120431eucas1p16622abacb55aff8972b4e96fdcbdd01f~xkxaio9qa3262432624eucas1p1O;
 Mon, 15 Jul 2019 12:04:31 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 39.FF.04298.ECB6C2D5; Mon, 15
 Jul 2019 13:04:30 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715120430eucas1p1dd216e552403899e614845295373e467~xkxZomOa72398923989eucas1p1y;
 Mon, 15 Jul 2019 12:04:30 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715120429eusmtrp1688595b10dd7962aedaeec21a96fc766~xkxZaTJ_R1141311413eusmtrp1S;
 Mon, 15 Jul 2019 12:04:29 +0000 (GMT)
X-AuditID: cbfec7f2-f2dff700000010ca-c9-5d2c6bcee598
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id C9.12.04140.DCB6C2D5; Mon, 15
 Jul 2019 13:04:29 +0100 (BST)
Received: from AMDC3218.DIGITAL.local (unknown [106.120.51.18]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190715120429eusmtip16591f99b4d6c151d00956fc96a3415d5~xkxYsKTBJ1539615396eusmtip1Z;
 Mon, 15 Jul 2019 12:04:29 +0000 (GMT)
From: Kamil Konieczny <k.konieczny@partner.samsung.com>
To: k.konieczny@partner.samsung.com
Subject: [PATCH v2 0/4] add coupled regulators for Exynos5422/5800
Date: Mon, 15 Jul 2019 14:04:12 +0200
Message-Id: <20190715120416.3561-1-k.konieczny@partner.samsung.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0iTURjGPftuU1p9TsvXDItF2E1NEDqQhV0ZQRD0T1RiK7/UdJvty8qK
 spumlFpSmdm9SKamm+nEWzbFNW9zSpqZJpUa3cQbZYlr22flf7/zvM9z3vc9HDEhfUfNF0er
 DnMalSJWRruRpfUTLf4tMSvDVrX+DsK6rEIKd44NUvhuXQuF06ptCKd/+EJgi6WIwc1nvzJY
 /6GDwu3lOTQevVyHcJalWoQL6noY/LjTKsLdZ3Jp/PVnswhfqKpj8FSHjsTFffV0qFSefycf
 yfXaFFpe/Oi0/MX3SpE87ZkWyU2vDSL5qN53O7PLLSSCi40+wmkC1+11i6oauMHE3Z51bOhW
 Bp2IDK6pyFUMbDAY8n6QDpayuQgaTPtTkZudxxAUXC9HwmEUwW9tI/qbqHz1lhYKTxDUjpuJ
 f5F2awHjcNHsanhvaBI52JNdDJm9N5wmgp0goahd5zR5sBtg4LvZySS7BNJyxygHS9iNMPbj
 GiG0WwgpZRWkoLuD+eZHJxN2/VzJLeelwLYx0HN5RCQENkFPw09KYA/4bHrGCLwAGjMvkQIf
 hf77aYwQPo+gL3l4urAGak1We1hs77AMCssDBXk9NNboaIcM7Gx4/c1dmGE2XC11LOaQJXAx
 SSq4/eGOrWl6Ah9ItT2dZjkkD+ZRwluHQX3uXSoDLcqesVn2jM2y/89wDxFa5MXF88pIjg9S
 cUcDeIWSj1dFBuxXK/XI/u0ap0wjZWi8bZ8RsWIkmyUJjVgRJqUUR/gEpRGBmJB5StaO2yVJ
 hCLhOKdRh2viYzneiHzEpMxLcsKlb7eUjVQc5mI4Lo7T/K2KxK7zE1FMUn3AqW3GSd68derm
 5gFdSi9bMlk7utQy9GDNVIhL95BtuKSstatrRE/vMTf3+1f1tZx6ma7/5e7R83DOQe3iNzpv
 b73x08IYqSzR1+dk74F+P6/VRMUV4w7vwhpr3OemLcEvNCQRdWju4/DhnZAyTx3s5xk8UHvu
 oClEnWN7LiP5KEXQckLDK/4ABW4T33IDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrGIsWRmVeSWpSXmKPExsVy+t/xu7pns3ViDVbdNLHYOGM9q8X1L89Z
 LeYfOcdq0bfvP6NF/+PXzBbnz29gtzjb9IbdYtPja6wWl3fNYbP43HuE0WLG+X1MFmuP3GW3
 WHr9IpPF7cYVbBZvfpxlsmjde4Td4t+1jSwWmx8cY3MQ8lgzbw2jx6ZVnWwem5fUexx8t4fJ
 o2/LKkaP4ze2M3l83iQXwB6lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRv
 Z5OSmpNZllqkb5egl7H32XT2grk8Fe9nT2BrYNzO2cXIySEhYCKx5+odti5GLg4hgaWMEh3H
 57JBJKQlGk+vZoKwhSX+XOuCKvrEKNH8/x4zSIJNwFzi0fYzYEUiAsoSk+9NZwYpYhboZJVY
 8eQI2CRhASeJZ+9OsoPYLAKqEn0rvrCC2LwCzhJfvk9lhtggL9G5YzcLRFxQ4uTMJ2A2M1C8
 eets5gmMfLOQpGYhSS1gZFrFKJJaWpybnltspFecmFtcmpeul5yfu4kRGGfbjv3csoOx613w
 IUYBDkYlHl6HFO1YIdbEsuLK3EOMEhzMSiK8tl+BQrwpiZVVqUX58UWlOanFhxhNgY6dyCwl
 mpwPTAF5JfGGpobmFpaG5sbmxmYWSuK8HQIHY4QE0hNLUrNTUwtSi2D6mDg4pRoY5xSkh//Q
 Zv/bVBwmmFD1wTHl59Tvdsm7E9TvGmqe/752sUJSBZtVe35lgcF8KckTNREaV46+Pr7unP9O
 hTm7mqq8wjjy25OV3i7le1iz8/U78aKXa5c6Z/8T37Gdqf2N6oG5/0MSfxau3HXv9LGbWcXt
 W1S/XZpQF29UOafgknhB0fXSjd92KLEUZyQaajEXFScCAOtXNgrJAgAA
X-CMS-MailID: 20190715120430eucas1p1dd216e552403899e614845295373e467
X-Msg-Generator: CA
X-RootMTR: 20190715120430eucas1p1dd216e552403899e614845295373e467
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715120430eucas1p1dd216e552403899e614845295373e467
References: <CGME20190715120430eucas1p1dd216e552403899e614845295373e467@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_050436_185463_40DCC25A 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 linux-samsung-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, devicetree@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

The main purpose of this patch series is to add coupled regulators for
Exynos5422/5800 to keep constrain on voltage difference between vdd_arm
and vdd_int to be at most 300mV. In exynos-bus instead of using
regulator_set_voltage_tol() with default voltage tolerance it should be
used regulator_set_voltage_triplet() with volatege range, and this is
already present in opp/core.c code, so it can be reused. While at this,
move setting regulators into opp/core.

This patchset was tested on Odroid XU3.

The last patch depends on two previous.

Changes in v2:

- improve regulators enable/disable code in opp/core as suggested by
  Viresh Kumar
- add new patch for remove unused dt-bindings as suggested by Krzysztof
  Kozlowski

Regards,
Kamil

Kamil Konieczny (3):
  opp: core: add regulators enable and disable
  devfreq: exynos-bus: convert to use dev_pm_opp_set_rate()
  dt-bindings: devfreq: exynos-bus: remove unused property

Marek Szyprowski (1):
  ARM: dts: exynos: add initial data for coupled regulators for
    Exynos5422/5800

 .../bindings/devfreq/exynos-bus.txt           |   2 -
 arch/arm/boot/dts/exynos5420.dtsi             |  34 ++--
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi |   4 +
 arch/arm/boot/dts/exynos5800-peach-pi.dts     |   4 +
 arch/arm/boot/dts/exynos5800.dtsi             |  32 ++--
 drivers/devfreq/exynos-bus.c                  | 172 +++++++-----------
 drivers/opp/core.c                            |  18 +-
 7 files changed, 122 insertions(+), 144 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
