Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0321D23282
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 13:34:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VZsrjIM/pH2jV8ZB1Db4LD3sNZvmcBR6i5tvahr+aCE=; b=Pb1E/n6Lfasi/TSg1RRr0iOTBI
	9/ZPkqgUFyT+TRI5ey9vp37SL4ZQM5IYkpjyOCB7Sz09EUSm3yZ3VbbOHGGGy3mbiNCloOQzkltkb
	z4kof2JyCzDPAE9WGL7eWiYSWiL4KZCzCZKdoVVu5jBVimdeIttSOYqaCpnD24/lEO4BhtOm/4CfR
	Qd+cRQsYWdF/l6zL75gE8op189sHQCdAVK1Qowm/1i63w0QiHuId+4srf94wAZpYhaA3nM+qnSU5/
	CJpsgTii8nvZ5NWS0vmeatRa/5DcmoZi9dI1FlfgPJSVcpUk/0HpUr7HFeTZ2wVFAjCPHo3/QUsHA
	+E088qQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSgYe-0003FE-0K; Mon, 20 May 2019 11:34:20 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSgXX-00026P-8I
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 11:33:31 +0000
Received: by mail-pl1-x642.google.com with SMTP id p15so6602990pll.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 04:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=kSx/2bQ8k2nUJmyS2liy45fCcO2iYHSDnrOKKw/RGV4=;
 b=cPRtb7tQHJTTiLOHkiEpYP+wKGEqufi5OlZI8LAVDn750p0hkPo7BlZXT75VNfp9dR
 bKCNesFU3UCDsME+gGsOPK0VHvOUsTWH5NPfg+xK8mJwmFd5vbJmaO0EKQMFmNQ+n19H
 U8mqxoNBif5syGeoUe2lEXsWbDC1YB0BzSBgumFCN8STOyMNeJCtTeNLvgnvh10BAtQu
 5J6eaQFuVUuyZhLT2t+Y0NRhAjRTWOVvbNG74UrINXey6BdbxtdfZyTEs6vh0o0X64Ku
 AulkUGud8AZoQWHpwMC3klVwa3PQ8CDJYu9MkPTAavxbcDPzAhTfuFpg/fcSO03u0aXx
 CAKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=kSx/2bQ8k2nUJmyS2liy45fCcO2iYHSDnrOKKw/RGV4=;
 b=aj0nXr0hoJ/v/SjgUdNRdHtrhjiPNSxxcwqUdGui55Axl4nYpfxGqfgcOCg3etunlA
 nJJ18NgvxtkJ+RfL/DhV1k0yel5fx+1xxnT+vA6B3YNTjX6/64KxSDBOykNUJHOUsB5s
 i8xvjy7Ing/RaUyHeWkHuzRGZvA91ASPArAOzXuW/AZDdYgotbVLffv7tzajQwX8bxDd
 sOXwPQAliT7GxM7mUN5h5LnuplwGMN53P7yTidcd3sFZgqEiWquz7FqJFtphuaDYW8ZF
 F1/lQXFfNEAgXMq1TCuZNIVUkRaPFsm6359j+RbIXEaLk8ttXmFgXh5MUsn57Oh3ez7q
 V5LQ==
X-Gm-Message-State: APjAAAUCON9CaMWb+x+rl5e6EHh9IFJa76HjDLxCdC2zFPG8nQEmEZHW
 nQPgM0KL4uCvnrQmjGL7CgEgrw==
X-Google-Smtp-Source: APXvYqxhkwURFkAYdOsYEFVXpnFbD8H/TQI0K1REXB9rdjkjQNCy7pJURAn59WPfwElP41gCPmfnxw==
X-Received: by 2002:a17:902:18b:: with SMTP id
 b11mr50155937plb.264.1558351990778; 
 Mon, 20 May 2019 04:33:10 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id z124sm21310020pfz.116.2019.05.20.04.33.05
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 04:33:10 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: dan.j.williams@intel.com,
	vkoul@kernel.org
Subject: [PATCH v2 8/8] dmaengine: sh: usb-dmac: Let the core do the device
 node validation
Date: Mon, 20 May 2019 19:32:21 +0800
Message-Id: <0b4418a1891261a6a4f8e8356b68e38f4ed6a1d5.1558351667.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1558351667.git.baolin.wang@linaro.org>
References: <cover.1558351667.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1558351667.git.baolin.wang@linaro.org>
References: <cover.1558351667.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_043312_111566_CF4346B5 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
 drivers/dma/sh/usb-dmac.c |    6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/sh/usb-dmac.c b/drivers/dma/sh/usb-dmac.c
index 59403f6..0afabf3 100644
--- a/drivers/dma/sh/usb-dmac.c
+++ b/drivers/dma/sh/usb-dmac.c
@@ -636,9 +636,6 @@ static bool usb_dmac_chan_filter(struct dma_chan *chan, void *arg)
 	struct usb_dmac_chan *uchan = to_usb_dmac_chan(chan);
 	struct of_phandle_args *dma_spec = arg;
 
-	if (dma_spec->np != chan->device->dev->of_node)
-		return false;
-
 	/* USB-DMAC should be used with fixed usb controller's FIFO */
 	if (uchan->index != dma_spec->args[0])
 		return false;
@@ -659,7 +656,8 @@ static struct dma_chan *usb_dmac_of_xlate(struct of_phandle_args *dma_spec,
 	dma_cap_zero(mask);
 	dma_cap_set(DMA_SLAVE, mask);
 
-	chan = dma_request_channel(mask, usb_dmac_chan_filter, dma_spec);
+	chan = __dma_request_channel(&mask, usb_dmac_chan_filter, dma_spec,
+				     ofdma->of_node);
 	if (!chan)
 		return NULL;
 
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
