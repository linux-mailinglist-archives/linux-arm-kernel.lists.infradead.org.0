Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7FCFAEA39
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 14:22:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9YDctrTUY6+ZFQ9ppI9kplnAJYLkSVf4C69YLdkTaIc=; b=WEJz22PA/pIJ3+RLx9O8MVyi/6
	ZOyCH5Z8Eh2Mq83sA1VX8ZwKYzzjpz5H/IhOipmfJyZpSEWZ6iQHg6b53kBAJxUDH+pHxKHYK9q7w
	cijp7f4akb4cL3GWkrYWGCkSzjJIOYhsyEhIFu0n1EaWEkeWhYvfYBS01xND2/kXyUZsu9PEuw9Tv
	V5hkyz2QRMuwPkf8jvH3Uw8QxDN3pB/WN/nEuP3D5SDduhxqIrKXbzJidLwo5rgs1ngYqkRqqwplw
	pDP9XCe4DbqHwyzXZK26ff5Ll4hYHB4g03FU/npKycX6JQ3PdrUfnsMa6OkrGRNsKyrqtZ/63RFaO
	4DoyM45Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7fAM-0003u6-Uh; Tue, 10 Sep 2019 12:22:39 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7f96-0002uz-7f
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 12:21:21 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7ECCB20006B;
 Tue, 10 Sep 2019 14:21:08 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0D7C7200236;
 Tue, 10 Sep 2019 14:21:05 +0200 (CEST)
Received: from lsv03124.swis.in-blr01.nxp.com (lsv03124.swis.in-blr01.nxp.com
 [92.120.146.121])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 490D8402CF;
 Tue, 10 Sep 2019 20:21:00 +0800 (SGT)
From: Ashish Kumar <Ashish.Kumar@nxp.com>
To: devicetree@vger.kernel.org, robh@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org
Subject: [PATCH] arm64: dts: ls1046a: Append missing properties of QSPI node
 on ls1046ardb
Date: Tue, 10 Sep 2019 17:50:53 +0530
Message-Id: <1568118055-9740-3-git-send-email-Ashish.Kumar@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568118055-9740-1-git-send-email-Ashish.Kumar@nxp.com>
References: <1568118055-9740-1-git-send-email-Ashish.Kumar@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_052120_499296_B0BDE299 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Ashish Kumar <Ashish.Kumar@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the max-freqquncy to 50MHz, also adding "fast,read,m25p80" property.

Align the QSPI node with other similar boards like(ls1088ardb,
ls1046afrwy) as per bindings.

Also, correct compatible node to fix this warning:
m25p80 spi0.0: found s25fl512s, expected m25p80
m25p80 spi0.1: found s25fl512s, expected m25p80

Signed-off-by: Ashish Kumar <Ashish.Kumar@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
index 6a6514d..9c4113a 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
@@ -101,21 +101,23 @@
 &qspi {
 	status = "okay";
 
-	qflash0: flash@0 {
-		compatible = "spansion,m25p80";
+	qflash0: s25fs512a@0 {
+		compatible = "spansion,s25fs512a", "jedec,spi-nor";
 		#address-cells = <1>;
 		#size-cells = <1>;
-		spi-max-frequency = <20000000>;
+		m25p,fast-read;
+		spi-max-frequency = <50000000>;
 		spi-rx-bus-width = <4>;
 		spi-tx-bus-width = <4>;
 		reg = <0>;
 	};
 
-	qflash1: flash@1 {
-		compatible = "spansion,m25p80";
+	qflash1: s25fs152a@1 {
+		compatible = "spansion,s25fs512a", "jedec,spi-nor";
 		#address-cells = <1>;
 		#size-cells = <1>;
-		spi-max-frequency = <20000000>;
+		m25p,fast-read;
+		spi-max-frequency = <50000000>;
 		spi-rx-bus-width = <4>;
 		spi-tx-bus-width = <4>;
 		reg = <1>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
