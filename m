Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B221C57E3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:04:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRfMkMsXZDOv6nx6m5nTPcaMcAPHUfaDNPhR82holhU=; b=kPwHMldXIaBiWL
	60DqBUBcBv3+Icbq8F5/I7tTkR5NeMqd44qlFguDplxyVNkSTZjv4PErkgBqMA0AMDV+l0F88pnmd
	NDhhxm8gJ3UZDNYpGm34lhcEqDuhre5SNRMtt1+bTNL6BWi9IIAEnfEDf396dQZwvdDtwhzRzu5gi
	uHGK2BnuOvPzQdUIE0jQMijqWC9epr/tCW10qvLZA26QhepiZgLVl1yw0C6ruJC8TncrFWUMtQokL
	uL77CsKFzwwn9rBzjYSykGKx2E2KlxNmG7+q6dkDdy7SaoIFtGNZ0kMqcEDoO4zeZKSS/1ZIrMmDf
	55YX/8ElH0MVb8gPQsZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyBE-0003A3-Ea; Tue, 05 May 2020 14:04:16 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyAA-0002HX-PS
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:03:12 +0000
Received: by mail-wm1-x342.google.com with SMTP id u127so2484344wmg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 07:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=75HMiSxkO2iGkQyQ4GVIN4XRI1pdsKTRs1XUFo380Tg=;
 b=ezkHqFr+hwvoCUtODTn4bBFeBlly8HWvJiblO2xXxesyL1/DLZmDW9fWmLJy7I2RQr
 z4/XNFhycXjhViK/BtzNr49/HW22OGYzoaHSo6ikn+HA9TUGYGli4gQkHpqtEr2bTpYA
 yLqoD0FHi+vSoCHjSuXExIZJhGpSCZTAG0sV4/ATtjgUJmbj1QRCYqjecaYdkoQzH5+V
 8JoTWUO+/cc22OXSb3qfzo0V8+qGZc1XoFvMhJN3sR80zAAuS6l5SlPTJ5F5tMVyWHcn
 v3iKjJkQoYARwNCRLfmlHgh7MJVBQOH4mgE7mBdrIK5lphaZhbbBqRK6JZ4soEZ+4q0N
 QkcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=75HMiSxkO2iGkQyQ4GVIN4XRI1pdsKTRs1XUFo380Tg=;
 b=QNh+ZWgmcarlZekfWwi26JoX+7XJuTkXg9kxx5MxJbWQ0N9IREHtCFoQvZ1NF/+CGR
 E2kHcJW9YyQXihdNny/KDAurLSbrvi4CFIQdGJqi+VicMykTHXflnfZJab7FCa8Y4nP5
 Q1GgEzjRyTbMmWKArsRsmeMEBQtrqdfIsOCBncLKHq/6v6OZhiZSUjMxRTQ9j6AJJk6b
 eu+ogRs3ufv7/502AqHaDSpphcwzQB1OIXnFvNMO9QZedPuijcmgrS9tvJYlfjK6eqpo
 n728ii2CDctTfgnKPbyN7hD3TbyEdjnmFURRrj5uwYJ4d8vtsZ7h27RCM0vtMwMvdBhP
 FtKw==
X-Gm-Message-State: AGi0Pub/o4w0c2FJsOM2efSGMhWAItEIswVXGNSOetd+ANJkuEXkTni+
 24OLdcfWLS7b/J4mZfzSK2MHTg==
X-Google-Smtp-Source: APiQypInGXnY7PvS5QaUhdwBc8tu5ppIGoSSB01va3t8HjUU2Ty34gk2vT4nfcEtZEackOyvGp/6MQ==
X-Received: by 2002:a1c:a7c2:: with SMTP id q185mr3740385wme.42.1588687389697; 
 Tue, 05 May 2020 07:03:09 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id c190sm4075755wme.4.2020.05.05.07.03.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 07:03:09 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, Felix Fietkau <nbd@openwrt.org>,
 John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Jakub Kicinski <kuba@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 04/11] net: ethernet: mediatek: remove unnecessary spaces from
 Makefile
Date: Tue,  5 May 2020 16:02:24 +0200
Message-Id: <20200505140231.16600-5-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200505140231.16600-1-brgl@bgdev.pl>
References: <20200505140231.16600-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_070310_831119_D742D436 
X-CRM114-Status: GOOD (  11.59  )
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
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
