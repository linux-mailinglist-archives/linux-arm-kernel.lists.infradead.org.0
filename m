Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C31251D29A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 10:05:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NRYfErnj+6e0GEtFD/S+zJZjAEqSvJxvQidgs+lgO2U=; b=BpwqBF3cD2rFoj
	wi1JUrzBjkcAnZ6TK/lKenMwSU+FTdVNgkumO0ugxqTOQSRI3ZMtUHhCc/1BgnUzuDQ6cTiviPCPr
	vebEIMZbPSC1mznwCeP1bff2jmATB8gJoDutrj7FyszpZMl4IpxGh4d80L99Sf3erbASt8V1FGmSL
	zRHmmSDMDew6mj36XRCT848tM5w/6eMXyoiNNrlhji5PUU+dyWmOiATwCWgbYfSiwaEMr3wRfA4+o
	JFG5VkSjUG93LZTApWupeWt5EgIznvJNzmAVVqrn/q0ngajmHa4AIGuEF7t5675SZgwvb0ftG3uQJ
	C4N5eypCVhMkQH2z2IDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8rc-0008AQ-51; Thu, 14 May 2020 08:05:08 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8n6-00043L-Hr
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 08:00:31 +0000
Received: by mail-wm1-x342.google.com with SMTP id h4so29164744wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 01:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KiLRpfO6b7G+PZFXWrA65hqZV6E46x1U4Qg5U0775pc=;
 b=Vs7BWdW4qtjuWLul+b3IMZZZnvBlsodINipnQPxtpW/F7ENBD558mOLpTqiiVB3x8t
 hLT1BV2jrTOFkQu3nW4Su+sDY0Y9SjF1qdgjI2avlRSXBWGtoyup1WdDhscdp4FSyz/+
 MqrADU0tNfAhxW4oXxQnnKc65GJ9UdZBzNyHKLJkPr4Z8OGo9w8MMWDUQ4A8XNu8x6Wb
 O0CHpyM30xiSeFh3K4OT3R9Z7oD7u3674d9224CetXPrYmxKG4VOSQVY2jh1vT6SdQCw
 37CfB6SJsMXQU1dZB4OfcABQw8ds7oxxV9nnA6Vhw7l0QsIy+W7PrITFiF70cVow9PKS
 hQLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KiLRpfO6b7G+PZFXWrA65hqZV6E46x1U4Qg5U0775pc=;
 b=iFwcCjveLqjl2rvIULUc+aM0nRXca3EnmbtLBzI1T5ctppnqAeTDqPjgsJjDu9n7Tl
 2uZr5QzrktdO8kERwffdbF3hYdFB4lz+K8CkiB1C4Gp1dFhFrlTBwXuN5c/0Uu/7BVBZ
 SO3ajzd9AluOON9a5+KMuuY4ZSRhtTa+4dgf5ytYc4ua97aEn6iXOrqufXlcDNQ4TXu4
 Dw+A0fWSRfxCJuvaiL/dSpSayw33/T1ilpGV2QQ6v+fMzG5QjRkHG8gQAvWmaIuK5rnr
 xGjfOtkbqoKdNxRBv5dQznR00yBrzDr9ON3tcGwO01SDXEmpa48SqrAKxNu8yqgBCH9m
 KDcA==
X-Gm-Message-State: AGi0PuYLm06AzhX2GTclAE5GhtZscRm1z4x1FNKWyYIII1E/afI+6n3E
 AB64ymJRBdeunvGYyzYXqIqBDQ==
X-Google-Smtp-Source: APiQypJbzO8pCBFuVuOAqVYsKQ0PvXVzzMvcQ4KkdS8eawJ/v7ILL6jWzMqCUpbB7Qo0NSK+v2z2MA==
X-Received: by 2002:a7b:c41a:: with SMTP id k26mr41792532wmi.85.1589443227078; 
 Thu, 14 May 2020 01:00:27 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 81sm23337446wme.16.2020.05.14.01.00.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 01:00:26 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v3 14/15] ARM64: dts: mediatek: add ethernet pins for pumpkin
 boards
Date: Thu, 14 May 2020 09:59:41 +0200
Message-Id: <20200514075942.10136-15-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200514075942.10136-1-brgl@bgdev.pl>
References: <20200514075942.10136-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_010028_630202_A2179183 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
