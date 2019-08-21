Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C6697499
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 10:21:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=urgCETlhqW1HP9ifuQqh+FBZSocw3yJW1AchBgu8se8=; b=h3p5n+CENeh1Ds
	aSkp3+xcILg0BVuPFyfUCVvJ7LhpEkchAOlQcStJDUwdsdFJfwMhkQYhVd/YwbOxQl2a6Qxx4MpBT
	TUs8adfroBRQ8gc8akUAPE5r7OWQU9A5hu4vdm22Uk8aCSM7H50wxmHhrLzolT2+zmmDYL0mJiwqE
	/d898zLfjHoYoOmDQQT5WNHlc0p19iHLL5pufJqxugiV5sHx87z19NGi2xqGeAlS3uX7/Bf1uiK/b
	BPHgcIO5SN3muYWXCGJhADsvQBwgdohlF0z/mkTfEceS91j8CAG63Co170C120oybYlKtcV69swUP
	nHE07wRIBG9m1yFGd1kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0LsM-0001te-Go; Wed, 21 Aug 2019 08:21:50 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Lro-0001my-Gc
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 08:21:20 +0000
Received: from tarshish.tkos.co.il (unknown [10.0.8.3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id D8184440592;
 Wed, 21 Aug 2019 11:21:09 +0300 (IDT)
From: Baruch Siach <baruch@tkos.co.il>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH v4 2/2] dt-bindings: arm: fsl: add Hummingboard Pulse
Date: Wed, 21 Aug 2019 11:20:19 +0300
Message-Id: <f6b31016f833358e27d96e992f180b8cdb4c96f9.1566375619.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <250bf15602801b09a1c1e6d286d0eb125029fd49.1566375619.git.baruch@tkos.co.il>
References: <250bf15602801b09a1c1e6d286d0eb125029fd49.1566375619.git.baruch@tkos.co.il>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_012116_776170_0B8B860E 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Baruch Siach <baruch@tkos.co.il>, Marco Felsch <m.felsch@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add binding documentation for the SolidRun Hummingboard Pulse board.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
v4: No change
v3: No change
v2: New patch suggested by Fabio
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7294ac36f4c0..14ca94928677 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -219,6 +219,7 @@ properties:
           - enum:
               - fsl,imx8mq-evk            # i.MX8MQ EVK Board
               - purism,librem5-devkit     # Purism Librem5 devkit
+              - solidrun,hummingboard-pulse # SolidRun Hummingboard Pulse
           - const: fsl,imx8mq
 
       - description: i.MX8QXP based Boards
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
