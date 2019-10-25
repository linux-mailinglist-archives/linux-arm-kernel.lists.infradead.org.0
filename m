Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12ADAE5644
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 23:55:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8O9EYhQmlFC2pM7pJHCwtdPljQeL9ydfbANuoX/BN8=; b=kDWTDfnTMoB4Ja
	7M5nn37/yQxAY9bWGuIMNkCMnsw2KQgejMt49lyKqbU49ZG3TwspYQU5KC4ImFIWOJUqwgKY1qnms
	zZAbSlhio5TljkkKwxhkSt5Al5jK/4J/zj4rUk5MMx36ndOcm/ljF96x0dPGryjVzbVH/jVo8lUV9
	r6hZfmVm9DcbWICwph8ve11lt6xiFoUxZ/snrVP8ucYqe2T+9dg6zSGybkTIx7jwnovxi7GUsjenk
	NAqjF9YzfoWjGOsryx4jv/6Fj8OjFOj8Xi7BygpkhvU56dmp+A5jG44KQ74smCPgFusd6T0BKlbhJ
	aiTXdPX9K4Eqcu4aRWoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO7Yb-0003uk-RA; Fri, 25 Oct 2019 21:55:41 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO7YN-0003s1-3x
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 21:55:30 +0000
Received: by mail-pl1-x641.google.com with SMTP id q21so1957810plr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 14:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K331SMUfGTuS8ssrt07hRRxTGZ3R118eP6RXl//v6II=;
 b=W91zWNO0MDSC1dSM2VGEKxLvXO0mToeYff7TkuRAsvGaadnLdl7Y+QZ16oulP7Phsn
 8Gm3ofi3Mz9bM551jBJMnJKjqu55+dvZ3oc0ncqhsilhHKnU6rJfmptOwqboZAJ5Xg7e
 mF+MNIu6oVNi+YuJcPMckBLbLAl2P0oH7vzWU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K331SMUfGTuS8ssrt07hRRxTGZ3R118eP6RXl//v6II=;
 b=rEv0qXnduSzLKiY1sYy+FT4QENmmdaiWchnrKeqUUYQzx1obr0+MTAi8vusJ71L+Na
 VYRx4l73n5wIo3+i6dlOhR8zeO0bPar1gaebO6HQaEbiGuBQtp1WbDBTBU4iZOP0SYeI
 WOHvgU+pJWSLGbUNhugyBP9aFU46kZ1MbH+JpRMnwMSmIZ3OpsG175Gn7c4y1yRvs98C
 vCg2ZI0JsYPj/IE+k4nEIEqjp2pKdrLQ0HJAaeeP29aqEShbciHR+UoZN6GbfTVxgbHx
 rHaWsyQR9/dC2NXCyPF94vLzn2W0jUVzcVzgpU4+UeWw6Empv4r79KDQHyj9MgWJIOWj
 XYLA==
X-Gm-Message-State: APjAAAVai/OG3Ahz0+hVgC0PGD4OMi6YDpBQHfsKh3FhFa5T58kFG+/I
 vEXMABKhXWaQ77eo+uWX+UXRuQ==
X-Google-Smtp-Source: APXvYqziGJoT8eB5mWgoF5H55wPj/L28gCK25N9WuVU5NVdJh4xWElDTVc5K92fYMgo4YDhheRExMQ==
X-Received: by 2002:a17:902:9689:: with SMTP id
 n9mr6365578plp.222.1572040526517; 
 Fri, 25 Oct 2019 14:55:26 -0700 (PDT)
Received: from apsdesk.mtv.corp.google.com
 ([2620:15c:202:1:e09a:8d06:a338:aafb])
 by smtp.gmail.com with ESMTPSA id y80sm3815110pfc.30.2019.10.25.14.55.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 14:55:26 -0700 (PDT)
From: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
To: Johan Hedberg <johan.hedberg@gmail.com>,
 Marcel Holtmann <marcel@holtmann.org>
Subject: [PATCH 3/3] ARM: dts: rockchip: Add brcm bluetooth module on uart0
Date: Fri, 25 Oct 2019 14:54:28 -0700
Message-Id: <20191025215428.31607-4-abhishekpandit@chromium.org>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
In-Reply-To: <20191025215428.31607-1-abhishekpandit@chromium.org>
References: <20191025215428.31607-1-abhishekpandit@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_145527_185043_66F76F0E 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 dianders@chromium.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This enables the Broadcom uart bluetooth driver on uart0 and gives it
ownership of its gpios. In order to use this, you must enable the
following kconfig options:
  - CONFIG_BT_HCIUART_BCM
  - CONFIG_SERIAL_DEV

Signed-off-by: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
---

 arch/arm/boot/dts/rk3288-veyron.dtsi | 31 +++++++---------------------
 1 file changed, 7 insertions(+), 24 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index 7525e3dd1fc1..8c9f91ba6f57 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -23,30 +23,6 @@
 		reg = <0x0 0x0 0x0 0x80000000>;
 	};
 
-	bt_activity: bt-activity {
-		compatible = "gpio-keys";
-		pinctrl-names = "default";
-		pinctrl-0 = <&bt_host_wake>;
-
-		/*
-		 * HACK: until we have an LPM driver, we'll use an
-		 * ugly GPIO key to allow Bluetooth to wake from S3.
-		 * This is expected to only be used by BT modules that
-		 * use UART for comms.  For BT modules that talk over
-		 * SDIO we should use a wakeup mechanism related to SDIO.
-		 *
-		 * Use KEY_RESERVED here since that will work as a wakeup but
-		 * doesn't get reported to higher levels (so doesn't confuse
-		 * Chrome).
-		 */
-		bt-wake {
-			label = "BT Wakeup";
-			gpios = <&gpio4 RK_PD7 GPIO_ACTIVE_HIGH>;
-			linux,code = <KEY_RESERVED>;
-			wakeup-source;
-		};
-
-	};
 
 	power_button: power-button {
 		compatible = "gpio-keys";
@@ -434,6 +410,13 @@
 	/* Pins don't include flow control by default; add that in */
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
+
+	bluetooth {
+		compatible = "brcm,bcm43540-bt";
+		host-wakeup-gpios	= <&gpio4 RK_PD7 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios		= <&gpio4 RK_PD5 GPIO_ACTIVE_LOW>;
+		device-wakeup-gpios	= <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
+	};
 };
 
 &uart1 {
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
