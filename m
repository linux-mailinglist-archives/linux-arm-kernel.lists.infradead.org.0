Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 450941DE666
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 14:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NRYfErnj+6e0GEtFD/S+zJZjAEqSvJxvQidgs+lgO2U=; b=TNUkrzWgg6ZOzV
	Ft4aKoEz90rgO0mt6JVr65gvN6qaqqJHCiMDjT55+GmVa//1EBQNjUYe2IjWPHLkjKlzY6bd3OlGw
	Aov6p8QJ64yKqp70n/4E/GDD3ODwIJpFA6cWOw4tdBKUBjImyFQwtyaD0v9Vxcv3QUvp4fQc5Do4W
	9yd4bP7Tlhkma15obB77e77TmqEoFd3olt2WnJaoUgznrNzlk4MMCb+dJpucW12xpmfYsCNl++ZRl
	K5+IqOVMwFFkE7U81kklekP4crzYPBoGjfW9AbHt8hcbcU/Jxd4IAfHrx2yHrpVh3SP40INLDfQ6A
	JBBwXJdTKSujUefRdAHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc6W8-0000ZB-5O; Fri, 22 May 2020 12:11:13 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc6Se-0003Uz-6X
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 12:07:42 +0000
Received: by mail-wm1-x341.google.com with SMTP id v19so2636687wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 05:07:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KiLRpfO6b7G+PZFXWrA65hqZV6E46x1U4Qg5U0775pc=;
 b=DVsXn2eYoFofqn541LZ4MfkWal+3Vy9fBdI9yAspaG2zAyqASOY0tqc4Nv4/+Bi62Z
 tUfQjSY+FHNzvALMKzVBCmTkLM740jnrTT30ToZZZzw5iGAWEdQKVrwkIiexpGELhLeO
 zrU088OFMx4gG4ErEwJxSrWOubMuE+9AUwAWJEOXRKSN2g6OXzZp/iTxw8DRAJlYedqz
 ngTmIuwLXT5hVEDSTz+QlHrw5qnO6fDzlZdtpPnREpOR9PzLcfhal6JyMl/WxmqcCCde
 fOpT0KAuZcee9ng8kIq8noqAJrKMD/yd0N+cE/pHu7NboS6Ct6ENqOoOjSo3cOcQ3Qx1
 gWXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KiLRpfO6b7G+PZFXWrA65hqZV6E46x1U4Qg5U0775pc=;
 b=jykFPbK9jaNbC87/QSNjEkS40bde512sM5bd0IBjqM/+xQwEi2UQgiAZ1b5n0dqXQP
 PugE71b/ENGH01O7C+ViXvrRpYe2vbnecwh5lI5q7f1ePXjbMV0fjRsqAQ2vhgHs8HMW
 OgGUEsRaiKHfnyqHcH0ntPzwFmx6CxBleTwaMyKVsHZ44qYAU8xHlfk73zzFjaa9xmRx
 /imdLmwO8/7NMDbLKm2S3DqOYZTVRb6Jt0NrLaPkgPGiiytDRLxYtEEiTSilWVb8VP1z
 QJV4OWE8aTsacWDcVJODTxTw7Sq6XflRmlSVcLuG3bDGXNBYOzm0HRyBsyRsAiZo3ry1
 tKaA==
X-Gm-Message-State: AOAM532m2uAB7fQROxrffn2lv8SYC6dw0YzGhkzIQgm2z2M+TYQecLhy
 VSHCo2c21cFGR4kHnXnzO98iWQ==
X-Google-Smtp-Source: ABdhPJy2dPeRTy6mlLX5UEd/lcC8TWwiaJ2T7GRkUXTF72jg1Gp3bgoI92xKzRbwpRCpK5LJsVLcOg==
X-Received: by 2002:a7b:c767:: with SMTP id x7mr13670227wmk.181.1590149254930; 
 Fri, 22 May 2020 05:07:34 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id f128sm9946233wme.1.2020.05.22.05.07.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 05:07:34 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v5 10/11] ARM64: dts: mediatek: add ethernet pins for pumpkin
 boards
Date: Fri, 22 May 2020 14:06:59 +0200
Message-Id: <20200522120700.838-11-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200522120700.838-1-brgl@bgdev.pl>
References: <20200522120700.838-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_050736_281290_3C6EBEA4 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
