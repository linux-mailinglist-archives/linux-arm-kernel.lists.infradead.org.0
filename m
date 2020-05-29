Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B25961E7848
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 10:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bubuUsGf8rsb/SQUThWU04gqFGQZ26MkFIDMJh1eXKM=; b=WMywMxFBTub29y
	1WYPWUK9omaGNWE8tNN5Bo9N/crwf7hSSA7sT+ZP4EdMkMJyR5B1+HcaCWwvLaadLKJiBDjWXIh7j
	tfJCb8+H26V1EHyqGploBkrboG0L8jFBhVhTgovNXnv3hur3J/8vlLjAfsFdcv0TwqICd0fOu0qsM
	MCUauVNg/M1321oNo/Z4Oxfq+LHbIlr5tvtDCRn8GVHOJYPlNiVd95vIpjVKNj/uMIYCD78bTWa7H
	TRrE9DmDlOqpU5zVkUwgsytlc+aedUpfQzzNjCItj/qd19yyxTe5yb9frTa1WuuOGXHqQ4cN1uCMT
	6xdIHUeAovY8QNS0cQLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeaM9-0001nV-B1; Fri, 29 May 2020 08:27:09 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeaM0-0001mh-RA
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 08:27:02 +0000
Received: by mail-wm1-x343.google.com with SMTP id k26so2344106wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 01:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t01eFYsLCYMUh71LfaSG8m5mrKtEOYGphARGk4VMCAM=;
 b=lv8wSlZ8RZbxv4EzSVhJKApyfdZ7Nh+/HRU+HHipFV78X0WwbyHNrNXRpz5EH6B++t
 rgJH+656w6SCghD6FzHoThJhcaKOWNhRqehRcfLXOpyK2tmqPh2k37fl4zItPgWxHR6N
 piQdqFalxkZGloVvY+akhG3uA4wIgZG+sEEJxkvdq3lx4GWKTQVx/YElTXAd+pc7fcj7
 2X0SbguFhGiISftlDNtIiEhs0/mRtCXYhbj5Q70tyKk4QRInsa7g21CCaYLVj9F6dmlt
 MfhCS7wbwjGBXDsuWfmvEjf9JqOlT6Wrew4ZO9MXzO9qSevqXxKkIShfSp6XlKninQCI
 Cvtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t01eFYsLCYMUh71LfaSG8m5mrKtEOYGphARGk4VMCAM=;
 b=rCmOKnKUB1S6act5uO76iq1cMybYYEfPrEEH7IXGgTsegkWfVc1tBdbwgOMaI861OW
 w7qH0x9Zjb0QOcW0pSYt8ftlGImrL/X7YUY6BjVlHDcm/E4PwkbNEyF08bj4ngQZQalf
 My1+x5rd1p7GDHNqnOaFPhaBqUiUDYHJDjIWeu28wETZIR37/PQn8hyiMEK9z1GhBXJA
 LMPlyJJa3WDm/3JllXccg7stw+3751PGPkPbyQZUn5BAR2K1ZmE01ef8BDDhTUy1KQ+H
 YR41vYwKSoTt/RaGFdqB1NmaHxs+tSyeE0bSDch8IUwK77a+VJb5e5RDN7hjMoUde1aT
 BNeA==
X-Gm-Message-State: AOAM532kVgIOW8kObDyjX2zjqgTQPxH3pgPVn9kdskuUPEDm7j2I9JOP
 2aawkkBlIbk5ivKhDO5jcA9v3g==
X-Google-Smtp-Source: ABdhPJwQnfgPwNSZqbr6uVN9JRnU1eAWiaVFQT25mMZwuifAllPHXfm/vwdnHnTsmyOQBsz/JoesdA==
X-Received: by 2002:a7b:cd04:: with SMTP id f4mr7741464wmj.118.1590740819317; 
 Fri, 29 May 2020 01:26:59 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-214-184.w2-15.abo.wanadoo.fr.
 [2.15.60.184])
 by smtp.gmail.com with ESMTPSA id o20sm9208618wra.29.2020.05.29.01.26.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 01:26:58 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] net: ethernet: mtk-star-emac: remove unused variable
Date: Fri, 29 May 2020 10:26:48 +0200
Message-Id: <20200529082648.19677-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_012700_940086_81460BD3 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
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
Cc: kbuild test robot <lkp@intel.com>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

The desc pointer is set but not used. Remove it.

Reported-by: kbuild test robot <lkp@intel.com>
Fixes: 8c7bd5a454ff ("net: ethernet: mtk-star-emac: new driver")
Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/net/ethernet/mediatek/mtk_star_emac.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/mediatek/mtk_star_emac.c b/drivers/net/ethernet/mediatek/mtk_star_emac.c
index 8596ca0e60eb..7df35872c107 100644
--- a/drivers/net/ethernet/mediatek/mtk_star_emac.c
+++ b/drivers/net/ethernet/mediatek/mtk_star_emac.c
@@ -746,15 +746,12 @@ mtk_star_ring_free_skbs(struct mtk_star_priv *priv, struct mtk_star_ring *ring,
 					   struct mtk_star_ring_desc_data *))
 {
 	struct mtk_star_ring_desc_data desc_data;
-	struct mtk_star_ring_desc *desc;
 	int i;
 
 	for (i = 0; i < MTK_STAR_RING_NUM_DESCS; i++) {
 		if (!ring->dma_addrs[i])
 			continue;
 
-		desc = &ring->descs[i];
-
 		desc_data.dma_addr = ring->dma_addrs[i];
 		desc_data.skb = ring->skbs[i];
 
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
