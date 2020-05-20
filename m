Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C919A1DB227
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:45:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uylnTHrcfb/0jJiNBfr95EXFrC/mw1LGwWQAeyy3czo=; b=NI50R2YXHXGxVD
	dwbNGN66JBW1ebPVvFkOnEKIrSMURAlxiBgLcoQcQ02IdkCrzGyd600gwhpqN7UDR4Mypw+A5FX8Y
	kLEjShLZslULoh7Nnf1b/kCW2Vq1zAiJ5hu5zZNWGEzF3FuvuXHRNQ55peSO4sNt+d3WAjFPueb6J
	g2ixLVk1ttPTxinX5waQGlzNYBExHJlB3ALf5xpKrYjlmRf6Yg8beoLUP/KgYTBZ+4XxjYTrp/iT7
	4F3XRpy0VIZioRJTaAoBMTF5DwbrkqrRtiTdeCXtOSLjMKd2OcYp2DF50HTf3ySXeR3AwQZj/tjzN
	5YqwQC/mPbn41g8ZBZZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNAZ-0007Qh-Ay; Wed, 20 May 2020 11:45:55 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbN99-0004EK-JN
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:44:29 +0000
Received: by mail-wr1-x441.google.com with SMTP id e16so2795286wra.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 04:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=85LArQ1FkfasqQwvTGBUsmFOdZ74xT3FAzPREvSXT3E=;
 b=QKJkcBbxZWCWLDG+YrYnBrkZXE/At601H5ASh1l5Ykv2TDwcxDwOGjyKJsXAUk5Ye6
 u9JtDQ7XjNeR8tEvIJPP7Dsnsf/DOUsYU0eQ1O9/8p1dFPiOjfYAQ7gs2/qv2DaWHJ4Z
 +jOzPTB+Cruz1bL6UuIiAubhlBSrq+VRpYTp04Nj55Wj8pVVVjXig9kitcMgGZ6q0YvQ
 bCZ6WMB0VizDGqrwGTeiW4x63tgAFYMpcxaw2qIfhl5iQEgvmZEXm6jEeFI3aaICjzzO
 G6Pxsib9tcNmBDhDTDV6DZqfrqxl3owEhBwBZOZpvRW9LCq4ua/rZhJZEuW9j91e6Zup
 IrBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=85LArQ1FkfasqQwvTGBUsmFOdZ74xT3FAzPREvSXT3E=;
 b=cTyFeAuTJaNmQ4IHTPO0EeFtQ8OPqYmActlmzeAgUh1tpbRzytSP+smwqdyObzP+OO
 CDz8Dz1peiqgzUccrle+B0vrDQyVMzw9wD4TJVNp0udpfFZseHrDsZ2+E1sUHO0ZkX7N
 MLBWQfmiKS//Ii0PNKcGo93k9x4EPx5udC/Z7uxSzwfeXTCHNu8kmzAUIk84sF4gei3z
 oX+/oxj69nFqkre4gnffN6Ugn//mTdfN+U/3z7cSgGMQN5hZobJii4g0TnYnJDZPTa2O
 PJ1YJIuPd7dBAgoDthFep19QdEFC6pLmUqgL8g3eAXlR+C/Tt9yXRyDH1VJTKG2TvqNR
 8IoQ==
X-Gm-Message-State: AOAM530bgpSwXygZKcere/S8pwjSJktUCkqyhcLjJPGXOttlVjGD+IRG
 W4l5GzDVi+U0WmV1hzuSo1pmeg==
X-Google-Smtp-Source: ABdhPJypM/wspBT4F6w8EO4JCWTG6tul8aOv8l7s4hm9WSskupdfPjKVvCbnp9cT4bd0cBC63dS4xg==
X-Received: by 2002:adf:9447:: with SMTP id 65mr3890042wrq.331.1589975066452; 
 Wed, 20 May 2020 04:44:26 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id q2sm2530782wrx.60.2020.05.20.04.44.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 04:44:25 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH 3/5] net: devres: define a separate devres structure for
 devm_alloc_etherdev()
Date: Wed, 20 May 2020 13:44:13 +0200
Message-Id: <20200520114415.13041-4-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200520114415.13041-1-brgl@bgdev.pl>
References: <20200520114415.13041-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_044427_662627_AA9C938F 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
