Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D7C35962
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 11:13:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kIaeEEBbJqshoORdTTODD9Q6ynqwfbPCIkf5ZWed72s=; b=JpLavLNZYr0WNLu8K9G2C0RapC
	S9e5fk6vARVMuR6L2ZAp7DxvWxyxWn4fK6HvqWwOsVqcguID950Kya+wg9u698tn36krsM5IbywPZ
	D9bPE+luiHhe2WYUXQqpBgzjZUx9tCrNHPSJaFIuLgKm4bQlpCIEW7V6TqOfq2t8UbHGnKcpLaNX9
	Ca3d9zR+X4dZVGL0gHyC7N9rFzmbNoFfVDMvrq3wcd9fxlOppUV3HUBK4kxmcY50WUSfA6HE+FBTD
	VwrOFrrQOFBz9B7dJpDZArMh5FKSqy3pOynQM0bRVXekdBK/2T1ay0bEbFauleHnzGp1v7dULKoEy
	KkCZwB1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRzK-0002gg-F7; Wed, 05 Jun 2019 09:13:42 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRym-0002BX-DU
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 09:13:11 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190605091304euoutp02abd995b20f45dbcec219307e69530635~lQoTZ5z6O2397423974euoutp02Q
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  5 Jun 2019 09:13:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190605091304euoutp02abd995b20f45dbcec219307e69530635~lQoTZ5z6O2397423974euoutp02Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1559725984;
 bh=dCaDpb3auqRXbSrH4RTG3g9kxZ/wRrhXBCwcOUxOBbw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uLZDtOX6VzHhs0ngxlvXpoH+QARcGpwNrwUNIwmwY3wfd5wGToasLiGNyxAo40cRF
 cVI+3iEsQSaYlvBfLR0Dgif5C5seINtLoqLnmypCrD4MwBKhWEihnxz8Qy/67jVihY
 eoEzL4qEGSGa+I2tvXJmr0XWTFcIjHG1zCnwDO5Y=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190605091303eucas1p21879409895da6e6a59b072a64f617dfe~lQoSylXgG2735527355eucas1p2f;
 Wed,  5 Jun 2019 09:13:03 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 9E.64.04325.F9787FC5; Wed,  5
 Jun 2019 10:13:03 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190605091302eucas1p2b2a959c0889666e95bd727381bceab24~lQoR95t8y2502725027eucas1p2W;
 Wed,  5 Jun 2019 09:13:02 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190605091302eusmtrp27a4f331736299163b9914d514e88d067~lQoRuQx1G2473824738eusmtrp2T;
 Wed,  5 Jun 2019 09:13:02 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-38-5cf7879f2b1c
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 15.30.04146.E9787FC5; Wed,  5
 Jun 2019 10:13:02 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190605091301eusmtip1141ea85bf51ce59463aa07a5397a0b9c~lQoRALZQM2955629556eusmtip1h;
 Wed,  5 Jun 2019 09:13:01 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 2/5] drivers: devfreq: events: change matching code
 during probe
Date: Wed,  5 Jun 2019 11:12:33 +0200
Message-Id: <20190605091236.24263-3-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190605091236.24263-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrEKsWRmVeSWpSXmKPExsWy7djPc7rz27/HGDzbIWKxccZ6VovrX56z
 Wsw/co7Vov/xa2aL8+c3sFucbXrDbnGrQcZi0+NrrBaXd81hs/jce4TRYsb5fUwWa4/cZbdY
 ev0ik8XtxhVsFq17j7BbHH7Tzmrx7cQjRgdBjzXz1jB67Jx1l91j06pONo/NS+o9Dr7bw+TR
 t2UVo8fnTXIB7FFcNimpOZllqUX6dglcGRN37WcrmCpd0bxoK3sD4yKxLkYODgkBE4kL87m7
 GLk4hARWMEqcOveOCcL5wijR/G8ZM4TzmVHiwpx1TDAd066IQsSXM0psP/mNEa7j47PDYEVs
 AnoSO1YVdjFycogILGaU+HY4CqSGWWAZk8S+5k9MIAlhgVCJnldtjCA2i4CqxINLN5lBbF4B
 e4n1pw6D1UgIyEus3nCAGWQmp4CDxOYZ9iBzJATOsUtcOnqQGaLGRWLSly3sELawxKvjMLaM
 xP+d86HmFEs09C5khLBrJB73z4WqsZY4fPwiK8h8ZgFNifW79CHCjhIPW5awQfzLJ3HjrSBI
 mBnInLRtOjNEmFeio00IolpDYkvPBahFYhLL10yDGu4hsfHcflZI6ExmlPjQP59pAqP8LIRl
 CxgZVzGKp5YW56anFhvnpZbrFSfmFpfmpesl5+duYgSmpNP/jn/dwbjvT9IhRgEORiUe3g+J
 32KEWBPLiitzDzFKcDArifAm3v4SI8SbklhZlVqUH19UmpNafIhRmoNFSZy3muFBtJBAemJJ
 anZqakFqEUyWiYNTqoExO0yuNnNvaHfBZh8119/VV456RbWfbrn6w/zDx8n53dPczQI0+o43
 bp829/jzw/qSx+8yJX+rW9G3uWbCFBnWl7GbrZ+U73LZErtC1I/1uu59HeuelPlBJxVvWQlW
 vbuxNHdmphn7H5cdku6vItZZ/Di6t0mdf3mr+v+H/zTWbL1+dMX5QNvHSizFGYmGWsxFxYkA
 zJsQT0UDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKIsWRmVeSWpSXmKPExsVy+t/xu7rz2r/HGLyaK22xccZ6VovrX56z
 Wsw/co7Vov/xa2aL8+c3sFucbXrDbnGrQcZi0+NrrBaXd81hs/jce4TRYsb5fUwWa4/cZbdY
 ev0ik8XtxhVsFq17j7BbHH7Tzmrx7cQjRgdBjzXz1jB67Jx1l91j06pONo/NS+o9Dr7bw+TR
 t2UVo8fnTXIB7FF6NkX5pSWpChn5xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2NimpOZll
 qUX6dgl6GRN37WcrmCpd0bxoK3sD4yKxLkYODgkBE4lpV0S7GDk5hASWMkrsbZcGsSUExCQm
 7dvODmELS/y51sXWxcgFVPOJUeLNh38sIL1sAnoSO1YVgsRFBJYzShxb9ZYZxGEW2MYksefK
 bkaQbmGBYInbk1+xgtgsAqoSDy7dZAaxeQXsJdafOswEsUFeYvWGA8wgQzkFHCQ2z7CHOMhe
 4vjZrcwTGPkWMDKsYhRJLS3OTc8tNtQrTswtLs1L10vOz93ECIySbcd+bt7BeGlj8CFGAQ5G
 JR7eGfHfYoRYE8uKK3MPMUpwMCuJ8Cbe/hIjxJuSWFmVWpQfX1Sak1p8iNEU6KaJzFKiyfnA
 CM4riTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cDotffjhqitmpaL
 b9989n9yacG+mK5zryfe95+5lfNLw7Ozobfza5gzja1kfgYrf46aP7fu35EbDBktM2yDfnxd
 dHSH3Ro+1y87pi/IfJi22dj6a+29sGlKCy6Y/2DXLtqkvPF9sK7KS66Zns2Gl6vPvZDafdy6
 o7lTUmd73T0t502F3s2VAhFMSizFGYmGWsxFxYkAtUOFLagCAAA=
X-CMS-MailID: 20190605091302eucas1p2b2a959c0889666e95bd727381bceab24
X-Msg-Generator: CA
X-RootMTR: 20190605091302eucas1p2b2a959c0889666e95bd727381bceab24
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190605091302eucas1p2b2a959c0889666e95bd727381bceab24
References: <20190605091236.24263-1-l.luba@partner.samsung.com>
 <CGME20190605091302eucas1p2b2a959c0889666e95bd727381bceab24@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_021308_589584_0BFF8E52 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, willy.mh.wolff.ml@gmail.com, kgene@kernel.org,
 b.zolnierkie@samsung.com, krzk@kernel.org, l.luba@partner.samsung.com,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, robh+dt@kernel.org,
 myungjoo.ham@samsung.com, s.nawrocki@samsung.com, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch changes the way how the 'ops' gets populated for different
device versions. The matching function now uses 'of_device_id' in order
to identify the device type.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 drivers/devfreq/event/exynos-ppmu.c | 38 +++++++++++++++++++----------
 1 file changed, 25 insertions(+), 13 deletions(-)

diff --git a/drivers/devfreq/event/exynos-ppmu.c b/drivers/devfreq/event/exynos-ppmu.c
index c2ea94957501..17f3c86a6f00 100644
--- a/drivers/devfreq/event/exynos-ppmu.c
+++ b/drivers/devfreq/event/exynos-ppmu.c
@@ -16,6 +16,7 @@
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/of_address.h>
+#include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/suspend.h>
@@ -23,6 +24,11 @@
 
 #include "exynos-ppmu.h"
 
+enum exynos_ppmu_type {
+	EXYNOS_TYPE_PPMU,
+	EXYNOS_TYPE_PPMU_V2,
+};
+
 struct exynos_ppmu_data {
 	struct clk *clk;
 };
@@ -36,6 +42,7 @@ struct exynos_ppmu {
 	struct regmap *regmap;
 
 	struct exynos_ppmu_data ppmu;
+	enum exynos_ppmu_type ppmu_type;
 };
 
 #define PPMU_EVENT(name)			\
@@ -483,31 +490,23 @@ static const struct devfreq_event_ops exynos_ppmu_v2_ops = {
 static const struct of_device_id exynos_ppmu_id_match[] = {
 	{
 		.compatible = "samsung,exynos-ppmu",
-		.data = (void *)&exynos_ppmu_ops,
+		.data = (void *)EXYNOS_TYPE_PPMU,
 	}, {
 		.compatible = "samsung,exynos-ppmu-v2",
-		.data = (void *)&exynos_ppmu_v2_ops,
+		.data = (void *)EXYNOS_TYPE_PPMU_V2,
 	},
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, exynos_ppmu_id_match);
 
-static struct devfreq_event_ops *exynos_bus_get_ops(struct device_node *np)
-{
-	const struct of_device_id *match;
-
-	match = of_match_node(exynos_ppmu_id_match, np);
-	return (struct devfreq_event_ops *)match->data;
-}
-
 static int of_get_devfreq_events(struct device_node *np,
 				 struct exynos_ppmu *info)
 {
 	struct devfreq_event_desc *desc;
-	struct devfreq_event_ops *event_ops;
 	struct device *dev = info->dev;
 	struct device_node *events_np, *node;
 	int i, j, count;
+	const struct of_device_id *of_id;
 
 	events_np = of_get_child_by_name(np, "events");
 	if (!events_np) {
@@ -515,7 +514,6 @@ static int of_get_devfreq_events(struct device_node *np,
 			"failed to get child node of devfreq-event devices\n");
 		return -EINVAL;
 	}
-	event_ops = exynos_bus_get_ops(np);
 
 	count = of_get_child_count(events_np);
 	desc = devm_kcalloc(dev, count, sizeof(*desc), GFP_KERNEL);
@@ -523,6 +521,12 @@ static int of_get_devfreq_events(struct device_node *np,
 		return -ENOMEM;
 	info->num_events = count;
 
+	of_id = of_match_device(exynos_ppmu_id_match, dev);
+	if (of_id)
+		info->ppmu_type = (enum exynos_ppmu_type)of_id->data;
+	else
+		return -EINVAL;
+
 	j = 0;
 	for_each_child_of_node(events_np, node) {
 		for (i = 0; i < ARRAY_SIZE(ppmu_events); i++) {
@@ -540,7 +544,15 @@ static int of_get_devfreq_events(struct device_node *np,
 			continue;
 		}
 
-		desc[j].ops = event_ops;
+		switch (info->ppmu_type) {
+		case EXYNOS_TYPE_PPMU:
+			desc[j].ops = &exynos_ppmu_ops;
+			break;
+		case EXYNOS_TYPE_PPMU_V2:
+			desc[j].ops = &exynos_ppmu_v2_ops;
+			break;
+		}
+
 		desc[j].driver_data = info;
 
 		of_property_read_string(node, "event-name", &desc[j].name);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
