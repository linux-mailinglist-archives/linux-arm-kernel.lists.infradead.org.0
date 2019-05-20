Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 947512327E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 13:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eelW2Ert+ym9W57rPGyLEc4lghLbfBHI8ASHLK8peNM=; b=t4ZUNLSdbpA5QiqvMn4n+t2KMR
	Wc0COh7Dzu4ld9QdYX3f02Tx8LvBwVilpzv7d2VBQEcdTlDz8y1vSz1QY3kP/wj/h0NwZCOVW6WA6
	YJGE/yG9LkQ+IX7JY1qlAAzgskX3+4u4ilKLfgXfu+xkDia7J/X3lriD7p5TkJEH6pkSdDBIS43UB
	RK/PFReRnCanq3Ui/w0fHOkE1ElLbTmKexxJ/zUpsGH3Yu053zf+nGgUdXmOqmAX05zlFHcBwDX9P
	u3PTrH9EJPBXAXhfwlYIn41UkwtJyyPrH4ynzo6+WInpWed+XsNpiF4MNIQ8GHD5dss3DiSBq5FnU
	1Ci29oGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSgXn-0002Fp-8i; Mon, 20 May 2019 11:33:27 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSgXE-0001fK-7m
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 11:32:56 +0000
Received: by mail-pg1-x541.google.com with SMTP id t187so6652099pgb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 04:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=Cnx84NxIhSp4uZgqi6VSWZYaVNVqt10XSPlG8JL56aM=;
 b=Mc4UZBCTGeP16M5dC8d43FPiSMsrdIIRD0s1wJ3KIvGHw+JOobzUKZHB0Q73iG3BTg
 V1l22QS5KJy5tXZPxHsQ9Mo7fVFBsMD7FRweoPvewbBbo62lTppD8pPJHBkor7ekGe3j
 PPFqi5Wdl4B9MzR3QJGHoKzN9KO9A5aa2u6lsjS6tZ9ohu5PS1AQTwdCEgh1IVHPURc5
 Py3c2rYZyRrff+CtksSQP1kLT7g3w0aSUXqFbK2960r8YJHBAG0F6FtkWv/SXPaG5Gq8
 XKa7McsxohMfNawU7tUAhFpQfWCIpWFs89ePwMm5HMMISDMi9KE0isl13qia+OwjzVYJ
 H+fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=Cnx84NxIhSp4uZgqi6VSWZYaVNVqt10XSPlG8JL56aM=;
 b=qWhNtrWJTK3aefko0LluuK0wTPS/a6xXoyhPMswYsVkM9+XSBWwHBLY2YO8Vx7zfPt
 fRN0LUF/tkVBr5QmBfaQ61ZXI7+8JmNpum63Xb2bz/hsdov3YqiZYGpVdrHWypTmJNLM
 j+U+Mb/OBvT6cQa+XS/seN9cqj6fhYOQ3tiOOO5bmNT298EXJ46gHkmzL6tkybQUhDW5
 zx+kIxcMX2euHxOEhZrwBI51CUaI1vk3HbJZZsm2vKuUZ3jw5I6zo+fH3biNJGSats7e
 Z8UmeJVs4/BbLcd5o4iZIIHIvlY4Oxg6sgdOn37Aqud/u2vMX44PS6jdJezL6gfUL4z9
 xa9g==
X-Gm-Message-State: APjAAAVTpx+mRt2I+GLT2q778tPe8HJCon5LxzwHyePpnYuzXqCXlgXh
 WlSIyP1czsMmsebGFzm+kohxig==
X-Google-Smtp-Source: APXvYqwEGtRYs32a6qVJ0IDeIICdhKvEjXa4z1alPx313+QuihcD0g4n814DyWumr6jWnBbSFvUJJg==
X-Received: by 2002:a65:42cd:: with SMTP id l13mr21734824pgp.72.1558351971654; 
 Mon, 20 May 2019 04:32:51 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id z124sm21310020pfz.116.2019.05.20.04.32.47
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 04:32:51 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: dan.j.williams@intel.com,
	vkoul@kernel.org
Subject: [PATCH v2 4/8] dmaengine: dma-jz4780: Let the core do the device node
 validation
Date: Mon, 20 May 2019 19:32:17 +0800
Message-Id: <231f063f65d0f4ca9a69edfb267fb82500954415.1558351667.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1558351667.git.baolin.wang@linaro.org>
References: <cover.1558351667.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1558351667.git.baolin.wang@linaro.org>
References: <cover.1558351667.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_043252_686529_6ABCF5C1 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
 drivers/dma/dma-jz4780.c |    7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/dma/dma-jz4780.c b/drivers/dma/dma-jz4780.c
index 9ce0a38..7e1d381 100644
--- a/drivers/dma/dma-jz4780.c
+++ b/drivers/dma/dma-jz4780.c
@@ -160,7 +160,6 @@ struct jz4780_dma_dev {
 };
 
 struct jz4780_dma_filter_data {
-	struct device_node *of_node;
 	uint32_t transfer_type;
 	int channel;
 };
@@ -765,8 +764,6 @@ static bool jz4780_dma_filter_fn(struct dma_chan *chan, void *param)
 	struct jz4780_dma_dev *jzdma = jz4780_dma_chan_parent(jzchan);
 	struct jz4780_dma_filter_data *data = param;
 
-	if (jzdma->dma_device.dev->of_node != data->of_node)
-		return false;
 
 	if (data->channel > -1) {
 		if (data->channel != jzchan->id)
@@ -790,7 +787,6 @@ static struct dma_chan *jz4780_of_dma_xlate(struct of_phandle_args *dma_spec,
 	if (dma_spec->args_count != 2)
 		return NULL;
 
-	data.of_node = ofdma->of_node;
 	data.transfer_type = dma_spec->args[0];
 	data.channel = dma_spec->args[1];
 
@@ -815,7 +811,8 @@ static struct dma_chan *jz4780_of_dma_xlate(struct of_phandle_args *dma_spec,
 		return dma_get_slave_channel(
 			&jzdma->chan[data.channel].vchan.chan);
 	} else {
-		return dma_request_channel(mask, jz4780_dma_filter_fn, &data);
+		return __dma_request_channel(&mask, jz4780_dma_filter_fn, &data,
+					     ofdma->of_node);
 	}
 }
 
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
