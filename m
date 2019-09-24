Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8E7BC0B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 05:27:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XldLXSSJutOnlQ7pCn6jeP09HZIkjy4+p+c8UP3Fzuk=; b=GJo
	iD3MMTQcY1i+WzcZVbIILnRvmBGS+D9NXHA9Nl35a/L19OVmxaWn0pxrxDggYAeoK9hAp2Yid45af
	ommjTeYD5DQ2fFcx4Od8Rg1Cez9nWhm50mmnz6YQG4bBbtvRtbLE2uBYV3QT6TkmKz6zM6DqEv5At
	A5LuNil6j+xyUhy8hKzDeYQ88hl/98cGAuEkX276Xb50gjd5m8cqKMSo2mTqoqGcWdZEPjG1Oide9
	eB4Axwvg6MC09CQftiJsuXU+71ihd0hhFzS0gfsxLMbgjlAsFbStM4ki6GbGQfuajyrOUeUNWPBk/
	SSIzUDRriTU+lWqw4hwjUzhkorbjgHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCbUa-0001xG-Sn; Tue, 24 Sep 2019 03:27:56 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCbUS-0001wU-FT
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 03:27:49 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 2BD892000B6;
 Tue, 24 Sep 2019 05:27:46 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 2DB96200019;
 Tue, 24 Sep 2019 05:27:41 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 2C214402B4;
 Tue, 24 Sep 2019 11:27:35 +0800 (SGT)
From: Yinbo Zhu <yinbo.zhu@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2] usb: dwc3: enable otg mode for dwc3 usb ip on layerscape
Date: Tue, 24 Sep 2019 11:29:03 +0800
Message-Id: <20190924032903.32775-1-yinbo.zhu@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_202748_659805_DB3DB593 
X-CRM114-Status: UNSURE (   7.36  )
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
Cc: devicetree@vger.kernel.org, xiaobo.xie@nxp.com,
 linux-kernel@vger.kernel.org, jiafei.pan@nxp.com,
 Ran Wang <ran.wang_1@nxp.com>, yinbo.zhu@nxp.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

layerscape otg function should be supported HNP SRP and ADP protocol
accroing to rm doc, but dwc3 code not realize it and use id pin to
detect who is host or device(0 is host 1 is device) this patch is to
enable OTG mode on ls1028ardb ls1088ardb and ls1046ardb in dts

Signed-off-by: Yinbo Zhu <yinbo.zhu@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts | 4 ++++
 arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts | 4 ++++
 arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts | 1 +
 3 files changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
index 9fb9113..076cac6 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
@@ -171,3 +171,7 @@
 &sata {
 	status = "okay";
 };
+
+&usb1 {
+	dr_mode = "otg";
+};
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
index 6a6514d..0c742be 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
@@ -122,6 +122,10 @@
 	};
 };
 
+&usb1 {
+	dr_mode = "otg";
+};
+
 #include "fsl-ls1046-post.dtsi"
 
 &fman0 {
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
index 8e925df..90b1989 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
@@ -95,5 +95,6 @@
 };
 
 &usb1 {
+	dr_mode = "otg";
 	status = "okay";
 };
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
