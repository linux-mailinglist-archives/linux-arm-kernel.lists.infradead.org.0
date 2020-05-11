Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B82311CDE70
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 17:11:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uylnTHrcfb/0jJiNBfr95EXFrC/mw1LGwWQAeyy3czo=; b=RHeaOLDA1qrW2a
	ZHM0g3opj2DyqiA2rPEC0rfY6sOwFGA9bGsmtgvhakE8UQBDIz4Jbur2+bAHX2HprLRxdsXztQOEQ
	0T4YqIC6JZTBVNANkdv7pj9SxFip6/88pzmOjkSWTVc6n4fKxZJBcPvdLPXKr/DBp0Sp3oPPBi+EC
	Tr4i4ieJZNCH7ia2QvHWa9R/3Xsrj1A+DspUjlKzfSgRaKsUfFGgmGTYqzlJpQEFPH62hinqTrd2h
	eaXsmuSntC6OyFRNVOuVNrg2W2s6U8AHtlHR86p/i7LNxY326sldYGJp7sERyQr6+uYRVxSJpBE1O
	XK7wYF4J+YUd0rHqyqiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYA4v-0006ph-UV; Mon, 11 May 2020 15:10:49 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYA2h-0002Zl-8m
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 15:08:32 +0000
Received: by mail-wm1-x342.google.com with SMTP id z72so10107477wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 08:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=85LArQ1FkfasqQwvTGBUsmFOdZ74xT3FAzPREvSXT3E=;
 b=TS/jxxw2AM8c/MW/14NfrNB+SUbDqKCeR6Tz9KN+jE/qC/yYIXQFmcqxM1np2Xwhd1
 6HzzHOawVFx9Avhhy9m+y8TIrHmrRiIGgsdRGMba4aTqK1P3Std1fQ15kyhU37lGQ4Gd
 /blU29VDw8JrGSg8cn8jWRHVrLGz1I02RRR881foQUGlY83hYx6HEVM8++7zYk9AB2gK
 kCA8E+nT8RvG/vdg9BjOvynD4T+aWghR+0uibegwQAvlB7FNBaDmFNw22bU9G5Dh38Sa
 blrzdx+xnrmAR8BnZBhhos2friW6xXn07zxAXVWX+4YWhBxExBXWL9JMoRRwyxerZJMn
 S1+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=85LArQ1FkfasqQwvTGBUsmFOdZ74xT3FAzPREvSXT3E=;
 b=GhxVlAKFS6O8lA50J+vp4nTWbmioX15e28om0huhYJIM1G9IGjzb5SzK6Xj1miLrne
 NAT1v5hXmjsw8IHKI7PB63dygafry53eeBWyyO/JU+eqAC/34O+zwVE5VwqK8/uStsOm
 Aa/eDpj73AP1SW/iSjGNU7hf37a9VIDkR7x8HptebE2umX41Y81awnAefN3vJkWMEHtU
 y60gne7NQbFY53UbOuoE1y+SSWuaXl907QZpDGaiLsLHStXcdRERDus7Iw0hBfxGCEZ1
 qdQWCbeq6IWc9vfy9pU6/mB6FvbU8hsmlPh6bcBatWUuJT7cxEhTenBaOGFe3PW87tkk
 zJew==
X-Gm-Message-State: AGi0PuZjTsYIS9xG3TirMAaYLdzrwWfzn1EvoJXoeEQC48dPuct3+HM1
 AvOJ6+D2iFLHVhyxhwjct9o+Cw==
X-Google-Smtp-Source: APiQypIUoY5y9pMCyWMprTL71A7BiL4tQc7BbrlTT1FoaZIkxIS6pMCmPRg9IsmwTOLUcwtTuQxL3g==
X-Received: by 2002:a1c:abc3:: with SMTP id u186mr31368123wme.42.1589209710040; 
 Mon, 11 May 2020 08:08:30 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 94sm3514792wrf.74.2020.05.11.08.08.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 08:08:29 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v2 07/14] net: devres: define a separate devres structure for
 devm_alloc_etherdev()
Date: Mon, 11 May 2020 17:07:52 +0200
Message-Id: <20200511150759.18766-8-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200511150759.18766-1-brgl@bgdev.pl>
References: <20200511150759.18766-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_080831_358648_FE6A709F 
X-CRM114-Status: GOOD (  13.01  )
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
