Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB021E0838
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 09:53:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=V/SKON57j7C/5omYCMEPE+Idk2yVplQaMIa92p8osGs=; b=ZRu
	c0xiUYm4feZt6KO6vtdgzZHS7NTLVLE9mgPKYAVlFxmaUs5WVVga76QH7sirlp4S++FsNeBOKVh09
	2dUUrgtLj8hSqc5xe1hXjxGzgbvs48Cvhk5FFe1etR0+fjG3vpEc4SayMUjnub1WPfkpZWVTfpC65
	s1AlufF4VEWSMjxVdx2Dy47GQW4I4Q12Hn9uV7+CLHeYQQX9BvQqD5GZWVM7dVaGC667Jgoy9cqdF
	CzAt4UztRdsa3YB1oAEw4m9XVl8J8NQK2xcbubm5IEF8HHUp4Kq8dpvA/mJ9fQ4b4pqBKPTaj3LGA
	LwgvgCZi2u4XH+8ow7S7wIQLBSEb+Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd7vf-0008H0-Mr; Mon, 25 May 2020 07:53:47 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd7vX-0008GY-DZ
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 07:53:40 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4D0681A01FA;
 Mon, 25 May 2020 09:53:35 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7C5A31A01EF;
 Mon, 25 May 2020 09:53:31 +0200 (CEST)
Received: from titan.ap.freescale.net (titan.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 4150A402BC;
 Mon, 25 May 2020 15:53:26 +0800 (SGT)
From: Yuantian Tang <andy.tang@nxp.com>
To: shawnguo@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCH] arm64: dts: ls1028a: add one more thermal zone support
Date: Mon, 25 May 2020 15:38:27 +0800
Message-Id: <20200525073827.13272-1-andy.tang@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_005339_598271_66EE7A85 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Yuantian Tang <andy.tang@nxp.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are 2 thermal zones in ls1028a soc. Current dts only
includes one. This patch adds the other thermal zone node
in dts to enable it.

Signed-off-by: Yuantian Tang <andy.tang@nxp.com>
---
 .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 22 ++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 055f114cf848..bc6f0c0f85da 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -129,11 +129,31 @@
 	};
 
 	thermal-zones {
-		core-cluster {
+		ddr-controller {
 			polling-delay-passive = <1000>;
 			polling-delay = <5000>;
 			thermal-sensors = <&tmu 0>;
 
+			trips {
+				ddr-ctrler-alert {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				ddr-ctrler-crit {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+		};
+
+		core-cluster {
+			polling-delay-passive = <1000>;
+			polling-delay = <5000>;
+			thermal-sensors = <&tmu 1>;
+
 			trips {
 				core_cluster_alert: core-cluster-alert {
 					temperature = <85000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
