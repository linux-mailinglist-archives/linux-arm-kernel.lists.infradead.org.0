Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CF368A2C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 15:02:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=g4VGHIa/pKq8No/vzOijcqyn0coHZbkhBoje0BwRYkc=; b=irXbelLsg9NMn4IsKV1z4UpWXN
	NHT3Jtc8OZ7yd7JbQ4ehe3KvxpCJRzsqipo+RWJM195a5Gb+W3qLpWeo46nmFdgxbFMHbE/ZZgKLm
	6l6JCn9qtbZlMwWKegby4a/KpMekOIR0ieVrvazg5+jVzBEbu8WuIkJshj8G0pG2KYm+kC742DkW8
	8XANwsuA9w/2EKetVaUbcFRi9oKq12b5XTRighpl081afkxznn6gepfDCUOG9f/JnlBvSvr+nb/sT
	zEOPlD61r/0QrL21nwIqxGs1/bajFf/9GMAYgvBA0hvW5Zj26aSlnt8Kgt+pdzfrht64bWgLV10Ld
	/p5kck1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0cb-0005VC-G6; Mon, 15 Jul 2019 13:02:25 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0M1-0004zv-9U
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:45:23 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124515euoutp023ef58dec897caea6aaa480457ecbb470~xlU-LgLSN0763707637euoutp02N
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:45:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190715124515euoutp023ef58dec897caea6aaa480457ecbb470~xlU-LgLSN0763707637euoutp02N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194715;
 bh=+y97K1qUSQhqt3rK3hQzR4lKeiVtsP9SfytOcS6HUUs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Vps+r5gbL9U74IaIvaGLfXqgyGRYnjxN8BpUCExnvM7gNjv+/bgArw9TO4Mzs+f0s
 RotAOtXgJNwsueP9QRzko/ZmhVGdWod0aMjmew9FW5UwmuqlIUNqe0BjLGOGKbBlsR
 hoqaFNFK383vBcb/+yTHN7ZOCBiWbwJuXvTwf3UA=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190715124514eucas1p1ad1189121ecc539717d054628d2ddb56~xlU_akhC80573705737eucas1p1S;
 Mon, 15 Jul 2019 12:45:14 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id F1.45.04298.A557C2D5; Mon, 15
 Jul 2019 13:45:14 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124514eucas1p1531a88cfb9b4e2fdb801074963372688~xlU9rcF3m0571105711eucas1p1Y;
 Mon, 15 Jul 2019 12:45:14 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124513eusmtrp126716a1cae719af372f069afa1d1af00~xlU9dV1ij0524305243eusmtrp1d;
 Mon, 15 Jul 2019 12:45:13 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-0d-5d2c755ada2f
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 8A.27.04140.9557C2D5; Mon, 15
 Jul 2019 13:45:13 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124512eusmtip20ee5b5360fdc63f8b013184c7afedd87~xlU8okb3D1173411734eusmtip24;
 Mon, 15 Jul 2019 12:45:12 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 48/50] ARM: dts: exynos: set proper parents to bus_isp266
 Exynos5422
Date: Mon, 15 Jul 2019 14:44:15 +0200
Message-Id: <20190715124417.4787-49-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrDKsWRmVeSWpSXmKPExsWy7djPc7pRpTqxBodWyVvcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KC6blNSczLLUIn27BK6M9z/mMRZ84qq4smkVawNjJ2cXIyeH
 hICJxOIZZ1m7GLk4hARWMEocOHaFEcL5wigx7XczE4TzmVHid9crIIcDrOVGOz9EfDmjxKsl
 f9jhOm7P6AQrYhPQk9ixqhBkhYjAEkaJIz+TQGqYBW4ySex5spMVJCEsECnx5NA/JhCbRUBV
 YveEL2C9vAL2Eo/uc0OcJy+xesMBZhCbEyj8c9oFNpA5EgKX2CWauxezQxS5SJyb9YgJwhaW
 eHV8C1RcRuL05B4WCLtYoqF3ISOEXSPxuH8uVI21xOHjF1lB9jILaEqs36UPEXaUaFt/mhHi
 Xz6JG28FQcLMQOakbdOZIcK8Eh1tQhDVGhJbei5AHSAmsXzNNKjhHhL3t75ngYTOJEaJ7Y+f
 sE5glJ+FsGwBI+MqRvHU0uLc9NRiw7zUcr3ixNzi0rx0veT83E2MwDR1+t/xTzsYv15KOsQo
 wMGoxMPrkKIdK8SaWFZcmXuIUYKDWUmE1/YrUIg3JbGyKrUoP76oNCe1+BCjNAeLkjhvNcOD
 aCGB9MSS1OzU1ILUIpgsEwenVAPjVkWhJaecpP95/9A83lU7K3dXkLT9MU1Z0bTUv1+mO6Yb
 7vriXXvs/Jrs/290zZemuLX9sLuYE7qpgy9LY3Kno2n0nG2KeyP0J2pl7yozYphppuS2azdP
 DpP+HBeZ1P6Qaep7PgqEBK70OLrhSRj75LSqC7aW4TuV+Fo/iiT82cDLfGDCzfVKLMUZiYZa
 zEXFiQDXfi1BTwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsVy+t/xe7qRpTqxBnfnaFjcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2M9z/mMRZ84qq4smkVawNjJ2cXIweHhICJxI12/i5GLg4hgaWMElu2
 NLB1MXICxcUkJu3bzg5hC0v8udbFBlH0iVFi/cGfbCDNbAJ6EjtWFYLUiAisYJSYfMIbpIZZ
 4DWTxJGj71hBaoQFwiX23ckCqWERUJXYPeELE0iYV8Be4tF9bojx8hKrNxxgBrE5gcI/p10A
 O0FIwE5i8dGfTBMY+RYwMqxiFEktLc5Nzy020itOzC0uzUvXS87P3cQIjJptx35u2cHY9S74
 EKMAB6MSD69DinasEGtiWXFl7iFGCQ5mJRFe269AId6UxMqq1KL8+KLSnNTiQ4ymQDdNZJYS
 Tc4HRnReSbyhqaG5haWhubG5sZmFkjhvh8DBGCGB9MSS1OzU1ILUIpg+Jg5OqQZGTUXpwIw/
 xX+Fd0YWVnioSQX/6+9gte2TqxZduurDqX7xzwk1TdV/n9v8nbnvjfLKzfd07x5p+z/9gGZK
 S7F/14GLefoLkyfmJPNLOB6rc/+77sO2W6cyLR9e9jFr+Pzxhe+uE4E/ZL9evujiNifuytJt
 h//FXyjJndMrufX2hl//1hszP+VJVWIpzkg01GIuKk4EABye/BuwAgAA
X-CMS-MailID: 20190715124514eucas1p1531a88cfb9b4e2fdb801074963372688
X-Msg-Generator: CA
X-RootMTR: 20190715124514eucas1p1531a88cfb9b4e2fdb801074963372688
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124514eucas1p1531a88cfb9b4e2fdb801074963372688
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124514eucas1p1531a88cfb9b4e2fdb801074963372688@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054517_876308_EE84F72D 
X-CRM114-Status: GOOD (  11.83  )
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
Cc: mark.rutland@arm.com, cw00.choi@samsung.com, b.zolnierkie@samsung.com,
 sboyd@kernel.org, mturquette@baylibre.com, krzk@kernel.org,
 Lukasz Luba <l.luba@partner.samsung.com>, a.hajda@samsung.com,
 robh+dt@kernel.org, kyungmin.park@samsung.com, kgene@kernel.org,
 myungjoo.ham@samsung.com, s.nawrocki@samsung.com, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Exynos5422 there is a dedicated clock hierarchy for ACLK_266_ISP which
should be set to proper values to fully use the HW performance.
The old settings left after boot set minimal values to this bus.
In the Exynos5420 the bus is connected to ACLK_266 so there is no need for
aligning the values. In the Exynos5422 the proper hierarchy of these
clocks should be model in the software to use the full HW feature set.
The patch sets proper parent (MPLL) and initial frequency to the bus also
enabling it.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
index d278339f259c..c770d17141e8 100644
--- a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
+++ b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
@@ -187,6 +187,17 @@
 	status = "okay";
 };
 
+&bus_isp266 {
+	devfreq = <&bus_wcore>;
+	assigned-clocks = <&clock CLK_MOUT_ACLK266_ISP>,
+			  <&clock CLK_MOUT_USER_ACLK266_ISP>,
+			  <&clock CLK_DOUT_ACLK266_ISP>;
+	assigned-clock-parents = <&clock CLK_MOUT_SCLK_MPLL>,
+				 <&clock CLK_MOUT_SW_ACLK266_ISP>;
+	assigned-clock-rates = <0>, <0>,<300000000>;
+	status = "okay";
+};
+
 &cpu0 {
 	cpu-supply = <&buck6_reg>;
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
