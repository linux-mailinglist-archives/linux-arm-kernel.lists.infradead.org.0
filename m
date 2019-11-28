Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1DC10CD42
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 17:52:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Xb/TUuWrc2LDwnWgyzLNOh1BwLSEzRvbC9LvWJfau+Q=; b=lYuAbfklTwkHLFGudi7jsoMxce
	HG0YgP843vgdXoGCQ32JjVq6U3qupNdhazfBBYnmzyMQyLoemlGb1+hG6+SdEPs+84spCG5Ti0yVE
	CSbLq/XSbH0BXuWrxFyLBnnTW/RiyK0LM6cB2jRXqVixI67XbT6rEYvkhQOS3sSR1iHNfV3M7R3iy
	oy4UAsjTd34VBqxFsBPupGPGGH4L/j4YqAhUQs2uKv8VgA0OrsoG9Grb1PpLM5LtW/Nb90+UeBKs6
	cIFOm20nKSE/pMIId/nA+KZaBeQvTuotRht+f09sNAkkBBAapi6/En0xsCAs7fFji5002JPK9kl+z
	nPcSZe/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaN1k-00063O-N9; Thu, 28 Nov 2019 16:52:24 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMza-000476-Jp
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 16:50:15 +0000
Received: by mail-pg1-x544.google.com with SMTP id l24so4660437pgk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 08:50:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xgizS2ja8jWfUkSpIbZzCHqhCFBCkrH3reNwP/GggE4=;
 b=JPbZoZDaha09542iyB4HlV5SyQ6DTAJpv5Q3TJmdEp9BmETD/i1XTVIb+ywiCIN1nv
 iFSi5EaDWDVgT3cZefU2WyI90kZhp90IrppihlsCrB90kyAgihmTrdzb79Q6Cs6n2Zt4
 64131Dc5KvTzv5O5U/OhW/L8pOVodKVM/9rKcPwZIemHMV2F+g1PsoWpF272QtSYPVIA
 S1f4qXA2nSYcxs3e955yT1TqqkBPAWHx5BA46tf7JYW9Nbl6jMOgMVxzalEVIIiT57Gt
 cCnrHd+k9IRVvJnBIPFwv46A1hORlLXKt+xT0ppDT3MlKk1FeZJ12TMXbtME2jcSQW+w
 CUBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xgizS2ja8jWfUkSpIbZzCHqhCFBCkrH3reNwP/GggE4=;
 b=EJw6UHSGgRckej599n/3LO5KcxQFC05L9kcH3KQPTnOCShp9xmS3vn3lB9TpEjSEtR
 JmkkVbuGvEPQpr9I2tU37DgC7JtnhPM785DC0lY+SzF43T57130WME2gbo/Rf7wubvae
 JeIt+z6/6XPMr7WD7d9RyHQOPuSFVnDSpwqW6vm4K33GZznu5MEHcMHpL2Qr/JsuaBg/
 WAbH84voOMpO3mPhNHF6A3C2aQtsWTwYCrUOmX9JZG1xatRinclwvn8ow8flCTHam/C3
 n3/UO2uNqct24+ia8pFV1J4E2YMkbjI05eu6uSgbIDQvZHUTr1CIS6IaABDptjlxefcz
 Qv+A==
X-Gm-Message-State: APjAAAUHWXQYD1imseHBCRjRtjhGHqIGIRwiW7s4yMI31Iym7SyWKjv4
 s2gp2MTx/Ub0RHflTi3wcnfKew==
X-Google-Smtp-Source: APXvYqyrDO9jQHqib3oqT9BAbQOeWFk5IjUh08VvarLRNXbKvMR2SUbyJX7YPgSzvjWKOAAcE8nJGw==
X-Received: by 2002:a62:888c:: with SMTP id
 l134mr36436770pfd.216.1574959807222; 
 Thu, 28 Nov 2019 08:50:07 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a15sm2450343pfh.169.2019.11.28.08.50.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 08:50:06 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19][PATCH 03/17] media: stm32-dcmi: fix DMA corruption when
 stopping streaming
Date: Thu, 28 Nov 2019 09:49:48 -0700
Message-Id: <20191128165002.6234-4-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191128165002.6234-1-mathieu.poirier@linaro.org>
References: <20191128165002.6234-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_085010_785937_E6CEF41C 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: stable <stable@vger.kernel.org> # 4.19
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
