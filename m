Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A214023882
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 15:43:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E7a2cDO5cV8Da9unnYPyKLf1KuYimvqWOy43Z2NCHA4=; b=OeyrN3bei0v0EH
	u/bfiK9mg2CwUG9RkB0bfWRMqzINU1PdbO+xP98rDnIwLdaoFY0lA2KzMQ1MJGvoLF5X+ZkK16Owf
	jviF5K9QOJ/TjgflvUEiTPFxXBNqwBqe6iBpE0dmkKTCYpy/ebCYUxtk/CUGMBG6ty/AM1BvlTnQf
	U9v9c40joazhrk8LCdquL28JQnTnd85c0rxShtUu74LZHlI6o3l8BhBC/sCr9pqkmr1Lbg5l390V+
	pjKBcLIwROq1lORv/WZ/vZa+NJDWgl0mKCEDWqIwlejyjOqOAfdS650K7bQN0RumhH6LdnxEwk4/t
	j3A7531QOQxahviUSp/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSiZy-0007HH-M6; Mon, 20 May 2019 13:43:50 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSiZp-0007Eg-Qg
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 13:43:44 +0000
Received: by mail-wm1-x343.google.com with SMTP id j187so14353170wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 06:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LAW0NHRYcYNyBkm24e03bjOrNz4ZAqZ8Xq4Q0IzbpVY=;
 b=Dimz5KWshfT69RCp2fuwxLNaVZXc2u41WD6Q5lY9y05Bgc54W+AqzaA7ODdKk0l4dz
 typeW6SRq/is0uH3q00ctV7CeWBNkd1prpRwgkrciXTPqslNPoYc0JU/+L0skeoBt+05
 hC4ltD3lfhM9mqT72B7jeOL4/Qr13jjmAgxMBCZwrzlpDMT2yjiIzRzzJU3s2qbtBKF0
 rOJjLWqmMmTzSBgz2fUfnhzqMHqN12+Z20YmnSJDFVX6taETDRnevZYfRCIHvUxlsqtV
 U9PF6gmK6r3U1DcPI1ai1iOz0fN6g1DbpWD5RrEFcusFowi6wZ0HtAIWsO3tzFjFdpOQ
 D8nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LAW0NHRYcYNyBkm24e03bjOrNz4ZAqZ8Xq4Q0IzbpVY=;
 b=IaWEMnKMZTW9yZGM70Fjb8xM2oflBqdCB4EQ9hb3L6OmWPyr3ESQkAgHw2zpm8DIYj
 gL48TSkZC6VPEM8aW8t6YdMnPI3CFHpj9Ta3U8xigk22qd4BUubUJqyZurV/1vZHwjGv
 CU3WqFqjM9AyOuChk/6P19ChyY+y/f/VxaWtTe/YVg0+gbYbDG4kt7TbCh7j8Tkx/2Sk
 IA45tce0rI6QEwbnZpUVIllxPfcOAljZaSZ4K4nIKpeyGXC0Lr3zWa3Cg5CwMSxWuO4Q
 jimMkoCfxS8Vh2qSF/+Vma56qC1QhhB27lQgjU672DCywvgvKdenYiCz0mwKrMIqr/oB
 gNpg==
X-Gm-Message-State: APjAAAViv4VMlYILoBIfcjkrORmOBmmUQVtB/EW+CAOwleKRnfQnMAAE
 am5z+07o5EhCETpxSfGHdlzrCA==
X-Google-Smtp-Source: APXvYqzS3opLw29csk5N34wBxalNj+6DyubSRQpudJlizqmfm3+OfR94bvvBmUKOjbos5rzB9etkwg==
X-Received: by 2002:a1c:dc86:: with SMTP id t128mr22595141wmg.64.1558359820032; 
 Mon, 20 May 2019 06:43:40 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o8sm15309598wrx.50.2019.05.20.06.43.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 06:43:39 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH] arm64: dts: meson-g12a-x96-max: Add Gigabit Ethernet Support
Date: Mon, 20 May 2019 15:43:36 +0200
Message-Id: <20190520134336.24737-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_064341_863258_DBE79684 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable the network interface of the X96 Mac using an external
Realtek RTL8211F gigabit PHY, needing the same broken-eee properties
as the previous Amlogic SoC generations.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12a-x96-max.dts   | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index 5cdc263b03e6..5ca79109c250 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -15,6 +15,7 @@
 
 	aliases {
 		serial0 = &uart_AO;
+		ethernet0 = &ethmac;
 	};
 	chosen {
 		stdout-path = "serial0:115200n8";
@@ -150,6 +151,27 @@
 	pinctrl-names = "default";
 };
 
+&ext_mdio {
+	external_phy: ethernet-phy@0 {
+		/* Realtek RTL8211F (0x001cc916) */
+		reg = <0>;
+		max-speed = <1000>;
+		eee-broken-1000t;
+	};
+};
+
+&ethmac {
+	pinctrl-0 = <&eth_rmii_pins>, <&eth_rgmii_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+	phy-mode = "rgmii";
+	phy-handle = <&external_phy>;
+	amlogic,tx-delay-ns = <2>;
+	snps,reset-gpio = <&gpio GPIOZ_14 0>;
+	snps,reset-delays-us = <0 10000 1000000>;
+	snps,reset-active-low;
+};
+
 &uart_A {
 	status = "okay";
 	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
