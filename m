Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEA76E7C7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 17:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=eU6r69zmDgoK4MG1pm3+Y0E4Be+fUKvnXV6oemMTvKg=; b=YM+7RZtPfvQY+3
	JwqkV8pDpXzyjsF8POJkegiwucvQDqnj6JPHmwt3MCv9zEECWVbJZf7MrUS5Z+j4O6kZHZ0sub2fW
	V3ShcBgKeRWSKNkqFyt53FFzEI0YGlvgYzlLHSaK+OquZGiL7VwbvFgOWomjvcwLH80MwbfPm422/
	uKlBDxHw7LnfT21NgiqjdvhXCJsd5FufTwWD+aQ1SSZaX2N/kN7KjBDEzuyf1zS6j4KBI83dFZbFT
	HnQfJhahsUbr/McBGei0mU9/pNmshifJUlcr7zWGB877fMoVFSjJBlNk+YFjM1GM5K07CMhErLXeo
	NEv11VLDezoJqUJK22cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoUTf-0003Z7-Qn; Fri, 19 Jul 2019 15:07:19 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoUSO-0002gK-3Z
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 15:06:03 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190719150554euoutp0144449e61abd088f4a0aa439530afd9e4~y108BknQf1670816708euoutp01N
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 15:05:54 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190719150554euoutp0144449e61abd088f4a0aa439530afd9e4~y108BknQf1670816708euoutp01N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563548755;
 bh=jeFX2U5pvynczFNKiJiwvxKE4yjad+CXSaSviMj87sw=;
 h=From:To:Cc:Subject:Date:References:From;
 b=op0YPKd7sjaXgHd3/fkPFC435lk5VfDKaVdVaxXqSWlRceN7Ysuykw3lIeqHYWEvI
 xL/ksxuobMDo3G+v7tA7ZFe+2Jo5y5Fi8troJJFVPt9XTWLAKpKYqm5Z0LHVer3qeP
 0ig9otIKWqsfYW3pXqfFuaB6SfleMcF25Gr+OoCE=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190719150553eucas1p1cc26e201dfcc1e9767f995a4a85353a9~y107GI5Ir0634306343eucas1p14;
 Fri, 19 Jul 2019 15:05:53 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 5F.09.04377.15CD13D5; Fri, 19
 Jul 2019 16:05:53 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190719150553eucas1p142b965afae13224712d51f9c28162165~y106ROdDH3032530325eucas1p1t;
 Fri, 19 Jul 2019 15:05:53 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190719150552eusmtrp26e77e72562961e85c1ebe460b9bdbddf~y106AU4Iz3114831148eusmtrp28;
 Fri, 19 Jul 2019 15:05:52 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-71-5d31dc51d88f
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 9D.F6.04140.05CD13D5; Fri, 19
 Jul 2019 16:05:52 +0100 (BST)
Received: from AMDC3218.DIGITAL.local (unknown [106.120.51.18]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190719150551eusmtip13b1975a61126609daf2c674be6794fda~y105N_wS72820728207eusmtip1i;
 Fri, 19 Jul 2019 15:05:51 +0000 (GMT)
From: k.konieczny@partner.samsung.com
To: k.konieczny@partner.samsung.com
Subject: [PATCH v3 0/5] add coupled regulators for Exynos5422/5800
Date: Fri, 19 Jul 2019 17:05:30 +0200
Message-Id: <20190719150535.15501-1-k.konieczny@partner.samsung.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrHKsWRmVeSWpSXmKPExsWy7djP87qBdwxjDSZ91LTYOGM9q8X1L89Z
 LeYfOcdq0bfvP6NF/+PXzBbnz29gtzjb9IbdYtPja6wWl3fNYbP43HuE0WLG+X1MFmuP3GW3
 WHr9IpPF7cYVbBZvfpxlsmjde4Td4t+1jSwWmx8cY3MQ8lgzbw2jx6ZVnWwem5fUexx8t4fJ
 o2/LKkaP4ze2M3l83iQXwB7FZZOSmpNZllqkb5fAldF0aRdLwT3+ilW9L1kbGNfwdDFyckgI
 mEhMaDvHCmILCaxglFj+jL2LkQvI/sIosfPVcSjnM6PEpPs7gRwOsI7FS3wg4ssZJS48f8sG
 17HpXw8jyCg2AVWJLTNesoPYIgLKEpPvTWcGKWIW+MkiseHyRrCEsICTxIujy8F2swA17P/e
 zAJi8wq4SOz4eYoF4j55ic4du6HighInZz4Bs5mB4s1bZ4MNlRC4xi6xpWsXK0QDUPPZtewQ
 trDEq+NboGwZif875zNB2OUSTxf2sUM0tzBKPGj/CLXNWuLw8YusIH8yC2hKrN+lDxF2lHhw
 fhsTxPt8EjfeCkLcwCcxaRvIYyBhXomONiGIal2Jef/PQF0jLdH1fx2U7SFx4vElZkhQx0rM
 2XeBcQKjwiwkn81C8tkshBsWMDKvYhRPLS3OTU8tNspLLdcrTswtLs1L10vOz93ECEx1p/8d
 /7KDcdefpEOMAhyMSjy8H24ZxgqxJpYVV+YeYpTgYFYS4b39Uj9WiDclsbIqtSg/vqg0J7X4
 EKM0B4uSOG81w4NoIYH0xJLU7NTUgtQimCwTB6dUA+NUzUKmpen75bbttjnCKfHjVGpvxv+W
 maFKeatZIvwMD2gFfedr2J3AZfD0SDaLWUB4hegx917G+kNXq5weL9OJPrYubPKrCRtr1baw
 vLcu/Dcl3/FRaG+6TKGJ5CUmCw3VNJ+Jf2V+5wY91Lhnob/kp3jx5lkSG7h6tGct+v1TM7sh
 IOZZuRJLcUaioRZzUXEiAGIVwbtxAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKIsWRmVeSWpSXmKPExsVy+t/xu7oBdwxjDZrPa1lsnLGe1eL6l+es
 FvOPnGO16Nv3n9Gi//FrZovz5zewW5xtesNusenxNVaLy7vmsFl87j3CaDHj/D4mi7VH7rJb
 LL1+kcniduMKNos3P84yWbTuPcJu8e/aRhaLzQ+OsTkIeayZt4bRY9OqTjaPzUvqPQ6+28Pk
 0bdlFaPH8RvbmTw+b5ILYI/SsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaPtTIyVdK3
 s0lJzcksSy3St0vQy2i6tIul4B5/xarel6wNjGt4uhg5OCQETCQWL/HpYuTiEBJYyihxfecJ
 li5GTqC4tETj6dVMELawxJ9rXWwQRZ8YJRrmfGMGSbAJqEpsmfGSHcQWEVCWmHxvOjNIEbNA
 J6vEiidH2EASwgJOEi+OLmcFsVmAGvZ/bwbbwCvgIrHj5ymobfISnTt2Q8UFJU7OfAJmMwPF
 m7fOZp7AyDcLSWoWktQCRqZVjCKppcW56bnFRnrFibnFpXnpesn5uZsYgVG27djPLTsYu94F
 H2IU4GBU4uH9cMswVog1say4MvcQowQHs5II7+2X+rFCvCmJlVWpRfnxRaU5qcWHGE2Bjp3I
 LCWanA9MAHkl8YamhuYWlobmxubGZhZK4rwdAgdjhATSE0tSs1NTC1KLYPqYODilGhhnLTl7
 KKrkvcezz663f8dIP7kstDFUKqzHUunNJ21PBmsx5g6LfwkTYn5VPpznfHhzjMCMyW6vMqJK
 5vp1vFc5ovj8TN/MyuSz228qaD/KvJjWsHfSu5eb3bZMZtTWmyYfvGpt3wzRw/ku2jJfNxrL
 Myi6bN58rpb9wNyeRze2r9JWOieZ3laoxFKckWioxVxUnAgAUdvfXsgCAAA=
X-CMS-MailID: 20190719150553eucas1p142b965afae13224712d51f9c28162165
X-Msg-Generator: CA
X-RootMTR: 20190719150553eucas1p142b965afae13224712d51f9c28162165
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190719150553eucas1p142b965afae13224712d51f9c28162165
References: <CGME20190719150553eucas1p142b965afae13224712d51f9c28162165@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_080600_372339_04732C92 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

The DTS coupled regulators patch depends on 2nd and 3rd patches.

Changes:
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

Regards,
Kamil

Kamil Konieczny (4):
  devfreq: exynos-bus: correct clock enable sequence
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
 drivers/devfreq/exynos-bus.c                  | 181 ++++++------------
 drivers/opp/core.c                            |  16 +-
 7 files changed, 113 insertions(+), 160 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
