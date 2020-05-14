Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A241D2987
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 10:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uylnTHrcfb/0jJiNBfr95EXFrC/mw1LGwWQAeyy3czo=; b=C0tO9B3OGhWlAt
	jxjBd5BV9zYpjZt7oDHWSW9krNf/X53Vjub1SLhGr6HGoNIMFfgSlAotKvJgEmAQpShBGgPuhfeA/
	FCTEVoWWdW34QP/cSw6R+QvadpcStxAgyJFTuK1wtdfH3bvp8LDHQqF02CX51IeVb7Au1aP/Qaenr
	thWEGUlUWyMrk2zSsRr1M5yG/a6zch6utrIF3/N7y4QheTuifM260m5ErDhI1IievscZK3ae7PI6v
	W2i5H8tbaSywBvpkBe5s8VqTvoFedlL8ReViZ0m0DZkJNVMOYdNFjacQ7EnYahYyIKaf8dwRfgXTa
	MPeQkG4BbWuyjITQY9qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8pE-0005xU-Fu; Thu, 14 May 2020 08:02:40 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8mv-0003s0-S7
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 08:00:19 +0000
Received: by mail-wm1-x343.google.com with SMTP id h4so29164008wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 01:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=85LArQ1FkfasqQwvTGBUsmFOdZ74xT3FAzPREvSXT3E=;
 b=IQRdwUqxDe1qZmT8TGQLkrpl0kAdWhdhH11prXOwPTmEcd2xi6nmcFvKSdcBT3IQZY
 yRnKMO5FeNSeCf+SCHtG/N/4bKqB7p81H8ghcz05gj2Pwf2vXgntZAeQYV3l/jTSdocQ
 dPvmZEAfuzM8MzlXRUqGd/E7rGt2F1n4TM7+DJ6RnqP3U6YcLUe8aja3Yta4IW17s6Yy
 75hKtwdXvy9YC8snlGNetXjHz8nQEW6rafZF9NDCUU81TSHgCWq6rR7UDqYLVqUB6G9Z
 NxP5Y6Yp69XPoqS88noAVJoG/kGfFrZT6SAC3hTLsFU30y07APR+K/lBdiKhePIkHvpT
 9Kfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=85LArQ1FkfasqQwvTGBUsmFOdZ74xT3FAzPREvSXT3E=;
 b=rmPS39H5j08hTbDoC+SrdgVkZA/9cL30U6KcQ6Mo5K55oF53/7vGegqfqKPYViV+MJ
 HIgLOTEyzRraoWON9BU8ScN/6kLMoDV9VGn8bYX5YhUdxHyyNIzvkp3tshonN404r2jI
 oibqVOZYOq1QTEoTFXgPZeHd9btV3QlVgoCTW+1iNVt1Wkwc+fN2P6ejwNrwBJijdZQT
 oCspgVsfhoSaze0sGIssMLmz75aZb8HfGGTb8Lluom6CZIFFFmBRP+36yavKCBFOEr9c
 ir/pXNNTyuiAL9u4aakaIYhmZwSUAfaWsROa1Hw59UUHZ26Nc5ZypTX/HwEsjGhvCQVT
 ddtg==
X-Gm-Message-State: AGi0PuZpk8FIA7kMC6hjECWviOgFxTs9377hGeCOPu/Rla5ZHtfYFDhW
 csp0QGDYfFSl5VOHmRPmLWXf8w==
X-Google-Smtp-Source: APiQypIY9tAfCpn2AmTAwgro/2JmYcI8xIK57P9eBIyeDsZ7PCcAdgUe8VkM1x3xFdmKrxvg6IG6Gg==
X-Received: by 2002:a7b:c5d4:: with SMTP id n20mr49059541wmk.92.1589443216067; 
 Thu, 14 May 2020 01:00:16 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 81sm23337446wme.16.2020.05.14.01.00.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 01:00:15 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v3 08/15] net: devres: define a separate devres structure for
 devm_alloc_etherdev()
Date: Thu, 14 May 2020 09:59:35 +0200
Message-Id: <20200514075942.10136-9-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200514075942.10136-1-brgl@bgdev.pl>
References: <20200514075942.10136-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_010017_981182_2FB1EADD 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

Not using a proxy structure to store struct net_device doesn't save
anything in terms of compiled code size or memory usage but significantly
decreases the readability of the code with all the pointer casting.

Define struct net_device_devres and use it in devm_alloc_etherdev_mqs().

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 net/devres.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/net/devres.c b/net/devres.c
index c1465d9f9019..b97b0c5a8216 100644
--- a/net/devres.c
+++ b/net/devres.c
@@ -7,30 +7,34 @@
 #include <linux/etherdevice.h>
 #include <linux/netdevice.h>
 
-static void devm_free_netdev(struct device *dev, void *res)
+struct net_device_devres {
+	struct net_device *ndev;
+};
+
+static void devm_free_netdev(struct device *dev, void *this)
 {
-	free_netdev(*(struct net_device **)res);
+	struct net_device_devres *res = this;
+
+	free_netdev(res->ndev);
 }
 
 struct net_device *devm_alloc_etherdev_mqs(struct device *dev, int sizeof_priv,
 					   unsigned int txqs, unsigned int rxqs)
 {
-	struct net_device **dr;
-	struct net_device *netdev;
+	struct net_device_devres *dr;
 
 	dr = devres_alloc(devm_free_netdev, sizeof(*dr), GFP_KERNEL);
 	if (!dr)
 		return NULL;
 
-	netdev = alloc_etherdev_mqs(sizeof_priv, txqs, rxqs);
-	if (!netdev) {
+	dr->ndev = alloc_etherdev_mqs(sizeof_priv, txqs, rxqs);
+	if (!dr->ndev) {
 		devres_free(dr);
 		return NULL;
 	}
 
-	*dr = netdev;
 	devres_add(dev, dr);
 
-	return netdev;
+	return dr->ndev;
 }
 EXPORT_SYMBOL(devm_alloc_etherdev_mqs);
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
