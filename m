Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C28215D36
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 08:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=F2yerNPAtm9XyPrdFzhOjhMiQsy28DfEoNNJiINWh84=; b=mcppkGm+P0dHa3XRVmvmePkJYF
	ywL6H6i7+bOAAkWIXLtR9hbfEvj78m7pnZuGSNn0urqAonPygzqQw5Zksn/FLtEtE5yXJuYn0vQM/
	Oxy7Hfg5bRZYeZ6gGOwbVD7tIx+ZgBNgNHYILD5oPweVEVYieofnqXImurXQdFMkHmV/oWBci9dVJ
	By1AxCQGgowz5vasu4mWkNJI4qm0xQkdt117iwV3z73WSTq6L3e3wW3vHNaDr9GjkL7zJmteFeSv/
	GhJejMY7kRmhRKOq5+Cuc58RNvrKPmtzW+Udfn3iAu6bC/lQjp7L9tZlJYVrMJRKLqa3jZ1ENDuEF
	fVrC/U7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNtJs-0007It-9Z; Tue, 07 May 2019 06:11:16 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtJB-0006YB-V8
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 06:10:41 +0000
Received: by mail-pg1-x543.google.com with SMTP id z16so7718515pgv.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 23:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=SIcVyU2wUJ5jnbmBXFPsqnRHsqNC2CkR/vX822PSMOY=;
 b=uzv8EVMR3eIzQHGMxtSinQ33vYdmES17QK9vAF+is0gNJPHupQ6KVAf610h40rDqTl
 mKBgUTk+Ut4Bj4VyJSGfixnwuP75KxLZ3rR/dD2erhsgubg4C/SDOyF3lwNeXv/ZK/Uz
 vqb4YQm36emaqBt81ttPnG4INyLLePjLgEmt1v999Hrge64h4BYHk6qG/Mm0fiZHHeZ6
 +SOakh5BXaVbgLcpXRF457kFitWiq+XbN65xMG0L42NrHyiIk6ZXZ65Ekx2ps3k33kBs
 wFL151kgbUjIgQ1PyFgu6oGhvnecnO7t3n2+7Rq3rM0GwUhfQR9XNOT1c9vmI362POjI
 D3/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=SIcVyU2wUJ5jnbmBXFPsqnRHsqNC2CkR/vX822PSMOY=;
 b=XhATrC+gRsqSe76jzyfMtYEdxu/Mkh+dQ5Ng4O7fZ7AB0noLGsokTBn6cByy8Eaw2M
 6GbqUCJ28y2+c18J1P0IMBpzpe44SYECgL62MxeWp3fgMuWOjQV4E1jNfvX1Qi4N0rOx
 uBiXhievIe0R6IJWeKTyrqtsAMNnbXYjkJ/oLKA1GnIY00+QJdZOB6ykhv3haqpqe+KO
 8T3Mgy5qEMFmGj8iejzFcUdwRuedJ3QxN+t55Ijm7oso8QDpwsaIqmvZ7IsXv6111Aus
 wXvbSF9nW6REbMbFGHxacGHenQgArmnqPSwdTX7to06spwjhs1IcYkuzMBsqA1PnT8ML
 nCow==
X-Gm-Message-State: APjAAAXTDI5k3+dUamq6TTkf0zqwk7BuYAA2g2rLtWHMAUY9E1R8PPR0
 eArCrUhZdw5GUTv4Iljz1dbKBA==
X-Google-Smtp-Source: APXvYqxJz/xZPJSmy2/wQh18OVGnuvH8hrc1Fkm+22VpZKanUEMOAKKkcCUjI1avaibd+/UwNwKGfw==
X-Received: by 2002:aa7:98c6:: with SMTP id e6mr226683pfm.191.1557209433209;
 Mon, 06 May 2019 23:10:33 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id e184sm30786325pfc.102.2019.05.06.23.10.28
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 06 May 2019 23:10:32 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: dan.j.williams@intel.com,
	vkoul@kernel.org
Subject: [PATCH 5/8] dmaengine: mmp_tdma: Let the core do the device node
 validation
Date: Tue,  7 May 2019 14:09:42 +0800
Message-Id: <1c420603d220b1ab28f7d98165bb37feaf706f61.1557206859.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1557206859.git.baolin.wang@linaro.org>
References: <cover.1557206859.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1557206859.git.baolin.wang@linaro.org>
References: <cover.1557206859.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_231034_143770_910590F9 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 drivers/dma/mmp_tdma.c |   10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/dma/mmp_tdma.c b/drivers/dma/mmp_tdma.c
index 0c56faa0..e76858b 100644
--- a/drivers/dma/mmp_tdma.c
+++ b/drivers/dma/mmp_tdma.c
@@ -586,18 +586,12 @@ static int mmp_tdma_chan_init(struct mmp_tdma_device *tdev,
 }
 
 struct mmp_tdma_filter_param {
-	struct device_node *of_node;
 	unsigned int chan_id;
 };
 
 static bool mmp_tdma_filter_fn(struct dma_chan *chan, void *fn_param)
 {
 	struct mmp_tdma_filter_param *param = fn_param;
-	struct mmp_tdma_chan *tdmac = to_mmp_tdma_chan(chan);
-	struct dma_device *pdma_device = tdmac->chan.device;
-
-	if (pdma_device->dev->of_node != param->of_node)
-		return false;
 
 	if (chan->chan_id != param->chan_id)
 		return false;
@@ -615,13 +609,13 @@ static struct dma_chan *mmp_tdma_xlate(struct of_phandle_args *dma_spec,
 	if (dma_spec->args_count != 1)
 		return NULL;
 
-	param.of_node = ofdma->of_node;
 	param.chan_id = dma_spec->args[0];
 
 	if (param.chan_id >= TDMA_CHANNEL_NUM)
 		return NULL;
 
-	return dma_request_channel(mask, mmp_tdma_filter_fn, &param);
+	return __dma_request_channel(&mask, mmp_tdma_filter_fn, &param,
+				     ofdma->of_node);
 }
 
 static const struct of_device_id mmp_tdma_dt_ids[] = {
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
