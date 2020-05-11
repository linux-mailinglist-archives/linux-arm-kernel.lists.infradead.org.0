Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0711A1CDE8A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 17:13:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NRYfErnj+6e0GEtFD/S+zJZjAEqSvJxvQidgs+lgO2U=; b=te3b0MtDgwugzA
	HY2kHu4vdswhr31EGl+mIczqfFx4YbDtITN98VWvCg3cq2iZighWbBvNdFLcKI6/K4OKpYd/Lh3+W
	BcC3mgxH2lYnm5hBzO/++SvqMoUycfoSIzcXTNlbubjka9/bp6ylazYlZIjNo4ZGVMoQqMcjIK5PH
	1haZGivoPPB0EOXpFG0kw2rW8jA2srBMQT73LCBPbQP3XF962vGqScwN+R/SPBj1IdHXKV0s0Ao+5
	76YqBpsQYzb5vmdp3N0GebektH4ew/DguHDabzPJe71hy6tYJqSEqJ6B75kGiJ7lJyPEsc4PpsU18
	zExqOdRcG9YlaoFRfkDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYA7M-0000zA-W0; Mon, 11 May 2020 15:13:21 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYA2q-0002jC-E9
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 15:08:45 +0000
Received: by mail-wm1-x343.google.com with SMTP id w19so4953502wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 08:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KiLRpfO6b7G+PZFXWrA65hqZV6E46x1U4Qg5U0775pc=;
 b=oCYe8gxrsb/8td/jVnM+76EnsEaUJm0Tw62USaNMXXLzhPeP2Raxa4qM2uMqbWDTpH
 tDbnc2TfFcgYOAckv78xY78GlbHkdTVS7vgeXY2VqYITf6fSe+2A6JBIqDcTPA8YbBz0
 qoBisEzlmO56MR+MjwDSHvAjpU/2YQCp9TlFHCtsSY3XHRrAVPWG07uMmyrkVf4jGZVC
 wcBGt9lfggYUVrX7j7djZTeH6NfPmR09L3x3ge5m7NDff/LBBTEKf20JwuAjnB8bPZmf
 192y26SwSsKp4UDi9f6CyHUzJ46En2MCUZQrLZTAT5GxjySYZCwjSVc6LSHKmw88+c6C
 N8UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KiLRpfO6b7G+PZFXWrA65hqZV6E46x1U4Qg5U0775pc=;
 b=payfHOmewT+2ljN6s8HfKM7sdTinAZzolV1W5I2m8uipXMHWSnbWtNVqq2c7fWkAzW
 4TDTq6nkP+bdiTKDbfZnhHI3XtHCBFqc5rEacypFEnOIwbrGZilfAuXfAwmOhYmvUWQV
 /hyUJDc+lHPR+6HI0uHFRjCSZxFLp53H074fOCzs/7Cvz9sUyRXwsptOEx2Qzm4Pz1eE
 Mi5n9Uz4IEQpcmp8ZaGXm2G8POA3z0OsOng9FLYdCBp1pWLfvcCpcbdHVB7iD1KMCSxf
 Vujlw8RLO3hEwhYQM2wWG8iXJAh11RhyyeymPutEvYgMKp3NRg4oLT8ld6Yjkw6zmN/K
 C5rA==
X-Gm-Message-State: AGi0PuZhA8e7QXcAExM/vIkpXMVy3QyAsx7t2XgIUegwaPwHzh3BTDgM
 x1ieYFrW6sTA21cSanDiaWsFdg==
X-Google-Smtp-Source: APiQypITmPETczyz929tepB6ElHqCDCdOl6rPzyocONlBGydghLbf/NhrY+/vuSp72Y0ABP9l620WQ==
X-Received: by 2002:a1c:9948:: with SMTP id b69mr30816508wme.44.1589209718831; 
 Mon, 11 May 2020 08:08:38 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 94sm3514792wrf.74.2020.05.11.08.08.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 08:08:38 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v2 13/14] ARM64: dts: mediatek: add ethernet pins for pumpkin
 boards
Date: Mon, 11 May 2020 17:07:58 +0200
Message-Id: <20200511150759.18766-14-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200511150759.18766-1-brgl@bgdev.pl>
References: <20200511150759.18766-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_080840_558500_A8B65ACD 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
