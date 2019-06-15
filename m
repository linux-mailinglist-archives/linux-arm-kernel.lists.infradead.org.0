Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1679946FAD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 12:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RS8+Ef8nFyEgMlJUTkrRTShyhimKBkjrqar6YmuGCys=; b=naPDk9VMivXstk
	hxDgu8NIycqiS+aCcmhCFyVtq06MxZoG1JTTmqeRIkPJzymaJNgxYQSV9kY4fxFdCtvqN/QBmjoQY
	LbjsMGe2suTyn83awpKn8jI9P8HEaM7mJV3vG+DWI6KTQmV1yY9A1lMPJp/rsD1pw/Yh+/zUbKNL7
	llu+vTwzool8ZmaQJr9CXrSkgyXbVP9Ihh5SNwoNl9fbGGQ/b82W0Tq8ZkGZ6Cg4DS+2jumgekANe
	yBX4K852WXEgryLtKT5JTY+iv8mGFno5A5DTpomLUXr6mmFKv9OX8tbZtOQQbu5sR4dLTmh3oYuOR
	4dY2+V+hv17MtoPp5Skg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc6Ay-0003Qc-Oh; Sat, 15 Jun 2019 10:44:48 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc6AI-0002sA-Hh; Sat, 15 Jun 2019 10:44:07 +0000
Received: by mail-wm1-x344.google.com with SMTP id a15so4743704wmj.5;
 Sat, 15 Jun 2019 03:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MlMxB1kkxmHmQmoUfndP7WEc3kmIml+FN9RGpOVU2A0=;
 b=PQ/BYi21UH6+Ssb5iH96mB8o+aNRXd2tJIOFhAfqxaQaYYiU2uI4IH2xGHAzu744l4
 C6tiY3gWFvycZKcoP0Jj8TM1Vponm6Oi+0j7JuG/7glC8uispNWXMWrz6gY30sw330g1
 iJ79DFPCtg7GmMhDoXdu5DGQFFMI9QismZbp0YrrTBhdrg3bKYjU5JLZryx85OWIjeUy
 h52lhJDAUqv5Xoy3yTBalyYnUVXJHq8s5TYQlhjJjlUrPXiSJb9gaWH9lE47TAdZu2/O
 TrqsQYUmolj/RCdi1/7zC1brF+7luIJyPkGaP9kgLVhSjl8Fq7ObHTk5jaw2jW81FMov
 aV/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MlMxB1kkxmHmQmoUfndP7WEc3kmIml+FN9RGpOVU2A0=;
 b=iT0ZG705D0N+JMekQX5L2dsONDR8A7KlSHYv9Ix9Q++5HoXubmm6fEM7AG8fLjVpVb
 xoTomz9JPbL6Pypz/+YPiU0VKVKItGZPhcc1LnmWOTbykiD0DeKBVjVg52n945OElNe0
 qjFMoPDWDOzhfGlKXbkWeXBiy5qm9xBP9ujoU4tJiN7Hctdf6BY87fOYvQhrwmwXfQID
 +2b18BLQjGKDCH9XSme21/RY1zWUHodn6jb5ZBC8mxD1IBJXbcKU3pKyyuRPwtf40YLU
 V6YwwRnTjRtRRFjdKqPu5eATzGE33QNNseYtE18M+H1vWh61x/LrSEAyAuInyRGFFOIf
 wDBg==
X-Gm-Message-State: APjAAAX6siWZ9QrITIL/Hg4eMIMxyKT5x1F4gfkEzOJPY72OzBxrAla4
 Ikbv5/KrJuGjRlwiONSmoSHGne9fwNQ=
X-Google-Smtp-Source: APXvYqx6+Vnz65TOT8l4fd6YCoiZukdBu/ZU2e8kjlDhqiLJ6xa/48ufal7xACP07XTDnGHc15LVYQ==
X-Received: by 2002:a1c:7217:: with SMTP id n23mr11435578wmc.47.1560595444894; 
 Sat, 15 Jun 2019 03:44:04 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C20E00A9A405DFDBBC0790.dip0.t-ipconnect.de.
 [2003:f1:33c2:e00:a9a4:5df:dbbc:790])
 by smtp.googlemail.com with ESMTPSA id l12sm16761120wrb.81.2019.06.15.03.44.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 15 Jun 2019 03:44:04 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH v2 2/2] arm64: dts: meson: g12a: x96-max: add the Ethernet PHY
 interrupt line
Date: Sat, 15 Jun 2019 12:43:51 +0200
Message-Id: <20190615104351.6844-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190615104351.6844-1-martin.blumenstingl@googlemail.com>
References: <20190615104351.6844-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_034406_581395_C6F3ADBB 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 narmstrong@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

X96 Max has the PHY reset and interrupt lines are identical to the
Odroid-N2:
- GPIOZ_14 is the interrupt on X96 Max
- GPIOZ_15 is the reset line on X96 Max

Add GPIOZ_14 as PHY interrupt line on the X96 Max so we don't have to
poll for the PHY status.

Suggested-by: Neil Armstrong <narmstrong@baylibre.com>
Acked-by: Neil Armstrong <narmstrong@baylibre.com>
Tested-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index 3f9385553132..fe4013cca876 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -289,6 +289,10 @@
 		reset-assert-us = <10000>;
 		reset-deassert-us = <30000>;
 		reset-gpios = <&gpio GPIOZ_15 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+
+		interrupt-parent = <&gpio_intc>;
+		/* MAC_INTR on GPIOZ_14 */
+		interrupts = <26 IRQ_TYPE_LEVEL_LOW>;
 	};
 };
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
