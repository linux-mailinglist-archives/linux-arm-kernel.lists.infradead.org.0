Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0924E393
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZiMqn6gSRhP95Z+kN7eG4hw/7BFRWe8fqWVDMlH5vO0=; b=Vq2s9vjjqtwgX5SqImDzl8CjGG
	/OimnB8wsJQOFW6R50gHbVo/D0ZvjYxHLmBsrT4BdgpHdiqAx5UdYiwteaJKPAKHyaSpRMAIkQLi3
	rW3GQG4yNZXYN86oNk881hnNMIcsxOPo7NuELMYuamVZHdUl4WdF1bXD20Venj22NFi/SXbijf8V9
	tj6vlVevlzQ455Y3x2rFVFBGnWpuYIrH9ti5m1EOqUnQSs7aFz1zfT19lWUHqfem4jUcKbcz+xJI8
	ndFGIrc1dsaUkDaGnPzXpfVP4UDDBWcb3ae0YFPRfEjYYOCoayJxmtJnyIqpfL1OAY6uUFwyRNv0C
	gA3ZRMPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heFsL-0006DV-CH; Fri, 21 Jun 2019 09:30:29 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFf0-0002tV-Lx
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:16:44 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 8726825BE01;
 Fri, 21 Jun 2019 19:16:34 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 81A6D9408C4; Fri, 21 Jun 2019 11:16:32 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH 05/53] arm64: dts: renesas: r8a774a1: Tie Audio-DMAC to
 IPMMU-MP
Date: Fri, 21 Jun 2019 11:15:43 +0200
Message-Id: <01712eaa0d969cc347a5146c6efd0a1ec67a6372.1561107232.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1561107232.git.horms+renesas@verge.net.au>
References: <cover.1561107232.git.horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021642_867398_4A1FE0F5 
X-CRM114-Status: UNSURE (   8.21  )
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
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Biju Das <biju.das@bp.renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Biju Das <biju.das@bp.renesas.com>

Hook up r8a774a1 Audio-DMAC nodes to the IPMMU-MP.

Based on work for the r8a7795 by Magnus Damm.

Signed-off-by: Biju Das <biju.das@bp.renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 arch/arm64/boot/dts/renesas/r8a774a1.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r8a774a1.dtsi b/arch/arm64/boot/dts/renesas/r8a774a1.dtsi
index 92b5e92427af..99a3a76cf940 100644
--- a/arch/arm64/boot/dts/renesas/r8a774a1.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a774a1.dtsi
@@ -1653,6 +1653,14 @@
 			resets = <&cpg 502>;
 			#dma-cells = <1>;
 			dma-channels = <16>;
+			iommus = <&ipmmu_mp 0>, <&ipmmu_mp 1>,
+			       <&ipmmu_mp 2>, <&ipmmu_mp 3>,
+			       <&ipmmu_mp 4>, <&ipmmu_mp 5>,
+			       <&ipmmu_mp 6>, <&ipmmu_mp 7>,
+			       <&ipmmu_mp 8>, <&ipmmu_mp 9>,
+			       <&ipmmu_mp 10>, <&ipmmu_mp 11>,
+			       <&ipmmu_mp 12>, <&ipmmu_mp 13>,
+			       <&ipmmu_mp 14>, <&ipmmu_mp 15>;
 		};
 
 		audma1: dma-controller@ec720000 {
@@ -1687,6 +1695,14 @@
 			resets = <&cpg 501>;
 			#dma-cells = <1>;
 			dma-channels = <16>;
+			iommus = <&ipmmu_mp 16>, <&ipmmu_mp 17>,
+			       <&ipmmu_mp 18>, <&ipmmu_mp 19>,
+			       <&ipmmu_mp 20>, <&ipmmu_mp 21>,
+			       <&ipmmu_mp 22>, <&ipmmu_mp 23>,
+			       <&ipmmu_mp 24>, <&ipmmu_mp 25>,
+			       <&ipmmu_mp 26>, <&ipmmu_mp 27>,
+			       <&ipmmu_mp 28>, <&ipmmu_mp 29>,
+			       <&ipmmu_mp 30>, <&ipmmu_mp 31>;
 		};
 
 		xhci0: usb@ee000000 {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
