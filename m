Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 647A21DB22D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:46:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i35+R62kX004GE+H11k0jqi6VRI95gSOQp+GG4V1/XM=; b=HsixyLMMRxZz6b
	CKoHeVaAjqP6/yWVALidXq3WPxADOHA6TP6qhjIu6cpGyLagAWk30mJICchslgso2tgFvrK7aXmyk
	YVjUcHvt7aXCvYW10oqIg3Qz/2iUAr6zdk99faSAD7ZSqnwb9MfeNX7+84rnpETt97pf6a7XzDFrA
	jhPZIHghDynshcxJnXJOE8LI26N3kC8zdxMkBYG83Qu3G7+iNK0bBirNcGDSP4OlE7dYt8niKImIK
	F/JLLlr1KWgFvAMRZ04ZwhefgVREdDnbtFIEUrF+to4DWgfIba7yqG1qBcsX4o0Ud2bZVayVeQftO
	9NQGcOQ2yT/BVBqNGJjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNB7-0007wt-6r; Wed, 20 May 2020 11:46:29 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbN9D-0004Hq-36
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:44:33 +0000
Received: by mail-wr1-x444.google.com with SMTP id j5so2840348wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 04:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YDvXJX4yV3p/HLngOBi/jKhO6RPUbYJQuBEN6OKUGtQ=;
 b=R7zN8JmITYNRLCw9ivuWeVAv4mugM84KU9YtOgLMG84n9N+ErPDlDOUXwmnnn6qAK0
 viPGPNbxdWUJXG4FO2NefKDnqLl+ENkQThQY7F7pVJLW7vTVZ1SfT47impUX3qDOd2VQ
 uEkDA/gG3TYp0MSKvb6EO3pf49EGvtOXQXJigVQlnn4NsSR4ny5rZcBkqy8g6uUU53O5
 M1yNyMEx4zclKGqRO8yeeGHcEX3Vt5PjHhwmyW0CwImOXcw/fAUlzgLkGY4MThV+pK2K
 h27XQSVc0pcPLN7VXSi/HBl9isXiwjvQ9x9/UtiIEgN+mxIitT8el5sMSp02Se1SEvP+
 QHkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YDvXJX4yV3p/HLngOBi/jKhO6RPUbYJQuBEN6OKUGtQ=;
 b=DN+Yt3LsUA/tS4rp13GVAqY2YTVqMouhzUANWbxKpkx07JhGgdzkyEdPFPxCMeXWGi
 3NApih8lJKFcOfPmrqiFAbDHyqI13eZK3XJAMRN0t5ZAnc5kAg8l1v5zuwGUe/drFoIr
 uv7bYJbMQXfGxk3K5kTLHwnBHBBALhdUgGk7ZkYNizijrsXVohZgywzux8sbqOJinEmr
 MACzrdZbB9L8tSAIF6cVLzWOpX+Z9SyLW4Yk1Z0Q8ZQj/dCuZKJANxEJhx+ZpUt0q3IG
 AC4E3Z4Sb731woP2ndgmdSJ3BWRodT++VQfDuXemd9NN+PM4d6HOBp6pg/94NA/U88al
 dTsA==
X-Gm-Message-State: AOAM533dZO3asQArjn02Meo8xjPBAGSTGMu04q+1yWCFKeRstIdnxz1C
 QLTVQ+3ngbFMotndCq5DK71RSw==
X-Google-Smtp-Source: ABdhPJxix/P9D3Mn5oh6fiWDRRTUhSOcXRz8XE3qxCx4RCTw666U9OaDVlR73p1lgKqZTh/IlvPteQ==
X-Received: by 2002:a5d:60c3:: with SMTP id x3mr3697173wrt.48.1589975069582;
 Wed, 20 May 2020 04:44:29 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id q2sm2530782wrx.60.2020.05.20.04.44.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 04:44:29 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH 5/5] net: ethernet: mtk_eth_mac: use devm_register_netdev()
Date: Wed, 20 May 2020 13:44:15 +0200
Message-Id: <20200520114415.13041-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200520114415.13041-1-brgl@bgdev.pl>
References: <20200520114415.13041-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_044431_157813_2EC26142 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Use the new devres variant of register_netdev() in the mtk-eth-mac
driver and shrink the code by a couple lines.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/net/ethernet/mediatek/mtk_eth_mac.c | 17 +----------------
 1 file changed, 1 insertion(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/mediatek/mtk_eth_mac.c b/drivers/net/ethernet/mediatek/mtk_eth_mac.c
index 4dfe7c2c4e3d..2919ce27efeb 100644
--- a/drivers/net/ethernet/mediatek/mtk_eth_mac.c
+++ b/drivers/net/ethernet/mediatek/mtk_eth_mac.c
@@ -1513,13 +1513,6 @@ static void mtk_mac_clk_disable_unprepare(void *data)
 	clk_bulk_disable_unprepare(MTK_MAC_NCLKS, priv->clks);
 }
 
-static void mtk_mac_unregister_netdev(void *data)
-{
-	struct net_device *ndev = data;
-
-	unregister_netdev(ndev);
-}
-
 static int mtk_mac_probe(struct platform_device *pdev)
 {
 	struct device_node *of_node;
@@ -1631,15 +1624,7 @@ static int mtk_mac_probe(struct platform_device *pdev)
 
 	netif_napi_add(ndev, &priv->napi, mtk_mac_poll, MTK_MAC_NAPI_WEIGHT);
 
-	ret = register_netdev(ndev);
-	if (ret)
-		return ret;
-
-	ret = devm_add_action_or_reset(dev, mtk_mac_unregister_netdev, ndev);
-	if (ret)
-		return ret;
-
-	return 0;
+	return devm_register_netdev(dev, ndev);
 }
 
 static const struct of_device_id mtk_mac_of_match[] = {
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
