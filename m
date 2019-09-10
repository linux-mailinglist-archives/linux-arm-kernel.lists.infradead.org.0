Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F9DAEF09
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 17:55:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zE55MyUuU4vFKlN+JGFrx/ZQ2RwlFAbcffICzA0WgCM=; b=mXaaoa1eSB1GWV
	HVQLVoRzt7/cdNwro5NmTuugcZZH8dhRG0uV9w8Q5d0g4Uxx9oTP83FtMITSEGkTZdQYWUnnHqiq5
	i56YwcSJUWf4PVnsnpYRNFBWfZuTH7Mvx6B/VDZLJxAF/M3uyl351fUj8vGSfMYStCTZWxRyhDzPs
	9WRYuYv45W4t2mmoW4OOi1ewRqYyO9507EzxIhRR9Yoa110YQRV96Dk8ZzoTJfLRCTFLXjcBEKoPv
	JOMvPh7U1lMuSBtg/2W/qUASG+bfDPRw1ElWhuam6PI1zldLaVMGGfuFM/OhPz4eNIq4qIqI72Y6B
	Clp5yFflHjkxm2EAwnUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7iUX-0000Rb-Pf; Tue, 10 Sep 2019 15:55:41 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7iUO-0000RE-0a
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 15:55:33 +0000
Received: by mail-wm1-x343.google.com with SMTP id t9so157347wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 08:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YJ/xSRj04hb+Vjp0G8v57BGzk2RHL40NPxcaQuTTxb0=;
 b=NopmjHDf1N0d3pOf0ECTnZpkWbC5PPwUogiwZsUwDTIwgEgQ47sCN/WtEU/LQLlPSv
 fZ9X9O89kZTEP6e7o3p9jm+rLnGIDG4++Rxp/zhxPi8gUhsz3x1lbkfKW3RtvUOKYtb/
 Q53V94Qyzox2PxZnj6wzk0UiwSuCBZT1oQJ8M/mIyqnarV1hZuegeQj8J9SUyIV48f09
 yVnsIrEGiUAWTJb81dWQdA9Y541KxvANRRMTlpY5vX1yHTjkB2/7v8ZvBXwQLqOXq7u9
 uqboVrDdxLwGW1pquRt+1L+t0qtJ0+3ugritCgb7zcDdqRYZJTTFcaGyvz5stIAtXU/S
 J4KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YJ/xSRj04hb+Vjp0G8v57BGzk2RHL40NPxcaQuTTxb0=;
 b=QMAtA+X+ZHve0eft6jNmyitblMBUaPmXSdgzHSeet/+GzdN6keui4dXaJuhUezefO2
 931l/umJZwIj+i+1liKabi5bLSJWydmLF+77PmMvngDqa/ROYsy2vq1qaxYQlPCyYMj3
 /0XOz9D6TizDs0sv7NGZgsiTBTjmaTBTgDD8Puf0izQW8PeUhP/GyjJ8o8bdGzRycwkw
 fdy3CaPNrvajJvc2MjBVRprfLLysPu/8OHj/SgWNqlQiRmV03yYhibZJPbxgFSZjQk1l
 wuLeQwOVcgL8a+udgw6UoO1yCiW6rcxhvW/Xx63xIh+s/HHk5YLoI1adHEa+fsSaKtul
 avcw==
X-Gm-Message-State: APjAAAUCp6ZzH4cfjMiDNq0LbbRRMcq7SQuWwUTKQ/hSP9Wy7KI2CFUS
 IYtK/sc+N0FX61wZ5qpQweU=
X-Google-Smtp-Source: APXvYqwRgrZHxJJlCCWWTIdvJK1X8hVtJn4cq1fyPIBd0nfF2LAchwsIZdzc9hsmxdjosHFLCGuzAw==
X-Received: by 2002:a7b:c094:: with SMTP id r20mr143261wmh.134.1568130930147; 
 Tue, 10 Sep 2019 08:55:30 -0700 (PDT)
Received: from arch-dsk-01.twb ([77.126.41.65])
 by smtp.gmail.com with ESMTPSA id y3sm17167133wrw.83.2019.09.10.08.55.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Sep 2019 08:55:29 -0700 (PDT)
From: tinywrkb <tinywrkb@gmail.com>
To: 
Subject: [PATCH] ARM: dts: imx6dl: SolidRun: add phy node with 100Mb/s
 max-speed
Date: Tue, 10 Sep 2019 18:55:07 +0300
Message-Id: <20190910155507.491230-1-tinywrkb@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_085532_060559_37ED25DB 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tinywrkb[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, tinywrkb@gmail.com,
 Russell King <linux@armlinux.org.uk>, open list <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cubox-i Solo/DualLite carrier board has 100Mb/s magnetics while the
Atheros AR8035 PHY on the MicroSoM v1.3 CPU module is a 1GbE PHY device.

Since commit 5502b218e001 ("net: phy: use phy_resolve_aneg_linkmode in
genphy_read_status") ethernet is broken on Cubox-i Solo/DualLite devices.

This adds a phy node to the MicroSoM DTS and a 100Mb/s max-speed limit
to the Cubox-i Solo/DualLite carrier DTS.

Signed-off-by: tinywrkb <tinywrkb@gmail.com>
---
This patch fixes ethernet on my Cubox-i2-300-D which is limited to 100Mb/s,
afaik due to the carrier board  magnetics, and was since commit 5502b218e001
("net: phy: use phy_resolve_aneg_linkmode in genphy_read_status")

The AR8035 PHY on the CPU module reports to the driver as 1GbE capable
via MII_BSMR's BMSR_ESTATEN status bit, the auto-negotiation sets the
speed at 1GbE while the carrier board can't support it.
Same behavior with the generic phy_device and the at803x drivers.

While the PHY is on the CPU module board I added the max-speed limit to
the cubox-i carrier DTS as I suspect that if the Solo or DualLite v1.3
MicroSoM will be connected to a 1GbE capable carrier board then it would
work correctly with 1GbE.

I can confirm that this commit doesn't break networking on the my
Cubox-i4Pro Quad (i4P-300-D) with it's 1GbE capable carrier board, and
was tested separately with the generic phy_device and at803x drivers.

 arch/arm/boot/dts/imx6dl-cubox-i.dts  | 4 ++++
 arch/arm/boot/dts/imx6qdl-sr-som.dtsi | 9 +++++++++
 2 files changed, 13 insertions(+)

diff --git a/arch/arm/boot/dts/imx6dl-cubox-i.dts b/arch/arm/boot/dts/imx6dl-cubox-i.dts
index 2b1b3e193f53..cfc82513c78c 100644
--- a/arch/arm/boot/dts/imx6dl-cubox-i.dts
+++ b/arch/arm/boot/dts/imx6dl-cubox-i.dts
@@ -49,3 +49,7 @@
 	model = "SolidRun Cubox-i Solo/DualLite";
 	compatible = "solidrun,cubox-i/dl", "fsl,imx6dl";
 };
+
+&ethphy {
+	max-speed = <100>;
+};
diff --git a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
index 6d7f6b9035bc..969bc96c3f99 100644
--- a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
@@ -57,6 +57,15 @@
 	phy-reset-duration = <2>;
 	phy-reset-gpios = <&gpio4 15 GPIO_ACTIVE_LOW>;
 	status = "okay";
+	phy-handle = <&ethphy>;
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		ethphy: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <0>;
+		};
+	};
 };
 
 &iomuxc {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
