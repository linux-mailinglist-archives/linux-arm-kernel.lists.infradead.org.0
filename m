Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0B91D014B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 23:52:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y9HWT70p09VfXf0HGcM9ukmaSLF4ATo57CyM5QwkvHw=; b=DxfOfgEHec7y7f
	VSzBZMOP2OdxBzVr4q9trNjC/TGW5tvN+e4KfJncSBaW9JsutmDlwra5WH9OtlmAm9Dswzx5pgR74
	3QPiyMCqH674djTr4fHGjBrsDv1CI8OJdGj4O8sJ1kTkUh7GMoOLqPPHN4Vw9TfjMca6vSWyMaPzm
	4C2XUpg4DZiJA5GD7QFNlKYV1fthJe+FcBl4Fp5VRJZd8MTDy9CKIItkNJ8dFWa9csnNdLXBMbuz2
	o2XGmNMLpUY5FD6sbD+kiQvJJHAbIC5kd/BLDdfmbKyHbuqUNNBvR/wTUEQxho0/3aEQuJOAXMuzg
	zpQCiT5rtKbRkJ1f8aag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYcpA-0007cc-Bp; Tue, 12 May 2020 21:52:28 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYcoh-0007Nt-Ke; Tue, 12 May 2020 21:52:01 +0000
Received: by mail-wm1-x341.google.com with SMTP id g12so25714278wmh.3;
 Tue, 12 May 2020 14:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0knvu8zyqVx4y2NkIr8lOmrEgshGQH0lpKJi3cjk2SI=;
 b=bwgSPVs5laGpM0d83i3csmznJ1/yWKtFq1xT96YbPjSKVZY3DA/KjehTuB5plFcy6z
 EY3hNdTNGMRO+CSZGMVlJ5g4ACqDMocZYlhOnzK3a5BPn61uwB0dn0LYty6Bxov73Vlw
 1R/Z8XAkTT7HEiHdHVbawuL4MFXn4A6zZa7dk6icq3xN/ilfVGa0UFWWOYODfL+OjLvB
 Zf6N/dMiWhEvQnvKJW/nkzO1/nhdFy4KygJVbKSZpLK/We8me5P197koIyOBNKSVvcgB
 gnrQc1RKBtfdHlw+bmGtYur+Kgv1E0KbZxcW1d49ddhOy1nmAA+YoslbKMUEhIWyYt9a
 +meQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0knvu8zyqVx4y2NkIr8lOmrEgshGQH0lpKJi3cjk2SI=;
 b=JMJAusfd+PPHRELOm/XCrU4k6vnrl8tMEjEKYX8iPYBon0CmpDNeMf61XybYEixA+P
 LX2EN2pQtZ8H8QnJPCPrkZeU2rc7UtHYlr6juuPXYtx950glzvU2RQ9Hy1wN8xvzYKmQ
 LW2wwUgIFiGW15w8LLBsQIKKk8Wt0DEwKJo0dyY7vQDYKcpqEG358ZHMLsT5mqje5zfh
 KTM9IcoAQwaePHdPbJFcdwRMLXmWiWjOOc1UTUvjqTXjbJZZjQ6ZMLTmftkBWhv4T2oV
 tdlJEQ8UIXLRU7gzgeY7fZ1V1pppY3SpAZ75qNCTniYp0fHbgOw2sY4h8yJ04BD2QPa6
 MOzw==
X-Gm-Message-State: AGi0PubRX0En/N/AjyXYMTdmM10E9r1PptIfyvDf4gGrvBGfMrwItMxU
 z1emulYsqPKZcmg6yv3QmMy/P6LQ
X-Google-Smtp-Source: APiQypJ8uUi4vGNBLtT0TFTdWAmJqfDA59+C/Ue8RoCtXdE4ee4Rp809GhvNT7tn2LEUhTnMGBwK+A==
X-Received: by 2002:a1c:4d17:: with SMTP id o23mr7874381wmh.87.1589320318046; 
 Tue, 12 May 2020 14:51:58 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137132E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3713:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id d9sm9154234wmd.10.2020.05.12.14.51.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 14:51:57 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 2/2] ARM: dts: meson: Switch existing boards with RGMII PHY to
 "rgmii-id"
Date: Tue, 12 May 2020 23:51:48 +0200
Message-Id: <20200512215148.540322-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512215148.540322-1-martin.blumenstingl@googlemail.com>
References: <20200512215148.540322-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_145159_676959_E144367A 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>, andrew@lunn.ch,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Let the PHY generate the RX and TX delay on the Odroid-C1 and MXIII
Plus.

Previously we did not know that these boards used an RX delay. We
assumed that setting the TX delay on the MAC side It turns out that
these boards also require an RX delay of 2ns (verified on Odroid-C1,
but the u-boot code uses the same setup on both boards). Ethernet only
worked because u-boot added this RX delay on the MAC side.

The 4ns TX delay was also wrong and the result of using an unsupported
RGMII TX clock divider setting. This has been fixed in the driver with
commit bd6f48546b9cb7 ("net: stmmac: dwmac-meson8b: Fix the RGMII TX
delay on Meson8b/8m2 SoCs").

Switch to phy-mode "rgmii-id" to let the PHY side handle all the delays,
(as recommended by the Ethernet maintainers anyways) to correctly
describe the need for a 2ns RX as well as 2ns TX delay on these boards.
This fixes the Ethernet performance on Odroid-C1 where there was a huge
amount of packet loss when transmitting data due to the incorrect TX
delay.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8b-odroidc1.dts    | 3 +--
 arch/arm/boot/dts/meson8m2-mxiii-plus.dts | 4 +---
 2 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/meson8b-odroidc1.dts b/arch/arm/boot/dts/meson8b-odroidc1.dts
index a2a47804fc4a..cb21ac9f517c 100644
--- a/arch/arm/boot/dts/meson8b-odroidc1.dts
+++ b/arch/arm/boot/dts/meson8b-odroidc1.dts
@@ -202,9 +202,8 @@ &ethmac {
 	pinctrl-0 = <&eth_rgmii_pins>;
 	pinctrl-names = "default";
 
-	phy-mode = "rgmii";
 	phy-handle = <&eth_phy>;
-	amlogic,tx-delay-ns = <4>;
+	phy-mode = "rgmii-id";
 
 	nvmem-cells = <&ethernet_mac_address>;
 	nvmem-cell-names = "mac-address";
diff --git a/arch/arm/boot/dts/meson8m2-mxiii-plus.dts b/arch/arm/boot/dts/meson8m2-mxiii-plus.dts
index d54477b1001c..cc498191ddd1 100644
--- a/arch/arm/boot/dts/meson8m2-mxiii-plus.dts
+++ b/arch/arm/boot/dts/meson8m2-mxiii-plus.dts
@@ -69,9 +69,7 @@ &ethmac {
 	pinctrl-names = "default";
 
 	phy-handle = <&eth_phy0>;
-	phy-mode = "rgmii";
-
-	amlogic,tx-delay-ns = <4>;
+	phy-mode = "rgmii-id";
 
 	mdio {
 		compatible = "snps,dwmac-mdio";
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
