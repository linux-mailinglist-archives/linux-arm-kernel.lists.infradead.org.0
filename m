Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10476AEA8E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 14:37:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BQ7y9pGOwy6dKNe6Wmyi/R+NRTpr/b4ZCrpSkOIE39k=; b=KAkT031+z8VbvGHmm6FuyYt0lT
	WK1QLKj/9ZE0YtF49sdsqLYlG5OOQhvF6MU8XTvxbNiLE/QpvIBuR66jZwn3A49W6O43h7hMh80GY
	ABWCQXkcsbsSSA9nGgr65oc72ueRpYpsX+N9xf4OsjuVPxz0V4JEg/mwgm+wtLNRJ4P8MyXxyOMEI
	2cTqmSWVkhvPl2R798euvaAVrOtlQ+WM45j1NsNQdySbslHckfbTXEx1TV+dkMMUSiwvIwmVnkfWD
	HioIoMmLo6KPfE/JyFc3JJC80Jk/yW4vz47ncsrq8BPmK/yH9pcZ3XmDPJqBy0w+3+H69F5f7HBjC
	23Y7LCgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7fOj-0004Ph-CZ; Tue, 10 Sep 2019 12:37:29 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7fNx-0003rG-7U
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 12:36:42 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190910123638euoutp0224f54ca88c0f324dcc316b728776d9a4~DE_vamf0O2684026840euoutp02N
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 12:36:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190910123638euoutp0224f54ca88c0f324dcc316b728776d9a4~DE_vamf0O2684026840euoutp02N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568118999;
 bh=ageHcoP5yyUcbBzIKRba9vlDt9YVjqT0KkoUSzxprYw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZSpzF0/gmUzByPQj4mapOlwqx6g8v0VJDQIxhmSYcsHbb3kXitR1hRol4DQozavQX
 2vFRy8EJRvNiwnQRE9dCrGlKnirR2QZweiVEJvNF54lxNNbeOQw+tr5kzKJceAWSfM
 gGQ1awj1Kwd6jKdH1dYO3DKLu5/sBDbd+WGuPP9Q=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190910123638eucas1p217975a57a3d938b79bcd3c9afecdc6fb~DE_u3Qcb-1661016610eucas1p2u;
 Tue, 10 Sep 2019 12:36:38 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 52.EB.04469.6D8977D5; Tue, 10
 Sep 2019 13:36:38 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190910123637eucas1p26d2051f9bdd1bdf4510f1908ea98f641~DE_uIU1DJ1360413604eucas1p2u;
 Tue, 10 Sep 2019 12:36:37 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190910123637eusmtrp17d93565418338fe6a8edb22585aa325c~DE_uHa7Ij2381323813eusmtrp16;
 Tue, 10 Sep 2019 12:36:37 +0000 (GMT)
X-AuditID: cbfec7f2-569ff70000001175-68-5d7798d6b9fa
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id EB.EC.04117.5D8977D5; Tue, 10
 Sep 2019 13:36:37 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190910123636eusmtip11189d73e0cd292dac1eb81a70cbae68d~DE_tjHbJ71089810898eusmtip1v;
 Tue, 10 Sep 2019 12:36:36 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org, vireshk@kernel.org
Subject: [PATCH v4 2/6] dt-bindings: samsung: Update the CHIP ID binding
 documentation
Date: Tue, 10 Sep 2019 14:36:14 +0200
Message-Id: <20190910123618.27985-3-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190910123618.27985-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFuplleLIzCtJLcpLzFFi42LZduzned1rM8pjDfZPZLHYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y27RuvcIu8XhN+2sFpsfHGNz
 4PHYtKqTzWPzknqPvi2rGD0+b5ILYInisklJzcksSy3St0vgynjw6gBrQS9vxY0JT1gbGH9y
 dTFyckgImEjseTiNuYuRi0NIYAWjRNveVkYI5wujxOLr05ggnM+MEkeergbKcIC1nDnmBBFf
 ziixfWYDG1zH9pajLCBz2QQMJXqP9jGC2CIC6hKvTv0H28EssI5JYtmsZWCThAUiJJZMjACp
 YRFQlTi37hVYPa+AtcTKRZuZIe6Tl1i94QCYzSlgI3Fq9y6wiyQEutkl1izqY4O4yEVi+vMQ
 iHphiVfHt7BD2DISpyf3sEDUNzNK9Oy+zQ7hTGCUuH98ASNElbXE4eMXWUEGMQtoSqzfpQ8R
 dpS4tOYB1Hw+iRtvBUHCzEDmpG3TmSHCvBIdbUIQ1SoSv1dNZ4KwpSS6n/xngbA9JOYs2Qm2
 SEign1Hi5U7rCYzysxB2LWBkXMUonlpanJueWmyYl1quV5yYW1yal66XnJ+7iRGYSE7/O/5p
 B+PXS0mHGAU4GJV4eDtaymOFWBPLiitzDzFKcDArifBe7yuNFeJNSaysSi3Kjy8qzUktPsQo
 zcGiJM5bzfAgWkggPbEkNTs1tSC1CCbLxMEp1cAoejuT4+IaC3U3DplpqcuaEnfe/qUu4jjP
 147X/ezEa/yNQTs1BD0k85i8xM9mXv9+95arks/UuIZ5fe5T2hI8xV0CNsnHHJyykUd2cTf3
 v3/Ljrsm7U+v/cG7bWrq7zXtJ1S2ZyT5uEmJKf9gqGM4lrs07lCC7taMhUpPnX9O/q5fUtuq
 u1+JpTgj0VCLuag4EQAiRUw0IAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrLLMWRmVeSWpSXmKPExsVy+t/xu7pXZ5THGjw4K2uxccZ6Vov5R86x
 WvQ/fs1scf78BnaLTY+vsVpc3jWHzeJz7xFGixnn9zFZrD1yl92ide8RdovDb9pZLTY/OMbm
 wOOxaVUnm8fmJfUefVtWMXp83iQXwBKlZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwe
 a2VkqqRvZ5OSmpNZllqkb5egl/Hg1QHWgl7eihsTnrA2MP7k6mLk4JAQMJE4c8ypi5GLQ0hg
 KaPExQu3WSDiUhLzW5S6GDmBTGGJP9e62CBqPjFKrDs5hRUkwSZgKNF7tI8RpF5EQFNi7zqw
 GmaBHUwSe5/9ZQOJCwuESey5pQhSziKgKnFu3StGEJtXwFpi5aLNzBDz5SVWbzgAZnMK2Eic
 2r2LCcQWAqp5/XEK6wRGvgWMDKsYRVJLi3PTc4uN9IoTc4tL89L1kvNzNzECg3rbsZ9bdjB2
 vQs+xCjAwajEw9vRUh4rxJpYVlyZe4hRgoNZSYT3el9prBBvSmJlVWpRfnxRaU5q8SFGU6Cj
 JjJLiSbnAyMuryTe0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFMHxMHp1QDo+XE
 ffOsHuW8Zwl4WPjm+JzfX+Kbwv2mWU8J2/uqRDPJMsbdosNGsEqsffWtLZyueY92CZ0wZvS4
 uoN5y3PLPw+WZBvmxa4xFmsJf25xeUJ2/EvZSYt4zzTnL+zg33FieZqqAYvtgitz/ySqlnqv
 Lp2SLTMxhFl26u8DEYf0Otk860L6/HbsVWIpzkg01GIuKk4EAE9kh36AAgAA
X-CMS-MailID: 20190910123637eucas1p26d2051f9bdd1bdf4510f1908ea98f641
X-Msg-Generator: CA
X-RootMTR: 20190910123637eucas1p26d2051f9bdd1bdf4510f1908ea98f641
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190910123637eucas1p26d2051f9bdd1bdf4510f1908ea98f641
References: <20190910123618.27985-1-s.nawrocki@samsung.com>
 <CGME20190910123637eucas1p26d2051f9bdd1bdf4510f1908ea98f641@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_053641_415051_7288B9FD 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-pm@vger.kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds documentation of a new optional "samsung,asv-bin"
property in the chipid device node and documents requirement of
"syscon" compatible string.  These additions are needed to support
Exynos ASV (Adaptive Supply Voltage) feature.

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
Changes since v3:
 - none

Changes since v2:
 - corrected patch summary line prefix, the patch moved in the
   sequence

Changes since v1 (RFC):
 - new patch
---
 .../devicetree/bindings/arm/samsung/exynos-chipid.txt  | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.txt b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.txt
index 85c5dfd4a720..be3657e6c00c 100644
--- a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.txt
+++ b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.txt
@@ -1,12 +1,18 @@
-SAMSUNG Exynos SoCs Chipid driver.
+SAMSUNG Exynos SoC series CHIPID subsystem

 Required properties:
-- compatible : Should at least contain "samsung,exynos4210-chipid".
+- compatible : Should at least contain "samsung,exynos4210-chipid", "syscon".

 - reg: offset and length of the register set

+Optional properties:
+ - samsung,asv-bin : Adaptive Supply Voltage bin selection. This can be used
+   to determine the ASV bin of an SoC if respective information is missing
+   in the CHIPID registers or in the OTP memory. Possible values: 0...3.
+
 Example:
 	chipid@10000000 {
 		compatible = "samsung,exynos4210-chipid";
 		reg = <0x10000000 0x100>;
+		samsung,asv-bin = <2>;
 	};
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
