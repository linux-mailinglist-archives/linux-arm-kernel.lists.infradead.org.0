Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE9F15D56
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 08:28:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2LvFSfOXl4NtXkIcIe3JOtf+M2EfzdrEFvvZWLNRleY=; b=b8IyE9mJCb+2HDrDF9AblRwm7/
	nmDVpmm03Ha2uU3Ksk3QLMxjDbrP4/xa3VzK7Mwx2ZpLTgkGuejFuUmQfUdixJd8xGwfIZTs+Pri/
	IZUH5A4Y8X0RiEN8tN+n170mNR8/wCUx0lvoArWbiAFBLq+ff72tTCXsqQ9H4NfOHXroluq6CbAt/
	hSgo3QvZqlk5YtWnXutW/SyjNTJQf1pw4cfW6rqZaLaxXIfj3bBbN418a1B9AFr9at9mDjFpPcs32
	zcRO/5eNnjqU8eR8E9/wZv/OZuwfxzim5BmpJ6DqNSIqo/IdI0Ip4psQnwdIyynfaSyWwSjq9HbAw
	ZTtf62uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNtaA-0004Oo-CK; Tue, 07 May 2019 06:28:06 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtZw-0004FC-2d
 for linux-arm-kernel@bombadil.infradead.org; Tue, 07 May 2019 06:27:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QS4oURfHIZFUpa7KdJQnPIiOEuTfxlscK4edcryrvp4=; b=RFuidZGo0Acz/yuvnxuOh1tP4
 rIXT+SykJrTIuhpbym+ZwFvzMKdtl30NiZQsalKK3ueqAMWjKJFBH12eM7JUrz8LuPGDaVEcRBP52
 eG6SX7bzMnM+mfaKVCCEbM1JjerPQKQAvHPrX+OOgY9mu0Ucw1SQyIZuzJSp4YTidHxHT9FXy7RQg
 riavbXRqPk3/EstzuJEAIfWi54LL0oz81DD3TOj9+EdDvaQJBdO3dV0L6gOp9dMNPsQY/zprQcLRI
 iJaq1yl49rN25meRpfPjXjDm6D9d9T+fJvxttYR+vHwG12bhKQlTvXRGNeB270+x59jN3G9KbL31C
 xwkP7mbyQ==;
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtJN-0000Tc-U9
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 06:10:47 +0000
Received: by mail-pg1-x544.google.com with SMTP id t22so7716474pgi.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 23:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=QS4oURfHIZFUpa7KdJQnPIiOEuTfxlscK4edcryrvp4=;
 b=maZFVIBNrGmfcQkxEh1uEEdXnaUgHkn3AsT3Rf/6klFaj6bfdmt1TliBoh7dY/CcSx
 YInGUoE9/OW4UzgCS1ptn9nWpJ97rk4CGoDlUcraSG3BFloczr+Y862nxym6+52jMg0z
 VIwqdFmTKB/etS/WqQfKc45L9vn2ZbxUpoSvWbYU0JTCOfaSy+jrOo47Hb3vNWNYuAA4
 16TmzMN6uOMSc0NFoCSnkAm3i0sIMCtXl4saaqrFyn7gVT8BoIfXwfPQecLimNaDvq2z
 iuP/ykZ9Vpch7A1Z9HwQxiVZlsFLXcLjGq79ZTZy45jB9ERN2ejUJC9wkHSAv+p/yfXy
 D4XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=QS4oURfHIZFUpa7KdJQnPIiOEuTfxlscK4edcryrvp4=;
 b=b4zLyVONzP+o0BSur673cuT6yBvh7Iyn9LhvkUmQuo8mtnKEavLe2f89cSoHqhhPRj
 0ZI6e14ZJu6RFjD8lpQ1jr7tRSKY825/aL/McKEV5hARzxoMP30WrT03HwttfjBZ8y1V
 908nyKu2wSKsn+/On688xIPNS4xYyr0O42wpKzYx63QTJLRhNyRjfm0ttGTeRoiTGX3q
 ZQEJdRfkL1zH8Is1TDjxbef+csZDidaY3rmBrwcX0jLuF2plxTWByCGp1mld2ngOixb5
 lyTj6+wbxeibRhqauTvXJtf04dgcvzhHqq+ST41wohZBTCGFrCE+/I3ioFcOMApMuOLW
 rV2A==
X-Gm-Message-State: APjAAAVtXVJntveO7nliDIEuDgsln+YKPiLhpX6HBKtj93OcCDGvW4rR
 wI3daDYFBgYe1fbbkXjUsNiEqw==
X-Google-Smtp-Source: APXvYqyMCecB9APKxojYDXIZUFxgGkKIgYuzDbt4utaG9C2XtwojM6Mg5/IhTiAoLuBssJD5TQCV+Q==
X-Received: by 2002:a63:42:: with SMTP id 63mr37776526pga.337.1557209443520;
 Mon, 06 May 2019 23:10:43 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id e184sm30786325pfc.102.2019.05.06.23.10.38
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 06 May 2019 23:10:42 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: dan.j.williams@intel.com,
	vkoul@kernel.org
Subject: [PATCH 7/8] dmaengine: sh: rcar-dmac: Let the core do the device node
 validation
Date: Tue,  7 May 2019 14:09:44 +0800
Message-Id: <e5a9e3101218d5216dae62da447e9a80d04a741e.1557206859.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1557206859.git.baolin.wang@linaro.org>
References: <cover.1557206859.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1557206859.git.baolin.wang@linaro.org>
References: <cover.1557206859.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_071045_977366_9B9CB4ED 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: jroedel@suse.de, vincent.guittot@linaro.org, Zubair.Kakakhel@imgtec.com,
 baolin.wang@linaro.org, dmaengine@vger.kernel.org, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 wsa+renesas@sang-engineering.com, thierry.reding@gmail.com, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-tegra@vger.kernel.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Let the DMA engine core do the device node validation instead of drivers.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 drivers/dma/sh/rcar-dmac.c |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/dma/sh/rcar-dmac.c b/drivers/dma/sh/rcar-dmac.c
index 2b4f256..9474d5b 100644
--- a/drivers/dma/sh/rcar-dmac.c
+++ b/drivers/dma/sh/rcar-dmac.c
@@ -1632,8 +1632,7 @@ static bool rcar_dmac_chan_filter(struct dma_chan *chan, void *arg)
 	 * Forcing it to call dma_request_channel() and iterate through all
 	 * channels from all controllers is just pointless.
 	 */
-	if (chan->device->device_config != rcar_dmac_device_config ||
-	    dma_spec->np != chan->device->dev->of_node)
+	if (chan->device->device_config != rcar_dmac_device_config)
 		return false;
 
 	return !test_and_set_bit(dma_spec->args[0], dmac->modules);
@@ -1653,7 +1652,8 @@ static struct dma_chan *rcar_dmac_of_xlate(struct of_phandle_args *dma_spec,
 	dma_cap_zero(mask);
 	dma_cap_set(DMA_SLAVE, mask);
 
-	chan = dma_request_channel(mask, rcar_dmac_chan_filter, dma_spec);
+	chan = __dma_request_channel(&mask, rcar_dmac_chan_filter, dma_spec,
+				     ofdma->of_node);
 	if (!chan)
 		return NULL;
 
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
