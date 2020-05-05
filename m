Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C99E71C57E9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:05:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jbXIks/KCWz+j2a1A9y6S5T3OJXC2uwQtbqp3D2/bE8=; b=kPjR3fZARM8YLi
	JNttl79FAD61LEntPQAjeUsiXChkHXMuwREi54UzIpZzDXqkwP99060KRsTL+l5RnLBKCLw+Xe36d
	x41L8OnBzmBLz8SSyhRCY03cV93J7JCKBP7R1cWso2Lmw6gOasoFn3eCZz1WhQnuqTbx7WIENcMC5
	Dk6y1cjZ7uNcTYhS0kympCYtGYa1p5nBQ2piLrQOj16jkTO/e6GUTA7vjsn/MEKsFi9EEZt/ZD3ix
	36qWdFiGE3j18VMfpbYIaJQhiPwedinKf3+VIbtHaa6riShu20NxyuNIDkD6Ny41ZGBQsxCd5xLsN
	cpF+dG1Oswc56JsIlI/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyBt-0003ss-1R; Tue, 05 May 2020 14:04:57 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyAC-0002Ir-SN
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:03:14 +0000
Received: by mail-wm1-x343.google.com with SMTP id e26so2421264wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 07:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XzPWSx814wcuOT9NHWlCidvd/g1LktIvgEhNgxHiB+I=;
 b=GDxtZascuF3VlQT4m8Y6A1NkqjEZJvqBKtGLerb8p0fVRxeFRWzsMAW/5kQknif1ol
 QbdmDFCp8Mm2vnHZsZ3ljrAqdFInnVvc5tKZPRq0UtbxKz1LZzSwBH2EST0Pj3gT1b8c
 h9MdIkBbk4f2IccDCFRiwKmEBA+jjiL96/9D+qaMGQOTRwtWJawUr2fPysWASK4UBcTb
 qaT4zA2gWzkLAbQET4wIE3RVpXzAknkEoA1mk5kfb9c18lSq6eC79m7KDyfNVK2iDXGr
 mFHe23qvpwQEcQVze2B+B+8DL+ADNtS4Zqm07JpzqaF8kdRW50BzHgDtIEVZTIjtKOLC
 nvWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XzPWSx814wcuOT9NHWlCidvd/g1LktIvgEhNgxHiB+I=;
 b=C1Y+3TKOMyEY5B1GBvAaurTor3Ce1l55NZGSC3iTwDrY7TL6/iwIK0aAIAxPa8pAcM
 cBUns+9DrICqwSH6mN21ioURRXJ1ENOEFszYU58IP3NWTYC4tSYKrJzorCV19h/3M0vc
 VvRa/hE0PF9IGCDVcOMuF6vFTt3WeObJ+6M6yNcT/CHU4xariUakiA8Ax3umgNHEh1VP
 NjHo1dAbKde1F7RMj4IlfPcUtWNzsjoM0Fllm5Wk3j18dqvC8WcElUDJfuSgxEK8wpFY
 P/P4/erQwNjE8vjU+sP3pPOpkJHtLcQBVhyyYdygdhTDMA62QWotnn+pE0FeycFN8zA7
 0dCA==
X-Gm-Message-State: AGi0PuYSv8EuJyEIO1I0HosCAbHEm9vkN8Hs6ELnujA6KoBERoJfSMxD
 NW/iwMLFZkv+dA38AV9doPLShQ==
X-Google-Smtp-Source: APiQypLyQEevQilQF8OGTKaO4x0GDcOOIERMs4KyEuSeUMTmGpGiba4gEr4LNVjh4GeSyFodlYbUjw==
X-Received: by 2002:a1c:ed04:: with SMTP id l4mr3707524wmh.93.1588687391128;
 Tue, 05 May 2020 07:03:11 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id c190sm4075755wme.4.2020.05.05.07.03.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 07:03:10 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, Felix Fietkau <nbd@openwrt.org>,
 John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Jakub Kicinski <kuba@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 05/11] net: core: provide devm_register_netdev()
Date: Tue,  5 May 2020 16:02:25 +0200
Message-Id: <20200505140231.16600-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200505140231.16600-1-brgl@bgdev.pl>
References: <20200505140231.16600-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_070312_986954_78F74846 
X-CRM114-Status: GOOD (  16.35  )
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Provide devm_register_netdev() - a device resource managed variant
of register_netdev(). This new helper will only work for net_device
structs that have a parent device assigned and are devres managed too.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 include/linux/netdevice.h |  4 ++++
 net/core/dev.c            | 48 +++++++++++++++++++++++++++++++++++++++
 net/ethernet/eth.c        |  1 +
 3 files changed, 53 insertions(+)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 130a668049ab..433bd5ca2efc 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1515,6 +1515,8 @@ struct net_device_ops {
  * @IFF_FAILOVER_SLAVE: device is lower dev of a failover master device
  * @IFF_L3MDEV_RX_HANDLER: only invoke the rx handler of L3 master device
  * @IFF_LIVE_RENAME_OK: rename is allowed while device is up and running
+ * @IFF_IS_DEVRES: this structure was allocated dynamically and is managed by
+ *	devres
  */
 enum netdev_priv_flags {
 	IFF_802_1Q_VLAN			= 1<<0,
@@ -1548,6 +1550,7 @@ enum netdev_priv_flags {
 	IFF_FAILOVER_SLAVE		= 1<<28,
 	IFF_L3MDEV_RX_HANDLER		= 1<<29,
 	IFF_LIVE_RENAME_OK		= 1<<30,
+	IFF_IS_DEVRES			= 1<<31,
 };
 
 #define IFF_802_1Q_VLAN			IFF_802_1Q_VLAN
@@ -4206,6 +4209,7 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
 			 count)
 
 int register_netdev(struct net_device *dev);
+int devm_register_netdev(struct net_device *ndev);
 void unregister_netdev(struct net_device *dev);
 
 /* General hardware address lists handling functions */
diff --git a/net/core/dev.c b/net/core/dev.c
index 522288177bbd..99db537c9468 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -9519,6 +9519,54 @@ int register_netdev(struct net_device *dev)
 }
 EXPORT_SYMBOL(register_netdev);
 
+struct netdevice_devres {
+	struct net_device *ndev;
+};
+
+static void devm_netdev_release(struct device *dev, void *this)
+{
+	struct netdevice_devres *res = this;
+
+	unregister_netdev(res->ndev);
+}
+
+/**
+ *	devm_register_netdev - resource managed variant of register_netdev()
+ *	@ndev: device to register
+ *
+ *	This is a devres variant of register_netdev() for which the unregister
+ *	function will be call automatically when the parent device of ndev
+ *	is detached.
+ */
+int devm_register_netdev(struct net_device *ndev)
+{
+	struct netdevice_devres *dr;
+	int ret;
+
+	/* struct net_device itself must be devres managed. */
+	BUG_ON(!(ndev->priv_flags & IFF_IS_DEVRES));
+	/* struct net_device must have a parent device - it will be the device
+	 * managing this resource.
+	 */
+	BUG_ON(!ndev->dev.parent);
+
+	dr = devres_alloc(devm_netdev_release, sizeof(*dr), GFP_KERNEL);
+	if (!dr)
+		return -ENOMEM;
+
+	ret = register_netdev(ndev);
+	if (ret) {
+		devres_free(dr);
+		return ret;
+	}
+
+	dr->ndev = ndev;
+	devres_add(ndev->dev.parent, dr);
+
+	return 0;
+}
+EXPORT_SYMBOL(devm_register_netdev);
+
 int netdev_refcnt_read(const struct net_device *dev)
 {
 	int i, refcnt = 0;
diff --git a/net/ethernet/eth.c b/net/ethernet/eth.c
index c8b903302ff2..ce9b5e576f20 100644
--- a/net/ethernet/eth.c
+++ b/net/ethernet/eth.c
@@ -423,6 +423,7 @@ struct net_device *devm_alloc_etherdev_mqs(struct device *dev, int sizeof_priv,
 
 	*dr = netdev;
 	devres_add(dev, dr);
+	netdev->priv_flags |= IFF_IS_DEVRES;
 
 	return netdev;
 }
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
