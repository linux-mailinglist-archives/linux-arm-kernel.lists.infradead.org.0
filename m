Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D36FAB61
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 08:54:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q0lcxNQcp+c/CBxu4ZSSMpGDbYL7LgyJtM065Bsrg18=; b=c66iTu5lNBNcmF
	HqElo8WdWGkhSP0drdM4jorzhj8R5VQaGmpk8Ou3jSrO3+lNjCzqtOGOKkJd+KRqTo/McYFEerhQX
	bqLDIohhupSsb30KFOxb0F9RgKjETEuO6Q6oBqWHBwlikiNnBmwpZHA8UzsfqzSe8489pQ2BS65fr
	Fy+pMi74WHmnhVfmr9ZSbeLxq1tf8+CRNSJPqaGYf920Jman9CPh75wR5iCdghzkFTvNp2wWICC9y
	dsq6+oOu1UksTc9URZAXTzNDSGQBO7qLLH5B6usYHGjPmw1RB75pmFYX3MfJnPIVPuhIAPTP1QfcK
	2kL+zi++wd9t//Kr+66g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUnU9-0008K6-1y; Wed, 13 Nov 2019 07:54:41 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUnTK-0007ca-Nm
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 07:53:53 +0000
Received: by mail-lf1-x143.google.com with SMTP id v8so1092092lfa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 23:53:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B+Nq0EqiI8iyYesbpyt3jz/qbylH4sylp18sNMPaQEM=;
 b=DsChzYTn7L0+YXTQOmPxbmVVPiiwiA31DixtYt8VuLWmg+8aa+RL0Fyj0Gq8L68H6L
 dDHeWXO8atkssCtBo6P9EaVKxnD5sJj+rczIBey5r0Y7Zq5e9eaItL4A69fRiHrHo9Dj
 i9UWkkYs8i/3E8UJUGrG3ZpiuqXyms9gR5VF+LEOjcKezuBIXil3JzPv3yfwvOq55m7e
 K+5qKHVvR70hgL9gAezcbhfxhtS++qWH6FejpxvAQoHks515LlhgREnoDgGW836UtrMt
 veX2fbioHcXs/TAC2zO1P6DATPGRVXsE48Re4GZTWPyThzvNycLH+XoYV/gG7uLNPOlO
 wYhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B+Nq0EqiI8iyYesbpyt3jz/qbylH4sylp18sNMPaQEM=;
 b=VJy/kjTsegzEwVOaGnLwbStPhzbgmSeAvm/+PzLLXrlV+xjQ6g2zQ5x0JJljRwxWdk
 4nDScVB2McO/T/ZyYPIyZCPSxd0o84Mps2gP/SzOkIjus7zBCpxr6FgzqovQ+sONEUHz
 s4qZF4HWYlelWGRSFDf/PqEoZ5Hv4cZkCUPJPA0Uat4OtVNN/3F4RdnPHtnvK/awWgRo
 CZIbU7NavhlAjswcoVdMZRbxPGeyWKn3DKZzaTKojUnrFnqPtbx53K4DU0UaDkNulqDT
 0VjK9pM70Z2+4vapFPCk+ONDKFi3qjHNfELg76l+zq4p4sOJpmJkyfvQLiW0UZ1P5GLY
 Hc/g==
X-Gm-Message-State: APjAAAVDAHpteSvjbAzRK9V4aEvSb+2r+1B99hmMrFen+RW8Ts64eBv5
 75YZ0DwbQydUq2iHl9UaD6JDYA==
X-Google-Smtp-Source: APXvYqxR9l5Gjz4IEu194uSHeGsXPtj30ILrUeGubVYW7wQZHu1q+L78LEMhKEkSdt9qcif7m3dZxQ==
X-Received: by 2002:a19:e002:: with SMTP id x2mr1727117lfg.28.1573631628777;
 Tue, 12 Nov 2019 23:53:48 -0800 (PST)
Received: from localhost.bredbandsbolaget
 (c-79c8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.200.121])
 by smtp.gmail.com with ESMTPSA id j10sm610110lfc.43.2019.11.12.23.53.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 23:53:47 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Stephan Gerhold <stephan@gerhold.net>
Subject: [PATCH 3/3] mmc: mmci: Proper PIO residue handling
Date: Wed, 13 Nov 2019 08:53:35 +0100
Message-Id: <20191113075335.31775-4-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191113075335.31775-1-linus.walleij@linaro.org>
References: <20191113075335.31775-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_235350_847650_4155CDF5 
X-CRM114-Status: GOOD (  28.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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

The MMCI PIO write function contains a bug if using any buffers
with sglist miter contents that do not add upp to even 32bit
writes. The PIO write code currently does this:

iowrite32_rep(base + MMCIFIFO, ptr, (count + 3) >> 2);

This will make sure that a single buffer passed in gets written
into the FIFO even if it is odd, i.e. not evenly divisible
by 4.

However it has the following problems:

- It will read up to three bytes beyond the end of the buffer
  and fill the FIFO with unpredictable junk and possibly cause
  segmentation violations if the read passes a page boundary
  such as at the end of an sglist buffer.

- It will be fine if a single buffer is passed in, but the code
  handles SG lists. There is a while (1) loop in mmci_pio_irq()
  which repeatedly calls mmci_pio_write() as long as the FIFO
  is not half-full, if it gets half-full it exits the IRQ and
  waits for a new IRQ, also the while loop repeatedly calls
  sg_miter_next() to consume bytes and this means that between
  subsequent calls to mmci_pio_write() some random junk can be
  inserted at the end of each call if the buffers passed in
  do not contain an number of bytes evenly divisible by 4.

Fix this by simply doing this:

iowrite32_rep(base + MMCIFIFO, ptr, count >> 2);

But since the code will then just not write enough bytes if
the count is not evenly divisible by 4, we introduce a special
residue buffer and keep track of any odd bytes from 1..3 and
just write these padded out with new data in a separate
statement the next time we get a call of the mmci_pio_write(),
or, if there is for example only 1,2 or 3 bytes in the transfer,
or we end up with an odd number of bytes in the residue,
flushi it out when we end the current data transaction to
the host.

Cc: Ludovic Barre <ludovic.barre@st.com>
Cc: Brian Masney <masneyb@onstation.org>
Cc: Stephan Gerhold <stephan@gerhold.net>
Cc: Niklas Cassel <niklas.cassel@linaro.org>
Cc: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v3:
- New patch in v3 after discussion with Ulf
- I'm unable to test this because I cannot provoke
  these odd reads/writes but hoping for Stephan to take it
  for a spin.
---
 drivers/mmc/host/mmci.c | 125 ++++++++++++++++++++++++++++++++++++----
 drivers/mmc/host/mmci.h |   2 +
 2 files changed, 117 insertions(+), 10 deletions(-)

diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
index a08cd845dddc..0d01689016f0 100644
--- a/drivers/mmc/host/mmci.c
+++ b/drivers/mmc/host/mmci.c
@@ -607,6 +607,7 @@ static void mmci_init_sg(struct mmci_host *host, struct mmc_data *data)
 		flags |= SG_MITER_FROM_SG;
 
 	sg_miter_start(&host->sg_miter, data->sg, data->sg_len, flags);
+	host->pio_write_residue_sz = 0;
 }
 
 static u32 mmci_get_dctrl_cfg(struct mmci_host *host)
@@ -1422,30 +1423,111 @@ static int mmci_pio_write(struct mmci_host *host, char *buffer, unsigned int rem
 	struct variant_data *variant = host->variant;
 	void __iomem *base = host->base;
 	char *ptr = buffer;
+	bool wrote_residue = false;
+	int i;
+
+	/*
+	 * This will normally not happen during block I/O, but can
+	 * happen during SDIO traffic, where odd byte chunks are
+	 * shoveled to the SDIO link. Fill up the residue buffer
+	 * and flush out.
+	 */
+	if (host->pio_write_residue_sz) {
+		int fill = 4 - host->pio_write_residue_sz;
+		u32 val = 0;
+
+		/*
+		 * If we need more padding that what we have, just stash
+		 * some more in the residue then and continue. This only
+		 * happens if we're passed e.g. 1 or 2 bytes and there is
+		 * just 1 byte residue residue already: we can't fill up!
+		 */
+		if (fill > remain) {
+			for (i = 0; i < fill; i++) {
+				host->pio_write_residue[host->pio_write_residue_sz + i] = *ptr;
+				host->pio_write_residue_sz++;
+				ptr++;
+				remain--;
+			}
+			return ptr - buffer;
+		}
+
+		/* Pack the residue into a 32bit word */
+		for (i = 0; i < host->pio_write_residue_sz; i++) {
+			val |= host->pio_write_residue[i];
+			val <<= 8;
+		}
+		/* Top up with new data */
+		for (i = 0; i < fill; i++) {
+			val |= *ptr;
+			val <<= 8;
+			ptr++;
+			remain--;
+		}
+		iowrite32(val, base + MMCIFIFO);
+		host->pio_write_residue_sz = 0;
+		wrote_residue = true;
+	}
+
+	/*
+	 * Maybe the residue plus some few bytes was exactly filling a
+	 * 32bit word.
+	 */
+	if (!remain)
+		return ptr - buffer;
 
 	do {
-		unsigned int count, maxcnt;
+		unsigned int count, maxcnt, written, residue;
 
+		/*
+		 * If the FIFO is empty just stash it full with data else
+		 * just half-fill it.
+		 */
 		maxcnt = status & MCI_TXFIFOEMPTY ?
-			 variant->fifosize : variant->fifohalfsize;
+			variant->fifosize : variant->fifohalfsize;
+
+		/* Watch it to not overfill the FIFO */
+		if (wrote_residue)
+			maxcnt -= 4;
+
 		count = min(remain, maxcnt);
 
 		/*
 		 * SDIO especially may want to send something that is
 		 * not divisible by 4 (as opposed to card sectors
-		 * etc), and the FIFO only accept full 32-bit writes.
-		 * So compensate by adding +3 on the count, a single
-		 * byte become a 32bit write, 7 bytes will be two
-		 * 32bit writes etc.
+		 * etc), but the FIFO only accepts full 32-bit writes so start by
+		 * just filling up quickly with as much as we can.
 		 */
-		iowrite32_rep(base + MMCIFIFO, ptr, (count + 3) >> 2);
+		iowrite32_rep(base + MMCIFIFO, ptr, count >> 2);
+		residue = count & 3;
 
-		ptr += count;
-		remain -= count;
+		written = count - residue;
+		ptr += written;
+		remain -= written;
 
-		if (remain == 0)
+		/* Handles the common case for block-IO */
+		if (!remain)
 			break;
 
+		/*
+		 * These were not written out since we only write 32bit
+		 * words to the FIFO. Since this function gets called
+		 * repeatedly and across page boundaries with new pointers
+		 * in *buffer we need to take special care to stash odd
+		 * bytes away and flush them out in next PIO round or at the
+		 * end of the whole data transfer.
+		 */
+		if (remain < 4) {
+			WARN_ON(remain != residue);
+			host->pio_write_residue_sz = residue;
+			for (i = 0; i < residue; i++) {
+				host->pio_write_residue[i] = *ptr;
+				ptr++;
+				remain--;
+			}
+			break;
+		}
+
 		status = readl(base + MMCISTATUS);
 	} while (status & MCI_TXFIFOHALFEMPTY);
 
@@ -1522,6 +1604,29 @@ static irqreturn_t mmci_pio_irq(int irq, void *dev_id)
 	if (host->size == 0) {
 		mmci_set_mask1(host, 0);
 		writel(readl(base + MMCIMASK0) | MCI_DATAENDMASK, base + MMCIMASK0);
+
+		if ((status & MCI_TXACTIVE) && host->pio_write_residue_sz) {
+			/*
+			 * If the last pass of the SG miter left some residue after the pio
+			 * write loop, push that out to the card. We are now at the end of
+			 * the transfer so it is OK to pad with zeroes.
+			 */
+			int fill = 4 - host->pio_write_residue_sz;
+			u32 val = 0;
+			int i;
+
+			/* Pack the residue into a 32bit word */
+			for (i = 0; i < host->pio_write_residue_sz; i++) {
+				val |= host->pio_write_residue[i];
+				val <<= 8;
+			}
+			/* Top up with zeroes */
+			for (i = 0; i < fill; i++)
+				val <<= 8;
+
+			iowrite32(val, base + MMCIFIFO);
+			host->pio_write_residue_sz = 0;
+		}
 	}
 
 	return IRQ_HANDLED;
diff --git a/drivers/mmc/host/mmci.h b/drivers/mmc/host/mmci.h
index e20af17bb313..a7690b64d4cd 100644
--- a/drivers/mmc/host/mmci.h
+++ b/drivers/mmc/host/mmci.h
@@ -425,6 +425,8 @@ struct mmci_host {
 	/* pio stuff */
 	struct sg_mapping_iter	sg_miter;
 	unsigned int		size;
+	u8			pio_write_residue[4];
+	u8			pio_write_residue_sz;
 	int (*get_rx_fifocnt)(struct mmci_host *h, u32 status, int remain);
 
 	u8			use_dma:1;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
