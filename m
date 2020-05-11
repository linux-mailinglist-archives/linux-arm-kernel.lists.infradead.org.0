Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DBB01CDE68
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 17:10:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kefUaOKmlfkHPBPIAyC/Ueb8+ZYp/Xbgp1APs3yOii0=; b=S+ljIU8iZiS8mK
	3BbKm+jUKFG2JilOF2KtD5nEkpXlRGXEB9piZmnaCvjuHAryT4BnbA1AkwnU3KSnLB8HCSzuoTsj8
	IPBKefLgwKhYxv8ktXu3W03eDJmuKWoeAcydP/kzqDRVAz3ajZNadqCu3dAv99DKgUhdHa/wfQ7bp
	DGBkJQJhpnK181eW99rtUJSmkvIO8kELvz9bTGYnyCFqWKV5c63rnloIvE3rspIj0mflHpn8T99iB
	Fj3X9YCvCrqVPadsM1w7GVdD6LLARrlzBO80uxUqUh4HjS83Ncb1n4zwQiKbKmCKXaUAUqPJsYtZn
	AirEXS1Hp2LceidDJGbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYA4R-0003u9-LA; Mon, 11 May 2020 15:10:20 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYA2e-0002US-Tg
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 15:08:30 +0000
Received: by mail-wr1-x441.google.com with SMTP id x17so11438808wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 08:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TLMq2XwRgUC25FFpg44rE1jATuYcYABivRm1tKC5XTM=;
 b=lGEfjqd/Aqo91nNbYHQC/XXhvPNRro/VrpfSU0EKrgUiO5UJ0lZXxyaNjy0vwymwSb
 uxwP22CTUu7BkW2bIoeK3qhHOwvoFsYhIhZngMUlHLW4GZlrj2EaI2Od7rJuyEum2hPJ
 mOOddMd5+KhA4BsHVTsFc1TO02ZsDR/PDJsjrmcYeCSNntHIyaYLDAKJYR4kDyHYUkdo
 fa8cnqPq4/GDF/sZDgDOT2ZTLehxieagSqPBErq+zM756mvMYXQKGiraMxfd2vT4/Pq4
 A/Z1mAM/jRHFEXGLC9eB34BPWmePWBU9/Ou4b7W0qT+98gs2/rruU5IXXYcZJR3Y5Amy
 Dh+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TLMq2XwRgUC25FFpg44rE1jATuYcYABivRm1tKC5XTM=;
 b=ULkn/P0jEglGbSUc4piTGti9Da09/TcAgOj1/VdO8D/ZqkizDYqjlpEAUFRI0ZgI2Y
 ut+hTJbZWsignLQtqrrh41bwwN/5KSGa+7ZZjrvFxxiWx/INutJQYkibTZhCsv6cQZxv
 uKkQYvyyVACaQ3O9UQ7q7Wv2Cj8248f6QW64n1Tn6W8OAWRXMZ9bOtEaPuTO1gDMbzyZ
 zGxJ6CiT42Egtx6h5tGLsdo6IY4bAhhLpuTDbE0qYO64d6DOcqYrAQvHIF3IHjp9VYTb
 DsMLTNgcHK1KMH8rUolHrZ1uBYp+Dy1kuF7DTtHcSnmInHlheJ65it0p7rNM5q/WKhlU
 q+Lg==
X-Gm-Message-State: AGi0PuYjk0OeszLWw0A0no9SUmsf1BRTFwACkHQdHOyPnSXV3gvufxvo
 CS85sSCsFiZKSiqYKlkNa4KUew==
X-Google-Smtp-Source: APiQypLrstV08k3pPp3S+tVHPnE3B6GnlgxYC6jtUQXLXJtg4uaQOjgd0DZV0NaM/PAy80Q8A9SMbg==
X-Received: by 2002:a5d:4801:: with SMTP id l1mr18746418wrq.235.1589209706975; 
 Mon, 11 May 2020 08:08:26 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 94sm3514792wrf.74.2020.05.11.08.08.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 08:08:26 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v2 05/14] net: core: provide priv_to_netdev()
Date: Mon, 11 May 2020 17:07:50 +0200
Message-Id: <20200511150759.18766-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200511150759.18766-1-brgl@bgdev.pl>
References: <20200511150759.18766-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_080828_985395_1AF97436 
X-CRM114-Status: GOOD (  12.18  )
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

Appropriate amount of extra memory for private data is allocated at
the end of struct net_device. We have a helper - netdev_priv() - that
returns its address but we don't have the reverse: a function which
given the address of the private data, returns the address of struct
net_device.

This has caused many drivers to store the pointer to net_device in
the private data structure, which basically means storing the pointer
to a structure in this very structure.

This patch proposes to add priv_to_netdev() - a helper which converts
the address of the private data to the address of the associated
net_device.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 include/linux/netdevice.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 130a668049ab..933c6808a87f 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -2249,6 +2249,18 @@ static inline void *netdev_priv(const struct net_device *dev)
 	return (char *)dev + ALIGN(sizeof(struct net_device), NETDEV_ALIGN);
 }
 
+/**
+ *	priv_to_netdev - get the net_device from private data
+ *	@priv: net_device private data
+ *
+ * Get the address of network device associated with this private data.
+ */
+static inline struct net_device *priv_to_netdev(void *priv)
+{
+	priv = (char *)priv - ALIGN(sizeof(struct net_device), NETDEV_ALIGN);
+	return (struct net_device *)priv;
+}
+
 /* Set the sysfs physical device reference for the network logical device
  * if set prior to registration will cause a symlink during initialization.
  */
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
