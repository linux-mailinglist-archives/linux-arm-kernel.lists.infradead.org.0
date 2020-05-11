Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C13C71CDE71
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 17:11:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uLS0zxMdrg1ECmmk4nksjhCL0c+IpML1A/7mCcoDv7w=; b=AR642QEmzfz0OR
	VzolfOqTUvqSyyh1FX1WcNGDg+LVI3H6+R50KDyoUcd0bl23bUCV5lWNDxREHkRWhkwNOr5CTm+GH
	QBib67FGOD0elbI1FphptFrhevhp38ONbW3b15XTeDdvDZihugwtLaR2j/dL+JqtlpyI4LnHdgfxG
	QStQH0COMu1wkYVIpWDAE8Aosb3BhaTjijDCCLxyUxN04AG1/yTgDQ9RlokixCliY7uDKmTPuqqwU
	+CPHTDlmU9eqHvSU5VXEKYXXrekrR1pJLa+UFk8ACaG+C8bZEJyI6nDJPvfeUkmqDrWF7TDhzNXHS
	MXOdi65bkw/0Dh3uf9bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYA5O-0007HZ-MR; Mon, 11 May 2020 15:11:18 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYA2i-0002bJ-RK
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 15:08:34 +0000
Received: by mail-wm1-x343.google.com with SMTP id n5so4805031wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 08:08:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JWd28US49vQEgzroCkPuJ7+0dlvqHFnp/0U0KdCKzj4=;
 b=yAQ17n5n0Nlko9kUD5JQSnw1SO35zKfJ9pXExg53viUdxqF46z7vVVUbrm9CWq90zL
 +HofwZUQ8AbrUTRLoP8u6HuvjPcGWT1dWbdMdcEI78zuOFvRNeUhJIX4AVRT7hVXwaHk
 XWusk6ttYjMboQZLrX8kOFDqUbovXiFSXfu65aAk2VN4fPdxjQc0gOha7ctZgiP0eOGx
 dF3x26U8pZeznqL5/e98wKIPJGv1G8lqk4flKSM8JrivLFxREQL3SIRzc9H2gzU6YiwM
 I3OTfRJjC6rxKB4a9taLddxcX1g6NaMR3yg3mW3DPp2Wdo1cxWQOBlb6ABfVCkV2cl/0
 57Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JWd28US49vQEgzroCkPuJ7+0dlvqHFnp/0U0KdCKzj4=;
 b=mfnSkmoZNltL06rdPfHuKntv1pmhtuJ+7gXqrATLGaoosNYn2XHyL7InAbAOgmtphB
 Z8H78/xtGrvSuyTXinfBgooWL3DRbrxFRAgY9CbYgvMgeg8LUiT48LZVaUr5ZZSy7xxu
 fkL1Dks0naJ9pvUEeHGBR3E3Bca3YqiqVGSZqivU7WOxjhKceM88XKjHuPZpNZrXQdwR
 gcnMp5idqlYm7C8gEhVKKaQyga7vL+Yf1s98Wy6EBcnlSoXU1M3/EyD99x/PjLjhYI4I
 NoWh32CVikj4g3Jq7EgImcxSx7YmLMWwmO7sevqFcAQf71lO0PEL9FKo3JHSGtWcH9kZ
 FW4Q==
X-Gm-Message-State: AGi0PuYSK0ebfixnTZnFWntqT9Po9fo7Kb4YOjk10J5dVHiVjFjvRyk1
 45ZbVQIm5yv2SVfeD7dCqmks7Q==
X-Google-Smtp-Source: APiQypJeAulXahA6ibdKhNLx3DmiIqJmPwxXGG8leQ4jK/xVuJNuMwJOUsf0YZ2hS4FiT/g7qkEqmg==
X-Received: by 2002:a1c:790e:: with SMTP id l14mr31328411wme.174.1589209711412; 
 Mon, 11 May 2020 08:08:31 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 94sm3514792wrf.74.2020.05.11.08.08.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 08:08:30 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v2 08/14] net: devres: provide devm_register_netdev()
Date: Mon, 11 May 2020 17:07:53 +0200
Message-Id: <20200511150759.18766-9-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200511150759.18766-1-brgl@bgdev.pl>
References: <20200511150759.18766-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_080832_933912_0D984F8F 
X-CRM114-Status: GOOD (  14.49  )
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

Provide devm_register_netdev() - a device resource managed variant
of register_netdev(). This new helper will only work for net_device
structs that are also already managed by devres.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 include/linux/netdevice.h |  2 ++
 net/devres.c              | 55 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 57 insertions(+)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 933c6808a87f..d3d1b9251ae5 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -4220,6 +4220,8 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
 int register_netdev(struct net_device *dev);
 void unregister_netdev(struct net_device *dev);
 
+int devm_register_netdev(struct device *dev, struct net_device *ndev);
+
 /* General hardware address lists handling functions */
 int __hw_addr_sync(struct netdev_hw_addr_list *to_list,
 		   struct netdev_hw_addr_list *from_list, int addr_len);
diff --git a/net/devres.c b/net/devres.c
index b97b0c5a8216..57a6a88d11f6 100644
--- a/net/devres.c
+++ b/net/devres.c
@@ -38,3 +38,58 @@ struct net_device *devm_alloc_etherdev_mqs(struct device *dev, int sizeof_priv,
 	return dr->ndev;
 }
 EXPORT_SYMBOL(devm_alloc_etherdev_mqs);
+
+static void devm_netdev_release(struct device *dev, void *this)
+{
+	struct net_device_devres *res = this;
+
+	unregister_netdev(res->ndev);
+}
+
+static int netdev_devres_match(struct device *dev, void *this, void *match_data)
+{
+	struct net_device_devres *res = this;
+	struct net_device *ndev = match_data;
+
+	return ndev == res->ndev;
+}
+
+/**
+ *	devm_register_netdev - resource managed variant of register_netdev()
+ *	@dev: managing device for this netdev - usually the parent device
+ *	@ndev: device to register
+ *
+ *	This is a devres variant of register_netdev() for which the unregister
+ *	function will be call automatically when the managing device is
+ *	detached. Note: the net_device used must also be resource managed by
+ *	the same struct device.
+ */
+int devm_register_netdev(struct device *dev, struct net_device *ndev)
+{
+	struct net_device_devres *dr;
+	int ret;
+
+	/* struct net_device must itself be managed. For now a managed netdev
+	 * can only be allocated by devm_alloc_etherdev_mqs() so the check is
+	 * straightforward.
+	 */
+	if (WARN_ON(!devres_find(dev, devm_free_netdev,
+				 netdev_devres_match, ndev)))
+		return -EINVAL;
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
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
