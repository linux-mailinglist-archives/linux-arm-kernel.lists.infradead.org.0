Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 161C17518C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 16:43:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=y0+vJxKiV5+8qhHd17E53Hc1kP/eV0GW8wWtycD3qZ8=; b=gGfhXkudW8HfYV
	QQdrpk7QKryfGJ0BfRQbvzIl5xRaKaUd56H4PeQcxjgqgnPhIYO1OgOFHpk1Fw1yJ/4pqh6XuaEQ+
	kEfzESFM/FlD0mnYYNgf8vsRrf/cNHWcDr0mG2K7u00PqA+wOzJoTZBK833U53pVF481GOp1fdTh+
	2HqPHEPmrE/7hSXrz5C7JxIhgAzRnxQiM1TEpzUBf2fl3J5ekL+TDlTxjOAcxVEC3K795Tah+R2N0
	/9si+0DHHJwMv4FxnUKn3KxnMo/JzsqGUC8QUv/pkaPONqWdbRqANLyPJsXRXore0I8m+qeZhekDv
	teItXguWS4ayRB76ay0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqey7-0003i2-Cb; Thu, 25 Jul 2019 14:43:43 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqexs-0003gj-2n
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 14:43:29 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190725144325euoutp02bdb1c68497a84792ea15367a4f080ea6~0rZA5GqV11162511625euoutp02Z
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 14:43:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190725144325euoutp02bdb1c68497a84792ea15367a4f080ea6~0rZA5GqV11162511625euoutp02Z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1564065805;
 bh=fTxsTItMIO6fk/T/Y/JJ5cFwuR3QiqOaNKtLjYnGyLk=;
 h=From:To:Cc:Subject:Date:References:From;
 b=XRHtCxDONwi74D0Km6mjvW2+TKkaJgV9GypOJ3Y7l/mnPZLO7vL3zKluDnNl1ook0
 GtlgsM8YLDhXiMfUkfHQuH11FJ8VwJhN/N5/tSob+6TKmlMsgmCWt1L8+BIJWzH2mE
 dKhMnmer50Mq055wGlQBsvIFAyozpzOihVkGJiiM=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190725144325eucas1p18cf1b48a38ea5edc5ca14cfb02667bd9~0rZAcUfzw0610606106eucas1p1q;
 Thu, 25 Jul 2019 14:43:25 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id FA.CA.04377.C00C93D5; Thu, 25
 Jul 2019 15:43:24 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190725144324eucas1p211802237e336852ea3d1aa003e4d5d04~0rY-ufs-E1530115301eucas1p2j;
 Thu, 25 Jul 2019 14:43:24 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190725144324eusmtrp1574d00d9799d7541f670120b75db0286~0rY-gBYh00712207122eusmtrp1g;
 Thu, 25 Jul 2019 14:43:24 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-8f-5d39c00c32a1
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 4C.2E.04146.B00C93D5; Thu, 25
 Jul 2019 15:43:24 +0100 (BST)
Received: from AMDC3218.DIGITAL.local (unknown [106.120.51.18]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190725144323eusmtip1e5504cd19a90caef2209149ce0b9ebce~0rY_yRF4u0146301463eusmtip1j;
 Thu, 25 Jul 2019 14:43:23 +0000 (GMT)
From: k.konieczny@partner.samsung.com
To: k.konieczny@partner.samsung.com
Subject: [PATCH v4 0/5] add coupled regulators for Exynos5422/5800
Date: Thu, 25 Jul 2019 16:42:55 +0200
Message-Id: <20190725144300.25014-1-k.konieczny@partner.samsung.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHe3d2do6y2XEKvmmYLYQM1OyCrxSieWFfhKg+dEFq5UElrzte
 WkGZZV5S08SczkwrUdRS5zWnZrqcZma2vBXmwPKSFpQL0sy17Vj57ff8n+f/8PzhITHhFG5P
 hkfF0dIoSYSIZ8lt7l0ecuV3eQXvvtnjjurltTga08/i6J76FY6yOw0A3ZpewNDQUB2BBpMX
 CaScHsWRtq2Yh5ay1ADJhzo56JF6kkDlY8Mc9P5qJQ8t/hzkoJQONYHWRuu5qEHXy/MRimtK
 aoBYWZXOEzc8vCJ+9rWdI85urAJizXgLR7ykdDxMnLQ8GEJHhCfQUnfvM5Zhmpx2ImZceKHk
 xxRIAimbM4AFCal9sHhghcgAlqSQqgRwoqmMwxZ6AJOGZzC2WAKwYuSXcYw0W7R9nqxeAaDq
 7Szxz5GiL8JNe3mUM2yUzxMmtqV2wLwPBeZNGLXMhXXaenPDhjoE07sqzcw1GuSK+5iJBZQ/
 VKkmAXvgNpjequKyujXsL/xoZsyoX2tSmJdCapSAfdV1HNbgD+UvvnNZtoGfNY0Ey1vhQF7m
 up4IP5VlE6z5OoC61G/rjQOwRzOMm3JilAusbXNnZV/4JDUNsPGt4PgXa/YGK3i72RTMJAtg
 2g0hO+0KSwwvcZYdYIbh8TqL4ZunqeaIQioY5j5YwHKAU9GGZEUbkhX9v6EUYFXAjo5nIkNp
 Zk8UnejGSCKZ+KhQt3PRkUpgfLuBNY2+FbStnu0GFAlEfMHOKq9gIS5JYGSR3QCSmMhW0NRq
 lAQhEtlFWhp9WhofQTPdwIHkiuwElzbpTgmpUEkcfZ6mY2jp3y6HtLBPAmEG/m+D7PiK1aw+
 JLVFI5d5xxUe6XZ4l6tyLF/NSppPqM7vcVHqBrUBPgOOFRkdBVZ+eHvu7POsEcrudUTm3MTl
 UmdRYFD2Xa2bYq9Hf/Sx5PhYBeXnELj9hDv/Du4tZ7aEBqliDUpyZF43l59T6Rl+NJjvu39U
 0d7l1DMTIOIyYRKPXZiUkfwBwuj3Z3IDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKIsWRmVeSWpSXmKPExsVy+t/xu7o8ByxjDRqeM1psnLGe1eL6l+es
 FvOPnGO16Nv3n9Gi//FrZovz5zewW5xtesNusenxNVaLy7vmsFl87j3CaDHj/D4mi7VH7rJb
 LL1+kcniduMKNos3P84yWbTuPcJu8e/aRhaLzQ+OsTkIeayZt4bRY9OqTjaPzUvqPQ6+28Pk
 0bdlFaPH8RvbmTw+b5ILYI/SsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaPtTIyVdK3
 s0lJzcksSy3St0vQyzg+YQ97wQ2hinlf7zM2MLbydzFycEgImEhcPmHexcjFISSwlFHiXesH
 9i5GTqC4tETj6dVMELawxJ9rXWwQRZ8YJS5NOc4KkmATUJXYMuMlWIOIgLLE5HvTmUGKmAU6
 WSVWPDnCBpIQFnCS6DywAqyIBahhxuxFzCA2r4CLxO7ddxkhNshLdO7YzQIRF5Q4OfMJmM0M
 FG/eOpt5AiPfLCSpWUhSCxiZVjGKpJYW56bnFhvqFSfmFpfmpesl5+duYgRG2bZjPzfvYLy0
 MfgQowAHoxIP74XllrFCrIllxZW5hxglOJiVRHi37gAK8aYkVlalFuXHF5XmpBYfYjQFOnYi
 s5Rocj4wAeSVxBuaGppbWBqaG5sbm1koifN2CByMERJITyxJzU5NLUgtgulj4uCUamCsl9/2
 TW4Ol888OwO/7MIHe5ikAwse71vZeG1xrSff/qAL8fO4f8hX+u7NOvvqtveL8wurWoTWHmg2
 DD9dutcp9ZJDE/Pp+qSLgraGanfVDolttZmebbKYkWeyN8s0dz6fgzsnPN83x+96+fWiv7Pn
 2VyakdnQYxW+lacj88ijYxoPHv2cELtPiaU4I9FQi7moOBEA3JUTeMgCAAA=
X-CMS-MailID: 20190725144324eucas1p211802237e336852ea3d1aa003e4d5d04
X-Msg-Generator: CA
X-RootMTR: 20190725144324eucas1p211802237e336852ea3d1aa003e4d5d04
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190725144324eucas1p211802237e336852ea3d1aa003e4d5d04
References: <CGME20190725144324eucas1p211802237e336852ea3d1aa003e4d5d04@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_074328_325930_BBF22318 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
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

The DTS coupled regulators patch depends on previous patches.

Changes:
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

Kamil Konieczny (4):
  devfreq: exynos-bus: correct clock enable sequence
  devfreq: exynos-bus: convert to use dev_pm_opp_set_rate()
  dt-bindings: devfreq: exynos-bus: remove unused property
  devfreq: exynos-bus: remove exynos_bus_passive_target()

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
