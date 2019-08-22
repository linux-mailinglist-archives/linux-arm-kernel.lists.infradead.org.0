Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 007B598F75
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 11:36:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wpLAEO4AAy017A/BcjTmTybzL37+owNjVKMlqS14n8g=; b=nkO5y+aszV6oks
	/ofHGBJCdHU1VPyyPEA64gjNzdhJudnwOGwoUrr2XHRXp2fMagBG5rVJY2BZYpvwSowr2nB82BH5a
	YnWPMY/C0GByduA0RoRHYh2Kn9r4CNy3Irba3zxLVpuLhxGnsim1X/zXzdeluXWt2ZRJ0XTQdD+NF
	s+qA7wqEoDJONxvmu6fNJ0lRYQbfrVEaom/6uAQppDY/0b1M/WKuO+G5Sd/87HkLU1uCSq6u2BWZS
	6/Riv92g4oOWwXsBfsExsP2qJ1f6FxNClTL4A2rtlPur4+3pR/23k3Iq2zq37MMekBmpC8taWsnBC
	QTaMwSM6D/3nxMfxlPhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0jWP-0001m9-1M; Thu, 22 Aug 2019 09:36:45 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0jTm-0006nM-Ol
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 09:34:04 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 68658D7360;
 Thu, 22 Aug 2019 11:34:00 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id YUBFkgUThecf; Thu, 22 Aug 2019 11:33:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 70E43D7564;
 Thu, 22 Aug 2019 11:33:02 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id LgHquIbDbj1O; Thu, 22 Aug 2019 11:27:28 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id D5672D755B;
 Thu, 22 Aug 2019 11:26:47 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH v2 05/20] dt-bindings: phy-mmp3-usb: Add bindings
Date: Thu, 22 Aug 2019 11:26:28 +0200
Message-Id: <20190822092643.593488-6-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190822092643.593488-1-lkundrak@v3.sk>
References: <20190822092643.593488-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_023403_040333_5ACED48D 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is the PHY chip for USB OTG on MMP3 platform.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>

---
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
