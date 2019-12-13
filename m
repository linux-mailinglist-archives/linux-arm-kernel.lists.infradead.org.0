Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D9C11DC12
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 03:19:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yw7WL3oHlrxhSd7Sm4Bzm5WaKg0YAQvRKDPc6RSQoec=; b=c/32innv4iZirV8BuEmRmBXOWw
	I47WwBRxRsHeBV+pPSbyHRnPAWFwCDrOn4JJkgohDCV7s03zfDvmfO8tLEyt7hIu902T6C6RKcXRo
	PgXZl7bQH2eFxqNDMGJuKCStKK4G9DzZePqDDYYj2gVSKecyG5STxJ0qR3g5DZWanZ/+93yDnmvRW
	6mcKr3i9fkno47yRb7WFwfrF7/BT4FmSAtdaLQYuqY96I4FJT5coM9nB/HzjECmN8ELpTLFIzlVq8
	KqluImGYKWnBoBeQqP+NU5UGlIbn5nToB6XNc9wGPO5gCEQCtZBS3Y3CmxEscEUnokpCrcK4ARth4
	h6fRfEuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifaYa-0003Dh-NQ; Fri, 13 Dec 2019 02:19:52 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifaYM-00034O-MX
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 02:19:40 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7DCDC200300;
 Fri, 13 Dec 2019 03:19:33 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 000B620030A;
 Fri, 13 Dec 2019 03:19:28 +0100 (CET)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 1AE99402AF;
 Fri, 13 Dec 2019 10:19:23 +0800 (SGT)
From: Yinbo Zhu <yinbo.zhu@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 2/2] arm64: dts: ls1028a: fix little-big endian issue for
 dcfg
Date: Fri, 13 Dec 2019 10:18:39 +0800
Message-Id: <20191213021839.23517-2-yinbo.zhu@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191213021839.23517-1-yinbo.zhu@nxp.com>
References: <20191213021839.23517-1-yinbo.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_181938_903424_CF07D187 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 xiaobo.xie@nxp.com, jiafei.pan@nxp.com, yinbo.zhu@nxp.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dcfg use little endian that SoC register value will be correct

Signed-off-by: Yinbo Zhu <yinbo.zhu@nxp.com>
Acked-by: Shawn Guo <shawnguo@kernel.org>
Acked-by: Yangbo Lu <yangbo.lu@nxp.com>
---
Change in v2:
		Add Acked-by

 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 8e8a77eb596a..8b28fda2ca20 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -175,7 +175,7 @@
 		dcfg: syscon@1e00000 {
 			compatible = "fsl,ls1028a-dcfg", "syscon";
 			reg = <0x0 0x1e00000 0x0 0x10000>;
-			big-endian;
+			little-endian;
 		};
 
 		scfg: syscon@1fc0000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
