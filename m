Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B75821DB1BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:29:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KwCwnIxjALBS1xBEhnW+bAE9NDhVvrQgxetQWQuKyr4=; b=OHNVWw8Kfu19It
	tZvq1kuauScluk71rqbBuMKQCGWhfTK/kctqyeC3dRcPF3nhVudKqNUEhxne5SeQTBDgUEbAXX3ic
	2z7g6XnKfJuV3RDD9wwjwuZ1xgbW4lebgNCTsBkDKp+71tQjqTCHNmZqpmIcU6dfcvnF3Phg4yVMS
	SCjrz5NnTxOGhqHLcQWrjlG/ysckFKGMZyIvRKMlWC/Epu6AW2Xb/dCa45iVU1+fPttQh0uN5g8Bl
	HYoJZsiI6Ftlu8q0IOTKVvKwRP/vxwn3UOyzmsbAD3n9z5rsq5pVtHPAo5lOaYGFoug+55DoSc8cB
	NThacviC7m9cQhDC4fGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMup-0001YX-2j; Wed, 20 May 2020 11:29:39 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMr7-00076m-TV
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:25:54 +0000
Received: by mail-wm1-x344.google.com with SMTP id m12so2209344wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 04:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nZF4M1Ryr6CWnpRgUMWuRsLTKn/UHmWXZ3+MZTEjA0A=;
 b=DCTR0x8TJBa8+opcAvlYBjrh/vCYQMQoQ3RQ14CYFtSRQpZI/qhI4oIh4w0OI3jZxY
 lUOXz7W+Pz6EP2XZ9uKzLEWgEH6gMU4ZNlDHEeOk5LmpYDOTtu19/ow+Uwlh5LBJZlgA
 vze8VuncLa9NqJBxeRh9BoF6r/IyN/fJQ7/eytgThQv2cbdvbG0e6Rr9ZZMfGKx2P+zQ
 yUmZmjfLffCCnwhOJ2L9/fDLMJtsbDO0OehqMKyXxypBkg7w5SuC58HzlZzSp3c1g15c
 qkyU+xehJAV9meR5oFN4BX2lxYb1JrUCkes4m9UtJFVNZwHqMFRNHnCgzNKwrqTzj0lL
 B6YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nZF4M1Ryr6CWnpRgUMWuRsLTKn/UHmWXZ3+MZTEjA0A=;
 b=Exu28/PLjkE4FiV6cKwRefcMI8S8bqAXm7aXHFFhMfpQBH72ymKOiLGxxkFDIbZEWw
 UdQADO0FMc08FpMR8RUs40gBrABRfLBfL1xXgLbwwFAEH7olRLXFq6seE6rwP0i1+r7d
 BVuhrlJxBStfh3xPCMBDK4OrAu40ySMrTDepCFQkVaKXWq/1Fb/bocZ+5X5Rz9m55RwM
 fkgT1eBgV5AiOM87sITq1g2CXrXUzBta9Lkf5FDUdozASqYt02sd6oW5eb98KCYqw3Cd
 aGVt3QEdCqIlLHqhfjyrnhZuauBuP2kA8jXloDDVmMPMWKn1oz18TcWkcZNwEBtPhqz5
 XscA==
X-Gm-Message-State: AOAM533uchTm7848cdnEcUeuSf5ySu5gpURv4AeJAblGc1fNzUxeO/a0
 UJe/ILYveMJrA+Bs97rh4l+CzQ==
X-Google-Smtp-Source: ABdhPJyxQ3juEFptHcCtPg6At1kWItPyvN042bhzhG99WFO1SSzV77tG4mYBDeWML0N22iIOVzKg5g==
X-Received: by 2002:a1c:6706:: with SMTP id b6mr4265142wmc.54.1589973948657;
 Wed, 20 May 2020 04:25:48 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id v22sm2729265wml.21.2020.05.20.04.25.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 04:25:48 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v4 11/11] ARM64: dts: mediatek: enable ethernet on pumpkin
 boards
Date: Wed, 20 May 2020 13:25:23 +0200
Message-Id: <20200520112523.30995-12-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200520112523.30995-1-brgl@bgdev.pl>
References: <20200520112523.30995-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_042549_972577_D5627904 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Add remaining properties to the ethernet node and enable it.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 .../boot/dts/mediatek/pumpkin-common.dtsi      | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
index 4b1d5f69aba6..dfceffe6950a 100644
--- a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
+++ b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
@@ -167,6 +167,24 @@ &uart0 {
 	status = "okay";
 };
 
+&ethernet {
+	pinctrl-names = "default";
+	pinctrl-0 = <&ethernet_pins_default>;
+	phy-handle = <&eth_phy>;
+	phy-mode = "rmii";
+	mac-address = [00 00 00 00 00 00];
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		eth_phy: ethernet-phy@0 {
+			reg = <0>;
+		};
+	};
+};
+
 &usb0 {
 	status = "okay";
 	dr_mode = "peripheral";
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
