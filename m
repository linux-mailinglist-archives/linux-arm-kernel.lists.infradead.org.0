Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F3B12AE3F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 20:14:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dKqif+GXD91zDEWno3ONQQ0MTMlE5fjLUM6eApGK8Rg=; b=rDJU7wos5ryFXe
	GOyfh/5yYes75LIPmyFyL8zHym3dYbLve4LGbXNkDAUxQlITpXsN/KIy57W6fqVuQEz9HcMJiyq3w
	qvjZxmKmkuKI5S5V6UZ0rcRakMFZ1IyokcP4yzuZSBzom+e3HZ1bgMb6ZDG8OJ59rb2Fd5aXcRGVO
	Cgjo79pc9HvlbFVJINqOILUTPQaP7+IVC1mnTDyXHz77RKl7eFkJYKqtFJMkflKXY0EeGCf+qrCdp
	xatAPe31DSQjwL+Aiz7stpjVb3KUrljh6jm9Yt5pCEsHfLhRZrAMMghRPnQJ1xsfBVdkcb2WY0lyR
	nep3MD73+kFMoDLHFyGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikYax-0002Vu-4B; Thu, 26 Dec 2019 19:14:51 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikYam-0002UN-Ju; Thu, 26 Dec 2019 19:14:42 +0000
Received: by mail-wr1-x443.google.com with SMTP id g17so24333352wro.2;
 Thu, 26 Dec 2019 11:14:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RdDU189IRzDSSQuuwdRp+bg/X99qADOf/XTXJFRaKx4=;
 b=KVjxXtkb4O7D1uapjkYYG0rrjj+A1LKb0U6nGIXmA9OI/zMOsCv7TdGZeAOkECxRL8
 2ShuVJVy6Oq042w8o/wXJXRKtn9lViF42w0H9TnZon49HDJIU5wzP7hvSKycahF+xx2h
 uoGglak/WFzV0BJgyvdxA9EVGQG/QdUFGPxctFrSHlYw9fLFv+N4NNzX+l+QfKsCsHeW
 R6LMMvku0xaCYf5U7B95QmZm7DUAYT+xLQTfLstIKdtMgJ+bDDbGkb8AHcwDhRuX8D6n
 NQfeyhtxX2s1eXCFUBdteMva1kKruFL9VyEpxNN9G5W+j8yfQ0zZ4Ctu/K1Xh6c8A1Ba
 JqtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RdDU189IRzDSSQuuwdRp+bg/X99qADOf/XTXJFRaKx4=;
 b=ToUt3+5YN+rsdkD+o5QENO+LmYN+o+ttTPRIZlEdKgiFYIo1T+XFEwOqAOkhEjbC2t
 qP49ZVu4fPkdauyeHfYbmrYcZOMMIax38y8hn0GuwzrSiSv+RZzlpkifU0FRTtX1Z2rs
 nyJePhtlRH9ldXJWV4a1giajdbTYn/Y51xMJUeXj9xMuISnVZ83O80FMQLwRdrAGQ0qK
 3NA+C2ANeQm4P6IvehSagXQ3Y+NYxNl4BD/ETRKqXTrVBvn4S4h5psVRMqv6Yt9O3ph/
 Kf/6L/bPIWGSVmHQO4uGVsQiHKtikRbNWW98Dw9w/zwE1L9ytCxZq4hBEwC6GMA1d6Ly
 9eDw==
X-Gm-Message-State: APjAAAVrMOymIlXubr4ekah0A5dsIkOJc9/k0tGujJzLy7K4KtNFpiBf
 BZ495n+xzvCFCYGLKQ+X3HQ=
X-Google-Smtp-Source: APXvYqzurwb5xdQo8gGlQM8ofNX/VGIdzgCohcUjwg5XUj0XVHKV+JN1pgFVp4z/TFKgeDxZP+Shcg==
X-Received: by 2002:a5d:6390:: with SMTP id p16mr6977473wru.170.1577387679392; 
 Thu, 26 Dec 2019 11:14:39 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id s128sm9098950wme.39.2019.12.26.11.14.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 11:14:38 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linus.walleij@linaro.org, linux-gpio@vger.kernel.org,
 linux-amlogic@lists.infradead.org
Subject: [PATCH] pinctrl: meson: meson8b: add the GPIOH pinmux settings for
 ETH_RXD{2, 3}
Date: Thu, 26 Dec 2019 20:14:25 +0100
Message-Id: <20191226191425.3797490-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_111440_654343_6CB76E07 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

GPIOH_5 and GPIOH_6 can have two Ethernet related functions:
- GPIOH_5 can be ETH_TXD1 or ETH_RXD3
- GPIOH_6 can be ETH_TXD0 or ETH_RXD2

Add the bits for eth_rxd3_h and eth_rxd2_h so the ETH_RXD function can
be disabled when using the ETH_TXD function of GPIOH_{5,6}. No problem
was observed so far, but in theory this could lead to two different
signals being routed to the same pad (which could break Ethernet).

These settings were found in the public "Amlogic Ethernet controller
user guide":
http://openlinux.amlogic.com/@api/deki/files/75/=Amlogic_Ethenet_controller_user_Guide.pdf

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/pinctrl/meson/pinctrl-meson8b.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/meson/pinctrl-meson8b.c b/drivers/pinctrl/meson/pinctrl-meson8b.c
index 2d5339edd0b7..6cd4b3ec1b40 100644
--- a/drivers/pinctrl/meson/pinctrl-meson8b.c
+++ b/drivers/pinctrl/meson/pinctrl-meson8b.c
@@ -233,6 +233,8 @@ static const unsigned int hdmi_scl_pins[]	= { GPIOH_2 };
 static const unsigned int hdmi_cec_0_pins[]	= { GPIOH_3 };
 static const unsigned int eth_txd1_0_pins[]	= { GPIOH_5 };
 static const unsigned int eth_txd0_0_pins[]	= { GPIOH_6 };
+static const unsigned int eth_rxd3_h_pins[]	= { GPIOH_5 };
+static const unsigned int eth_rxd2_h_pins[]	= { GPIOH_6 };
 static const unsigned int clk_24m_out_pins[]	= { GPIOH_9 };
 
 static const unsigned int spi_ss1_pins[]	= { GPIOH_0 };
@@ -535,6 +537,8 @@ static struct meson_pmx_group meson8b_cbus_groups[] = {
 	GROUP(spi_miso_1,	9,	12),
 	GROUP(spi_mosi_1,	9,	11),
 	GROUP(spi_sclk_1,	9,	10),
+	GROUP(eth_rxd3_h,	6,	15),
+	GROUP(eth_rxd2_h,	6,	14),
 	GROUP(eth_txd3,		6,	13),
 	GROUP(eth_txd2,		6,	12),
 	GROUP(eth_tx_clk,	6,	11),
@@ -746,7 +750,8 @@ static const char * const ethernet_groups[] = {
 	"eth_tx_clk", "eth_tx_en", "eth_txd1_0", "eth_txd1_1",
 	"eth_txd0_0", "eth_txd0_1", "eth_rx_clk", "eth_rx_dv",
 	"eth_rxd1", "eth_rxd0", "eth_mdio_en", "eth_mdc", "eth_ref_clk",
-	"eth_txd2", "eth_txd3", "eth_rxd3", "eth_rxd2"
+	"eth_txd2", "eth_txd3", "eth_rxd3", "eth_rxd2",
+	"eth_rxd3_h", "eth_rxd2_h"
 };
 
 static const char * const i2c_a_groups[] = {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
