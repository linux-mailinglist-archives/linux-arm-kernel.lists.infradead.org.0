Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4AA1DB1C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:30:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NRYfErnj+6e0GEtFD/S+zJZjAEqSvJxvQidgs+lgO2U=; b=cHox90QMXsTdUv
	96kZU0S46vjsEw8PtgbyXQ+e2FBSjNCXtzpZ/Kvy2UFL+ksfc0WyzwP8KcQCBQWy9Z+SUij6jgleh
	Zy86psUbbhQ8Rczfrs/TILZYyybqhdG+JqmmECb9F8hFh75la8XB9d1uIlzfpFge31wuuA41NHQKg
	ygiLXpiAULne2pb6fFMjxWWEU97KGSisYVRa6Tt+5tzAuOZsm5fg/Qsae4gJseQSC0TPBh4VdOm4P
	U1qVN4tMtMCBf0FF+/PEID8Bm5g+VA3vn0aw+lXI6aWXLC+5vwL/ksGSAN8eOgtsgvw9lsdQs22DO
	B5P6aX+74ovBsbnnA7ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMv6-0001nt-EU; Wed, 20 May 2020 11:29:56 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMr6-00075I-OG
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:25:54 +0000
Received: by mail-wm1-x342.google.com with SMTP id w64so2462224wmg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 04:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KiLRpfO6b7G+PZFXWrA65hqZV6E46x1U4Qg5U0775pc=;
 b=gskof8By63+0KDD0DdUs0emDDhPZad4DsU+WhXpPPj2iCFcQBV8IAhix7s9OuBI8sF
 FviIaCv4wlLAN0CX1SzhYWJ+ytJkU63OctfconMXzNUhgqh7/eP3s0pp6d2lO6riWM5i
 QzEFy9o8v3BFNvOjfiNOt7hPupLGEitK5tSVjVytErQ0Uf4A6a6Cc6pqURjYroF0xGFj
 JXLWZ7fMxCFLTDWF239HN5D+wphw1HGN5u0IEseg2S4FYh+M38w8DPk/n7Xn2jIWWb80
 laDuvRZpyjA5gIkZnU/Sp7NnoG+Nl+P6F1Pm0n4hY2wZEewn93GLh3Fo9KXPaRRgL/g/
 NHJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KiLRpfO6b7G+PZFXWrA65hqZV6E46x1U4Qg5U0775pc=;
 b=rKzWANA5c5BjTw4qLTwr2wP6aYraWUV8vGZcvH9D3F9LNTwTbnDCzWaE63nfZfuB3E
 8mcf2jRCjpfYWNDkWwriayKFYQUfzv9EVG9+XsrTkVbPaDstuoYAHueXcFcINuCyE9AV
 Tb2c/H8nO7D7UWhvsrDn8ydP40DfTXbvLFlJ0nezhIEWesBj0nHLTyNyymKsZzA8vqzn
 ts8vK6bfNQbNBMLbX/U2CEV77TbgXUwbUkmXq5m6dDzTUXAVUXsfl/H08QjQFB5mO+Cy
 HhnOz1WKhI+/MHpSvnjJok/Qf9M6ns8jfqNSXmH5ZmN4Z9XOjnwvtQIVor0mQvqMpnK3
 hB8g==
X-Gm-Message-State: AOAM532KL8oNbx57Q+PFlhkbN9x2x/4fkJ1dt9ObjIqXLmsenUmljgOQ
 Sd4Az9GN+0kGDP/Wl04TxpjGYQ==
X-Google-Smtp-Source: ABdhPJz0ZhvCEVA3BYC4i510rBDYS5vNUPdwWlMfTD8jHQeyLe6hAQkKC4vL1pXZbA/yRsghalkFmw==
X-Received: by 2002:a1c:b60b:: with SMTP id g11mr4282669wmf.49.1589973947229; 
 Wed, 20 May 2020 04:25:47 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id v22sm2729265wml.21.2020.05.20.04.25.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 04:25:46 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v4 10/11] ARM64: dts: mediatek: add ethernet pins for pumpkin
 boards
Date: Wed, 20 May 2020 13:25:22 +0200
Message-Id: <20200520112523.30995-11-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200520112523.30995-1-brgl@bgdev.pl>
References: <20200520112523.30995-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_042548_812851_8B8EEFA4 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

Setup the pin control for the Ethernet MAC.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
index 97d9b000c37e..4b1d5f69aba6 100644
--- a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
+++ b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
@@ -219,4 +219,19 @@ gpio_mux_int_n_pin {
 			bias-pull-up;
 		};
 	};
+
+	ethernet_pins_default: ethernet {
+		pins_ethernet {
+			pinmux = <MT8516_PIN_0_EINT0__FUNC_EXT_TXD0>,
+				 <MT8516_PIN_1_EINT1__FUNC_EXT_TXD1>,
+				 <MT8516_PIN_5_EINT5__FUNC_EXT_RXER>,
+				 <MT8516_PIN_6_EINT6__FUNC_EXT_RXC>,
+				 <MT8516_PIN_7_EINT7__FUNC_EXT_RXDV>,
+				 <MT8516_PIN_8_EINT8__FUNC_EXT_RXD0>,
+				 <MT8516_PIN_9_EINT9__FUNC_EXT_RXD1>,
+				 <MT8516_PIN_12_EINT12__FUNC_EXT_TXEN>,
+				 <MT8516_PIN_38_MRG_DI__FUNC_EXT_MDIO>,
+				 <MT8516_PIN_39_MRG_DO__FUNC_EXT_MDC>;
+		};
+	};
 };
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
