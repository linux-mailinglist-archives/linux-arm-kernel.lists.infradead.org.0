Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 165394E3D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:39:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Mzz1iqvgwhdLqcNfVif4Z0b4Ei9BxrVsF/Zd7ceSlbQ=; b=kS+3RbDO/eebfh8onb/kP3GqVI
	yU7Dr+InYukG8IP4McxKQkK+Svo0IdGLOnNTJ4BEUC9PJDmdxeUXcFdo9rYQrPLwUoBZglSimSmdW
	rEN+Xn2JDdpvJ6gqB6H9o3mX8T/9vcnazoEFDdBmTdbYbPEdYRP9B1dTiPgI0cxsumJPrIAOCCxQh
	YRkZcLfcCAdL3kv1vMqyiky+E/x79ZvzoDLPx/dylgpPindaXwTp17YRfTtrXAdVZI8cBMzpzwl1i
	H1omh6Y1aq0TxgT1F+puFSzz8Wku6TPORcrZ3gqo+ampo2rq21R/bqYlY5jkPqzFKZMH8KUc2TBiG
	XCsmM83w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heG15-0006i5-Al; Fri, 21 Jun 2019 09:39:31 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFfy-0002tV-Rn
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:17:46 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 728A825BE72;
 Fri, 21 Jun 2019 19:16:38 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id CD5B8940954; Fri, 21 Jun 2019 11:16:34 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH 36/53] arm64: dts: renesas: r8a7799[05]: Point LVDS0 to its
 companion LVDS1
Date: Fri, 21 Jun 2019 11:16:14 +0200
Message-Id: <46f69d06afd0174b5448ca8b0772a388cb3de9c6.1561107232.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1561107232.git.horms+renesas@verge.net.au>
References: <cover.1561107232.git.horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021743_181924_5C0CDBC9 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Simon Horman <horms+renesas@verge.net.au>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>

Add the new renesas,companion property to the LVDS0 node to point to the
companion LVDS encoder LVDS1.

Signed-off-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Reviewed-by: Jacopo Mondi <jacopo+renesas@jmondi.org>
Tested-by: Jacopo Mondi <jacopo+renesas@jmondi.org>
Reviewed-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 arch/arm64/boot/dts/renesas/r8a77990.dtsi | 2 ++
 arch/arm64/boot/dts/renesas/r8a77995.dtsi | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r8a77990.dtsi b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
index 83cf590b4b66..b898a118408d 100644
--- a/arch/arm64/boot/dts/renesas/r8a77990.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
@@ -1803,6 +1803,8 @@
 			resets = <&cpg 727>;
 			status = "disabled";
 
+			renesas,companion = <&lvds1>;
+
 			ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
diff --git a/arch/arm64/boot/dts/renesas/r8a77995.dtsi b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
index e0a0149464a9..0a344eb55094 100644
--- a/arch/arm64/boot/dts/renesas/r8a77995.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
@@ -1038,6 +1038,8 @@
 			resets = <&cpg 727>;
 			status = "disabled";
 
+			renesas,companion = <&lvds1>;
+
 			ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
