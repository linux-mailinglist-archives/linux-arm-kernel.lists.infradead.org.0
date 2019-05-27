Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 628802B30B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 13:16:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mPLaaUTMH/8aBbG69wipsRlH+mhnShHJoWlbP6SQ7hE=; b=pF7Xgn4iHma8nr
	8MlUjJFpEOk3YR3J59WkYQ0AEcqEgpbENAGIbnrp+u+xyacd+H69UGnPibdIBQ5FyHfmIX2rs6oZw
	yE8WJks/kojoTJpaTDIFVP0HooYkzEkhSnZ21Wvl7HBoHA7Zp2DWpY4QlXU+lWq3f92aeYB/SH20k
	b0DgkwYsg+tq6NHozWYOBLtxmnJ7YoEdloFYgWcpP4X/BR43zRAzBDMJ8xCiDjhi3rv3xnczM/lK1
	s+jc5SPfvqFUGciGKM74OdfIunT0s9VJSd2sPAHAv9+IqAuoIccCIS0AlnSPRhaWEyNxxZZIL/76o
	w+yrtiFqMTP51NiX0pAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVDcH-0003WT-VS; Mon, 27 May 2019 11:16:33 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVDcA-0003W4-Px
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 11:16:28 +0000
Received: by mail-wm1-x341.google.com with SMTP id w9so9341869wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 04:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IE0QaynMlWug2qNR46NtnCWHIB0RzkNO84JDp+YXRlk=;
 b=WWCRBfLXHGOwfH9Bz0XMS3YsDxSjIeSRx8cKi5IRGytXczDcD6hu7oSG1k7q/gaaQ8
 c65fxwdjDOgK4LGctIEtQYUo30bZ98akHa2NBiF5wdW/bIY7/yLl05YD6CNrmB0hIJ9l
 8seRZoEkcNICPC0HF0d2WajB8LL/EncHNXbmwarakyJyxlZX1CP5AksSw8eO6mqFVpd6
 /74D4rntZNZxWh7kUML8nTVtvKPT1G/xsCUPcmNguVGNsXt3uHXOtpOjbad09ZC2ztsq
 8jsF/5hM85lY21s2hrbTgvCdlLJDcLxKXHNGvR7rZIHamlv4zDwXc3xNsCTnLxWp5XzE
 hfXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IE0QaynMlWug2qNR46NtnCWHIB0RzkNO84JDp+YXRlk=;
 b=qClBrGrZNfE+JobNAkzeVpDDxipZxs860s4G4Vh9bEWxmgx1HQUm2kLpi5wdOkrMcC
 B0zP0nSF2OYgpOIvPRcn+fgHDGY2sHSiT/XjYzWWV/aMSJvp7lfz8pMiOJEj07RlRZyh
 VpWL7ssxeL0YqiDf4veNJMhdmwJ4icfQYlrNCQNFGyF4Ak6X+dgx5lQp0CeDhMLF5Nt+
 SUOGGlbvfwlYHZnO71TMasq5Pd6Cp4s2WIY5WXAltEkt9hQa77Ky1UmBX74hRZu0frRf
 DJ6rcYVsymRcmtDqComtdC2bav43De20QTSG4boPoTV9Mp3LTh1i67NoxDNxHqxiF1eW
 HoVg==
X-Gm-Message-State: APjAAAVZli8gI2ipydlDy6aMHIgYXfyp59FLhSVNYl+nQWT48n82WZ53
 Uuwz8hU8p0KkaviKRR7OOfQ=
X-Google-Smtp-Source: APXvYqxWKajkKGi9hI6uCHALtxhUkAygj/1iJ3HJHI0+7l2OGrYh96kHaJME/r120zdqbRJxGHl71w==
X-Received: by 2002:a05:600c:22cb:: with SMTP id
 11mr9361238wmg.159.1558955785132; 
 Mon, 27 May 2019 04:16:25 -0700 (PDT)
Received: from localhost.localdomain (131.ip-164-132-48.eu. [164.132.48.131])
 by smtp.googlemail.com with ESMTPSA id
 b8sm3781578wrr.88.2019.05.27.04.16.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 04:16:24 -0700 (PDT)
From: Tomasz Maciej Nowak <tmn505@gmail.com>
To: Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] arm64: dts: armada-3720-espressobin: correct spi node
Date: Mon, 27 May 2019 13:16:14 +0200
Message-Id: <20190527111614.3694-1-tmn505@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_041626_845867_B1C7E348 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tmn505[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (tmn505[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Ellie Reeves <ellierevves@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The manufacturer of this board, ships it with various SPI NOR chips and
increments U-Boot bootloader version along the time. There is no way to
tell which is placed on the board since no revision bump takes place.
This creates two issues.

The first, cosmetic. Since the NOR chip may differ, there's message on
boot stating that kernel expected w25q32dw and found different one. To
correct this, remove optional device-specific compatible string. Being
here lets replace bogus "spi-flash" compatible string with proper one.

The second is linked to partitions layout, it changed after commit:
81e7251252 ("arm64: mvebu: config: move env to the end of the 4MB boot
device") in Marvells downstream U-Boot fork [1], shifting environment
location to the end of boot device. Since the new boards will have U-Boot
with this change, it'll lead to improper results writing or reading from
these partitions. We can't tell if users will update bootloader to recent
version provided on manufacturer website, so lets drop partitons layout.

1. https://github.com/MarvellEmbeddedProcessors/u-boot-marvell.git

Signed-off-by: Tomasz Maciej Nowak <tmn505@gmail.com>
---
 .../dts/marvell/armada-3720-espressobin.dts    | 18 +-----------------
 1 file changed, 1 insertion(+), 17 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts
index 6be019e1888e..fbcf03f86c96 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts
@@ -95,25 +95,9 @@
 
 	flash@0 {
 		reg = <0>;
-		compatible = "winbond,w25q32dw", "jedec,spi-flash";
+		compatible = "jedec,spi-nor";
 		spi-max-frequency = <104000000>;
 		m25p,fast-read;
-
-		partitions {
-			compatible = "fixed-partitions";
-			#address-cells = <1>;
-			#size-cells = <1>;
-
-			partition@0 {
-				label = "uboot";
-				reg = <0 0x180000>;
-			};
-
-			partition@180000 {
-				label = "ubootenv";
-				reg = <0x180000 0x10000>;
-			};
-		};
 	};
 };
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
