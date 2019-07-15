Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1B868886
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:05:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oTOBfSbNtaD0rWk28Jhm490ZlKZxqneCPNzELGCXsvk=; b=KyPBkws9stt2Ar
	aDJkQ0QMsf7zkuaKdZVy0O6H1CUHkrvsJofsA0bLkVk7Kph/hyHrnw69y5dPK6M9584jJbpxLjmUq
	zZE5yjbCFrCz+aoi7+32YMFGvmZZMhTs0erhTWbBj9k07kusq3yYTsHwKnpgQYC2aBsixye52H+8a
	km/LQa9pRrzOjn/1NFugOR5iZQbMHjyIq5u0CV+Ga49fHeayJRKcOgc0wTQ1VsLt9cA1iEtR/WApL
	TC8utFZoS2N6v06EnjuaiyT8X8ALudAmUWbsQZJ/yLvg3gbXQCnRoPMUq+QBRbMcKYKdMKp2xmrXM
	KOFrN+kN1Xlsf6WRNhOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmzjc-0005kp-DY; Mon, 15 Jul 2019 12:05:36 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmzie-00045a-84
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:04:38 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715120434euoutp0231f0d72e7eb70ec2cfc0ee45186dc0eb~xkxeFGkqC1779217792euoutp02E
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:04:34 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190715120434euoutp0231f0d72e7eb70ec2cfc0ee45186dc0eb~xkxeFGkqC1779217792euoutp02E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563192274;
 bh=deotDvwiJ++2V78OBDhY7WFJ0ymM0V5ehFlhjHIxNPI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rhnmGs02kFaqDJ4fEtycKDaexICyGjj1xCkXiMkhQ3d+Jxo1MgUylYD2gLm+DTb5R
 Cv4lIyKO1fK4iT86RlAO7rLKap1zJSYjZ0wPBnJkDWEwImjpdA0rlxlRWWPZVLIiEp
 BxFxYuABngeGEIijYCNuJWXhegPf1pvHrwttvVWY=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190715120434eucas1p1e024921be76cc7d59315ae4a6a2e6585~xkxdWg48o1093110931eucas1p10;
 Mon, 15 Jul 2019 12:04:34 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 2C.6B.04325.1DB6C2D5; Mon, 15
 Jul 2019 13:04:33 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190715120433eucas1p26681c5c2d87423253b651d88446c538c~xkxcnaVvN1882118821eucas1p2Q;
 Mon, 15 Jul 2019 12:04:33 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715120433eusmtrp175e23c4f93d7b1731465914b6bf58341~xkxcZNt5N1141311413eusmtrp1Z;
 Mon, 15 Jul 2019 12:04:33 +0000 (GMT)
X-AuditID: cbfec7f5-b8fff700000010e5-b1-5d2c6bd13a44
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id DD.12.04140.1DB6C2D5; Mon, 15
 Jul 2019 13:04:33 +0100 (BST)
Received: from AMDC3218.DIGITAL.local (unknown [106.120.51.18]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190715120432eusmtip105676d3b9da5c82d3ba5d1d79e6dc7ce~xkxbow_MF1803018030eusmtip1O;
 Mon, 15 Jul 2019 12:04:32 +0000 (GMT)
From: Kamil Konieczny <k.konieczny@partner.samsung.com>
To: k.konieczny@partner.samsung.com
Subject: [PATCH v2 4/4] dt-bindings: devfreq: exynos-bus: remove unused
 property
Date: Mon, 15 Jul 2019 14:04:16 +0200
Message-Id: <20190715120416.3561-5-k.konieczny@partner.samsung.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190715120416.3561-1-k.konieczny@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01SWUwTURT1dWY6A1ozVBKu1iVWTQQVF1Re4hKNJs6HH0R/UEJ0lBEMi6al
 VDARFEUlggKJ1KIoIovsW4FUhVgaGhCtiAGMoiAQg1DFVKJEY207Rfk797xz7nnn5TGE/AO1
 iDkZFy+o4vgYpdSbbGyftq7rjl4bvmHy8iZcq6umcN/3TxS+a35B4cwWB8LXh8cJbLXW0Pj5
 hQka1w33UrjHeFuK7RlmhHXWFgmuNA/QuKivW4Lfni+V4omfzyX40hMzjf/01pK4frBdukvO
 VeRXIK6u7KqUq3+QzD398ljCZTaUIc7S3yTh7HVLQ+jD3tsjhJiTCYJq/c6j3lEZA53U6Urm
 zI2sQiIF6eh05MUAuxk6G+woHXkzcrYUgW48jRKH7wgah+ol4mBHMGbUUzOW1tyHHksJgvGO
 MfqfJaetx62SssHwsalL4sK+7ArIeZ9LuEQEO01CTU+tO30BewBe1vRIXZhkV0FXicVtlrF7
 IMP4Aolxy+Bq8yPShb3YvdD8oZ0WNT7QcWvEzRNOTaohzx0ArI2G8l/FzkWMc9gLU3os7lkA
 ny0NntaL4VnONVLEWhgtyKRF70UEg5e/eQ62QZul272HYP2h2rhepHfDWFmeZ/186Lf5iFeY
 D9mNro4uWgZX0uSieh3kO7o8D6eAdEeVB3NQkJpN3EDL9bPK6GeV0f/PvYeIMuQnaNSxkYI6
 KE7QBqr5WLUmLjLw+KnYOuT8ds/+WKaaUcvvYybEMkg5T7YrYk24nOIT1ImxJgQMofSV7Zhy
 UrIIPjFJUJ06otLECGoTUjCk0k92ds5gmJyN5OOFaEE4LahmTiWM16IUpDU4hgw1+5Omgzhd
 WlVrCVkYErovkN+iKh0KePVm689O7fmir6O8sNL/txaWFOAgzYllwsHHm9fU90+GEfLJH3pj
 wrvX+aFQGW4rvlCuCGnl2+4voX+tTiUEQ7Ipub1puyGs487IIdtcxa0Bf3Lhcp82GdwMjwoO
 CE7JOvdESaqj+I0BhErN/wXPEl1ucgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrHIsWRmVeSWpSXmKPExsVy+t/xu7oXs3ViDT7eZ7bYOGM9q8X1L89Z
 LeYfOcdq0bfvP6NF/+PXzBbnz29gtzjb9IbdYtPja6wWl3fNYbP43HuE0WLG+X1MFmuP3GW3
 WHr9IpPF7cYVbBZvfpxlsmjde4Td4t+1jSwWmx8cY3MQ8lgzbw2jx6ZVnWwem5fUexx8t4fJ
 o2/LKkaP4ze2M3l83iQXwB6lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRv
 Z5OSmpNZllqkb5egl9F79xRrwVqOigkTFzM3MM5g72Lk5JAQMJHYP30lYxcjF4eQwFJGiVN/
 JjBBJKQlGk+vhrKFJf5c62KDKPrEKPFk8UJWkASbgLnEo+1nwIpEBJQlJt+bzgxSxCzQySqx
 4skRNpCEsECAxOWjE1lAbBYBVYkzy4+DNfMKOEv07jrHCLFBXqJzx26wGk4BF4kd94+BnScE
 VNPyqp8Fol5Q4uTMJ2A2M1B989bZzBMYBWYhSc1CklrAyLSKUSS1tDg3PbfYSK84Mbe4NC9d
 Lzk/dxMjMC63Hfu5ZQdj17vgQ4wCHIxKPLwOKdqxQqyJZcWVuYcYJTiYlUR4bb8ChXhTEiur
 Uovy44tKc1KLDzGaAj0xkVlKNDkfmDLySuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGan
 phakFsH0MXFwSjUwLluwO8WdmWH/Nq54eb6HBxQfvrPpvxHItVk2e9miVRtmz899F3Th7OpL
 uX0LvOZmLm5JvGLM0ukc0GRlfW3Ki+MVC3vlrh8+kvRXz+xzhoqgEsvhef3c5om7UuuDHf9v
 WnOzdEl0lnfknd+cgSeWBjfIh33fxsruvmTVN2m9O7sZJeYYaLe1KrEUZyQaajEXFScCAIxj
 LBPhAgAA
X-CMS-MailID: 20190715120433eucas1p26681c5c2d87423253b651d88446c538c
X-Msg-Generator: CA
X-RootMTR: 20190715120433eucas1p26681c5c2d87423253b651d88446c538c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715120433eucas1p26681c5c2d87423253b651d88446c538c
References: <20190715120416.3561-1-k.konieczny@partner.samsung.com>
 <CGME20190715120433eucas1p26681c5c2d87423253b651d88446c538c@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_050436_420856_0603F953 
X-CRM114-Status: GOOD (  15.94  )
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

Remove unused DT property "exynos,voltage-tolerance".

Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
---
 Documentation/devicetree/bindings/devfreq/exynos-bus.txt | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
index f8e946471a58..e71f752cc18f 100644
--- a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
+++ b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
@@ -50,8 +50,6 @@ Required properties only for passive bus device:
 Optional properties only for parent bus device:
 - exynos,saturation-ratio: the percentage value which is used to calibrate
 			the performance count against total cycle count.
-- exynos,voltage-tolerance: the percentage value for bus voltage tolerance
-			which is used to calculate the max voltage.
 
 Detailed correlation between sub-blocks and power line according to Exynos SoC:
 - In case of Exynos3250, there are two power line as following:
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
