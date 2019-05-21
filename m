Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72FE8255ED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 18:44:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ylIEbUkTYcxRRGvs1fw+f5p3dFmF/QGQYTJWr6PSvc4=; b=POAbu2YGcFMGp1
	xT18W6JFNvpO/7Hopu89Qaf37VS4RwePpBT/LryACDUsxIXSGp2ABEZ+sJ3sEsEunOcWNX9ppUq64
	NihJF+BW2M2kZC1AbCpFBSN5evXiSflGqo4nEyQdJ2slJnoELwAhb0MnoJCbbYOBDofigINt0qTuD
	RQRMlGAnRvUTdqTWkD/Ix24VXsxMEwtorWxKajrujE6anhADrJjty5UhUDq7XX0CQmg5N5Ck23zA3
	L29t91rS54g0EAcvRy8GpxNWdWkphM/5+vIdj+BfgVNCUx4HEhQCoUy7VSSkbOaAltqJkEnfSJ8cX
	v404CE1Zuq140n0n/LUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7sa-0005Hm-06; Tue, 21 May 2019 16:44:44 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7sS-0005HI-Mu
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 16:44:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B95C374;
 Tue, 21 May 2019 09:44:35 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2BC663F718;
 Tue, 21 May 2019 09:44:34 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: robh+dt@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH 1/2] arm64: dts: renesas: r8a774c0: Clean up CPU compatibles
Date: Tue, 21 May 2019 17:44:26 +0100
Message-Id: <50fbe259ee5951e32221af457737b7d970be9f32.1558456785.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_094436_753265_0A2FC6E4 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Apparently this DTS crossed over with commit 31af04cd60d3 ("arm64: dts:
Remove inconsistent use of 'arm,armv8' compatible string") and missed
out on the cleanup, so put it right.

CC: Simon Horman <horms@verge.net.au>
CC: Magnus Damm <magnus.damm@gmail.com>
CC: linux-renesas-soc@vger.kernel.org
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/boot/dts/renesas/r8a774c0.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a774c0.dtsi b/arch/arm64/boot/dts/renesas/r8a774c0.dtsi
index 3f86db199dbf..500b7bd58022 100644
--- a/arch/arm64/boot/dts/renesas/r8a774c0.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a774c0.dtsi
@@ -70,7 +70,7 @@
 		#size-cells = <0>;
 
 		a53_0: cpu@0 {
-			compatible = "arm,cortex-a53", "arm,armv8";
+			compatible = "arm,cortex-a53";
 			reg = <0>;
 			device_type = "cpu";
 			power-domains = <&sysc R8A774C0_PD_CA53_CPU0>;
@@ -81,7 +81,7 @@
 		};
 
 		a53_1: cpu@1 {
-			compatible = "arm,cortex-a53", "arm,armv8";
+			compatible = "arm,cortex-a53";
 			reg = <1>;
 			device_type = "cpu";
 			power-domains = <&sysc R8A774C0_PD_CA53_CPU1>;
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
