Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBD17294B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 09:50:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=D27zuW1S3Z5MM8V+DM1QjyYzn+OMYp9HJk0xIaN72so=; b=Hbc
	9Xr5QMfkiOWI2tNFfiH8kQB4liCBBSEon8JcDADeF4c2QXaSsbKa/MOORUa+WiRUJEUwwPslvMNPj
	tXtJnrIs7AbYB1fMcy5fzv0rUYDO6giM0NF4g9+CYNqAzvdWAyULqZpJHf8lyjgwGOxVc2o07XLSO
	C4FYOsk+iWspJjQXFF6t/ScDLGkzogXeAgZ06SFbOgwqVhkQjqpFhkweoHJMvLxZKVuAUy+u4Ehhj
	rNk9y8290sote+TwgQB2hBJVS+iMYS5YI9yP5FWicsnPSAza73lJiWRs9DV8Rq5L8W9Dhfdb3fn7M
	bE5HlfsokJ21rX7Dg9rcEfH6gbRiiVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqC2a-0001IG-GS; Wed, 24 Jul 2019 07:50:24 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqC1q-0001GQ-0A
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 07:49:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1563954574; x=1566546574;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GkR5GGl5v3m2lg+nnRP8KreJpKlg7Nz9sjmaDxmgFO4=;
 b=MIMTGfmH+vuukDqIZaqSJWwvWjWg7aZa6RRMmM2/OgzNx1kzagQKswiCzf2V9yZA
 ZtbhOF7SBKp4PducRyMMVBYcDdNIBD16gQ3PjhFwB0zejR2WObI+1Z5y12blvdW4
 j0d1AY5wHE7MrrzgFGZqkWdE7ZJorEWTy+FI70BS2rU=;
X-AuditID: c39127d2-17dff70000001aee-b4-5d380d8df363
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 5C.CA.06894.D8D083D5;
 Wed, 24 Jul 2019 09:49:33 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.16.21.122])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019072409493347-408984 ;
 Wed, 24 Jul 2019 09:49:33 +0200 
From: Stefan Riedmueller <s.riedmueller@phytec.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: arm: fsl: Add PHYTEC i.MX6 UL/ULL devicetree
 bindings
Date: Wed, 24 Jul 2019 09:49:32 +0200
Message-Id: <1563954573-370205-1-git-send-email-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.7.4
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 24.07.2019 09:49:33,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 24.07.2019 09:49:33, Serialize complete at 24.07.2019 09:49:33
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKLMWRmVeSWpSXmKPExsWyRoCBS7eX1yLW4M4ePYvmDluL+UfOsVo8
 vOpvsenxNVaLrl8rmS0u75rDZnG3pZPVYun1i0wWrXuPsFv83b6JxeLFFnEHbo8189Yweuyc
 dZfdY9OqTjaPO9f2sHlsXlLvsfHdDiaP/r8GHp83yQVwRHHZpKTmZJalFunbJXBlXPmQXbCW
 p2LxrnvsDYyNnF2MnBwSAiYSz3Z/Y+ti5OIQEtjBKLH78SVGCOcio8TR/6vYQKrYBIwkFkxr
 ZAKxRQQ0JKZ0PWYHKWIWmMos0fhnKStIQlggXOLC/kcsIDaLgKrE+zsLmbsYOTh4BTwktqwu
 gtgmJ3HzXCczSK+EQCOTRPvH0+wQCSGJ04vPMk9g5FnAyLCKUSg3Mzk7tSgzW68go7IkNVkv
 JXUTIzDoDk9Uv7SDsW+OxyFGJg7GQ4wSHMxKIryBDWaxQrwpiZVVqUX58UWlOanFhxilOViU
 xHk38JaECQmkJ5akZqemFqQWwWSZODilGhi1Y4rPGNvz5Z0WdWQ5ZZchOnt/3YeDa5M0VrTM
 O5k9hVsgaHpf1Wa933Zv7B1txXP3zWGumhJqZSLgFHw702DnIbNTkyZMl/rYUuDyeduuqutH
 5Fdd1zotWyTB0/vJQ0hq7c51l6M1FJn4kt7cc96hfaq+XfKwADtLKofYp1/W/srWrFm/KpRY
 ijMSDbWYi4oTAWh320YoAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_004938_660207_83B79AFD 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stefan Riedmueller <s.riedmueller@phytec.de>,
 Andrew Smirnov <andrew.smirnov@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-imx@nxp.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add devicetree bindings for i.MX6 UL/ULL based phyCORE-i.MX6 UL/ULL and
phyBOARD-Segin.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7294ac36f4c0..40f007859092 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -161,12 +161,20 @@ properties:
         items:
           - enum:
               - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
+              - phytec,imx6ul-pbacd10     # PHYTEC phyBOARD-Segin with i.MX6 UL
+              - phytec,imx6ul-pbacd10-emmc  # PHYTEC phyBOARD-Segin eMMC Kit
+              - phytec,imx6ul-pbacd10-nand  # PHYTEC phyBOARD-Segin NAND Kit
+              - phytec,imx6ul-pcl063      # PHYTEC phyCORE-i.MX 6UL
           - const: fsl,imx6ul
 
       - description: i.MX6ULL based Boards
         items:
           - enum:
               - fsl,imx6ull-14x14-evk     # i.MX6 UltraLiteLite 14x14 EVK Board
+              - phytec,imx6ull-pbacd10    # PHYTEC phyBOARD-Segin with i.MX6 ULL
+              - phytec,imx6ull-pbacd10-emmc # PHYTEC phyBOARD-Segin eMMC Kit
+              - phytec,imx6ull-pbacd10-nand # PHYTEC phyBOARD-Segin NAND Kit
+              - phytec,imx6ull-pcl063     # PHYTEC phyCORE-i.MX 6ULL
           - const: fsl,imx6ull
 
       - description: i.MX6ULZ based Boards
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
