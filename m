Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E80763B9BC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 18:39:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fDxODRcTsObRLeiSKo1ITWrdITU+xLq3JArmQ1CtCwc=; b=bYKyADvF66QZBQ
	0+9Eke0gvWGPEViGJQrACeD+TyMCyq4lnA+bGs4Xj935BINvwbXnAaeQ0MorVtwJwhnKXp+HaE+WB
	QEimYWWXMUWXvJ66oLcLqIeGr0Lwcjs202UgjFaMtHNR63Ci8VaMsc7bnMrRcocwNVFMkqEz7d+wl
	mGVbVx1lr94qzxgzju/WIWIN+00Ea40z3Dfhrxv8p/qU3otJrEEtoIRDVDClzXYDFHoVxb8vx5NK6
	vSzisQBonwt9YmPpfCuhjJTTXnFK0ukPC4mPO/VkGS1EoOREUyvOmmfmg8tRDbpMBjbKwT9wJsoeA
	njbH3tsUnbi2N1S5LYpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haNKO-0008Pv-0w; Mon, 10 Jun 2019 16:39:24 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haNJ3-0007HB-W7; Mon, 10 Jun 2019 16:38:03 +0000
Received: by mail-wm1-x343.google.com with SMTP id h19so315807wme.0;
 Mon, 10 Jun 2019 09:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=93d8Luo3dr92mQ97MIWFoBIVe2vH3TgLc7Y5zBMUADU=;
 b=BLco2ickJdzVTDOmtPA6pU8JGKbc8q/sFLGVjNqwdZQSjNAV9PQk1ZLJUBLOADSWWs
 gwUJ1+DOIjdupl+cO9WBuzZIxZ0WDt9vFzq+8Nq+qgF5Tr4Iq1REeTMYjpE26W3NkQ1r
 SUk1SQqhaHpn6JldkZfm5nY8tHKF5MQ0Izu4n650nIvTFyKX3mv+CBuUPkjD+vpLrQKa
 KErEwVcCmEdUpnNEYo9E39M5d0IIPWo7oZGslNeJoDZSq3+J9JguS1vrUL6B1+Sx2GZj
 kxhttuHbHpPSEt9SI7rNM8TQQMmlqAgKkJ8147+ERsYXIBuvbMEGL8sfdhKXpSh10baB
 ziYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=93d8Luo3dr92mQ97MIWFoBIVe2vH3TgLc7Y5zBMUADU=;
 b=bdZPqASjkq3SEPdCRoL03FyOQ1jpB+wGKOqzTDxUp8in19FJzpZztgK97xeMbzB+f8
 07plU6iQWrcNoLAQ7rhOZ9vUw3lEtmm9gdzmef5fPXn+1md/i9JCeRLK5NsT16SUuDax
 GXEWBa36iNcRveyqtp9PVqhdZ2bXXJr959Kg4KPBVQeZc7y7zSuhhqUUtUywdkFWuqh+
 RRYGp3JWX+4jCzxgS8xUickmrydz//huK4AqyYq6oxDNATcNbQ0uKEVNBHz8aae/ZagL
 lokJsDERHbL8vYNRtV/0DfQGPuIZx8W3jxCqnR13sd9tutKeqEdx1TZgzD2YUa0kWZST
 2ZLA==
X-Gm-Message-State: APjAAAWaflrp8b7dnEQ4FHjJxP7Ehgg33rwY+D5wufZJ7Vhml5hOdae1
 p1iTg1ejId3eLJdwmvMEO3zpc3sV
X-Google-Smtp-Source: APXvYqwp/VkFBJAJAcYToiC670FPFfJr8pHKpmUcNpT/ZB+25Ehrm6GqyZnXYjFC4GFUrgQ4CBFIxg==
X-Received: by 2002:a7b:cb84:: with SMTP id m4mr15184615wmi.50.1560184680413; 
 Mon, 10 Jun 2019 09:38:00 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA40000C4C39937FBD289.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:c4:c399:37fb:d289])
 by smtp.googlemail.com with ESMTPSA id g5sm13900517wrp.29.2019.06.10.09.37.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 09:37:59 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 4/4] arm64: dts: meson: g12b: odroid-n2: add the Ethernet PHY
 reset line
Date: Mon, 10 Jun 2019 18:37:36 +0200
Message-Id: <20190610163736.6187-5-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190610163736.6187-1-martin.blumenstingl@googlemail.com>
References: <20190610163736.6187-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_093802_067093_8CB5F998 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: andrew@lunn.ch, Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev@vger.kernel.org, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The reset line of the RTL8211F PHY is routed to the GPIOZ_15 pad.
Describe this in the device tree so the PHY framework can bring the PHY
into a known state when initializing it. GPIOZ_15 doesn't support
driving the output HIGH (to take the PHY out of reset, only output LOW
to reset the PHY is supported). The datasheet states it's an "3.3V input
tolerant open drain (OD) output pin". Instead there's a pull-up resistor
on the board to take the PHY out of reset. The GPIO itself will be set
to INPUT mode to take the PHY out of reset and LOW to reset the PHY,
which is achieved with the flags (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN).

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 4146cd84989c..0d9ec45b8059 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -186,6 +186,10 @@
 		/* Realtek RTL8211F (0x001cc916) */	
 		reg = <0>;
 		max-speed = <1000>;
+
+		reset-assert-us = <10000>;
+		reset-deassert-us = <10000>;
+		reset-gpios = <&gpio GPIOZ_15 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
 	};
 };
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
