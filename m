Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72549984D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 21:53:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DR1jkgXQGliKw9bbZbzKGO+vFt0SSQNCowJaLDp4Y9w=; b=nEBEfHmhkD9mNd
	jFQZzJPJV3DO3+DDUek4ZOcX+sssVZtEy91e7C6yNnzqWQ1dIcqi1i9mAT4qKu5fgzUk4sjlPsCCj
	8IZ5Kvl6LWnVftdInmfoJ4AG7MYoR/sLXy3wgt/rboBcRhk0XUfX+X4L9Ql6l4xuSc7t8s+5Yw6Sq
	M8miloYw4QNXqWQ5yBIs07XIi+zGphUD3/JMp/TZoQ9gxJVuPTGDSq/jZ9vkSTE3DdvWpB/vnrPHT
	Bq/QS1Rp6VmvQUaXxkZ2+nfYUKKE7ODIDGTKR3nKuQZNaHJNV7eTUWUwb6MLItfAnH2pq7J44U1gB
	UzOGGzA+LGl9kMJYl7eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0WfN-00070J-Sx; Wed, 21 Aug 2019 19:53:09 +0000
Received: from mout.perfora.net ([74.208.4.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0WfG-0006zf-5I
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 19:53:03 +0000
Received: from towel.hsd1.wa.comcast.net ([71.197.225.149]) by
 mrelay.perfora.net (mreueus004 [74.208.5.2]) with ESMTPSA (Nemesis) id
 1MXHWM-1hkdyo2uB4-00Yg32; Wed, 21 Aug 2019 21:52:40 +0200
From: Sunil Mohan Adapa <sunil@medhas.org>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 0/2] arm64: dts: allwinner: a64: Add A64 OlinuXino board
 (with eMMC)
Date: Wed, 21 Aug 2019 12:52:15 -0700
Message-Id: <20190821195217.4166-1-sunil@medhas.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:HGJSw9Ukbax2zFp89tWV6F6sEjTcyLgq+JTMPaTd1bp7w5Os0kN
 oYRsJ/BbtO7zJTrazKiKkQ79nDyuLoMlepVghFtNQbNrYn6la0Rio8JvK2OgKye0mK+mLSv
 AzY+8/sRYuFDiuVXttDRmUlSf6YakLOSzZS6xBJX67XpUfYB+YsaRMWboCU46pcPpJGE8dm
 p05TfOrD03ZG8flJoycaw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9JSfMvAd4Eg=:Kvps7A2WgXNiSEJp9S+Sny
 oI4QLdBBHvuO+PE85WIxu/en43yNzkZJixY8nerGsAHlx/juvtcpRCz7r6AdCKumQbtpH/FWP
 J7ql7XB2Okul7uYkJO3wpw6IsgyXNUv2GPSHAzF9i2mXt9d1JJtVMITVZeSRDJFcRxE7k4D0u
 KhsV2iV/8BgmjgqXsbDnOMqiU+mplYnaxO7WVOs61QR7/K4peZI5xoJcv45HyuP3FFJ0Kl9M9
 lyeJjW8vuV1KUlFhjFnsSBxq3lzneNU1Z7NIU/Gf0ZztbysntQ8xIeEPNYRuKjEYiOLLAgMzX
 rFQyL7yiHB+g9uRnqgghvVlxzSW4ygPREVylf0Xc4jcsoeEqTehc9q1qOSjdwRSSubcW4HfbM
 LKdqQmF/VMy+82N8RHp+UJLUKjrSwP79FeiQ0Ctuzp7y39soFYinPapcKGniA7OkK0x5Ew6C7
 p//18VD22scTirhf8YpFhTHJ5bGrYiwsI8IR6zcaulS2My0gXNCZVZ+eNZxtMftOBH6+0tsJG
 f0DphzNfYu4bMY8vKvFJ32teNIvC2aC+fvmS9avKutL59TCS1tX6KxCs/pI+1bhqFKWQfcbSu
 mL968lWRd11iXVMEsZoJMvCC9jP7J9FGwqOo6WaxLHOyArkyt7stvb56Rg9AX/mjZ/gD+LBwY
 N9dHsXCQLnzo2F0ay1YGSVcLVGq8B5TrJf3YoQ31R2yu3yMZTkdE1OG2mHE76khryTZHRClrp
 07osRz5/buzynED67TZi+xRrd0rXWyRPpkqaUw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_125302_274171_2C226232 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.208.4.197 listed in list.dnswl.org]
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
Cc: maxime.ripard@bootlin.com, mark.rutland@arm.com, wens@csie.org,
 robh+dt@kernel.org, Sunil Mohan Adapa <sunil@medhas.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A64 OLinuXino board from Olimex has three variants with onboard eMMC:
A64-OLinuXino-1Ge16GW, A64-OLinuXino-1Ge4GW and A64-OLinuXino-2Ge8G-IND. In
addition, there are two variants without eMMC. One without eMMC and one with SPI
flash. This suggests the need for separate device tree for the three eMMC
variants.

Changes:

  v3: Separate dts for eMMC variants

  v2: Fix descriptions for VCC and VCCQ

Version 2 of this series already committed in linux-sunxi tree as
8d3071f3e85894be35a1b35bcf6fdef970c81018 must be reverted before applying this.

Sunil Mohan Adapa (2):
  dt-bindings: arm: sunxi: Add compatible for A64 OlinuXino with eMMC
  arm64: dts: allwinner: a64: Add A64 OlinuXino board (with eMMC)

 .../devicetree/bindings/arm/sunxi.yaml        |  5 ++++
 arch/arm64/boot/dts/allwinner/Makefile        |  1 +
 .../allwinner/sun50i-a64-olinuxino-emmc.dts   | 23 +++++++++++++++++++
 3 files changed, 29 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
