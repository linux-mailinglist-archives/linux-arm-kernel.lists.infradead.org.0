Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B99C61DB1AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:27:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRfMkMsXZDOv6nx6m5nTPcaMcAPHUfaDNPhR82holhU=; b=Wjvc2O54+Zddef
	2n0T+itMWvvuKz0pmcjdR/ZGuG2UPcOvjDXZ7TXcmpa+ISaEk5h09950HSQB0fc4Ce7QhRIU7L3ve
	7iIxtuw3gSMyjRHtcQWxXRxC9b0FnI6eqRhYiTiH2YICEZKxG1FMQbnxEPgCU9RdG6gKCWTihN27Y
	amTF2i6L84sNg8FzsLQwe63m/41GiZDLRANy4QNC4HWG1/GyyeYULpQQ1PqRbbkTafgIML+RNuJpD
	QAryZhvjyPIp3WQGGPnee2SXqUYX9iQXyBFQFaVxA9hD1s/tPKgePM3lGFfkbHJWrHHZ39HN5VurN
	MQ+tUiQdL6+pasJAtbNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMsu-0008T5-Ji; Wed, 20 May 2020 11:27:40 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMqy-0006ww-5z
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:25:41 +0000
Received: by mail-wm1-x343.google.com with SMTP id g14so4505582wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 04:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=75HMiSxkO2iGkQyQ4GVIN4XRI1pdsKTRs1XUFo380Tg=;
 b=f02nBXwLb4+yDOpRal5KJVxXzopqw7/nIX6xAZeUsGIgPvualoU9kAFP7hn05cf+Nt
 4iN992z6W9yhQF29Y26ynXaCtz+6FsZbP8aBQL1h2coANBLn9o1CgvTQlPIoaSUGQoU5
 qtE7Kg/XGNnDOtxs2MiIdXenBYl4gc/7g7JSA0xuF0npzrYh856vFbLpuh7EWgQel/yD
 +PJzkzPyDmCmB0wgJ0bh0iBQLqQNa1bUi26Wvj+iverCeG0+igs7RlReEDzBCf5hOei/
 UiGA+kRB/lRVBdgGPOhPKZWo3XcjKsYd7C0FQOUoTPHRZ4Gl8kDEn633FffNuzEXzVHE
 LLcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=75HMiSxkO2iGkQyQ4GVIN4XRI1pdsKTRs1XUFo380Tg=;
 b=Xe/+7+zMHHY36IU+DDEZPaHXqJH05+E63kK+Izxgf2QeqrVpYZ2M+G1oC/PAd1+mAK
 VKooX1jZeXCP7ALtDwT/qAy/XAyB14SFgYDMkHYWbihI6qhmix5rkSBOT5vtv74rKtFV
 z0/++9BUXzYNefdRSnjjlK+WMTvdg+/eRs/DWl7shHtuDZtcjmXPeggEgsWJSPbf5Xm3
 8eyb2p0mwZ8lJk08haVWyZrixrYJb3fxdN8ETJBEVhbDrscCaP3KOU6G4rvIe12a3Crq
 KEiDQu6qOVPNAQNGirjiePv7/Dp58GREhnMWlv42vVhrXUZY2b1iatMib2EysH8Pzgr7
 fGXQ==
X-Gm-Message-State: AOAM531mW8RA7UrXxWShE9HGFhY98pgzXJy8kdBL3TpPPErWsnftdH2g
 KfLQeoCSOTRRuvXpH1kW165nvQ==
X-Google-Smtp-Source: ABdhPJwE0xHr6PeSbtA1xNoXhD2SOoG7eWG3GrsBM9eyrqQ/EG9y2X0SgSbOAAb2NAS+YgXTC8DuJQ==
X-Received: by 2002:a1c:2184:: with SMTP id h126mr4173395wmh.122.1589973938809; 
 Wed, 20 May 2020 04:25:38 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id v22sm2729265wml.21.2020.05.20.04.25.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 04:25:38 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v4 05/11] net: ethernet: mediatek: remove unnecessary spaces
 from Makefile
Date: Wed, 20 May 2020 13:25:17 +0200
Message-Id: <20200520112523.30995-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200520112523.30995-1-brgl@bgdev.pl>
References: <20200520112523.30995-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_042540_229895_FD9A154F 
X-CRM114-Status: GOOD (  11.79  )
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
