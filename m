Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F68F1D2978
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 10:02:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRfMkMsXZDOv6nx6m5nTPcaMcAPHUfaDNPhR82holhU=; b=f4qMLAsGSYLePR
	iMj1bCMkUV13jS6E1aE1Y/JsAFbjnGEfN7gy2PujFGV0W0Pt974uc2NpaEfD0g2BjOKG8BR6ktKIh
	vdgN9tP9rIyBw58U8KHaDAEiB/rvhJ9wxtgGW2fDxOgds2Z0V/dSvnxIdytKzBx9mMdK5m95mTOIu
	Soxj2OgdMSwRF1nagLyDwvizCPyTvhamOgwI0rfYCBjl1HQlFX5ThAiXG/sLIJJEXwaWcFeOOkt+k
	4+xApKAk7q2m1PBS3Bo1bH44leDQE/BZ1uYo/hEXaZA49l9EIUowIQP4wfjd52MexE7XwSXPqjQ3S
	ssAC/KtPlQuwsfSfXJVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8p2-0005k7-Hp; Thu, 14 May 2020 08:02:28 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8mr-0003Ty-9o
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 08:00:16 +0000
Received: by mail-wr1-x442.google.com with SMTP id 50so2572287wrc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 01:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=75HMiSxkO2iGkQyQ4GVIN4XRI1pdsKTRs1XUFo380Tg=;
 b=SidQb2k3EhXCryAgRq6gIPuNO1gSc1ymSxmVWmaAMjWgIA8V7nqMU6gzB5DHBHPwUA
 tbB5YxAQ3a8Y9XCmyxdwx7HmOh5WdFDKBHtWMJJxPLgeXTgBOgqAMBm+PK+eh5D7yM+v
 8HA+rZQ5NsDizXjPwTnrqGlHMsaAXQAvKtARpjRHk0erwPsnkhwsgB0cO59MoGtN4HyH
 Sso5t3yIewzdpRasYjH4Buni7el0CFRHSV9X6JcQdvImZbW9asceazSSx6KVXVW+eluY
 nN61T0d4cD8Hl5LM8eWKTtX0oGIz0iIvfzksYD3TNEzS7mmVo1utx1a2uqDICPUVNhHK
 fhAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=75HMiSxkO2iGkQyQ4GVIN4XRI1pdsKTRs1XUFo380Tg=;
 b=NS95+97GjXVPNfjFFPzwk0CT7ZNnrnh+LPrkznSd94quYemS4rB2kq8T8UELkyc3wT
 Vi3+FpO9TPpD82pRuy/1JpWNNX1ykXA/VSjsSXOUQRiQtTMRsEqMKF+5GcMKammVxaNs
 2dql8XFr+IKvfuqHFQ900NQkezYaCQpVV7PMZosTxz3z/kgvtEJEwDg2N44rsTJcHqVV
 sRJU+STKo9PB5wI0kdfh5stEyja/RDU2Vjr5nU39TFIvctIWQBdIf+Fi+TTsdNbTbGPt
 7zL4ksvPVWA771YqUOmwgNj7nQSckDUxrdsq09kGMrUAWflFqMQoBJzsIc25ZjsjRKEt
 zy0Q==
X-Gm-Message-State: AOAM532Tl4c03BBJEy0PNEvwp60syLlVzYf0g1Qg1CJAUu4md+FK1wvc
 YSu+XwC9szJLNLGx9jIrXpd6mw==
X-Google-Smtp-Source: ABdhPJyPB8tR3ALwj2/06aB+MU3MgeCuCaNoqPzuspDC4TKtFqqj7Hvg40WVJk8Hlp8ZczryagK4ew==
X-Received: by 2002:a05:6000:1104:: with SMTP id
 z4mr4196133wrw.57.1589443211875; 
 Thu, 14 May 2020 01:00:11 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 81sm23337446wme.16.2020.05.14.01.00.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 01:00:11 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v3 05/15] net: ethernet: mediatek: remove unnecessary spaces
 from Makefile
Date: Thu, 14 May 2020 09:59:32 +0200
Message-Id: <20200514075942.10136-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200514075942.10136-1-brgl@bgdev.pl>
References: <20200514075942.10136-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_010013_384892_2E17DA58 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

The Makefile formatting in the kernel tree usually doesn't use tabs,
so remove them before we add a second driver.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/net/ethernet/mediatek/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mediatek/Makefile b/drivers/net/ethernet/mediatek/Makefile
index 2d8362f9341b..3362fb7ef859 100644
--- a/drivers/net/ethernet/mediatek/Makefile
+++ b/drivers/net/ethernet/mediatek/Makefile
@@ -3,5 +3,5 @@
 # Makefile for the Mediatek SoCs built-in ethernet macs
 #
 
-obj-$(CONFIG_NET_MEDIATEK_SOC)                 += mtk_eth.o
+obj-$(CONFIG_NET_MEDIATEK_SOC) += mtk_eth.o
 mtk_eth-y := mtk_eth_soc.o mtk_sgmii.o mtk_eth_path.o
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
