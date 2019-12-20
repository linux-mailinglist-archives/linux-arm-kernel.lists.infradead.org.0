Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5483712724C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 01:19:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UfZ5SmiyH7EdaDDIjO9IVamDMuNAiuU1nsbqGEVhc2k=; b=LRtHFQ48HWb67F8GlnAlqqZ2jZ
	aeR+WwKpbblAti5S8eszNL/RIXR1bFnNKBp3iqs45fiyvWc3mRJQ/JRW+mCN58xY/BLv2+e1yQymj
	Ld7bXWKvR7bcThUm/G16eTR+kue15A4tY55KZIU7ou9jKeXgmBm72E6+h3gY0PtLKOHBBA4nBvZFq
	jsYjEW8Yo3QY74wx73D07mk+gpr4c7xm/OUoOa+AL6GwLD3BjxhMtGTJVs3fXALkfUvapp2VIrsFn
	GPU0khrvtNHyvlZ6y7iwl1jqdfZZBkAVUTU32m5k/Q+uhNuP5CP8IJuhfbBOBlHn6tEPWEudYuN2l
	yuMxiWLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii60a-0007su-PP; Fri, 20 Dec 2019 00:19:08 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii5zf-0007PH-MQ
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 00:18:13 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20191220001804epoutp02ea3ce4194548835f9bf095d5348aece3~h7Dt6mP-n0644106441epoutp02T
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 00:18:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20191220001804epoutp02ea3ce4194548835f9bf095d5348aece3~h7Dt6mP-n0644106441epoutp02T
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576801084;
 bh=/Vc4dwMRM60PwtVaQji5HVvvNPwhHGCuyc3+x5n/62U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Wb/hGLjYADB65hJp1N+sFCbLPq7kH1F17fHjVkWTdcLhPyXtlcpgr+r6h3AADj8tj
 k64E6js4U7FV58rko75RuvddO6S7l2kwQxcooW3ftZKuq1+lfdku1RDRqmn//pSDyE
 gCC3KE6nkQ0wuVQYWeMJteLoOYs34FRKhqgwSKUw=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191220001804epcas1p1283a30c1d8f0a72627c700ec750145e8~h7DtTtrnd3045130451epcas1p1K;
 Fri, 20 Dec 2019 00:18:04 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.158]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 47f8Th268QzMqYm3; Fri, 20 Dec
 2019 00:18:00 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 47.7D.52419.8331CFD5; Fri, 20 Dec 2019 09:18:00 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20191220001759epcas1p495fc9cdb6f2bd86abf63d16f61e68804~h7DpdS9N70539005390epcas1p4Y;
 Fri, 20 Dec 2019 00:17:59 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191220001759epsmtrp2b0bb5834b7bba86ff2c99637718b63ae~h7DpcUTmr0512905129epsmtrp2X;
 Fri, 20 Dec 2019 00:17:59 +0000 (GMT)
X-AuditID: b6c32a37-5b7ff7000001ccc3-14-5dfc133869d1
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 A0.CA.10238.7331CFD5; Fri, 20 Dec 2019 09:17:59 +0900 (KST)
Received: from localhost.localdomain (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191220001759epsmtip195fa77aaa8e918101f7d79e4d4478c93~h7DpK2u9q2260722607epsmtip17;
 Fri, 20 Dec 2019 00:17:59 +0000 (GMT)
From: Chanwoo Choi <cw00.choi@samsung.com>
To: robh+dt@kernel.org, krzk@kernel.org, heiko@sntech.de,
 leonard.crestez@nxp.com, lukasz.luba@arm.com
Subject: [PATCH v2 05/11] dt-bindings: devfreq: rk3399_dmc:  Replace
 deprecated 'devfreq-events' property
Date: Fri, 20 Dec 2019 09:24:24 +0900
Message-Id: <20191220002430.11995-6-cw00.choi@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191220002430.11995-1-cw00.choi@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrNJsWRmVeSWpSXmKPExsWy7bCmnq6F8J9Yg6tHBCzuz2tltLj+5Tmr
 xfwj51gt/j96zWrR//g1s8X58xvYLc42vWG3WHH3I6vFpsfXWC0u75rDZvG59wijxacH/5kt
 Zpzfx2SxsKmF3WLtkbvsFkuvX2SyuN24gs2ide8RdgchjzXz1jB6bFrVyeaxeUm9x8Z3O5g8
 +rasYvTYfm0es8fnTXIB7FHZNhmpiSmpRQqpecn5KZl56bZK3sHxzvGmZgaGuoaWFuZKCnmJ
 uam2Si4+AbpumTlAbygplCXmlAKFAhKLi5X07WyK8ktLUhUy8otLbJVSC1JyCiwL9IoTc4tL
 89L1kvNzrQwNDIxMgQoTsjO+Pb3CUrCcq2L2TKcGxpscXYycHBICJhJTJt1g6mLk4hAS2MEo
 0Xn6OxuE84lR4vqpr8wQzjdGiU1b77LDtDRM2QpVtZdRomXKHqj+L4wSdx8tZQOpYhPQktj/
 4gaYLSKQITHz9WVWkCJmgY9MEl3b7oIlhAWyJQ7vXw1mswioSiz7vBBsBa+AlUTPm40sEOvk
 JVZvOMAMYnMKWEtsefaQHWSQhEAzu8TZvy1QRS4SO479ZIOwhSVeHd8CdauUxOd3e6Hi1RIr
 Tx5hg2juYJTYsv8CK0TCWGL/0slAP3AAnacpsX6XPkRYUWLn77mMIDazAJ/Eu689rCAlEgK8
 Eh1tQhAlyhKXH9xlgrAlJRa3d0Kt8pCYtfEiNFT6GCWeNc5hn8AoNwthwwJGxlWMYqkFxbnp
 qcWGBcbIcbaJEZxQtcx3MG4453OIUYCDUYmH1yHtd6wQa2JZcWXuIUYJDmYlEd7bHT9jhXhT
 EiurUovy44tKc1KLDzGaAoNyIrOUaHI+MNnnlcQbmhoZGxtbmBiamRoaKonzcvy4GCskkJ5Y
 kpqdmlqQWgTTx8TBKdXA6MUw9T/vlMiSmDdTJLj/SuzVThL1/97ccjfAQ0CvItvmmMXRYwof
 Zvw48c9o6kKB1aYhc9Wrf5hHdC9Y+FEq1jr8YX/uEhPnvEJ2xzth6+OCt+7Itz5T8EZua9dE
 cbZ/335LhnSkcPCazs+5f+Hu5Dq/lOO5VRfXhQpKBG2f3jJtSYn1pfRlSizFGYmGWsxFxYkA
 PsMnVr4DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMLMWRmVeSWpSXmKPExsWy7bCSnK658J9Yg+b5phb357UyWlz/8pzV
 Yv6Rc6wW/x+9ZrXof/ya2eL8+Q3sFmeb3rBbrLj7kdVi0+NrrBaXd81hs/jce4TR4tOD/8wW
 M87vY7JY2NTCbrH2yF12i6XXLzJZ3G5cwWbRuvcIu4OQx5p5axg9Nq3qZPPYvKTeY+O7HUwe
 fVtWMXpsvzaP2ePzJrkA9igum5TUnMyy1CJ9uwSujG9Pr7AULOeqmD3TqYHxJkcXIyeHhICJ
 RMOUrWxdjFwcQgK7GSV+/jzMDJGQlJh28SiQzQFkC0scPlwMUfOJUWLroUZWkBo2AS2J/S9u
 sIHYIgJ5Eps2fmUGKWIW+M8k8f3kA0aQhLBApsTKnuNMIDaLgKrEss8L2UFsXgEriZ43G1kg
 lslLrN5wAGwxp4C1xJZnD8FqhIBqXp6/wDqBkW8BI8MqRsnUguLc9NxiwwLDvNRyveLE3OLS
 vHS95PzcTYzgoNfS3MF4eUn8IUYBDkYlHl6HtN+xQqyJZcWVuYcYJTiYlUR4b3f8jBXiTUms
 rEotyo8vKs1JLT7EKM3BoiTO+zTvWKSQQHpiSWp2ampBahFMlomDU6qBUUfonbP75VOFwf0F
 J+9sWKe6U+PSwfWLbt93at8//5NR3E+v6jvfp685f5OrLS+y5f5d0+d9G3W/Kh/Y0sglarJy
 /8zWNbtt7eZPX7SoWylywoukG4lHOuIszj9alu7HYHZiUWxoqv0Uphsfa2PPfBA6UGCycF/S
 H17nC9dudJ2eK9Xoytx/bKISS3FGoqEWc1FxIgDL+q9JdgIAAA==
X-CMS-MailID: 20191220001759epcas1p495fc9cdb6f2bd86abf63d16f61e68804
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191220001759epcas1p495fc9cdb6f2bd86abf63d16f61e68804
References: <20191220002430.11995-1-cw00.choi@samsung.com>
 <CGME20191220001759epcas1p495fc9cdb6f2bd86abf63d16f61e68804@epcas1p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_161812_078743_14225A46 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 a.swigon@samsung.com, linux-kernel@vger.kernel.org, cw00.choi@samsung.com,
 kyungmin.park@samsung.com, myungjoo.ham@samsung.com, kgene@kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to remove the deprecated 'devfreq-events' property,
replace with new 'rockchip,dfi-device' property.

But, to guarantee the backward-compatibility, keep the support
of 'devfreq-events' property.

Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt
index 0ec68141f85a..e484768a4077 100644
--- a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt
+++ b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt
@@ -2,7 +2,7 @@
 
 Required properties:
 - compatible:		 Must be "rockchip,rk3399-dmc".
-- devfreq-events:	 Node to get DDR loading, Refer to
+- rockchip,dfi-device:	 Node to get DDR loading, Refer to
 			 Documentation/devicetree/bindings/devfreq/event/
 			 rockchip-dfi.txt
 - clocks:		 Phandles for clock specified in "clock-names" property
@@ -173,7 +173,7 @@ Example:
 
 	dmc: dmc {
 		compatible = "rockchip,rk3399-dmc";
-		devfreq-events = <&dfi>;
+		rockchip,dfi-device = <&dfi>;
 		interrupts = <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru SCLK_DDRCLK>;
 		clock-names = "dmc_clk";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
