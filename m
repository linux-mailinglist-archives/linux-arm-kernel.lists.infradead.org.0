Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5779A2B5EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:00:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e04LThR6Mnhw04nX2fLuYyI7rcgcvlYJV6wR/uEO0VA=; b=cgcj6jygwGyFCc
	O83vGeqVTWLLiMQdEh0l5mFLpS1jv7eRXqxvr2ti6Jso3K4BuytwueNhuSyUcRr0Ce9qPdEEtyCNW
	pdNyHkf2FmK5perrWsg66zQB8pVX4gihkg+GU/vzu1AZFNj7XGAFngCxKtejP5S+GzGIe8aRe7m2H
	GGMkVNChpW9NmqHch9Vg3HXak9YwIn27vQpjod9DAHMrwuUg760++8RdI+0u/ScWsKMTHCHURp8+s
	KUxvb8RhHhMIX9Fr9nKRf6Jl5FwSQmuIG7uQDEcY1zflTTvmWY6IXfWbxn7jybfIv9cVD/+uBF0ef
	onHhbMzhCJmqMTcQUP5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFFI-0002Ea-KV; Mon, 27 May 2019 13:00:56 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFFA-0002DD-3D
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:00:49 +0000
Received: by mail-wm1-x344.google.com with SMTP id f10so8654653wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 06:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=umSEve02562WR4TA1J+Sf1DhtYFqJtcfnl3qYv1eGOI=;
 b=Up8nzLbUmXELSCH+VzXuSkFa+DzjgiGlsLg16q0M42ls5tjlEogTcpQJ0KU6O2IPO0
 fgRJNaYNs4uuluTd6TgYds56i/4Y7XTrId1pjpUYFQgi2NzGOb4jSTU7cE3KTiDEqPVr
 qvNAJs/0XeRhdpcOZ5ugCeOPcpyKBHAWzo7Bh5G2wM5zlDScwsoYaAjGngnTzFz1C/5U
 X8n3ZX6oWzoKaR7B9RxCDbvlA2ezT4iYVeixebZ0zzIk1u0Roxzn4Ln0db23GI/ow5Hs
 Mh8Z9CMnUjK8p6TeawS3Oj5tMMBfavAtZTLZgI1OL/WnnILZquKrcA9tJA/bFz7/cbOR
 RMaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=umSEve02562WR4TA1J+Sf1DhtYFqJtcfnl3qYv1eGOI=;
 b=nO1NqqKm+JVmrwBfpj7fu6w/3J/3IxCH/ua1bQFJVvBWr7+Aa6f82h7oQKiAv2817a
 /S34lZOmcst2MfHaXHdhsP8ksveQ7TIUAGCM8hw984pfHtvJEtGnm/B//XAHURbUVTYP
 fyd2iGgvsdt33XxponbCjQNCMAxB/cI/CB39m4OPqyNfneLVXoTvZ531axrn7a7nyUDx
 dnFTewDUL2WZV/qN5Rw91DuIXQyUTMOJL4MTqvmWHXbzUQR7MRkzQttSDsLI1DPVUtmB
 IEV9S6/xWp0H/kqi2gdYe6EAbpmxrIYjSU1GFODERsLPIX5pPyEiNBrcr69n8EQOHNzH
 iBeg==
X-Gm-Message-State: APjAAAUuBrNUsU9tyWtHsHf9NsjFmWPsB7Xkn8a6jIsoS5HAbdgP2k7n
 4sRC1SeydWDNBmOeufMFPrYNsA==
X-Google-Smtp-Source: APXvYqzpB4SvzQ6WmxC6WmcUac7SWjVTlYu5Vu5qEcUudrnHnifoGhX1hZdTQT0DJ8CDNxdatjD2RA==
X-Received: by 2002:a1c:4b09:: with SMTP id y9mr5987241wma.93.1558962046462;
 Mon, 27 May 2019 06:00:46 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x187sm10864335wmb.33.2019.05.27.06.00.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 06:00:45 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2] arm64: dts: meson-g12a-x96-max: Add Gigabit Ethernet
 Support
Date: Mon, 27 May 2019 15:00:43 +0200
Message-Id: <20190527130043.3384-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_060048_135069_30952BC4 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Changes since v1:
- Fixed eth_rmii_pins into eth_pins


 .../boot/dts/amlogic/meson-g12a-x96-max.dts   | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index 5cdc263b03e6..706753ddfa7d 100644
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
+	pinctrl-0 = <&eth_pins>, <&eth_rgmii_pins>;
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
