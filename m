Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80904FE807
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 23:35:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3M3/VCrxR+Bs+4Pa2Iy1ufWdDzRNnJXYjUp0nCgp8lo=; b=ilGv7mr4J59ivEYvvjkD3qNW/n
	Xis3InTYpAle2Q+9FhXxHciJ93j9tDuzYTG6r6IOcC8tFjOhqzXBarMNzDstrsn6hPTk76MwZ2VyE
	ngq0pAy8zL3p1q3/5VlzdkK09npOu1xZAKHjvilRmI/5Ej+Jb3BxA0a4eOaJ76FPMRtK7s/kYrnz9
	d4Nx5C6amwGYD0X6tnNyabx//2bqZjIDhGy7uXDSz/y7mVmhDk6xovidqzEs7hdJVA4mOWT7qLy1Z
	fo+yUVoDGcD8Hk8ILGZY+++WcmTEYZnGW4r8SjGuGkVdIgdUU7ITEx4G16AHidM4nqNhGqwb6cTFi
	b7kMRyiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVkBn-0000vu-Pd; Fri, 15 Nov 2019 22:35:39 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVkAF-00077D-Ai
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 22:34:05 +0000
Received: by mail-pl1-x642.google.com with SMTP id s10so5638389plp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 14:34:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=CfdEn/VOoyCYVCEhBtRjG/LrGez0kXMzdfAuimisWqo=;
 b=BmJCSnphEJxB/SJaEZ55rWx8UacuDIrgu3GGuKP9hxL0m0pDhN7q9J+QXmeNHU3a9S
 KcLpI35v0bQ7VN2vpFI89zIEmufoawp/UX+aj0AEhPZY1Ca6qiVHFhjEj/1Q6qpfeLYh
 gjoYQxSbf630RaEl3OM/6BIGdyMcJhAgPgaITE7CHkkMSKWyVALpX3aHE/rIyZ+534CU
 kKKAtB/FXySeSR4aPKIGgqnJPLZz5ZmoX7PLhvXCyZfRhjY/WwB2qknR22z51CDufEry
 KwJioKJ8hKDwJTr64gk0X3402S8pXsOhEqAEl6DeZUZcNxfDi9jgwWcFrfWjMc4Hltu1
 UKjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=CfdEn/VOoyCYVCEhBtRjG/LrGez0kXMzdfAuimisWqo=;
 b=dCCR3+P8oLkd0LXgMpEhYdIuS426B1JkjyRicy34hkg8fiLs4F4FbAhwHqTE6luWTb
 rQ2bY3MEq/C09fQcHW62V5XYZmQ5MfMp9qO8U71ZPq7P1pSQKTL73ouy6/DFiEO7nk3a
 13QBlOltgCdb2RqNlkQHd/vaB1dzprEtAU1t/TvWyaINOgVYPC9FbLrvGL8CIlYswRSk
 g+Wc2LsqYLegeqKCv0PRqU8wxAOIPThXfSjnuZcc+vDv8kCX3oik3unaK2/N9N2dQDZv
 zZOgCWWgXEEQqhCswilwbrnSCEsGMWIn6xans3WA1oATAJzATOna8Q/j26ok/q53KTps
 GGRg==
X-Gm-Message-State: APjAAAUnIivaciqwfqcBrCdGsMpifrj0+o6crCZmHWPL9Fkp1M1fGx/Q
 6dkl0vwBAqC86voFNlDMRXv5Gg==
X-Google-Smtp-Source: APXvYqxV4R6yv1yepbFn8bEoumDLXUwUoXHiD99iisQY+WW8LBhAQo0WSyIWj7l+f8Q8W16cGA2Gsg==
X-Received: by 2002:a17:90a:ca04:: with SMTP id
 x4mr23087371pjt.103.1573857241601; 
 Fri, 15 Nov 2019 14:34:01 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m15sm11699724pfh.19.2019.11.15.14.34.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 14:34:01 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19+][PATCH 05/20] media: stm32-dcmi: fix DMA corruption
 when stopping streaming
Date: Fri, 15 Nov 2019 15:33:41 -0700
Message-Id: <20191115223356.27675-5-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115223356.27675-1-mathieu.poirier@linaro.org>
References: <20191115223356.27675-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_143403_388562_07CBC837 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hugues Fruchet <hugues.fruchet@st.com>

commit b3ce6f6ff3c260ee53b0f2236e5fd950d46957da upstream

Avoid call of dmaengine_terminate_all() between
dmaengine_prep_slave_single() and dmaengine_submit() by locking
the whole DMA submission sequence.

Signed-off-by: Hugues Fruchet <hugues.fruchet@st.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Cc: stable <stable@vger.kernel.org> # 4.19+
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/media/platform/stm32/stm32-dcmi.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
index 1d9c028e52cb..d86944109cbf 100644
--- a/drivers/media/platform/stm32/stm32-dcmi.c
+++ b/drivers/media/platform/stm32/stm32-dcmi.c
@@ -164,6 +164,9 @@ struct stm32_dcmi {
 	int				errors_count;
 	int				overrun_count;
 	int				buffers_count;
+
+	/* Ensure DMA operations atomicity */
+	struct mutex			dma_lock;
 };
 
 static inline struct stm32_dcmi *notifier_to_dcmi(struct v4l2_async_notifier *n)
@@ -314,6 +317,13 @@ static int dcmi_start_dma(struct stm32_dcmi *dcmi,
 		return ret;
 	}
 
+	/*
+	 * Avoid call of dmaengine_terminate_all() between
+	 * dmaengine_prep_slave_single() and dmaengine_submit()
+	 * by locking the whole DMA submission sequence
+	 */
+	mutex_lock(&dcmi->dma_lock);
+
 	/* Prepare a DMA transaction */
 	desc = dmaengine_prep_slave_single(dcmi->dma_chan, buf->paddr,
 					   buf->size,
@@ -322,6 +332,7 @@ static int dcmi_start_dma(struct stm32_dcmi *dcmi,
 	if (!desc) {
 		dev_err(dcmi->dev, "%s: DMA dmaengine_prep_slave_single failed for buffer phy=%pad size=%zu\n",
 			__func__, &buf->paddr, buf->size);
+		mutex_unlock(&dcmi->dma_lock);
 		return -EINVAL;
 	}
 
@@ -333,9 +344,12 @@ static int dcmi_start_dma(struct stm32_dcmi *dcmi,
 	dcmi->dma_cookie = dmaengine_submit(desc);
 	if (dma_submit_error(dcmi->dma_cookie)) {
 		dev_err(dcmi->dev, "%s: DMA submission failed\n", __func__);
+		mutex_unlock(&dcmi->dma_lock);
 		return -ENXIO;
 	}
 
+	mutex_unlock(&dcmi->dma_lock);
+
 	dma_async_issue_pending(dcmi->dma_chan);
 
 	return 0;
@@ -717,7 +731,9 @@ static void dcmi_stop_streaming(struct vb2_queue *vq)
 	spin_unlock_irq(&dcmi->irqlock);
 
 	/* Stop all pending DMA operations */
+	mutex_lock(&dcmi->dma_lock);
 	dmaengine_terminate_all(dcmi->dma_chan);
+	mutex_unlock(&dcmi->dma_lock);
 
 	pm_runtime_put(dcmi->dev);
 
@@ -1719,6 +1735,7 @@ static int dcmi_probe(struct platform_device *pdev)
 
 	spin_lock_init(&dcmi->irqlock);
 	mutex_init(&dcmi->lock);
+	mutex_init(&dcmi->dma_lock);
 	init_completion(&dcmi->complete);
 	INIT_LIST_HEAD(&dcmi->buffers);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
