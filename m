Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3551122454
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 06:54:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YxLiz0Mjx+EjOvyrV80v9ILSJbUl33phmrOQ82y+lAY=; b=eEo3/CFLl6syTfLGTtyDbKxU2O
	zrpm25IP8x5gWrsm8doSmmIp47431UWJnw6SReIVTKqcu4OLiA5blU7XoROmzYcUhRqM4MfAHZKgl
	sNkdjKtFDg9km/dkcdI9AQn0jptdU456aqvalxGB9TfWgMSGdLw7E2AXa222wC6dapj+5bwF/0UfU
	DaKIrjooStJ8YVvteWzFhcE9TonT5KLPrQr3cFqBdwrVhOcTG/RDheJc3aOzzce2302SvUSwcZ8O/
	pCzIdAPIbSFGTviKsGP7jlICKefVjTAqjjBCGEPb+7xkG238kPpVEzvOcsRaJkY6z/egT/DPmb+0u
	N+thK6lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih5oD-0002k2-PN; Tue, 17 Dec 2019 05:54:13 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih5lP-0000Nc-5C
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 05:51:27 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20191217055117epoutp02482e59e927227c3965e94dd54c7572b6~hEqytYb7w1075310753epoutp02k
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 05:51:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20191217055117epoutp02482e59e927227c3965e94dd54c7572b6~hEqytYb7w1075310753epoutp02k
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576561877;
 bh=5DAWCwub0agRvHw0ZRiJq2GNiwn9aICERFH8BXH9Wzg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BRPQ7DqoQtZ3EGsEfrzQXyAhCFUJmavJ1AGDDAKp+fc3+4YkDBWNX2/qKMGLEake1
 BlvIes4YZCDEhr9s6G70od86BqQ4azjz5o98PxBSAViPu65VJiCWlNd9fgOFcNP/m/
 jcws1yZz40WQT+4o6+DUwIZp186gDyJPg0BvnwDc=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20191217055116epcas1p42667adfcf3230efd28c309ed093c4b5d~hEqx16nop2266522665epcas1p4i;
 Tue, 17 Dec 2019 05:51:16 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.153]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 47cS1Z1V8mzMqYkf; Tue, 17 Dec
 2019 05:51:14 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 92.0F.52419.ACC68FD5; Tue, 17 Dec 2019 14:51:06 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20191217055106epcas1p4b50ca647af9b54465e5c0a0bebb165b8~hEqoW_1e02005920059epcas1p4p;
 Tue, 17 Dec 2019 05:51:06 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191217055106epsmtrp23a1955f62eab1b150feaf4ca418cc2aa~hEqoWGH4N1947419474epsmtrp2F;
 Tue, 17 Dec 2019 05:51:06 +0000 (GMT)
X-AuditID: b6c32a37-5b7ff7000001ccc3-1d-5df86ccac98c
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 DD.7E.06569.ACC68FD5; Tue, 17 Dec 2019 14:51:06 +0900 (KST)
Received: from localhost.localdomain (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191217055105epsmtip1d20a715834983bff8f30ff86863323d4~hEqoDeIJG3103131031epsmtip1a;
 Tue, 17 Dec 2019 05:51:05 +0000 (GMT)
From: Chanwoo Choi <cw00.choi@samsung.com>
To: krzk@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 heiko@sntech.de, leonard.crestez@nxp.com, lukasz.luba@arm.com
Subject: [PATCH 5/9] PM / devfreq: exynos-bus: Replace deprecated
 'devfreq-events' property
Date: Tue, 17 Dec 2019 14:57:34 +0900
Message-Id: <20191217055738.28445-6-cw00.choi@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191217055738.28445-1-cw00.choi@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0wTWRTO7XQeoDWTgnrEROvoxoCCjLV6UTEajWkiRpY1SjQEJzChSDtt
 Oi3xLaL4CqJoSFiyFo2aSNcHImIlIopV8IlIfIu64CIB06D1gcEE206N/vvOd75zz3fOPQyh
 dVMxTK7kEO2SYOaoSHXd9dj4+NvmgYzEg32T8WtXEcJPPr0jcaX3PomHOvtIvL+rj8CtrdU0
 vlf4nsYnOz6QuKbrMYnb6/+hsH+fF+GPb4YIXN56RYWPFu6g8WlvB41PPGlT4RfbTlK4qMFL
 z9caT7lOIWONew9lPH98q/Gcz6MyltS6kfHiYxdh9NeMS6VX5c01iUK2aNeJUpY1O1fKSeaW
 /JW5MNMwM5GP55PwLE4nCRYxmVuUkhq/ONccGIPT5QtmZ4BKFWSZmzZvrt3qdIg6k1V2JHOi
 LdtsS7IlyIJFdko5CVlWy2w+MXG6ISBck2fquvSSsBWPXbf97bACVDpqL4pggJ0B3ef66b0o
 ktGyHgQXKrYRSvARwfeCG+HgC4IWV4/6Z0lhTzmlJBoQlF2oCqs+IehvL0dBFcXGQWPPUyqI
 o9ktUHndowqKCPaZCi4/fE4GE1FsBnR4eokgVrN/QPeNslCxhp0NxwtLkdJuPPxbfTWkiWDn
 wLu6PpXCD1Fws9Op4EVQd+87peAo6G2upRUcA35fQ5jfCFW3vCHbwO5GUNv4gFQSemg8cSjw
 KBNwFwtn66cp9AS4NHg45IFgR4DvczEZlACrgd07tYpkIrS/6QjbGQPHdu0JtzKC68yx8FJK
 EPzdVk8fQOMqfnU4gpAbjRJtsiVHlHmb/vcvq0GhO42b5UHV91OaEMsgbrjGlv81Q0sK+fJ6
 SxMChuCiNR5dgNJkC+s3iHZrpt1pFuUmZAhsspSIGZllDVy95MjkDdP1ej2ewc808Dw3WsMM
 tGVo2RzBIeaJok20/6xTMRExBWhFbGenxbR0MN1f253S2+z/v67JEz2hKi3p9pfi8W/T9VrR
 rkpfMKmFMUeVPoqrvPIs4fzqo2mRZUV/qsv7/Xcu++dtXrOZXFHyqH7H5Pxv7pXvpbVTKwci
 mj2H/ULRq55BTTsZxaYlT1n5X8Gyg8vvtszx+RZeo5IWbDow4tsD6RrPqWWTwMcRdln4AUYt
 E/W9AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrILMWRmVeSWpSXmKPExsWy7bCSnO6pnB+xBg17OS3uz2tltLj+5Tmr
 xfwj51gt/j96zWrR//g1s8X58xvYLc42vWG3WHH3I6vFpsfXWC0u75rDZvG59wijxacH/5kt
 Zpzfx2SxsKmF3WLtkbvsFkuvX2SyuN24gs2ide8RdgchjzXz1jB6bFrVyeaxeUm9x8Z3O5g8
 +rasYvTYfm0es8fnTXIB7FFcNimpOZllqUX6dglcGY933mEu6JGuaH7C3cA4UayLkZNDQsBE
 ounFDLYuRi4OIYHdjBJnGt4zQSQkJaZdPMrcxcgBZAtLHD5cDFHziVGiaccUNpAaNgEtif0v
 boDZIgJtjBJLvsuB2MwCz5kk9nWZgfQKC0RLXDkSDhJmEVCVeHZ0KiOIzStgJbGkaSIjxCp5
 idUbDjCD2JwC1hLPt70GO0EIqObn1GesExj5FjAyrGKUTC0ozk3PLTYsMMpLLdcrTswtLs1L
 10vOz93ECA54La0djCdOxB9iFOBgVOLhlSj5HivEmlhWXJl7iFGCg1lJhHeHAlCINyWxsiq1
 KD++qDQntfgQozQHi5I4r3z+sUghgfTEktTs1NSC1CKYLBMHp1QDo3T1jO3Su2Y90o+MW9ey
 Yml/W8fpO8wL09/3WlZazZnQm/Ju1+H/z2PPMu674BFQ1tsbsORB+o0t+cXCc6acqf+9ruZ4
 vLP71qW51w+Xx4noCwvOOfP/ukf30qY+JTHOOdOWTbh5gKFaObBc7Xqvm9KcN+q3ed4nWHwX
 f9ty/lv5rUeJE3qc/yixFGckGmoxFxUnAgDEYpQTdAIAAA==
X-CMS-MailID: 20191217055106epcas1p4b50ca647af9b54465e5c0a0bebb165b8
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191217055106epcas1p4b50ca647af9b54465e5c0a0bebb165b8
References: <20191217055738.28445-1-cw00.choi@samsung.com>
 <CGME20191217055106epcas1p4b50ca647af9b54465e5c0a0bebb165b8@epcas1p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_215119_582339_AF6B0CE2 
X-CRM114-Status: GOOD (  22.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-pm@vger.kernel.org, a.swigon@samsung.com, linux-kernel@vger.kernel.org,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, myungjoo.ham@samsung.com,
 kgene@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to remove the deprecated 'devfreq-events' property, replace with
new 'exynos,ppmu-device' property in order to get the devfreq-event device
in devicetree file instead of 'devfreq-events' property. But, to guarantee
the backward-compatibility, keep the support 'devfreq-events' property.

Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 .../bindings/devfreq/exynos-bus.txt           |  6 ++--
 drivers/devfreq/exynos-bus.c                  | 32 ++++++++++++++-----
 2 files changed, 27 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
index c948cee01124..c6c2dd0e77c8 100644
--- a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
+++ b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
@@ -41,7 +41,7 @@ Required properties for all bus devices:
 
 Required properties only for parent bus device:
 - vdd-supply: the regulator to provide the buses with the voltage.
-- devfreq-events: the devfreq-event device to monitor the current utilization
+- exynos,ppmu-device: the devfreq-event device to monitor the current utilization
   of buses.
 
 Required properties only for passive bus device:
@@ -374,13 +374,13 @@ Example2 :
 	in exynos3250-rinato.dts is listed below:
 
 	&bus_dmc {
-		devfreq-events = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
+		exynos,ppmu-device = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
 		vdd-supply = <&buck1_reg>;	/* VDD_MIF */
 		status = "okay";
 	};
 
 	&bus_leftbus {
-		devfreq-events = <&ppmu_leftbus_3>, <&ppmu_rightbus_3>;
+		exynos,ppmu-device = <&ppmu_leftbus_3>, <&ppmu_rightbus_3>;
 		vdd-supply = <&buck3_reg>;
 		status = "okay";
 	};
diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
index 60d61b168153..0683bee64eb6 100644
--- a/drivers/devfreq/exynos-bus.c
+++ b/drivers/devfreq/exynos-bus.c
@@ -165,11 +165,18 @@ static struct devfreq *get_parent_devfreq_by_node(struct device_node *np)
 static struct devfreq_event_dev *get_edev_by_node(struct device_node *np,
 							int index)
 {
-	struct device_node *node = of_parse_phandle(np, "devfreq-events",
-							index);
+	struct device_node *node = of_parse_phandle(np,
+					"exynos,ppmu-device", index);
 
-	if (!node)
-		return ERR_PTR(-ENODEV);
+	if (!node) {
+		/*
+		 * Check the deprecated 'devfreq-events' property
+		 * to support backward-compatibility.
+		 */
+		node = of_parse_phandle(np, "devfreq-events", index);
+		if (!node)
+			return ERR_PTR(-ENODEV);
+	}
 	return devfreq_event_get_edev_by_node(node);
 }
 
@@ -220,11 +227,20 @@ static int exynos_bus_parent_parse_of(struct device_node *np,
 	 * buses. This raw data will be used in devfreq ondemand governor.
 	 */
 	count = of_property_count_elems_of_size(dev->of_node,
-					"devfreq-events", sizeof(u32));
+					"exynos,ppmu-device", sizeof(u32));
 	if (count < 0) {
-		dev_err(dev, "failed to get the count of devfreq-event dev\n");
-		ret = count;
-		goto err_regulator;
+		/*
+		 * Check the deprecated 'devfreq-events' property
+		 * to support backward-compatibility.
+		 */
+		count = of_property_count_elems_of_size(dev->of_node,
+					"devfreq-events", sizeof(u32));
+		if (count < 0) {
+			dev_err(dev,
+				"failed to get the count of devfreq-event dev\n");
+			ret = count;
+			goto err_regulator;
+		}
 	}
 	bus->edev_count = count;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
