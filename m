Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 393B184DB5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 15:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=l4Ufb6Eneuaw7O01/8hJW6Olmp5PJRrXxyNzLDsBPh4=; b=TFZUXBNxqwcPDD
	+8uVOdMkHyBEFs39QhtJvrJJuNWwxhxu4nqVeKQQ1i4Myc42oxNUFSxjL6j6yEgbr5uuysy6eZ8N8
	gPs07or4VcVLk8OhR842ASKA8Q8W/ciD8eov+Y5kp/KU02leFqiee2CUDgB77EX+yOHYC5MvF6yco
	qfkDxYW3yIGXEr0HJIj7eusphyW9ik06ILtkAt19eDWwxH0X3mRTo5W6AbyuIjtGcj1e++CJncPKv
	vahSxOTvUIcRiFvjfAtdK38GclC5juy4RVU3ihC8TfDUwCXa9Es0MbVjUDNVJTdBa1ESDgkPx9dtQ
	HXxPfzCyhRQx9svhsn7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvMB4-0004OZ-Sa; Wed, 07 Aug 2019 13:40:31 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvM9e-0002BC-9w
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 13:39:05 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190807133857euoutp028b05fdd007c5ca711a46c39fc4017fbb~4p5cbxWL01793017930euoutp024
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  7 Aug 2019 13:38:57 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190807133857euoutp028b05fdd007c5ca711a46c39fc4017fbb~4p5cbxWL01793017930euoutp024
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565185137;
 bh=EmslgonStTRrL/u4P7UDkmcHxhjWmImBf/o0FvYqLms=;
 h=From:To:Cc:Subject:Date:References:From;
 b=o2lClRmryNRerIqoPHfA7hDtMMvGNhcIvxyUESVaKerIED+wppBWfInu98Ln/58kd
 Ljf9RUtMKBkCwyqp7gxtoszx3bBkg0MCdBgxwOeKxnfueRV8cKAKK7OFTUa7qKi2Kh
 GtPFV8Ym2WcmFkfsf4S5bjzV70I0nBdGJMrh+zIY=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190807133857eucas1p2f55ef233cdb6008e414af50a35ceaee4~4p5bktSz61100111001eucas1p2M;
 Wed,  7 Aug 2019 13:38:57 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 1A.F6.04374.074DA4D5; Wed,  7
 Aug 2019 14:38:56 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190807133855eucas1p1cab425b791262e8dee1b17cbe8b1b3da~4p5amdPUC1968119681eucas1p1J;
 Wed,  7 Aug 2019 13:38:55 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190807133855eusmtrp144ac7bade6c0fb9ef41271cd4c3a5394~4p5aXxtZl3034030340eusmtrp1x;
 Wed,  7 Aug 2019 13:38:55 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-04-5d4ad470f051
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 76.AE.04166.F64DA4D5; Wed,  7
 Aug 2019 14:38:55 +0100 (BST)
Received: from AMDC3218.DIGITAL.local (unknown [106.120.51.18]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190807133854eusmtip239525b74c72cfe59383812ea79a8ef1a~4p5ZqloQ71919719197eusmtip2b;
 Wed,  7 Aug 2019 13:38:54 +0000 (GMT)
From: k.konieczny@partner.samsung.com
To: k.konieczny@partner.samsung.com
Subject: [PATCH v5 0/4] add coupled regulators for Exynos5422/5800
Date: Wed,  7 Aug 2019 15:38:34 +0200
Message-Id: <20190807133838.14678-1-k.konieczny@partner.samsung.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrHKsWRmVeSWpSXmKPExsWy7djPc7oFV7xiDS6c1rLYOGM9q8X1L89Z
 LeYfOcdq0bfvP6NF/+PXzBbnz29gtzjb9IbdYtPja6wWl3fNYbP43HuE0WLG+X1MFmuP3GW3
 WHr9IpPF7cYVbBZvfpxlsmjde4Td4t+1jSwWmx8cY3MQ8lgzbw2jx6ZVnWwem5fUexx8t4fJ
 o2/LKkaP4ze2M3l83iQXwB7FZZOSmpNZllqkb5fAlfHgwTWWgqXCFVdbVrE2MB7h72Lk5JAQ
 MJFYtuIpYxcjF4eQwApGiUObTjCCJIQEvjBKtPwOg0h8ZpR40DoHKMEB1rHkEBdEfDmjxPfN
 i9ghHKCG2y/OsYJ0swmoSmyZ8ZIdxBYRUJaYfG86M0gRs8BPFokNlzeCJYQFnCTW7HzGBmKz
 ADVMWHMcbDWvgIvE9C/LWCDuk5fo3LGbBSIuKHFy5hMwmxko3rx1NthQCYFr7BK3Zq1mg2hw
 kdj+4iJUs7DEq+Nb2CFsGYnTk3ug4uUSTxf2sUM0twD91v4RKmEtcfj4RVaQP5kFNCXW79KH
 CDtK7Dm2hBXifT6JG28FIW7gk5i0DeQxkDCvREebEES1rsS8/2dYIWxpia7/66BsD4nPvWeh
 oRsrce9bB8sERoVZSD6bheSzWQg3LGBkXsUonlpanJueWmycl1quV5yYW1yal66XnJ+7iRGY
 6k7/O/51B+O+P0mHGAU4GJV4eBkueMUKsSaWFVfmHmKU4GBWEuG9V+YZK8SbklhZlVqUH19U
 mpNafIhRmoNFSZy3muFBtJBAemJJanZqakFqEUyWiYNTqoFxo+Omk8+e8PcvbnB5pXjZqO35
 r9WzXzYZlX+LlL677dSi/1kH3k9fkLLX8Gfz0s/7/H6VaVqzvDTcWZURv2zr9dnmLR3fb7wS
 F47ysI30vfT8l9xTPaXiGpmayTorerYtTVILZC2z01dU2/LJfWJa8q2aBZG6np86au0/qp00
 Xi55fb3oGu+pSizFGYmGWsxFxYkA7/csynEDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKIsWRmVeSWpSXmKPExsVy+t/xe7r5V7xiDR436lhsnLGe1eL6l+es
 FvOPnGO16Nv3n9Gi//FrZovz5zewW5xtesNusenxNVaLy7vmsFl87j3CaDHj/D4mi7VH7rJb
 LL1+kcniduMKNos3P84yWbTuPcJu8e/aRhaLzQ+OsTkIeayZt4bRY9OqTjaPzUvqPQ6+28Pk
 0bdlFaPH8RvbmTw+b5ILYI/SsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaPtTIyVdK3
 s0lJzcksSy3St0vQy3jw4BpLwVLhiqstq1gbGI/wdzFycEgImEgsOcTVxcjFISSwlFFixduH
 zF2MnEBxaYnG06uZIGxhiT/Xutggij4xSlxcuQGsiE1AVWLLjJfsILaIgLLE5HvTmUGKmAU6
 WSVWPDnCBpIQFnCSWLPzGZjNAtQwYc1xRhCbV8BFYvqXZSwQG+QlOnfsZoGIC0qcnPkEzGYG
 ijdvnc08gZFvFpLULCSpBYxMqxhFUkuLc9Nziw31ihNzi0vz0vWS83M3MQKjbNuxn5t3MF7a
 GHyIUYCDUYmHl+GCV6wQa2JZcWXuIUYJDmYlEd57ZZ6xQrwpiZVVqUX58UWlOanFhxhNgY6d
 yCwlmpwPTAB5JfGGpobmFpaG5sbmxmYWSuK8HQIHY4QE0hNLUrNTUwtSi2D6mDg4pRoY2SZm
 /ODl8XX57H+SoUyEN7Sk12DpcrEsvls+J9mSHSqmT/rtsz3Au3CX55oplYrCvLvnOu1ztrOa
 cdyD9f3ElaxV51LuLQo73rhkgjZf2oKcaxJ+GprlwXF5t/M+i85r5lg54ePlNb8vJMz7H/hj
 nsKF6ax3vzg8nWa0uGjZ+sliEfuWvjobosRSnJFoqMVcVJwIADSoXbPIAgAA
X-CMS-MailID: 20190807133855eucas1p1cab425b791262e8dee1b17cbe8b1b3da
X-Msg-Generator: CA
X-RootMTR: 20190807133855eucas1p1cab425b791262e8dee1b17cbe8b1b3da
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190807133855eucas1p1cab425b791262e8dee1b17cbe8b1b3da
References: <CGME20190807133855eucas1p1cab425b791262e8dee1b17cbe8b1b3da@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_063902_478659_7792BFCA 
X-CRM114-Status: GOOD (  17.97  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
