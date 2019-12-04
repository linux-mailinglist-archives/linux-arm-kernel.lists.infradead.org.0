Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7091E1129BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 11:59:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=isVUAernCtOcMJADkmsF9WvCIf3ZtK7pusKp52hEtgU=; b=Dr6ZJieDFg6gbmKtbdJK63wbQq
	7IKftDusLFSfUbovn1vcVhrZJIfBmC9+Me/K+wUz5XWHRFCeWCMA2LMDohnaJsTijv8Hm8rvBricd
	GkBvYZ6RawlPyLXxS7ITxZ4yWtB2BrJ2bR9MMLCibrVB4cRofTuawUm6UzMyZaGnlo5Xi2Jugk0EH
	+UfyPY2UrcPHQyO6hZDKryTdghIrYlLXyO0ZMXrI7q4CFEYcrM4c7sC0G5jyHiVTdgZRlage5S1nh
	Yj4zEf2KiNjRMgEF2430EpUJy20EeCxBeA5Pt9PVCVAwsYECKVRvkKRewBcwRk8xlSNziTZ7PK12a
	GSNX4QyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icSN8-0007er-Pf; Wed, 04 Dec 2019 10:59:06 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icSMd-0007G9-9m
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 10:58:36 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1157F20117A;
 Wed,  4 Dec 2019 11:58:34 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 51EFE201174;
 Wed,  4 Dec 2019 11:58:30 +0100 (CET)
Received: from lsv03124.swis.in-blr01.nxp.com (lsv03124.swis.in-blr01.nxp.com
 [92.120.146.121])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id C61E3402FB;
 Wed,  4 Dec 2019 18:58:23 +0800 (SGT)
From: Ashish Kumar <Ashish.Kumar@nxp.com>
To: devicetree@vger.kernel.org, robh@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org
Subject: [Patch v2 3/5] arm64: dts: ls1046a: Update QSPI node properties of
 ls1046ardb
Date: Wed,  4 Dec 2019 16:28:16 +0530
Message-Id: <1575457098-18368-4-git-send-email-Ashish.Kumar@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575457098-18368-1-git-send-email-Ashish.Kumar@nxp.com>
References: <1575457098-18368-1-git-send-email-Ashish.Kumar@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_025835_472968_16E50794 
X-CRM114-Status: UNSURE (   7.92  )
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
Cc: Kuldeep Singh <kuldeep.singh@nxp.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Ashish Kumar <Ashish.Kumar@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the compatibles to use jedec,spi-nor.
Also update the max-frequency to 50MHz and spi-tx-bus-width to 1.

Align the QSPI node with other similar boards like(ls1088ardb,
ls1046afrwy) as per bindings.

Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
Signed-off-by: Ashish Kumar <Ashish.Kumar@nxp.com>
---
v2:
Rebased to top
Use "jedec,spi-nor" in compatibles

 .../arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
index 0c742befb761..dbc23d6cd3b4 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
@@ -101,23 +101,23 @@
 &qspi {
 	status = "okay";
 
-	qflash0: flash@0 {
-		compatible = "spansion,m25p80";
+	s25fs512s0: flash@0 {
+		compatible = "jedec,spi-nor";
 		#address-cells = <1>;
 		#size-cells = <1>;
-		spi-max-frequency = <20000000>;
+		spi-max-frequency = <50000000>;
 		spi-rx-bus-width = <4>;
-		spi-tx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
 		reg = <0>;
 	};
 
-	qflash1: flash@1 {
-		compatible = "spansion,m25p80";
+	s25fs512s1: flash@1 {
+		compatible = "jedec,spi-nor";
 		#address-cells = <1>;
 		#size-cells = <1>;
-		spi-max-frequency = <20000000>;
+		spi-max-frequency = <50000000>;
 		spi-rx-bus-width = <4>;
-		spi-tx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
 		reg = <1>;
 	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
