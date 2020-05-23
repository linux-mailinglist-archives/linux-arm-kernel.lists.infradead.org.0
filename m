Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82ABD1DF7A2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 15:28:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uylnTHrcfb/0jJiNBfr95EXFrC/mw1LGwWQAeyy3czo=; b=n5gBYhKFOOqyjN
	2mkIaeXpUx3FcF35jwIF2jaDcwLK1nweCVvOjuvwqdiUObriGnDCedfeW/U0aDSY9zlFY+kQOch/F
	POwuB+IxJfhEKv2ZzxQBiP0BP6G+74drek+qE0z15C/QDsVzZOJi2p89bVzK4uEDZWt8RiBqKLYrm
	PBAlp9plWM/8BfG50yXdd0SUMY7mFL9HJqZdNMqMytDXXR0j1+LIS+LnFzjoW5Af04FoUtsGDKORR
	XLG3GsFl1v53fbS4GccHHuDpoFGfLcdr1PBXFN5q2DcVPn64oRcVHL1w2txS3rKPfDKOUSpEsb30l
	pYj4UPtbCGGvv9r8YcMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcUCL-0003WB-6R; Sat, 23 May 2020 13:28:21 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcUBQ-0002xw-Uf
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 13:27:26 +0000
Received: by mail-wm1-x343.google.com with SMTP id u13so2535879wml.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 May 2020 06:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=85LArQ1FkfasqQwvTGBUsmFOdZ74xT3FAzPREvSXT3E=;
 b=mp9fRUIz3f7zzigyw8CU4tWQdJuD/cNnqmRAvK/VRG+g0juXIdGy1ACtv8QzDSAVvX
 zZTtdlmptVqzrDUoGctCNcVv+sp+kvHHQLKobjmUSABO5WlVbnS7ZjDu5eL8ghHSECVm
 K66u1sz1Vvr9cojS1puCVm7MHqwqSP+KeNpcs0Ikin3L/OSp6a6ja1mHMqLhXZ7QSF33
 cmQ40C5Sb89UJ4E1ZZShWVrrBxftRA6RfclHz/BjVeWTuoRi2J+VvqnLv5AlUcR7mc7l
 F0zaODP7z0PlC5yJ+Y5QhZw5HjxWCqux45s0hgaopOwzgqaGcyNlp2dO1XJ/1y0vfKmZ
 FmJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=85LArQ1FkfasqQwvTGBUsmFOdZ74xT3FAzPREvSXT3E=;
 b=nWcyD7uLn9gYhXi+7VM1FgMMuxiDvJQJm6LJwkwYcMr4/1AJwFadUbDjbzU1qCg5Rz
 nizJHoE8bgN/nlgZ0Ti906vlfByJT2VGgjNZYIwKVC6Z0J8GLYzEEiyrf0FRRnJxAMSN
 z+ZJxEBwgzB8Uz9KFDt/USBGUDHX9inAyzTNp0cd78wMjKYQBZZwxm2SaEOZCBKVvsi/
 z9FzfFaFRYRbQ/JQ5ahajUkcB09cTLEkMYeUw1Lir2Q6tVK0b8fwRJifKsZNjqCLbKJY
 hXyzSWrPZxAEQSwgKnzr1DJ2kGtBJqYXW70J11BdE4BDXOMjejgmXVnNoD9uXgVI0vmE
 5YPw==
X-Gm-Message-State: AOAM533aUqybJUOg7cCbK3dn0TLSSybV+59VXvS5d/dSm0p14biT6smH
 1KN1WBWzw+NBS4g2COLp8fTcJA==
X-Google-Smtp-Source: ABdhPJw0PA+P0HcUXiWXYQRZQG2lReeBtiQJfZFPYkFAcWtI7Dg+DCbBae2YfDUJLHDk1mI3Rm2NpA==
X-Received: by 2002:a1c:acc8:: with SMTP id
 v191mr18521019wme.154.1590240443748; 
 Sat, 23 May 2020 06:27:23 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id g69sm8098703wmg.15.2020.05.23.06.27.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 May 2020 06:27:23 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v2 3/5] net: devres: define a separate devres structure for
 devm_alloc_etherdev()
Date: Sat, 23 May 2020 15:27:09 +0200
Message-Id: <20200523132711.30617-4-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200523132711.30617-1-brgl@bgdev.pl>
References: <20200523132711.30617-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_062724_997615_66270F9F 
X-CRM114-Status: GOOD (  12.99  )
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
