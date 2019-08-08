Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3B785DC5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 11:03:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=l4Ufb6Eneuaw7O01/8hJW6Olmp5PJRrXxyNzLDsBPh4=; b=UX+tTgZI67FVD4
	53BflQE0+o0WfIyUQZjwvtWgipKDoQ5LAhpT7FjfuURn3z0gErTCRUUKYYla2VQHCpj13z7DhdZxi
	7Y6bgs4A47qB9shpz1c7hZb2lOeUV/AOCBI9ZzPTdnI2BZ7j6sYC/lnpFIu5S2Ke1I3SK8ptcAXzq
	lMfuIwUIr6XF1f3MPB5BrFFGkzzcAWvZi1jPTstGCDZL1TGWQoCvijJYn4pvrBO2vt1hShV23DGR9
	optHXsMxfLsQbRKZzHWnYlV8dvux5NG5RuW+yalL0QGmr1LHkH3EvqbRI9ueicCKVrMWe7uLBH2B7
	7MEh7nM9yCGm8yidwX8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hveKH-00083G-Py; Thu, 08 Aug 2019 09:03:13 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hveJx-00081H-9I
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 09:02:54 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190808090251euoutp020e8a631f986349cb48b772046064030a~45xprYwde2175421754euoutp02P
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  8 Aug 2019 09:02:51 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190808090251euoutp020e8a631f986349cb48b772046064030a~45xprYwde2175421754euoutp02P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565254971;
 bh=EmslgonStTRrL/u4P7UDkmcHxhjWmImBf/o0FvYqLms=;
 h=From:To:Cc:Subject:Date:References:From;
 b=fARQgsjG2KPry9bGlgUCVs/b51lzMdFP+WCigJG6AUorSMJPcXYeX25c8G7s5mS7z
 RsTdpaccV3AssqbuSkNa0A99mHeTCyrvlsixp3A+5UmFzU4QZWSlmImpQW7F3kOWB1
 hJdEzSgXrjvq6E3ywQ0SCCuQ4m3EpHJft8ku2uHg=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190808090250eucas1p12af7dc98dc457a21ba04634483380e13~45xo6A7iq1972119721eucas1p1I;
 Thu,  8 Aug 2019 09:02:50 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 64.9E.04469.935EB4D5; Thu,  8
 Aug 2019 10:02:50 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190808090249eucas1p19944820d79ec211c85d9e1285f892f9c~45xoLMR_F2988729887eucas1p1O;
 Thu,  8 Aug 2019 09:02:49 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190808090249eusmtrp2451cd8f3c41bb0cc7e9400250b87362d~45xn89HN40888908889eusmtrp28;
 Thu,  8 Aug 2019 09:02:49 +0000 (GMT)
X-AuditID: cbfec7f2-54fff70000001175-3d-5d4be539e327
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 5D.A1.04117.935EB4D5; Thu,  8
 Aug 2019 10:02:49 +0100 (BST)
Received: from AMDC3218.DIGITAL.local (unknown [106.120.51.18]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190808090248eusmtip2518377b8b3e93d5d0b1add5351f55912~45xnPEzTZ3181431814eusmtip2i;
 Thu,  8 Aug 2019 09:02:48 +0000 (GMT)
From: Kamil Konieczny <k.konieczny@partner.samsung.com>
To: k.konieczny@partner.samsung.com
Subject: [RESEND PATCH v5 0/4] add coupled regulators for Exynos5422/5800
Date: Thu,  8 Aug 2019 11:02:30 +0200
Message-Id: <20190808090234.12577-1-k.konieczny@partner.samsung.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRjuO5ed42h2nGEfGiaroCSvBH5dTZA45o/qR1CG2dKDWjpl85JG
 mWWZZssUSqdpWdJaltNSl5WVDmelLlOXmNrULEwTvEQZ4XI7i/r3vO/zPN/7Pi8fjYsHSVc6
 VpbEyWXSOIlASNS3znd6bR4LDfeduouhmqJqEr2f+0Kicn0niZRNFoAuj07gyGjUUqjjzCSF
 akdNJOpuLBWg2Ut6gIqMTRi6rx+kUOX7Lgx9yFQL0OTPDgyde6an0IKphkAPza2CHWK2qqwK
 sLWaHAH78HYG+3LqKcYqH2kAa+hrwNjZWvc9VJhwaxQXF5vCyX22HxbGmM0mIrHS+XhvloY8
 DfTLcgFNQ2YjLP10MhcIaTGjBjDv4mcsFzgsFnMAftNRPDELoLpxwEZYDQW9LzCeuAPgiDET
 54tFx3jhvMCqEjABcKSh3eZYzqyGhUPXbCKcmSegtruGss52ZkKgTutv1RDMWtjw8TOwYhET
 DHWaUpKftgrm6J4QfN8Jvir+ZMP4Yv9sXYntTciYKNi7kA14QzDsevnabnaGXw2PKB6vhJbH
 5fYIqXDsppLizVkAmrOnCZ7YAlsMXaR1OZxZD6sbffh2ECzRqQn+Xo6w75sTv4MjLKi35rK2
 RfDCeTGv9oJllnb7Bm4w1/LAjllY9PSKgL9uOBz/1YTlAw/Vf8lU/yVT/dvhBsA1YAWXrIiP
 5hR+Mi7VWyGNVyTLor0jE+JrweKne7NgmNGB7++ONAOGBpKlosS20HAxKU1RpMU3A0jjkuWi
 oZSQcLEoSpqWzskTIuTJcZyiGbjRhGSF6MQS80ExEy1N4o5xXCIn/8titIPrabBPqftx2Ldr
 Z8C2dT/cg3rfFm9QeWb3p1evubd7sp4oC/ToPxrZPOuboE5o3R6bk7EpMMRjqs7sGOnU023U
 ss4tgwOasOczFfP5fT1joXrKVxgslJp+R9yqLIu4ruzuVPkN7R++emhiw94ClyeZu4any08d
 SGrjotoZ7zyti7t/hYRQxEj9PHG5QvoHdCGYN3ADAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKIsWRmVeSWpSXmKPExsVy+t/xe7qWT71jDWa/E7TYOGM9q8X1L89Z
 LeYfOcdq0bfvP6NF/+PXzBbnz29gtzjb9IbdYtPja6wWl3fNYbP43HuE0WLG+X1MFmuP3GW3
 WHr9IpPF7cYVbBZvfpxlsmjde4Td4t+1jSwWmx8cY3MQ8lgzbw2jx6ZVnWwem5fUexx8t4fJ
 o2/LKkaP4ze2M3l83iQXwB6lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRv
 Z5OSmpNZllqkb5egl/HgwTWWgqXCFVdbVrE2MB7h72Lk5JAQMJGYdPUAUxcjF4eQwFJGiWu3
 jzBCJKQlGk+vZoKwhSX+XOtigyj6xCix6eVaFpAEm4C5xKPtZ8CKRASUJSbfm84MUsQs0Mkq
 seLJEaAODg5hAU+JHRuMQGpYBFQltt9/BraAV8BFYseqOawQC+QlOnfsZoGIC0qcnPkEzGYG
 ijdvnc08gZFvFpLULCSpBYxMqxhFUkuLc9Nzi430ihNzi0vz0vWS83M3MQKjbNuxn1t2MHa9
 Cz7EKMDBqMTDW3DCO1aINbGsuDL3EKMEB7OSCO+9Ms9YId6UxMqq1KL8+KLSnNTiQ4ymQMdO
 ZJYSTc4HJoC8knhDU0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2M86/c
 q/kZuLTqda/WJaXvL/6nVgpbet0oc6vzCk0J2LZ8ZeOtF4yN63f9eXl0ScjSjfHH0w5u+B9s
 KvRCjnle8OzzeQcjX7zM2LfFY9VNpbquHiGB7WrmFV7uC6LnTq84m7LyrfxpvWV9YVffZO+y
 Y9Y8WBN9/qxNnfQqkdN/z6vV/W0yncfYocRSnJFoqMVcVJwIAAVgHcbIAgAA
X-CMS-MailID: 20190808090249eucas1p19944820d79ec211c85d9e1285f892f9c
X-Msg-Generator: CA
X-RootMTR: 20190808090249eucas1p19944820d79ec211c85d9e1285f892f9c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190808090249eucas1p19944820d79ec211c85d9e1285f892f9c
References: <CGME20190808090249eucas1p19944820d79ec211c85d9e1285f892f9c@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_020253_459900_243C8E89 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

The DTS coupled regulators patch depends on previous patches.

Changes:
v5:
- squashed last patch "remove exynos_bus_passive_target()" into second
- added Acked-by to patch "correct clock enable sequence"
v4:
- removed "opp: core: add regulators enable and disable" from patchset
  as it was applied by Viresh Kumar and changed cover letter
- fix patch "devfreq: exynos-bus: correct clock enable sequence" to
  correct order of enable/disable
- removed unrelated changes in "devfreq: exynos-bus: convert to use
  dev_pm_opp_set_rate()"
- added new patch "devfreq: exynos-bus: remove exynos_bus_passive_target()"
  as suggested by Chanwoo Choi
v3:
- added new exynos-bus patch to correct clock and regulator enabling
  and disabling sequence as suggested by Chanwoo Choi
- corrected error path in enable and improved commit message in opp/core
- improve comment in devfreq/exynos-bus.c before devfreq_recommended_opp()
- change cover letter as there is new patch
- added note before Signed-off-by in 4th patch
v2:
- improve regulators enable/disable code in opp/core as suggested by
  Viresh Kumar
- add new patch for remove unused dt-bindings as suggested by Krzysztof
  Kozlowski

Kamil Konieczny (3):
  devfreq: exynos-bus: correct clock enable sequence
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
 drivers/devfreq/exynos-bus.c                  | 153 +++++-------------
 6 files changed, 78 insertions(+), 151 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
