Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0947EAEA92
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 14:38:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=F4zj/86ZZzA8Lv/gTDHy13vQKeD9oAc7Nj0PyxrsYQE=; b=LqBA1snqql9fW6fWPnRO6lTRkY
	FhUDfVcMYOrVQJD0AFLWGFB+AWnYftTG973LFU48BiX9g9BkKEvKYzbtaSYIwlIVKgCDj+IhtLOLB
	iI0p30Yek/BIvHpFKsPwExr5//d8pa4JoWw8uWTYnq7lpQOk/hs3jiWDx0kXm0ezliP3bs+3YCMTY
	Ug2ATVawFod2CdCE3iPag0+D0qilx4qhYDaD4pOlrARPKO6UZVpHMiMoH4wPfqIcO+AlyWhxCVJa5
	ZMTCGXtepWCWS6TO/My4uHU4/aaa04Ca11LGdnE2G7jBEdvvS8y/3wzAcDlkIH+14/RlX3lSqOe2K
	BR+ZCRRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7fPa-0005Ad-VH; Tue, 10 Sep 2019 12:38:23 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7fO5-00041K-R7
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 12:36:51 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190910123648euoutp0106c40968ae27eaf3dee7fe60653784da~DE_4Vb1cQ1213512135euoutp01p
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 12:36:48 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190910123648euoutp0106c40968ae27eaf3dee7fe60653784da~DE_4Vb1cQ1213512135euoutp01p
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568119008;
 bh=RSuWB2xKQuhROQTDhZij7BzEdzlLgFlLbdhuBzwZOp4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hB0X5E2jPHBVUw8U8g1VnUNZye/kYUNyAijWlrom4v4kecxlHYgoqYgDkxX7EwjA7
 HvMONdPMeWannMasAXmq3yAd5kJcRLQJaIywUYcTTPX6zn3QTErcFYSvpQ4Bs9isIh
 pY05c9sFCIn7xBqbR1PyucSrQXaggj4KVh/EHTG0=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190910123647eucas1p20b5977a2fa4ebd7c1eb0d84e3ea6f8ad~DE_3y2sp91358413584eucas1p2F;
 Tue, 10 Sep 2019 12:36:47 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 17.F6.04309.FD8977D5; Tue, 10
 Sep 2019 13:36:47 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190910123647eucas1p176bc817bbdae813e5aa9ab4745f9c285~DE_27XTxx1067210672eucas1p1l;
 Tue, 10 Sep 2019 12:36:47 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190910123646eusmtrp1adf092844cf47c08a81772e54a8efac2~DE_2tHPgi2381323813eusmtrp1f;
 Tue, 10 Sep 2019 12:36:46 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-e1-5d7798dfcb8d
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 16.88.04166.ED8977D5; Tue, 10
 Sep 2019 13:36:46 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190910123646eusmtip198c8b1c4f53d6d2961b8c402bdebf128~DE_2HdSg90745507455eusmtip1S;
 Tue, 10 Sep 2019 12:36:46 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org, vireshk@kernel.org
Subject: [PATCH v4 6/6] ARM: dts: Add samsung,asv-bin property for
 odroidxu3-lite
Date: Tue, 10 Sep 2019 14:36:18 +0200
Message-Id: <20190910123618.27985-7-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190910123618.27985-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupnleLIzCtJLcpLzFFi42LZduznOd37M8pjDb4t0bDYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y27RuvcIu8XhN+2sFpsfHGNz
 4PHYtKqTzWPzknqPvi2rGD0+b5ILYInisklJzcksSy3St0vgyrj+rJOp4Atbxc7eG4wNjDdY
 uxg5OSQETCROd78Asrk4hARWMEo0/XgC5XxhlFhzcz4jhPOZUWL54k3sXYwcYC3Pe1gg4ssZ
 JXYsaWaD6+j+/40dZC6bgKFE79E+RhBbREBd4tWp/8wgRcwC65gkls1aBpYQFgiWaHj7HayB
 RUBVYmHPfjYQm1fAWuLwnL1sEAfKS6zecIAZxOYUsJE4tXsXE8ggCYF+dokVG/awQxS5SMzp
 PQr1kbDEq+NboOIyEqcnQ9wqIdDMKNGz+zY7hDOBUeL+8QWMEFVA645fZAV5jllAU2L9Ln2I
 sKPEpDMvGSF+5pO48VYQJMwMZE7aNp0ZIswr0dEmBFGtIvF71XQmCFtKovvJfxaIEg+JPX3Q
 AOpnlHg6bQ3LBEb5WQi7FjAyrmIUTy0tzk1PLTbKSy3XK07MLS7NS9dLzs/dxAhMJqf/Hf+y
 g3HXn6RDjAIcjEo8vA/aymOFWBPLiitzDzFKcDArifBe7yuNFeJNSaysSi3Kjy8qzUktPsQo
 zcGiJM5bzfAgWkggPbEkNTs1tSC1CCbLxMEp1cAYZLHm+IPD9clnqw0XHzC8/f3/K6n9zi7N
 oeFiAVsfPMvYXcnCH3o/7CvfPaOCf3f8V7P3vRda+rH75uSbqk83C+ptFnzupaAqMsX14sfw
 yBWn8k59sKw0f88dOM1g/0Rt1x4he1XveXGrVRi/xgR825qdPm+HekFnmumXFV4rLFmkQ7t4
 Kp8osRRnJBpqMRcVJwIA2vQ1wyIDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrHLMWRmVeSWpSXmKPExsVy+t/xu7r3ZpTHGjz8om2xccZ6Vov5R86x
 WvQ/fs1scf78BnaLTY+vsVpc3jWHzeJz7xFGixnn9zFZrD1yl92ide8RdovDb9pZLTY/OMbm
 wOOxaVUnm8fmJfUefVtWMXp83iQXwBKlZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwe
 a2VkqqRvZ5OSmpNZllqkb5egl3H9WSdTwRe2ip29NxgbGG+wdjFycEgImEg872HpYuTiEBJY
 yigx4/sydoi4lMT8FqUuRk4gU1jiz7UuNoiaT4wSf6/fYAZJsAkYSvQe7WMEqRcR0JTYuw6s
 hllgB5PE3md/2UBqhAUCJdqPvWQBsVkEVCUW9uwHi/MKWEscnrOXDWKBvMTqDQfAZnIK2Eic
 2r2LCcQWAqp5/XEK6wRGvgWMDKsYRVJLi3PTc4sN9YoTc4tL89L1kvNzNzECw3rbsZ+bdzBe
 2hh8iFGAg1GJh/dBW3msEGtiWXFl7iFGCQ5mJRHe632lsUK8KYmVValF+fFFpTmpxYcYTYGO
 msgsJZqcD4y5vJJ4Q1NDcwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjDaa
 EfExV/5/8xCeclx+OeMfJan1wod5Jgc+F/N4Ji2a4V127Sxj1ZUZu/n7JwYWFx55YcMY+Pbe
 lNdXPaK/Hb11ll/6a+OO6nVnn56IcRU9fNrxhbH5RJ4Gl3OCG5U4/33SiFoUk39wia/ajp4U
 K6HavYU/956adfHfeuGS8M7nZmUrnwcG3ldiKc5INNRiLipOBACk+bOigQIAAA==
X-CMS-MailID: 20190910123647eucas1p176bc817bbdae813e5aa9ab4745f9c285
X-Msg-Generator: CA
X-RootMTR: 20190910123647eucas1p176bc817bbdae813e5aa9ab4745f9c285
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190910123647eucas1p176bc817bbdae813e5aa9ab4745f9c285
References: <20190910123618.27985-1-s.nawrocki@samsung.com>
 <CGME20190910123647eucas1p176bc817bbdae813e5aa9ab4745f9c285@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_053650_154187_C0B42DE5 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
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

The Exynos5422 SoC used on Odroid XU3 Lite boards belongs to
a special ASV bin but this information cannot be read from the
CHIPID block registers. Add samsung,asv-bin property for XU3
Lite to ensure the ASV bin is properly determined.

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
Changes since v2:
 - none

Changes since v1 (RFC):
 - new patch
---
 arch/arm/boot/dts/exynos5422-odroidxu3-lite.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5422-odroidxu3-lite.dts b/arch/arm/boot/dts/exynos5422-odroidxu3-lite.dts
index c19b5a51ca44..a31ca2ef750f 100644
--- a/arch/arm/boot/dts/exynos5422-odroidxu3-lite.dts
+++ b/arch/arm/boot/dts/exynos5422-odroidxu3-lite.dts
@@ -26,6 +26,10 @@
 	status = "disabled";
 };

+&chipid {
+	samsung,asv-bin = <2>;
+};
+
 &pwm {
 	/*
 	 * PWM 0 -- fan
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
