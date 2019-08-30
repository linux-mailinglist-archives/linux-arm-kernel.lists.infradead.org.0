Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FE4A4025
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 00:10:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sY8DCOk0kOONTu+z8g2yALoBcsCz2oGFhP2Eh09p/Ow=; b=MBg7QTkugxKj4g
	WXlKHSuCxHgLPTD2t0wBPn+qX8ohac1b0kQe/SwvwhwT7PnNAWT+NxI/bMOvzsGYvT/BoLq7urUUp
	A17FdD950u4Ac4Se2jt/xE/Xoz1TDenmJelGj4cxrGqc4jc9+aA+ua8X4OMTeW68o5lYC9zKgwV7h
	UNeQRwIxlKqhLTuPAGtNvyYU64Yo2b5NdQOvqy/ObTIZ48e7Znu1wBLEB1mQH6nV8UkYWGs1iBtKJ
	B2sB3nf0KEgebM1Qbpz5gnZkF/RMUxgO/1UcBMXVHX7yZ86p8SV3xcOf5QczaFlveOEl+AWZNqlgM
	6NmAJIG6I7OvvBSRwbdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3p5u-0000sc-3D; Fri, 30 Aug 2019 22:10:10 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3p4N-0008CC-4s
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 22:08:36 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 2A90DD880F;
 Sat, 31 Aug 2019 00:08:33 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id S9MhM_I0F1f3; Sat, 31 Aug 2019 00:08:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 4E6C0D87F9;
 Sat, 31 Aug 2019 00:07:59 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id I3jYT7iCk-jZ; Sat, 31 Aug 2019 00:07:55 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 13918D87E7;
 Sat, 31 Aug 2019 00:07:50 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: "To : Olof Johansson" <olof@lixom.net>
Subject: [PATCH v3 05/16] dt-bindings: phy-mmp3-usb: Add bindings
Date: Sat, 31 Aug 2019 00:07:32 +0200
Message-Id: <20190830220743.439670-6-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190830220743.439670-1-lkundrak@v3.sk>
References: <20190830220743.439670-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_150835_421798_0776ED79 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Rob Herring <robh@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lubomir Rintel <lkundrak@v3.sk>, "Cc : Rob Herring" <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is the PHY chip for USB OTG on MMP3 platform.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
Reviewed-by: Rob Herring <robh@kernel.org>

---
Changes since v2:
- Add Rob's Reviewed-by tag

Changes since v1:
- s/usbphy@/usb-phy@/
- Dropped a reference to Documentation/phy.txt

 .../devicetree/bindings/phy/phy-mmp3-usb.txt        | 13 +++++++++++++
 1 file changed, 13 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/phy-mmp3-usb.txt

diff --git a/Documentation/devicetree/bindings/phy/phy-mmp3-usb.txt b/Documentation/devicetree/bindings/phy/phy-mmp3-usb.txt
new file mode 100644
index 0000000000000..7183b9102f917
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/phy-mmp3-usb.txt
@@ -0,0 +1,13 @@
+Marvell MMP3 USB PHY
+--------------------
+
+Required properties:
+- compatible: must be "marvell,mmp3-usb-phy"
+- #phy-cells: must be 0
+
+Example:
+	usb-phy: usb-phy@d4207000 {
+		compatible = "marvell,mmp3-usb-phy";
+		reg = <0xd4207000 0x40>;
+		#phy-cells = <0>;
+	};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
