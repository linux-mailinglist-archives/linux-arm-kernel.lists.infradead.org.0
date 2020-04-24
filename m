Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8641B80A7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 22:27:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Pr9vmY8Er8BmwJz9N+x/pNfW3WRLfon/iTzgiaeWPc=; b=VcTQyqXakecI09
	hUAXRYpvznOpAxY7uurbjsLTFwp/7tW/HOaz2lR5b78EgRMDa+QLcrYMogBZuzbQSHN6Qrh0ep4mO
	Y72COPvjvPzDknC4DNSXgF4DWrUz3BUJ1NTs4SVFNck/iWYfak0mlwIOmFAe1cIRZ7lo0+vB8Is3/
	KpQCHK1/1WvU3lh+bNr/eh1soV5n3GAJx5DOnyTwQwaD1kyLdjNrSJH969TNJvZ8LP74kRygdvPux
	ppahwJShMkmII8l8GxdvXWdbFNesHxT/QlqR54afxRP9fumgrg5KdlfjDjNolwyQ85M46IKhkbCrq
	+fHLvCfM/H24M2jLiUkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS4uf-0005wk-9q; Fri, 24 Apr 2020 20:27:05 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS4sp-0004eG-IL
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:25:16 +0000
Received: by mail-pj1-x1041.google.com with SMTP id 7so4968708pjo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 13:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xbW7QKSbfjGivmoYcupmOInELZblEqFAL+Y8ISSJeX8=;
 b=zhJLZdm4i9zHW9J6fATQir/D5Ai12hcl4TYtW02jd8SpeKDblvWb5CS/Ycwq823GT1
 cLy6r19Jj0fGjZ9X4GPUilij4LfV9mraQQx/ZkYxoYF+9TnPfcwFMCs3Ok0yJjDPMyZK
 /IUqfRbNNrCDFSjFouVBcaotokUvWFxq7ZRixSFaL14ce03oFMMOXh0Tfunkoyxhqxq/
 pWpZufvPHGXIOvQXjWIj2X4KB5dlpQ2zn2/pRhzTYkUmnTtkeemdkS+/9COOjVIYV9gz
 kuDOF3IZunVa6102XlelZsHXZdFGhmZ5wD2ZjiLf6bUdabO103cCnAo3NYVP9EcuB7y6
 jAZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xbW7QKSbfjGivmoYcupmOInELZblEqFAL+Y8ISSJeX8=;
 b=OAtad+Mne50hs9txblXJ817M20/iBVvEeWasF+zh1GL/aY3aWyFwYo9NYaxENIcrsa
 OeSom9MdGpuQSte8ENMmHR4q72cYq+q+8xV+/J04CDw7GZPDGlJYNAP7vciuQHdnWB8S
 ZM0dkvh+pyc2TrNHhpK6DKuirVGyk6tdhtxL3K2oPGJ7+NtIWAjDnDUq5THY7k0KTm58
 gy/01WNfRRAkWptg0F+WOamRVK+wygknlDcWha12mZmJ2DD+Rzi52CIyzfbqZM65BV//
 RX5/g8TgNyK4HNjksAPjAgrcvkH1vo9Tht9VXh8E4AT9nkeQwMur9Kt/4kikeNd6ISLh
 2Uxg==
X-Gm-Message-State: AGi0Pua9ulG2KJf4L931IR+xQLXOLU4+mCCZMQwWV/veHPFZyi9lvgEb
 tdsDgm/bhRFIC34q/wlLC5GkOg==
X-Google-Smtp-Source: APiQypIIwwTi5PPDpuYGABCuyrPNQaN6gPmxklOQGbbWKG9LDZvIkkRNI7NFznTs3Om6Zw5dl3bZNA==
X-Received: by 2002:a17:90a:a796:: with SMTP id
 f22mr2222697pjq.42.1587759910724; 
 Fri, 24 Apr 2020 13:25:10 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c1sm6553245pfc.94.2020.04.24.13.25.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 13:25:10 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: bjorn.andersson@linaro.org, ohad@wizery.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v2 03/12] remoteproc: stm32: Decouple rproc from DT parsing
Date: Fri, 24 Apr 2020 14:24:56 -0600
Message-Id: <20200424202505.29562-4-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424202505.29562-1-mathieu.poirier@linaro.org>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_132512_548580_AFEC3FB7 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: loic.pallardy@st.com, arnaud.pouliquen@st.com,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove the remote processor from the process of parsing the device tree
since (1) there is no correlation between them and (2) to use the
information that was gathered to make a decision on whether to
synchronise with the M4 or not.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/remoteproc/stm32_rproc.c | 25 ++++++++++++++-----------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index 1ac90adba9b1..57a426ea620b 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -538,12 +538,11 @@ static int stm32_rproc_get_syscon(struct device_node *np, const char *prop,
 	return err;
 }
 
-static int stm32_rproc_parse_dt(struct platform_device *pdev)
+static int stm32_rproc_parse_dt(struct platform_device *pdev,
+				struct stm32_rproc *ddata, bool *auto_boot)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
-	struct rproc *rproc = platform_get_drvdata(pdev);
-	struct stm32_rproc *ddata = rproc->priv;
 	struct stm32_syscon tz;
 	unsigned int tzen;
 	int err, irq;
@@ -589,7 +588,7 @@ static int stm32_rproc_parse_dt(struct platform_device *pdev)
 
 	err = regmap_read(tz.map, tz.reg, &tzen);
 	if (err) {
-		dev_err(&rproc->dev, "failed to read tzen\n");
+		dev_err(dev, "failed to read tzen\n");
 		return err;
 	}
 	ddata->secured_soc = tzen & tz.mask;
@@ -605,7 +604,7 @@ static int stm32_rproc_parse_dt(struct platform_device *pdev)
 	if (err)
 		dev_info(dev, "failed to get pdds\n");
 
-	rproc->auto_boot = of_property_read_bool(np, "st,auto-boot");
+	*auto_boot = of_property_read_bool(np, "st,auto-boot");
 
 	return stm32_rproc_of_memory_translations(pdev, ddata);
 }
@@ -616,6 +615,7 @@ static int stm32_rproc_probe(struct platform_device *pdev)
 	struct stm32_rproc *ddata;
 	struct device_node *np = dev->of_node;
 	struct rproc *rproc;
+	bool auto_boot = false;
 	int ret;
 
 	ret = dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(32));
@@ -626,9 +626,16 @@ static int stm32_rproc_probe(struct platform_device *pdev)
 	if (!rproc)
 		return -ENOMEM;
 
+	ddata = rproc->priv;
+
 	rproc_coredump_set_elf_info(rproc, ELFCLASS32, EM_NONE);
+
+	ret = stm32_rproc_parse_dt(pdev, ddata, &auto_boot);
+	if (ret)
+		goto free_rproc;
+
+	rproc->auto_boot = auto_boot;
 	rproc->has_iommu = false;
-	ddata = rproc->priv;
 	ddata->workqueue = create_workqueue(dev_name(dev));
 	if (!ddata->workqueue) {
 		dev_err(dev, "cannot create workqueue\n");
@@ -638,13 +645,9 @@ static int stm32_rproc_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, rproc);
 
-	ret = stm32_rproc_parse_dt(pdev);
-	if (ret)
-		goto free_wkq;
-
 	ret = stm32_rproc_request_mbox(rproc);
 	if (ret)
-		goto free_rproc;
+		goto free_wkq;
 
 	ret = rproc_add(rproc);
 	if (ret)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
