Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9AA7294C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 09:51:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ihE9VaOG4BSTErI1voKGO3kufYx2+XIymeuvo9jUUrI=; b=CpoGCWMRBY753O4HGR+348TkRI
	/I1RC5uoY/tX42ERMmdpzbZ8u47X5kOu2Qe+gpvrAqTc4UjO4UGGvBAesvouPRawHGUrNGOUajLW/
	Js/TJcsdXBwCvOZr8DW9xyTwXQhBLezpg6O3Vcw3Ku6V+/jI74RcsI9ib9gPcrTG7bbvo7RLplbzt
	M0834LOcM5L83OdqCIMNTsyJVlOVqd8cS1R0jetVSpt7uPDdMsa/Nb6BVSGIdKwVK331rey+X0rTE
	5kiQjKu+HtCjnb7Pve0qtgEQDo+0/PiSF6rvo96S/NtKVUpu7PidKpxrLRHGmEdvQXkAtCruahLN+
	wID0QrsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqC3I-0002jE-5N; Wed, 24 Jul 2019 07:51:08 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqC1t-0001GQ-8W
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 07:49:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1563954574; x=1566546574;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EqQWA7dLtCGI8kCRV8d94HFWhGW2KPLYNClP0pwmpPY=;
 b=Mugaxw5xkyEXDda8a7GPEveEXMpOl9ZZFt5S3xlVD7BNp/r5iQ4CUE11WGvWknp3
 lVzR8ATHvYRpZYPir8Kc6se1LO/falAaulCn9cMri5dtW2KcAWCDkGeM6QU2N6iE
 vjkiiU7+iv+pOu7UncgHqfPDADoiCto/Tz6tqjdqnAk=;
X-AuditID: c39127d2-193ff70000001aee-b5-5d380d8dab5e
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 1D.CA.06894.D8D083D5;
 Wed, 24 Jul 2019 09:49:33 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.16.21.122])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019072409493350-408985 ;
 Wed, 24 Jul 2019 09:49:33 +0200 
From: Stefan Riedmueller <s.riedmueller@phytec.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] dt-bindings: arm: fsl: Add PHYTEC i.MX6 devicetree
 bindings
Date: Wed, 24 Jul 2019 09:49:33 +0200
Message-Id: <1563954573-370205-2-git-send-email-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563954573-370205-1-git-send-email-s.riedmueller@phytec.de>
References: <1563954573-370205-1-git-send-email-s.riedmueller@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 24.07.2019 09:49:33,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 24.07.2019 09:49:33, Serialize complete at 24.07.2019 09:49:33
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrHLMWRmVeSWpSXmKPExsWyRoCBS7eX1yLW4P11a4vmDluL+UfOsVo8
 vOpvsenxNVaLrl8rmS0u75rDZnG3pZPVYun1i0wWrXuPsFv83b6JxeLFFnEHbo8189Yweuyc
 dZfdY9OqTjaPO9f2sHlsXlLvsfHdDiaP/r8GHp83yQVwRHHZpKTmZJalFunbJXBlPDrpWjBb
 rOLc92aWBsY9/F2MnBwSAiYSRw5vYO1i5OIQEtjBKDGl4wwjhHORUaL9XxMzSBWbgJHEgmmN
 TCC2iICGxJSux+wgRcwCU5klGv8sZQVJCAsESKz9tJEdxGYRUJU4vOAVI4jNK+AhcezwVkaI
 dXISN891gg3lFPCUWLpvMRuILQRUs/jYZyaQoRICjUwS7R9Ps0M0CEmcXnyWeQIj3wJGhlWM
 QrmZydmpRZnZegUZlSWpyXopqZsYgWF6eKL6pR2MfXM8DjEycTAeYpTgYFYS4Q1sMIsV4k1J
 rKxKLcqPLyrNSS0+xCjNwaIkzruBtyRMSCA9sSQ1OzW1ILUIJsvEwSnVwFg/64NylO1Oxhsl
 kpcc1+lIum7v/3VvzfIPxnFXMu86Wqa8P1nO6FHevHH3xLSq129yK75fOlRQ1TbD7Kftl6yF
 PFvO6Plcc53y/8i/Mw3pdSK5P2quzty4yL284ON9dubGqZeWGrw8uG69+HWlexarXD8q/1/8
 2+NYT8q5bdn3PT/tPrJr/74CJZbijERDLeai4kQAGH3RWkECAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_004941_575212_7261F382 
X-CRM114-Status: UNSURE (   9.47  )
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

Add devicetree bindings for i.MX6 based phyCORE-i.MX6, phyBOARD-Mira and
phyFLEX-i.MX6.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 40f007859092..00a037cf5c86 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -112,6 +112,13 @@ properties:
               - fsl,imx6q-sabreauto
               - fsl,imx6q-sabrelite
               - fsl,imx6q-sabresd
+              - phytec,imx6qdl-pcm058     # PHYTEC phyCORE-i.MX6
+              - phytec,imx6q-pbab01       # PHYTEC phyFLEX carrier board
+              - phytec,imx6q-pbab01-nand  # PHYTEC phyFLEX eval Kit
+              - phytec,imx6q-pbac06       # PHYTEC phyBOARD-Mira with i.MX6 Quad
+              - phytec,imx6q-pbac06-emmc  # PHYTEC phyBOARD-Mira eMMC RDK
+              - phytec,imx6q-pbac06-nand  # PHYTEC phyBOARD-Mira NAND RDK
+              - phytec,imx6q-pfla02       # PHYTEC phyFLEX-i.MX6 Quad
               - technologic,imx6q-ts4900
               - technologic,imx6q-ts7970
           - const: fsl,imx6q
@@ -121,6 +128,9 @@ properties:
           - enum:
               - fsl,imx6qp-sabreauto      # i.MX6 Quad Plus SABRE Automotive Board
               - fsl,imx6qp-sabresd        # i.MX6 Quad Plus SABRE Smart Device Board
+              - phytec,imx6qdl-pcm058     # PHYTEC phyCORE-i.MX6
+              - phytec,imx6qp-pbac06      # PHYTEC phyBOARD-Mira with i.MX6 QuadPlus
+              - phytec,imx6qp-pbac06-nand # PHYTEC phyBOARD-Mira NAND RDK
           - const: fsl,imx6qp
 
       - description: i.MX6DL based Boards
@@ -131,6 +141,13 @@ properties:
               - emtrion,emcon-mx6-avari   # emCON-MX6S or emCON-MX6DL SoM on Avari Base
               - fsl,imx6dl-sabreauto      # i.MX6 DualLite/Solo SABRE Automotive Board
               - fsl,imx6dl-sabresd        # i.MX6 DualLite SABRE Smart Device Board
+              - phytec,imx6qdl-pcm058     # PHYTEC phyCORE-i.MX6
+              - phytec,imx6dl-pbab01      # PHYTEC phyFLEX carrier board
+              - phytec,imx6dl-pbab01-nand # PHYTEC phyFLEX eval Kit
+              - phytec,imx6dl-pbac06      # PHYTEC phyBOARD-Mira with i.MX6 DL
+              - phytec,imx6dl-pbac06-emmc # PHYTEC phyBOARD-Mira eMMC RDK
+              - phytec,imx6dl-pbac06-nand # PHYTEC phyBOARD-Mira NAND RDK
+              - phytec,imx6dl-pfla02      # PHYTEC phyFLEX-i.MX6 DL
               - technologic,imx6dl-ts4900
               - technologic,imx6dl-ts7970
               - ysoft,imx6dl-yapp4-draco  # i.MX6 DualLite Y Soft IOTA Draco board
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
