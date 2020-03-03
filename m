Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE56176F94
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 07:39:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Q4IcyArRBDJg9jSoaBiz3cfSubsJH/4j2fOHxY9UKsU=; b=iHi1RMvJFrjSS8CzIUh0efHcnB
	9ZNHnog+10FW87pzSHGcQU9JaM1p16ycuwwrrSgqcXkw07R0U95fENbSX1cOHKZhMnzso0g7Pybqq
	dsSbIJVvv/HQXONaQpTMEXNbkvxoyob6S8sCKehD95HkpRQORHPsO7VVdFn5vQtLXwGSDKRgvVXHr
	sh1rPcJYxgNajJrb366wbKS3Yvla6tyi6yk9DV/2bWkcoD7+L+bQ/uSeQEpP77GvzoID3ZC7PSFzp
	e88TxEhOaSwTZyOLzNr/GiGfVKfYw2chGdRJ5/oWFMqYJEbEc8n7kI70auP9ntAURND+rBexfnMiO
	B8kmzBfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j91D3-00007P-AW; Tue, 03 Mar 2020 06:39:17 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j91Cw-00005r-Dl
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 06:39:11 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9150C1A13E1;
 Tue,  3 Mar 2020 07:39:06 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 42C1F1A13EF;
 Tue,  3 Mar 2020 07:39:02 +0100 (CET)
Received: from lsv03124.swis.in-blr01.nxp.com (lsv03124.swis.in-blr01.nxp.com
 [92.120.146.121])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 66A1A40366;
 Tue,  3 Mar 2020 14:38:41 +0800 (SGT)
From: Kuldeep Singh <kuldeep.singh@nxp.com>
To: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 2/2] arm64: dts: lx2160aqds: Add FSPI node properties
Date: Tue,  3 Mar 2020 12:08:32 +0530
Message-Id: <1583217512-27994-2-git-send-email-kuldeep.singh@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583217512-27994-1-git-send-email-kuldeep.singh@nxp.com>
References: <1583217512-27994-1-git-send-email-kuldeep.singh@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_223910_604961_3E9F77C1 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kuldeep Singh <kuldeep.singh@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Li Yang <leoyang.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

lx2160a-qds has 2 micron "mt35xu512aba" flashes of size 64M each
connected on A0 and B1 i.e on CS0 and CS3. Since flashes are connected
on different buses, only one flash can be probed at a time.

Add fspi node properties aligned with LX2160A-RDB fspi properties.

Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts
index 1a5acf6..3b88e1e 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts
@@ -43,6 +43,21 @@
 	status = "okay";
 };
 
+&fspi {
+	status = "okay";
+
+	mt35xu512aba0: flash@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "jedec,spi-nor";
+		m25p,fast-read;
+		spi-max-frequency = <50000000>;
+		reg = <0>;
+		spi-rx-bus-width = <8>;
+		spi-tx-bus-width = <8>;
+	};
+};
+
 &i2c0 {
 	status = "okay";
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
