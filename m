Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 325DA122419
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 06:52:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Kt0FQH/g5JRxQSTlp9OGT053c4oa8JEeWNx1JFqu5S8=; b=tWDWdj8lMkvPXO6HG7l5uS/PqN
	1pJVpcxbl69MVCUUSMOrv4CNIvnvz/UrNUQLrj9+U+t4k/fwriZ/3Xvgl2ox1SPbVacmTFKpK+es5
	QAna174eN4WfHW+00AhOiFau6mq0NpwBU1tKJ6PNsDww7w3h/rfJS+AEA5xEUySKQZI1eD6TCaZtA
	+ZQaRbaawz0cL4YVQze5RzsEeDW1XxwOo6VhISSvPuA7a8ilnUVdYMTye9E01YAUbx5Uhs9Of6UiB
	6xoirKWl0EosheJ4U8mRVQDCOu7Ys2Y5PvKByLi1DTzpfV/1VSCW/0CuX8I5YTfEhW4hgyOdltjZm
	KQ+/+AZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih5mN-00012w-1y; Tue, 17 Dec 2019 05:52:19 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih5lM-0000K7-8h
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 05:51:20 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20191217055110epoutp01d5af82d2d1a2fe71681ce65321ccefd6~hEqr5hU-30888908889epoutp01J
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 05:51:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20191217055110epoutp01d5af82d2d1a2fe71681ce65321ccefd6~hEqr5hU-30888908889epoutp01J
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576561870;
 bh=nGSJ5w822pCglHvhnwLfPBtgNRhZr8PB7pTR8TBMR48=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gAeukFSC259T+sgj+jDzB8LmZwunkPFRHH/1cEb56riZgeKWy/yl9v3jhBtjeuUFM
 tFTTMt/CqN2Qma42BsgBjTLevM2J3QnwwOkwCo+PF+fOUPFnIpx0gDNjak7pB3+iYv
 nKteElpUAEoLnrP12pAG4MUe5sPVPw6z67PMxIGY=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20191217055109epcas1p462d7e01e1ad5b4eddafebcf477aa0b1c~hEqrVg3g51997419974epcas1p4e;
 Tue, 17 Dec 2019 05:51:09 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.157]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 47cS1Q5x0zzMqYm6; Tue, 17 Dec
 2019 05:51:06 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 3D.64.48019.ACC68FD5; Tue, 17 Dec 2019 14:51:06 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191217055106epcas1p11f2bc81d6bb2db3fc4bc257d78c337b9~hEqoLZb7-2681226812epcas1p1j;
 Tue, 17 Dec 2019 05:51:06 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191217055106epsmtrp2c1bdf5a4c64c04a6584f34e2a38e42db~hEqoKfFG81905819058epsmtrp2_;
 Tue, 17 Dec 2019 05:51:06 +0000 (GMT)
X-AuditID: b6c32a38-257ff7000001bb93-6d-5df86cca6a2f
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 1D.5D.10238.9CC68FD5; Tue, 17 Dec 2019 14:51:05 +0900 (KST)
Received: from localhost.localdomain (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191217055105epsmtip1d5f0fbcc1d04c09ba10d9876a0fb3ad2~hEqn6muP-3162031620epsmtip11;
 Tue, 17 Dec 2019 05:51:05 +0000 (GMT)
From: Chanwoo Choi <cw00.choi@samsung.com>
To: krzk@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 heiko@sntech.de, leonard.crestez@nxp.com, lukasz.luba@arm.com
Subject: [PATCH 4/9] PM / devfreq: exynos-bus: Replace deprecated 'devfreq'
 property
Date: Tue, 17 Dec 2019 14:57:33 +0900
Message-Id: <20191217055738.28445-5-cw00.choi@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191217055738.28445-1-cw00.choi@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0wUZxTNN7PzwLg6Xa29YCLrtNpIgjAuq58oBIIxa/QHxqRNSAlMYLog
 +8rMYoomVbEo4AvRROIDSnwEF1C7Ul3IIgY2tZggWlPsa1sKLYjQjQIiUSvuMGv037nnnvu+
 LGnw0DFsocMtyQ7RxtNzdNe7ViTE37FNZyf+4Tfiv2rLEH44OUzhusBdCs8MjFL46OAoiXt7
 rzK4p3SMwQ3BpxT2DvZR+EHbGRpPHA4gPN4/Q+Ka3psEri/9hsHNgSCDLzy8T+Df9zbQuKw9
 wKQZLE21Tcji9VTQlmvnd1u+C/kIy5EWD7Lc6KslLRPeJZlMVtH6AknMl2Sj5Mhz5hc6rCn8
 5m05GTnm1YlCvLAWr+GNDtEupfAbtmTGbyy0hcfgjTtEW3GYyhQVhU9IXS87i92SscCpuFN4
 yZVvc611rVREu1LssK7Mc9qThcTEVeawMLeooOfEE+T6cfFXrUPdaA9qXFSJoljgkqC+6hpT
 ieawBs6HoLT0OK0Z4wj8Q4OUZkwhqL9yLGywsyH/v07X+HYEYy9qIqJJBJO+G4yal+bioOPR
 L7SKF3JfQ12Xj1BFJPcrAf6ffqNUxwLuMzjbM0WqWXXcMhgZylJpPZcMbXV/67T+YqHx6i1S
 xVHcOhi+PjqbB7iXNHhuh2hNtAF+LqsiNLwAHt9uYTQcAxOh9ohmF1zqDtBacDmClo57lOYw
 QceF44TaBMmtgCttCRq9FFpfnkUqJrl5EHp2KDK9Hsr3GzTJx/CgPxgpGw3nDlRESlmgvPFJ
 ZClHEDRUH2Wq0JJT7yp8i5AHLZJcit0qKYIr6f2TedHsn8ZhH/Lf3dKJOBbxc/Xgfp5toMQd
 Som9EwFL8gv1PmOY0ueLJTsl2ZkjF9skpROZw5s8RsZ8mOcMf73DnSOYV5lMJpwkrDYLAv+R
 np2+n23grKJbKpIklyS/jSPYqJg9KPBB58Vl9Ke5f6bVOOIe5clfWJUzBzNePW1O2npv+0mi
 aabP+8Ot3OCgbm/Fq51QbyZG5DuxOlNJ6uh416ZzuolL0aTStNtWNzVwc/vk6YHW50Wp/+yr
 +DK2emTudPrn6fMvC9H/jZ3+9/vkx/6MT7r7hz3VY/uWV6aF6IbudM9w0MDrlAJRiCNlRXwD
 3H3Hsr0DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrALMWRmVeSWpSXmKPExsWy7bCSnO6pnB+xBp0aFvfntTJaXP/ynNVi
 /pFzrBb/H71mteh//JrZ4vz5DewWZ5vesFusuPuR1WLT42usFpd3zWGz+Nx7hNHi04P/zBYz
 zu9jsljY1MJusfbIXXaLpdcvMlncblzBZtG69wi7g5DHmnlrGD02repk89i8pN5j47sdTB59
 W1Yxemy/No/Z4/MmuQD2KC6blNSczLLUIn27BK6Ms1M+MBackK7Y+ewkYwPjarEuRg4OCQET
 ib//HLsYuTiEBHYzSpz+vYWxi5ETKC4pMe3iUWaIGmGJw4eLIWo+MUpc3XCWGaSGTUBLYv+L
 G2wgtohAG6PEku9yIDazwHMmiX1dZiC2sECIxJ3D88HmsAioSrx8FgUS5hWwktg1/yELxCp5
 idUbDoCN5BSwlni+7TUTiC0EVPNz6jPWCYx8CxgZVjFKphYU56bnFhsWGOallusVJ+YWl+al
 6yXn525iBIe7luYOxstL4g8xCnAwKvHwSpR8jxViTSwrrsw9xCjBwawkwrtDASjEm5JYWZVa
 lB9fVJqTWnyIUZqDRUmc92nesUghgfTEktTs1NSC1CKYLBMHp1QDY/uDWZJOB+8/tFl62bqd
 pXfuL9mtO39faaywmSjD+SL6qkSNcaIeu+qd3SYhCWu/vMzMW6vzltP81prw7+Zvfr25rBN0
 cGO60e+NQhr1HY6K206cFfnwR7Qse33FPhbdr24MXvs+Ls66JNRXHjCxq1rInMVgrthVj92q
 AU+Opk28/+ceR3L5LCWW4oxEQy3mouJEAMT/au1zAgAA
X-CMS-MailID: 20191217055106epcas1p11f2bc81d6bb2db3fc4bc257d78c337b9
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191217055106epcas1p11f2bc81d6bb2db3fc4bc257d78c337b9
References: <20191217055738.28445-1-cw00.choi@samsung.com>
 <CGME20191217055106epcas1p11f2bc81d6bb2db3fc4bc257d78c337b9@epcas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_215116_493250_145B9F23 
X-CRM114-Status: GOOD (  21.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-pm@vger.kernel.org, a.swigon@samsung.com, linux-kernel@vger.kernel.org,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, myungjoo.ham@samsung.com,
 kgene@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to remove the deprecated 'devfreq' property, replace with
new 'exynos,parent-bus' property in order to get the parent devfreq device
in devicetree file instead of 'devfreq' property. But, to guarantee the
backward-compatibility, keep the support 'devfreq' property.

Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 .../bindings/devfreq/exynos-bus.txt           | 16 +++++++--------
 drivers/devfreq/exynos-bus.c                  | 20 ++++++++++++-------
 2 files changed, 21 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
index e71f752cc18f..c948cee01124 100644
--- a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
+++ b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
@@ -45,7 +45,7 @@ Required properties only for parent bus device:
   of buses.
 
 Required properties only for passive bus device:
-- devfreq: the parent bus device.
+- exynos,parent-bus: the parent bus device.
 
 Optional properties only for parent bus device:
 - exynos,saturation-ratio: the percentage value which is used to calibrate
@@ -386,36 +386,36 @@ Example2 :
 	};
 
 	&bus_rightbus {
-		devfreq = <&bus_leftbus>;
+		exynos,parent-bus = <&bus_leftbus>;
 		status = "okay";
 	};
 
 	&bus_lcd0 {
-		devfreq = <&bus_leftbus>;
+		exynos,parent-bus = <&bus_leftbus>;
 		status = "okay";
 	};
 
 	&bus_fsys {
-		devfreq = <&bus_leftbus>;
+		exynos,parent-bus = <&bus_leftbus>;
 		status = "okay";
 	};
 
 	&bus_mcuisp {
-		devfreq = <&bus_leftbus>;
+		exynos,parent-bus = <&bus_leftbus>;
 		status = "okay";
 	};
 
 	&bus_isp {
-		devfreq = <&bus_leftbus>;
+		exynos,parent-bus = <&bus_leftbus>;
 		status = "okay";
 	};
 
 	&bus_peril {
-		devfreq = <&bus_leftbus>;
+		exynos,parent-bus = <&bus_leftbus>;
 		status = "okay";
 	};
 
 	&bus_mfc {
-		devfreq = <&bus_leftbus>;
+		exynos,parent-bus = <&bus_leftbus>;
 		status = "okay";
 	};
diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
index 7893c3b99e60..60d61b168153 100644
--- a/drivers/devfreq/exynos-bus.c
+++ b/drivers/devfreq/exynos-bus.c
@@ -148,11 +148,17 @@ static int exynos_bus_get_dev_status(struct device *dev,
 
 static struct devfreq *get_parent_devfreq_by_node(struct device_node *np)
 {
-	struct device_node *node = of_parse_phandle(np, "devfreq", 0);
-
-	if (!node)
-		return ERR_PTR(-ENODEV);
-
+	struct device_node *node = of_parse_phandle(np, "exynos,parent-bus", 0);
+
+	if (!node) {
+		/*
+		 * Check the deprecated 'devfreq' property
+		 * to support backward-compatibility.
+		 */
+		node = of_parse_phandle(np, "devfreq", 0);
+		if (!node)
+			return ERR_PTR(-ENODEV);
+	}
 	return devfreq_get_devfreq_by_node(node);
 }
 
@@ -376,7 +382,7 @@ static int exynos_bus_profile_init_passive(struct exynos_bus *bus,
 
 	/* Get the instance of parent devfreq device */
 	parent_devfreq = get_parent_devfreq_by_node(dev->of_node);
-	if (IS_ERR(parent_devfreq)) {
+	if (IS_ERR(parent_devfreq))
 		return -EPROBE_DEFER;
 
 	passive_data = devm_kzalloc(dev, sizeof(*passive_data), GFP_KERNEL);
@@ -423,7 +429,7 @@ static int exynos_bus_probe(struct platform_device *pdev)
 	if (!profile)
 		return -ENOMEM;
 
-	node = of_parse_phandle(dev->of_node, "devfreq", 0);
+	node = of_parse_phandle(dev->of_node, "exynos,parent-bus", 0);
 	if (node) {
 		of_node_put(node);
 		passive = true;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
