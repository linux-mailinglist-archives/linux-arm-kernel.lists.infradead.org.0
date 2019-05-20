Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7942327F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 13:33:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=F2yerNPAtm9XyPrdFzhOjhMiQsy28DfEoNNJiINWh84=; b=RZz4DHm3Mg+Tpk3q4nHlJmAspM
	r323fMP65Mvln1rbY2XNfXxd0jqoVHpPuHzW57dRJb2m/w8ilzCFzbL7UbNGOMZrcH5PmrSJhNt6s
	J6wVXZv9f4p6SuPgB1WxsIhylC99rbJBid8Bi+V0e1jrwytz5/G908U/0icYhIjVtkqXAAqz+2VqB
	V2U+wSZQypJAcekGdOvIgnFY1TD83KTs/jhowyXE6aEBnjO8rK2/5vMU8i2LfGop8ECQeSxbM1l3o
	F0/acnzIs9Vz/vbhVuwHfx05MEr0AizMtyCLmMXHY5bGzmlKL+jT4a8wrTuQ4u/00K6fBmbWyGeaW
	MPE8dzUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSgY9-0002c5-Fg; Mon, 20 May 2019 11:33:49 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSgXJ-0001lQ-5S
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 11:32:58 +0000
Received: by mail-pf1-x442.google.com with SMTP id y11so7074020pfm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 04:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=SIcVyU2wUJ5jnbmBXFPsqnRHsqNC2CkR/vX822PSMOY=;
 b=QKc8XOBsWShq6QEmKaBcAza24sj5L89yQgva5BBJBD15azjrDgyggyl2Y6xH7l9m0+
 qnbIVd8x46sGrGKbAFeOh9JcMuN8/8jHVUwKDDhLh5QIfnAQQVJcZo5GHolCqHVWUW1O
 HOOJE3BxF5szua4H8FJtxAzbduLES4VIQYRkDnjzWncNLnDgwlxQgwChnpNXpKFovDT6
 4ZR45hFmVZ3QeHbNTfQ+mYMUwLMzZPT9tDEZSw9OLO4EKIVIp293+huklSqG+P9pT0sK
 JqjJIHo8V9bygr+sN87cZAnBBnSAcX+nCot+RqBM0luM5W3PidNFeReMZjG/yi3x4T1B
 DwzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=SIcVyU2wUJ5jnbmBXFPsqnRHsqNC2CkR/vX822PSMOY=;
 b=t36TLCIJMUqEkOlsWy/Si7Ua8542mK8R/m6lx4sFULFcDKT6JP6HezLnDptrZVfJh/
 dSWFvs1D1QEXio+tQWmHBNsOi8I5srfZ1aZqiw5V3erGJGxmju4kJikPTAPZilr9gYM/
 Zd7/Ve8lcA4TkwoHqG+iUWlI5iCV9SWt1okmnudCXgQa7bexJljceNtvb3N2x6I/s0fX
 WtAWoDmf08m3QbGb+9dJT8y858yGCr1uTWs89vUDPOikTn6z11d8xvCOIaxf9M9g85sO
 wrpuc62Rzlk/mdPQkipiXQUxt+6XW3p/lkDlqgjV/kcrmfMH4Q1TfDW6wM8qydqhpDwe
 zTAQ==
X-Gm-Message-State: APjAAAXnSWcvWljREzKQpAZu9Vdbgc+VXbXxGlBl8ufhURU1QzksH9Oj
 DA44zMRF2Ep5Nm3Gzca/hwOY0A==
X-Google-Smtp-Source: APXvYqxLeHaPHSHfiQmInEnHejopO5Ea8Zrwi3xZ14RXUo26VmHyfg5o1zIlWo3HHOh+5pmpHodGlw==
X-Received: by 2002:a63:184:: with SMTP id 126mr48415643pgb.420.1558351976125; 
 Mon, 20 May 2019 04:32:56 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id z124sm21310020pfz.116.2019.05.20.04.32.51
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 04:32:55 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: dan.j.williams@intel.com,
	vkoul@kernel.org
Subject: [PATCH v2 5/8] dmaengine: mmp_tdma: Let the core do the device node
 validation
Date: Mon, 20 May 2019 19:32:18 +0800
Message-Id: <5600ce71701aac33035d78bf038d97ca331bf18b.1558351667.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1558351667.git.baolin.wang@linaro.org>
References: <cover.1558351667.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1558351667.git.baolin.wang@linaro.org>
References: <cover.1558351667.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_043257_258654_98D0AB03 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: jroedel@suse.de, vincent.guittot@linaro.org, dmaengine@vger.kernel.org,
 baolin.wang@linaro.org, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
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
