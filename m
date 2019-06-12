Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C797343137
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 22:56:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ghEaLDIddBDJMbqw9K16aaYxvH4ViKZTdLy9+KU1g88=; b=RePFHMLcdtv/IO
	h0ouPfxicRZUIzhyJ9F0pw5akyF/lf35fzmSxfd4C6rjGqgIh6zRzXNDfE8UodYyM5EFsvhrzGEhY
	5SWW3CU8xo8oDi+jH6+sfzT+47WqAGvVvNHpiiszJaboyuep77Y7b8S7+dRVL2sqy8uFHPb9rnDkG
	bwXyoz2rDd2zqD5C7pStJ0AnC9P+UXdj2LhdK7wVvwum8TWFmkdqrCQaqnb2UMJEwbG0n4CBOQ7Lc
	QoMlj6+6/HbF6BGmaeR/6x5UmhbAejWe4eYA7WkdaFfCBNJacLXvkj7Pw6Qi97gXhIDu/ay/I7yUi
	w6xZBdzqtkI49gZG0Ptw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbAIC-0005iH-Pi; Wed, 12 Jun 2019 20:56:24 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbAHb-0005O4-TB; Wed, 12 Jun 2019 20:55:49 +0000
Received: by mail-wr1-x444.google.com with SMTP id p13so8271026wru.10;
 Wed, 12 Jun 2019 13:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0gOm2m0FcFm0g2Vu1nMDa1FWBplL205hnC9G0QkNJn4=;
 b=PVbTsHM8Lo4nt76wMAIAfEbubaSWW3E0Qj3br9RFOJ6iWLRfEpbZvMYz+C6raOn0xT
 sw31E9CscgBhseKPDD3i9rZp2WU3QwAK2IFDDBRokBOCBNtNmC5IyL2lgSyQm9F2b4K4
 3OpBJ7vO18UWVF2P28uS7uoXnBr2uI9fz9dcQhjC/QdNfUXEcdnu0BrN9CPBdG+aeP/2
 o6yCdljaT7Y/fsFWzTt38oUxqmkpAPhPiB1/byI6SRXwJD8viZbFoSYHbosr0twf5HPc
 e9g7QXByNlkzhzhHDHF34BHVPcjvOLA5QpY2P3xuwtkrdQnUasp3U3dpzRmQ4M55uyDg
 STbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0gOm2m0FcFm0g2Vu1nMDa1FWBplL205hnC9G0QkNJn4=;
 b=L69Noi7paRgC2hj+d+H3YZnpPpsnCxSDR/SEQQ0xTal+96f6yupi+sDTZnp+6dIZ2V
 pe99/JTXA8yVrWRJCx9GcWJiGVm2C32IpT4QMlYT55v7j3CGa0S0O3NZ5oPTXxmq7cMA
 Yiq0CaahwQxMdmvkxp75fq5XCKB+5leR9szE9NcsLc3j+e/WjVkW6B5Ta8YLL52+5sk9
 8Ura+AJyLW7bgpAzHT+8VEVFV6qRJqKF3e+s7FUswkEXEG/lzDORHmV6c9uQP0YVh6Yh
 YkJMSs5UkhtZsg9tP7RSkKBbIYWFf6VsB6b+VFlcrQ85gHU+4VsdqYNNlz5lOVnXHxpW
 ygBA==
X-Gm-Message-State: APjAAAVKKWhhUsz5b2MVeOhLCB2S3LKjKUGdrZ5lR+f79xML8WZWTAlT
 zl5shNjSMfRUopkxYuAXRnRKKjmC
X-Google-Smtp-Source: APXvYqxJtE16FbiaSYF5C2/1//jLjeLpLRpC+YK6aMthR7a6zgoGvDdLPDxwxYUQjYo+eC0cvD7odQ==
X-Received: by 2002:adf:ce88:: with SMTP id r8mr5037854wrn.42.1560372946253;
 Wed, 12 Jun 2019 13:55:46 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id s7sm3445793wmc.2.2019.06.12.13.55.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 13:55:45 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH v2 1/4] arm64: dts: meson: g12a: x96-max: fix the Ethernet PHY
 reset line
Date: Wed, 12 Jun 2019 22:55:26 +0200
Message-Id: <20190612205529.19834-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190612205529.19834-1-martin.blumenstingl@googlemail.com>
References: <20190612205529.19834-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_135547_937707_9EB1A9AE 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: andrew@lunn.ch, Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev@vger.kernel.org, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Odroid-N2 schematics show that the following pins are used for the
reset and interrupt lines:
- GPIOZ_14 is the PHY interrupt line
- GPIOZ_15 is the PHY reset line

The GPIOZ_14 and GPIOZ_15 pins are special. The datasheet describes that
they are "3.3V input tolerant open drain (OD) output pins". This means
the GPIO controller can drive the output LOW to reset the PHY. To
release the reset it can only switch the pin to input mode. The output
cannot be driven HIGH for these pins.
This requires configuring the reset line as GPIO_OPEN_DRAIN because
otherwise the PHY will be stuck in "reset" state (because driving the
pin HIGH seems to result in the same signal as driving it LOW).

The reset line works together with a pull-up resistor (R143 in the
Odroid-N2 schematics). The SoC can drive GPIOZ_14 LOW to assert the PHY
reset. However, since the SoC can't drive the pin HIGH (to release the
reset) we switch the mode to INPUT and let the pull-up resistor take
care of driving the reset line HIGH.

Switch to GPIOZ_15 for the PHY reset line instead of using GPIOZ_14
(which actually is the interrupt line).
Move from the "snps" specific resets to the MDIO framework's
reset-gpios because only the latter honors the GPIO flags.
Use the GPIO flags (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN) to match with
the pull-up resistor because this will:
- drive the output LOW to reset the PHY (= active low)
- switch the pin to INPUT mode so the pull-up will take the PHY out of
  reset

Fixes: 51d116557b2044 ("arm64: dts: meson-g12a-x96-max: Add Gigabit Ethernet Support")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index 98bc56e650a0..de58d7817836 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -176,6 +176,10 @@
 		reg = <0>;
 		max-speed = <1000>;
 		eee-broken-1000t;
+
+		reset-assert-us = <10000>;
+		reset-deassert-us = <30000>;
+		reset-gpios = <&gpio GPIOZ_15 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
 	};
 };
 
@@ -186,9 +190,6 @@
 	phy-mode = "rgmii";
 	phy-handle = <&external_phy>;
 	amlogic,tx-delay-ns = <2>;
-	snps,reset-gpio = <&gpio GPIOZ_14 0>;
-	snps,reset-delays-us = <0 10000 1000000>;
-	snps,reset-active-low;
 };
 
 &pwm_ef {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
