Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E5B1DF7A8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 15:29:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D+vf/sDeJKWepX7Z2ULEzzdbkAXDD0iB7x0UxVF1Cn4=; b=Z+sRsdq7MkfZMN
	rXTbxRHBtswQGgm6zsk1UiK8+3HBzaAaxobsvksyO4tANebY+VTDpvzhUoOvYwQcFsO3A/PSxVQDL
	w3UgZp3VU2nLa6Y6NuS2+tXCt2DC6XZuLBSIBsghuM2pFX10R3SJkGAst5d8Vf6WCkMsmnFpOgnqw
	rFYjUyYrS0QrNRQCkj7vQrOj2Qee6/8/HOyqC9BLPzaTcZwqnRWOa5wuR+hWZyXFd6MNtWT9cdqLe
	6Vx2mPfFO2jqrxDPqWsi9Wu5EWVuU9q5i8emi36NchXfwxdvFAQ+EYKEAwLx+SgJAc4Z/Jbn1RVbn
	G8s0MgcbqXe1nSllsopg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcUDK-0004OH-Th; Sat, 23 May 2020 13:29:22 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcUBU-00031T-6C
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 13:27:30 +0000
Received: by mail-wr1-x442.google.com with SMTP id j16so541376wrb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 May 2020 06:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=64kvwBG1/A4ZIpIpQ81Lq/ynCrPXhKaGjAzI5WzwgPE=;
 b=WCoxlxcAreaFf6FWNGwNvYKxgyg/0gU+HbaYFg23bXDv4PSZYQHZlcxTOz7FCYoubj
 5e5E0jUoENWF/3lKC2kOeluwhMEcroHJYd4LLhnNzHEnkUXIYnNGkbayPKVmcdBOa4Ct
 Zd7GHa3AvzA8wj3qLAFTjfju/dvJxGVk6M8DDJ+ik4ZotMuSwK1r56f3O59Uk50PFPVn
 R0DaSsNzfIUyeO9IWOXdsNRiOpScHj5lcBRivA9lt7wATE958fMmZQ8bNr/E3zw9Lp+a
 lRCGiGC2Qe4t821qu5XEVbdXbkQ+sQS32lFBOC3K6B9MwNUMYCIjE+kQk5GoDFnQ/755
 JQPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=64kvwBG1/A4ZIpIpQ81Lq/ynCrPXhKaGjAzI5WzwgPE=;
 b=hedDawdhHT31fMeCTP4gOqiIbDse52bMm8aX2qdQ6Opr1nNZHVu1URcoG/DhFa+lre
 /aHxgNvb5jTf4/vLlt8cgiAJXeriJ8WiuCSRszH4AP0pTWwrhq7/FgCiUq5m6evcswEy
 suuAtSX+O5YG0i/3kdmHnjkoreLxrE3cdyG/cEaVWpqSzYwPWAPHAy0YHkdit6YnpKUB
 DCKFalAhCWHyaxb+9KFK2h1XLtzIf4ISOr7Nbsw/76eP+IisgIBy6OkYqtzBLNqwl4Em
 wGk5mWK2g8UyhtDnTN+nb/2Vob6Mp0VRcGEPRvSkBfz8YlT2BQXYfT72kGLOxV4qpUhX
 SBlw==
X-Gm-Message-State: AOAM531NMdVH81kpfbTLBE9HzzTNfFrsfoSTYwg5sOryXew+PYhXaX3j
 OxcfOfxJbnsntyAUxOvJM2HqaA==
X-Google-Smtp-Source: ABdhPJzIGyb5J01y0YxEKH5gekjElLjvEzQP6NEzA1GtaboJVo5CQutHS2WF+ceWndsriO45lbSBPQ==
X-Received: by 2002:adf:e3c1:: with SMTP id k1mr3797110wrm.33.1590240446683;
 Sat, 23 May 2020 06:27:26 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id g69sm8098703wmg.15.2020.05.23.06.27.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 May 2020 06:27:26 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v2 5/5] net: ethernet: mtk_star_emac: use
 devm_register_netdev()
Date: Sat, 23 May 2020 15:27:11 +0200
Message-Id: <20200523132711.30617-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200523132711.30617-1-brgl@bgdev.pl>
References: <20200523132711.30617-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_062728_406476_9A74B50E 
X-CRM114-Status: GOOD (  13.54  )
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

Use the new devres variant of register_netdev() in the mtk-star-emac
driver and shrink the code by a couple lines.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/net/ethernet/mediatek/mtk_star_emac.c | 17 +----------------
 1 file changed, 1 insertion(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/mediatek/mtk_star_emac.c b/drivers/net/ethernet/mediatek/mtk_star_emac.c
index 789c77af501f..b74349cede28 100644
--- a/drivers/net/ethernet/mediatek/mtk_star_emac.c
+++ b/drivers/net/ethernet/mediatek/mtk_star_emac.c
@@ -1519,13 +1519,6 @@ static void mtk_star_mdiobus_unregister(void *data)
 	mdiobus_unregister(priv->mii);
 }
 
-static void mtk_star_unregister_netdev(void *data)
-{
-	struct net_device *ndev = data;
-
-	unregister_netdev(ndev);
-}
-
 static int mtk_star_probe(struct platform_device *pdev)
 {
 	struct device_node *of_node;
@@ -1641,15 +1634,7 @@ static int mtk_star_probe(struct platform_device *pdev)
 
 	netif_napi_add(ndev, &priv->napi, mtk_star_poll, MTK_STAR_NAPI_WEIGHT);
 
-	ret = register_netdev(ndev);
-	if (ret)
-		return ret;
-
-	ret = devm_add_action_or_reset(dev, mtk_star_unregister_netdev, ndev);
-	if (ret)
-		return ret;
-
-	return 0;
+	return devm_register_netdev(dev, ndev);
 }
 
 static const struct of_device_id mtk_star_of_match[] = {
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
