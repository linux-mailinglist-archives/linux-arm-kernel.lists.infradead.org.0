Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1360BA6A6A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 15:51:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iBinOFVzpVLpQjMFQihnz4YShgsi9g6EpwmncVh/Z7w=; b=JOn
	hiPQ9KFR6cH5EwYkfrvqC1G19LNqow7b6BITbSbXjqii66AxeGJigg5tbw9Me/Kbo+eN23e79bE8o
	Vk2892dHrEXHdKcBJR/1vQM0wq8olODLV+GRMYWEov7+/2jarweMBFKscwV2LpJW2GgIPcpPtVMR/
	r+9an9TpJoBRPLKdXhd+kzFIu4eaUkyZA7h9k9enM2wL4JbTV4opuSf4h3w5EkNe6ofsx/KnUnduA
	5qjRR4+H70sMRSoWEjl3UzRP9RFfS1ZZK141CHEYVxsty/PgTqJAbAu7UIsY6XPOjSGhqDHCmooDr
	D5rC9BDLBycolYPzh/LfvDgt/gxEGHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59DR-0003pp-2f; Tue, 03 Sep 2019 13:51:25 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i59D2-0003m0-8L
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 13:51:01 +0000
Received: by mail-wr1-x441.google.com with SMTP id s18so17635199wrn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 06:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=aOyM32hMSWR1qRMtRvlicJ7f1Z5Z1CPh11gGjkkMTtY=;
 b=SEnDskUHk7MKEpfjF3e0404Vx6RbV3Us34tpICArdFY5gu+Ad0LCkJkr+CWV8p0R7D
 0P9jX11NcJR/cppXMJNg4DK7nZ4wLb6hHDDRE5vjvkM60LHU4/vAUwvFhKtPrHwDZ2ed
 MSUFYAAPsEguqTREsrN9QgP2MicHw3nwD4o0WSQ9aRwsqQbzSqEACxn4LH5D+Vp78CVk
 zGVrqCc8E494TwnqdASdi1A/hNkXjwD2RO4iTxLPHlIZqeX4ExGXV9jYgJPO74QRp3dQ
 cpqFJjn1ShGo0tkINNFZOWHirhB8CwhLCdXMAd2igfWtPSS/kpS4LJwQGOzp98a8ZqJS
 bO/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=aOyM32hMSWR1qRMtRvlicJ7f1Z5Z1CPh11gGjkkMTtY=;
 b=VmzFJMTsGa9Cn3WMHjIALg7U7YHArpdvEfYnPAD55napbVHC5TDGEAStQ+qN0Xcvlp
 8jdTCVrQLkK1AHh5rt8IajYkAXumoy8yBPUeiHg0AagRRKIU6d+zI5h8ouGmAsp6u0r+
 t3kKe8KyJtpYtPHZFUkJWz47dq8vyykFNdqMOvz2aBm7P3gudDp1r/4b1XJ6DCD/6bOf
 mKnKqIyH5eS7jBihH6Qc+ftTYsqrQspeO+Gp3ftG1SydngVep9cV0ZScrDkdnhlErg4w
 F7M52wo5gyEFJ11cWO43CbvQL5FKprblEJZOlvkisW1nab/6GI4rPZGWIzd3KEf9q72w
 t1wQ==
X-Gm-Message-State: APjAAAV4h7EJUO17k9Y2ylXtgKmsuwIZyAXrfttAEwbfDF5BZJhbO639
 kTLfw7n6xfgRcyzJtPKNbZtCYQ==
X-Google-Smtp-Source: APXvYqwcNl225P8oK2CwZViBuGxf6CcNTfssQRviSxt65FF0BMbjIKf7EyVLOO4EJX1BTSuZUsMZLg==
X-Received: by 2002:adf:9e09:: with SMTP id u9mr43453065wre.169.1567518656051; 
 Tue, 03 Sep 2019 06:50:56 -0700 (PDT)
Received: from localhost.localdomain ([95.147.198.93])
 by smtp.gmail.com with ESMTPSA id a17sm20710665wmm.47.2019.09.03.06.50.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 06:50:55 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: agross@kernel.org
Subject: [PATCH 1/1] soc: qcom: geni: Provide parameter error checking
Date: Tue,  3 Sep 2019 14:50:52 +0100
Message-Id: <20190903135052.13827-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_065100_335676_4C5DA68D 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-msm@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 bjorn.andersson@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When booting with ACPI, the Geni Serial Engine is not set as the I2C/SPI
parent and thus, the wrapper (parent device) is unassigned.  This causes
the kernel to crash with a null dereference error.

Fixes: 8bc529b25354 ("soc: qcom: geni: Add support for ACPI")
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
Since we are already at -rc7 this patch should be processed ASAP - thank you.

drivers/soc/qcom/qcom-geni-se.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/soc/qcom/qcom-geni-se.c b/drivers/soc/qcom/qcom-geni-se.c
index d5cf953b4337..7d622ea1274e 100644
--- a/drivers/soc/qcom/qcom-geni-se.c
+++ b/drivers/soc/qcom/qcom-geni-se.c
@@ -630,6 +630,9 @@ int geni_se_tx_dma_prep(struct geni_se *se, void *buf, size_t len,
 	struct geni_wrapper *wrapper = se->wrapper;
 	u32 val;
 
+	if (!wrapper)
+		return -EINVAL;
+
 	*iova = dma_map_single(wrapper->dev, buf, len, DMA_TO_DEVICE);
 	if (dma_mapping_error(wrapper->dev, *iova))
 		return -EIO;
@@ -663,6 +666,9 @@ int geni_se_rx_dma_prep(struct geni_se *se, void *buf, size_t len,
 	struct geni_wrapper *wrapper = se->wrapper;
 	u32 val;
 
+	if (!wrapper)
+		return -EINVAL;
+
 	*iova = dma_map_single(wrapper->dev, buf, len, DMA_FROM_DEVICE);
 	if (dma_mapping_error(wrapper->dev, *iova))
 		return -EIO;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
