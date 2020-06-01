Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 062741EA8D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 19:57:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+52HM2CznYxXLLgH6wB7a9aApPQunp+z8NqqbM6/nx8=; b=oNiOcWCFteWT30
	gRJ0cdwzJvdnrCaFPA0cyQcaB24pVmfezHMBOnvqcU8LkPddNMBy1h8A6OmZAyXUWlT0bxjy6Fn6x
	HaP/7PJYVPxk89IhqWmEA8yipbiFd907LvKT6775gPTNUsTQSHxvrcrPGDMgrz/RLL4lOJtSqhq2e
	+lIstBuWJAyczutWdjt/yRVGUp7sgvz1QmvA34SLlW2QZsE7Y/Ss5AKYQU1v+S8/+eyKfk71FvcA9
	zINrefpErhCmfhvE4jLQjWUUIUBSkgBpB1X0n2AjFjCkvuJkgO97La9Ixc1GnGpG1tzEZzHATI4m0
	DiMCijD1mkZTIipZ3iMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfogw-000629-CM; Mon, 01 Jun 2020 17:57:42 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfofL-0004X2-FH
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 17:56:05 +0000
Received: by mail-pj1-x1043.google.com with SMTP id nm22so147175pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 10:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UjRIi2EJxbL5MBHfOKyrAGQUtxoKwiBe/CM48DHAMvM=;
 b=XtiuiNP724RWlnK84qm9/l1Ohi6G22E5lgTFSt4VRQFtx4jQQi5z8CziOfBSHWV7ae
 X7tjiaz1jgwd13ysS5MS2pOV7lNtEofx5PURxUVko8WUZzwtgojiMJT6CnqCYUYM+b3z
 unMjjSsTMU6AOj8+YcFmkpy57FoXzTwuEgaIQHmPGmq3ooZNZPmuSSzOwaJnOQCXCLV1
 w9c2kcoXlePiTbsAx3Kwdm8btVOuETPx9FFjf9T8hvEgrrHFLmtS59XaQCC1h+d98LgV
 9OZkPnhaiseYjnLZt/GGkIZMAUOzyumOlm595fNYngpxtwk2K1tZJ0qCyzunV9fn9Nl9
 m8kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UjRIi2EJxbL5MBHfOKyrAGQUtxoKwiBe/CM48DHAMvM=;
 b=GbKgcBvqWPg/jM2+26yDPa2mbXQZ+1zLQ+VhSKGjtw+Rn3KnldwCp8myvfV2O4Mwfr
 VsBiLUtCTSQwxO3HYRDOqx2nTNqs6Hpn5gIVJDWFjQseakOVzrtLoYhKVji52zkCyeIR
 v7838j342yiEZ1QNaJKm6FMORZQ5ZX/QR/7JznkPJT3hE/yv9baWrkCzsPTY34mNPuSS
 uE9f8/vXXgWvzeAZA6Ublcz0EZSZOG6A7PM9WtPG1GJeIa03gdepYDsGLXWd2EGm+aqN
 2ZegaL1IEfJuxbLVHM9uPHzKsPDriJCstApvk/AmCB5nitKnGLh821FOc7pUhMlZLST4
 3BqQ==
X-Gm-Message-State: AOAM5339aLq4Eot/uMLHoGHPlDlMcTtkZN8+ToiJZ8YG+D4llxGHLpV6
 IGaOCtipqZwxoMmGsVhaoGyFBg==
X-Google-Smtp-Source: ABdhPJy5nT7+CY/1aFdlTpP4oiTag5rh3vPEE5Tw3v78GbxlhWqMZA7DHmoAbLMSI6xhzJOof+CiwA==
X-Received: by 2002:a17:902:7e41:: with SMTP id
 a1mr20962820pln.72.1591034162457; 
 Mon, 01 Jun 2020 10:56:02 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id p7sm64771pfq.184.2020.06.01.10.56.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 10:56:02 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: bjorn.andersson@linaro.org, ohad@wizery.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v4 06/11] remoteproc: stm32: Properly set co-processor state
 when attaching
Date: Mon,  1 Jun 2020 11:55:47 -0600
Message-Id: <20200601175552.22286-7-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200601175552.22286-1-mathieu.poirier@linaro.org>
References: <20200601175552.22286-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_105603_523081_1B732D50 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: loic.pallardy@st.com, arnaud.pouliquen@st.com,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce the required mechanic to set the state of the M4 in order
to properly deal with scenarios where the co-processor has been
stated by another entity.

Mainly based on the work published by Arnaud Pouliquen [1].

[1]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=239877

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/remoteproc/stm32_rproc.c | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index 80fd8fd831da..2154c8b90a2a 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -38,6 +38,13 @@
 #define STM32_MBX_VQ1_ID	1
 #define STM32_MBX_SHUTDOWN	"shutdown"
 
+#define M4_STATE_OFF		0
+#define M4_STATE_INI		1
+#define M4_STATE_CRUN		2
+#define M4_STATE_CSTOP		3
+#define M4_STATE_STANDBY	4
+#define M4_STATE_CRASH		5
+
 struct stm32_syscon {
 	struct regmap *map;
 	u32 reg;
@@ -635,12 +642,30 @@ static int stm32_rproc_parse_dt(struct platform_device *pdev,
 	return 0;
 }
 
+static int stm32_rproc_get_m4_status(struct stm32_rproc *ddata,
+				     unsigned int *state)
+{
+	/* See stm32_rproc_parse_dt() */
+	if (!ddata->m4_state.map) {
+		/*
+		 * We couldn't get the coprocessor's state, assume
+		 * it is not running.
+		 */
+		state = M4_STATE_OFF;
+		return 0;
+	}
+
+	return regmap_read(ddata->m4_state.map, ddata->m4_state.reg, state);
+}
+
+
 static int stm32_rproc_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct stm32_rproc *ddata;
 	struct device_node *np = dev->of_node;
 	struct rproc *rproc;
+	unsigned int state;
 	int ret;
 
 	ret = dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(32));
@@ -663,6 +688,13 @@ static int stm32_rproc_probe(struct platform_device *pdev)
 	if (ret)
 		goto free_rproc;
 
+	ret = stm32_rproc_get_m4_status(ddata, &state);
+	if (ret)
+		goto free_rproc;
+
+	if (state == M4_STATE_CRUN)
+		rproc->state = RPROC_DETACHED;
+
 	rproc->has_iommu = false;
 	ddata->workqueue = create_workqueue(dev_name(dev));
 	if (!ddata->workqueue) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
