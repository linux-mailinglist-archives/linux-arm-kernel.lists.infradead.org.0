Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3381FAB5F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 08:54:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XMNiGoJy9aZatY95JaYnX8HQmZKFWJHbrzoNglS43rw=; b=HFCmgbhTi013dd
	YgjOGQ5Y2GXV1q1y39CxTwQFy1b31I2NvVrQinv0UotYzFBS0WJ6W2Or1BTkEDha7EUQRza7iEPmD
	rDo3uJkBSKQ9rsNESswerLvM/QRc3EH9r0vYmkaYODXo4f3UtEQw+hweSsrhWIqcCo0BJtgde3s6a
	2WeO3mLDdjdweUJRIZgfsPvbSy3fg56ysQ5z7n1ld1QWC/1omy8Yg73w+3nF5Mwuxgt9o7sGK7P9c
	WxLSHfbfm2+mZQrx7QSio8rpM7BknCOzT98dIUMrCd0yBnX8jZB15tCdrCy7PXaKIDYpMy7wNZ4rJ
	0b/QPIB534E/6M9WfMgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUnTv-0007zN-WA; Wed, 13 Nov 2019 07:54:28 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUnTI-0007au-3L
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 07:53:50 +0000
Received: by mail-lj1-x243.google.com with SMTP id g3so1403845ljl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 23:53:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Z8pRSrNjPJIG3QeAtwUZocUyaeikI+vC5l6O+U96lQw=;
 b=v4Oyosu3WiO5hfa96SAV/hmdVCPlCP/p6Hqm+7l1Wv1ykkepsTzPEhEK05HQVeJ9p8
 UoNDHpr1vmm5//p9cfaDUfOE+87sXevogKJ/PluCRJil50DDo3/w0jjhxZB+3I9QspEs
 YiXTvFllQVXiX5S2NyobNj/aZiQ7I4b0IFAufRygReJh8sGRvjFM36vZwKqzCqZByjGY
 xbqJ8nQUBRM1LZ0NopFf4bt0B1W7yDlBKAUbIUonf+A+HeUWLoj3Sm/EyB4VDnO1uZNP
 rSTC2hMY+LjBBjOOn/z4m3IPsP2DPmfB8RT0Xx17FhMiMUnzm+8P+KbPkYgRzrMEjhfI
 eBUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Z8pRSrNjPJIG3QeAtwUZocUyaeikI+vC5l6O+U96lQw=;
 b=bGPBS1yLuGni5ZTE6kKgy8Ctx47bM81K3tL6t3WO7j45nG/FsP9teOkrj9k8dXI5rJ
 FC8irBcitDXIbh8n3TsH9RWYk4X/5OlgR2Vk/aN2k/2kTZPiOW7dH15mAXE7mpZGW6FF
 Wpvur4iS330ebQWNtCSWjMtbXgiLmVFi38CMb0D4rchaWLf5XGuerMhZ8GQwV+T4p6Fn
 er6sGaq/jvOGkaqg404oZmj2dU8PJP+CrWbazjKOt8uyGb9wJMnoZRYmZjwE+DC/M0Am
 92IPjbULniSo//MxjVYYYG6CgXqnZbn4HKfoIrjVMbTtAhU1cjQ5jOFOW6DsBzIAVPU9
 IxyQ==
X-Gm-Message-State: APjAAAWqFg2Kt9PdQAxyo039YkdH4BGwKMAZDM19FrKmPzBN6U3i+00g
 Sh86rax/iVBhrfekjCYrF2LN8Q==
X-Google-Smtp-Source: APXvYqyrkxS30gjbtF0r8GgTAsQTlssm51WKkDZ3hz77IJ0JJm4ESdusnZp+VRTdcRljSfMtR5ZBLQ==
X-Received: by 2002:a05:651c:1a1:: with SMTP id
 c1mr1530078ljn.23.1573631626433; 
 Tue, 12 Nov 2019 23:53:46 -0800 (PST)
Received: from localhost.bredbandsbolaget
 (c-79c8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.200.121])
 by smtp.gmail.com with ESMTPSA id j10sm610110lfc.43.2019.11.12.23.53.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 23:53:45 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Stephan Gerhold <stephan@gerhold.net>
Subject: [PATCH 2/3] mmc: mmci: Bail out from odd DMA on Ux500
Date: Wed, 13 Nov 2019 08:53:34 +0100
Message-Id: <20191113075335.31775-3-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191113075335.31775-1-linus.walleij@linaro.org>
References: <20191113075335.31775-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_235348_143321_6E9BC832 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: Russell King <linux@arm.linux.org.uk>,
 Linus Walleij <linus.walleij@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Niklas Cassel <niklas.cassel@linaro.org>, Ludovic Barre <ludovic.barre@st.com>,
 Brian Masney <masneyb@onstation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Ux500 (at least) can only deal with DMA transactions
starting and ending on an even 4-byte aligned address.

The problem isn't in the DMA engine of the system as such:
the problem is in the state machine of the MMCI block that
has some features to handle single bytes but it seems like
it doesn't quite work.

This problem is probably caused by most of the testing
being done on mass storage, which will be 512-bytes aligned
blocks placed neatly in pages and practically never run into
this situation.

On SDIO (for example in WiFi adapters) this situation is
common.

By avoiding any such transfers with a special vendor flag,
we can bail out to PIO when an odd transfer is detected
while keeping DMA for large transfers of evenly aligned
packages also for SDIO.

Cc: Ludovic Barre <ludovic.barre@st.com>
Cc: Brian Masney <masneyb@onstation.org>
Cc: Stephan Gerhold <stephan@gerhold.net>
Cc: Niklas Cassel <niklas.cassel@linaro.org>
Cc: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v3:
- New patch in v3 after discussion with Ulf
---
 drivers/mmc/host/mmci.c | 21 +++++++++++++++++++++
 drivers/mmc/host/mmci.h | 10 ++++++++++
 2 files changed, 31 insertions(+)

diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
index 3ffcdf78a428..a08cd845dddc 100644
--- a/drivers/mmc/host/mmci.c
+++ b/drivers/mmc/host/mmci.c
@@ -185,6 +185,7 @@ static struct variant_data variant_ux500 = {
 	.irq_pio_mask		= MCI_IRQ_PIO_MASK,
 	.start_err		= MCI_STARTBITERR,
 	.opendrain		= MCI_OD,
+	.only_long_aligned_dma	= true,
 	.init			= mmci_variant_init,
 };
 
@@ -219,6 +220,7 @@ static struct variant_data variant_ux500v2 = {
 	.irq_pio_mask		= MCI_IRQ_PIO_MASK,
 	.start_err		= MCI_STARTBITERR,
 	.opendrain		= MCI_OD,
+	.only_long_aligned_dma	= true,
 	.init			= ux500v2_variant_init,
 };
 
@@ -829,6 +831,25 @@ static int _mmci_dmae_prep_data(struct mmci_host *host, struct mmc_data *data,
 	if (data->blksz * data->blocks <= variant->fifosize)
 		return -EINVAL;
 
+	/*
+	 * Handle the variants with DMA that is broken such that start and
+	 * end address must be aligned on a long (32bit) boundary for the DMA
+	 * to work. If this occurs, fall back to PIO.
+	 */
+	if (host->variant->only_long_aligned_dma) {
+		struct scatterlist *sg;
+		int tmp;
+
+		for_each_sg(data->sg, sg, data->sg_len, tmp) {
+			/* We start in some odd place, that doesn't work */
+			if (sg->offset & 3)
+				return -EINVAL;
+			/* We end in some odd place, that doesn't work */
+			if (sg->length & 3)
+				return -EINVAL;
+		}
+	}
+
 	device = chan->device;
 	nr_sg = dma_map_sg(device->dev, data->sg, data->sg_len,
 			   mmc_get_dma_dir(data));
diff --git a/drivers/mmc/host/mmci.h b/drivers/mmc/host/mmci.h
index c7f94726eaa1..e20af17bb313 100644
--- a/drivers/mmc/host/mmci.h
+++ b/drivers/mmc/host/mmci.h
@@ -307,6 +307,15 @@ struct mmci_host;
  *	       register.
  * @opendrain: bitmask identifying the OPENDRAIN bit inside MMCIPOWER register
  * @dma_lli: true if variant has dma link list feature.
+ * @only_long_aligned_dma: it appears that the Ux500 has a broken DMA logic for
+ *	       single bytes when either the transfer starts at an odd offset or
+ *	       the final DMA burst is an odd (not divisible by 4) address.
+ *	       Reading must start and end on an even 4-byte boundary, i.e. an
+ *	       even 32bit word in memory. If this is not the case, we need to
+ *	       fall back to PIO for that request. For bulk transfers to mass
+ *	       storage we are almost exclusively dealing with 512-byte chunks
+ *	       allocated at an even address so this is usually only manifesting
+ *	       in SDIO.
  * @stm32_idmabsize_mask: stm32 sdmmc idma buffer size.
  */
 struct variant_data {
@@ -350,6 +359,7 @@ struct variant_data {
 	u32			start_err;
 	u32			opendrain;
 	u8			dma_lli:1;
+	u8			only_long_aligned_dma:1;
 	u32			stm32_idmabsize_mask;
 	void (*init)(struct mmci_host *host);
 };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
