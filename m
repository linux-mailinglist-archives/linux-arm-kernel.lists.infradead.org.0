Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7EE21D299D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 10:04:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KwCwnIxjALBS1xBEhnW+bAE9NDhVvrQgxetQWQuKyr4=; b=DfPe5UZnT9Xvk7
	js1pHwmtoUDmOqQNYWZKkrHDKdDUS1gZj72YVBi26juKF9lU4zhTr6YEZGlemwBKHmjM5r+jTRstz
	N97WF7BHm0j01g8dIEJuuTVKdc8TG4cdL+/kQDyOEfCIUwzTgrEUz73rWPMjUaad5ra6S1xrVg3+1
	IR90wiMfQbEmGiFWRGjI40auc8AHYq8nNWzIA7qUa/+qMwuaDIMhZ1CqxarF0+W3fk5RGCOkSb5XV
	kaEkMGSH0LkO9+UVCVZRPg9dHHWcLmOuEM1JbwYpTeraLqjBa8wf+DzJHewczem/XXDJKxCG60tSY
	AqRyAepj815kCAbtfS2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8rC-0007qv-I4; Thu, 14 May 2020 08:04:42 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8n8-00045D-JU
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 08:00:32 +0000
Received: by mail-wm1-x343.google.com with SMTP id y24so31348388wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 01:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nZF4M1Ryr6CWnpRgUMWuRsLTKn/UHmWXZ3+MZTEjA0A=;
 b=nXmcTgWKai8rBQ2DXas2d5H6t5IBpKKtBOFHUcEyAvlLdEQGxeg/oH6FNz59RFXfP1
 P7Qkldx/02KKtlnaijnKKo8qjlOii2FQNyb0gmqEdu8VwcCQdYj6QtgMy32fr6gphqMs
 7RJ1yCfST+TpHaSnZ1uw1gU9H+l+9GEZ4z8cIuXsToR7E6n+IZbRXPy8YZmXzcTpV4j0
 nKM0IY3O82aZcgwehgScYrbMYMQyyI2Gy90P+Et9IdpErBIOvAYByQc+cW+D49uP72Lm
 NOIOWdT1Jgd2LiHVVUqA2u2f/rYlHEJc0jXjQ0XYKT7TteUWkZPzMfha+VuT7f4ys2Ky
 tuOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nZF4M1Ryr6CWnpRgUMWuRsLTKn/UHmWXZ3+MZTEjA0A=;
 b=jMYwjGpdh0+U4ZEMtLkHhlUd6sCuekQWnQN+a/TyW2Lq9ayEJc3M5W/kWWP2FB5SVt
 LtgQxISXlJ4BElY74Bm9hlR6ZQkrE1M9fip34FBjtOoVYfgoRPkDyxR4A2fiO1bxc8fM
 HWIihjLkfzOjE0v2GFJtDJGQLUm5hrt8lF0K6Tycc6PttTinJa9eiNjrywWYGn9DoLBN
 wQUMcRs/CP2A0NwgJgdYwHFk9qvO5ezOSBAFgtJaP/SSj3mffgBV6DyKkJUZep3ZJZEm
 gSnQZgnHnQYxiS/TFzzfEhqjBxk9sijowbPbZ85ccDbd60vq1GGoWHOKMuwIYwG6mfvE
 areA==
X-Gm-Message-State: AGi0PuazrPfcmMZzZjdT7Xxkfba9AC12qefoOg6yDV9SFH9dy3mS1inN
 Titu3CW4xjlrW/qpl/4HNpnOFA==
X-Google-Smtp-Source: APiQypLkHL0DWLpTgfSdy1BAdMqLrKiddZcunwHMW5P3bAckgztG6gV48Xmw/vqS4Ej0EtW7WbyHNQ==
X-Received: by 2002:a1c:f609:: with SMTP id w9mr46778546wmc.123.1589443229077; 
 Thu, 14 May 2020 01:00:29 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 81sm23337446wme.16.2020.05.14.01.00.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 01:00:28 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v3 15/15] ARM64: dts: mediatek: enable ethernet on pumpkin
 boards
Date: Thu, 14 May 2020 09:59:42 +0200
Message-Id: <20200514075942.10136-16-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200514075942.10136-1-brgl@bgdev.pl>
References: <20200514075942.10136-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_010030_719341_AC632594 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
