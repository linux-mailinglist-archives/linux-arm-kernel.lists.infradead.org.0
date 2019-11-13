Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C5BFAB5D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 08:54:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQvj+gkHTQ711XpujfP8HUDVf8xBxbj+j2pDEX4d3vc=; b=PFVkD44kEKvO9a
	3YlqnEHb3g3xuqQpN+xkpdV0LATaRY3zStemONonk16ss2pDLpqmq9dSjWfmlz4z4fhB4OeA0veMC
	zsrKWk4ukv6Ni04HeNbFKCIRBCwSPtXstBwpaM9rx7jUiOm+6bRNWyxc0/AgG58M0+9jt53x652po
	chw/ZcwW8Q07bv5GYl/rI6z+NGHuhQ8mIAwD/dY3m/k3TEKDHLjGzUBJJNuCjrEGqMTb5wZta4h/c
	Wmla7sRDsvVbrD0uCGUwCW4PRtSFWwBQhifqjKNKUk26QZhzaJYTiwaUoF0lpMwuJ2eNVXF0CDNH0
	COzl7OKfw2wwvxFgNLsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUnTd-0007lj-J8; Wed, 13 Nov 2019 07:54:09 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUnTF-0007Zz-Pb
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 07:53:47 +0000
Received: by mail-lj1-x241.google.com with SMTP id n5so1420316ljc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 23:53:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gdgX+5FPEMWeumBP/L3Kn2WDPUqpVI0CqS6oiSh3P9Y=;
 b=M9EqRpo1YzQAw5Aym/f7V7i0nozQekQgxJy2pHprR9394Ue0aGkBZ4MEUzkIIHM5e6
 +xUdZ2OTmgebD8Jty7okqQ5c0AtB5DtY1xpjB7kyqOsdOot8FldKF/oQErIe5kKofk5t
 rJSwBW9vG4vEoGBgDOIF4J+2etTtudbHqgveR6kUm1unZ7adMRHUpN+CGvcbYHraILGk
 eCnHbWJiCmGaou9IxkcmljPnxOYfpFBq/rvwMmAb+dEJUbQTHW1s2epGkbwn/Y4rVaJK
 hCY49JaBTyZurxQkHobOioY6fZmHrdpOFXhgotVutGIHEt2tBLktTF/2+c6yev/nq9Zz
 saXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gdgX+5FPEMWeumBP/L3Kn2WDPUqpVI0CqS6oiSh3P9Y=;
 b=RMMJEOPFTmrhwlvv6E58DhRx0VvX1Dwn18ir1sc5/p3lKV4o6dtbN5T5FJu9KacE3n
 ihbpo1vWI5DzpDtJZKITa+yNx97RzAQSbIUgy1XQW/ggoDN7yCrpkNu3cwSxa6hHMsAR
 0ICViP8Uw/LCl6B9LI6pR9ZoTF2KBiDo7OrTpcX8ULRpp9zj7NuBtX3MKaRWI8NDBL3U
 1qq+Xp0acSf7LpEqyl93fyEunxvaUDY4stYcFX17FT54mJ7nhAY5QaF+JwW6FXLvxq1j
 EpmCraJzsOQ/PWPBo3WfVBIdWqzJh7P5JJJJA4XPB7xhycTXqiUjknSCCFd+U3bRSLlM
 eSNw==
X-Gm-Message-State: APjAAAVmNnrfDg2Jty5HYhZ+JInDSvBPy5u1q5xy4Pdve5UZap0Dc58q
 bVq7xraz4R6Dy5k8lnVsdqCdAg==
X-Google-Smtp-Source: APXvYqxI9u3EcltksVbByILLSxmRN8q0bV2Stmj6PhBTWtyi4NXy3X/Je6aFtgys22hZnZtegZkhCQ==
X-Received: by 2002:a2e:4703:: with SMTP id u3mr1385526lja.126.1573631623982; 
 Tue, 12 Nov 2019 23:53:43 -0800 (PST)
Received: from localhost.bredbandsbolaget
 (c-79c8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.200.121])
 by smtp.gmail.com with ESMTPSA id j10sm610110lfc.43.2019.11.12.23.53.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 23:53:42 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Stephan Gerhold <stephan@gerhold.net>
Subject: [PATCH 1/3] mmc: mmci: Support odd block sizes for ux500v2 and qcom
 variant
Date: Wed, 13 Nov 2019 08:53:33 +0100
Message-Id: <20191113075335.31775-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191113075335.31775-1-linus.walleij@linaro.org>
References: <20191113075335.31775-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_235345_830542_98380649 
X-CRM114-Status: GOOD (  23.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Niklas Cassel <niklas.cassel@linaro.org>, Ludovic Barre <ludovic.barre@st.com>,
 Brian Masney <masneyb@onstation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ulf Hansson <ulf.hansson@linaro.org>

This is something like the 5th time this patch is posted,
so let's try to fix this now, once and for all.

For the ux500v2 variant of the PL18x block, odd block sizes are
supported. This is necessary to support some SDIO transfers
such as single bytes. This also affects the QCOM MMCI variant.

This will work fine for PIO using IRQs: SDIO packets are
accepted down to single bytes and the transfers go through
just fine.

This patch has proven necessary for enabling SDIO for WLAN on
PostmarketOS-based Ux500 platforms.

This patch is based on Ulf Hansson's patch
http://www.spinics.net/lists/linux-mmc/msg12160.html

Ulf noted on an earlier iteration in:
https://marc.info/?l=linux-mmc&m=140845189316370&w=2

"There are some prerequisites of the data buffers to supports
any block size, at least for ux500. (...) The conclusion from
the above is that we need to adopt mmci_pio_write() to handle
corner cases."

This points back to a discussion in 2012. The main point was
made by Russell in this message:
https://marc.info/?l=linux-arm-kernel&m=135351237018301&w=2

IIUC this pertains to this code (now gone from the patch):

  if (data->sg->offset & 3) {
      dev_err(...);
      return -EINVAL;
  }

This hit Stephan as he noticed that DMA (DMA40) would not work
with the MMCI driver, so this patch combined with disabling
DMA would do the trick. That way we don't toss unaligned
accesses at the DMA engine as SDIO apparently tends to
do. (This is not a problem when writing ordinary block device
blocks as these are always 512 bytes aligned on a 4-byte
boundary.)

As Ulf notes, odd SG offsets like this should be handled
by the driver even if we run it in DMA mode. I conclude
it must be the duty of the DMA driver to say NO to SG
offsets it cannot handle, or otherwise bitstuff things
around to avoid the situation.

So as a first step make sure errors are propagated upward
from the DMA engine, and assume the DMA engine will say no
to things with weird SG offsets that it cannot handle, and
then the driver will fall back to using PIO.

It might be that some DMA engines (such as the Ux500
DMA40) do not properly say no to sglists with uneven
offsets, or ignore the offset altogether resulting in
unpredictable behavior. That is in that case a bug in the
DMA driver and needs to be fixed there. I got the impression
that the Qualcomm DMA actually can handle these odd
alignments without problems.

(Make a drive-by fix for datactrl_blocksz, misspelled.)

Cc: Ludovic Barre <ludovic.barre@st.com>
Cc: Brian Masney <masneyb@onstation.org>
Cc: Stephan Gerhold <stephan@gerhold.net>
Cc: Niklas Cassel <niklas.cassel@linaro.org>
Cc: Russell King <rmk+kernel@armlinux.org.uk>
Tested-by: Stephan Gerhold <stephan@gerhold.net>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v2->v3:
- Repost with the inclusion of other patches.
ChangeLog v1->v2:
- Specify odd blocksize field to 1 bit (:1)
- Specify that STMMC supports odd block sizes
- Collect Stephan's test tag
---
 drivers/mmc/host/mmci.c | 20 ++++++++++++++++----
 drivers/mmc/host/mmci.h |  6 +++++-
 2 files changed, 21 insertions(+), 5 deletions(-)

diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
index c37e70dbe250..3ffcdf78a428 100644
--- a/drivers/mmc/host/mmci.c
+++ b/drivers/mmc/host/mmci.c
@@ -168,6 +168,7 @@ static struct variant_data variant_ux500 = {
 	.cmdreg_srsp		= MCI_CPSM_RESPONSE,
 	.datalength_bits	= 24,
 	.datactrl_blocksz	= 11,
+	.datactrl_odd_blocksz	= true,
 	.datactrl_mask_sdio	= MCI_DPSM_ST_SDIOEN,
 	.st_sdio		= true,
 	.st_clkdiv		= true,
@@ -201,6 +202,7 @@ static struct variant_data variant_ux500v2 = {
 	.datactrl_mask_ddrmode	= MCI_DPSM_ST_DDRMODE,
 	.datalength_bits	= 24,
 	.datactrl_blocksz	= 11,
+	.datactrl_odd_blocksz	= true,
 	.datactrl_mask_sdio	= MCI_DPSM_ST_SDIOEN,
 	.st_sdio		= true,
 	.st_clkdiv		= true,
@@ -260,6 +262,7 @@ static struct variant_data variant_stm32_sdmmc = {
 	.datacnt_useless	= true,
 	.datalength_bits	= 25,
 	.datactrl_blocksz	= 14,
+	.datactrl_odd_blocksz	= true,
 	.stm32_idmabsize_mask	= GENMASK(12, 5),
 	.init			= sdmmc_variant_init,
 };
@@ -279,6 +282,7 @@ static struct variant_data variant_qcom = {
 	.data_cmd_enable	= MCI_CPSM_QCOM_DATCMD,
 	.datalength_bits	= 24,
 	.datactrl_blocksz	= 11,
+	.datactrl_odd_blocksz	= true,
 	.pwrreg_powerup		= MCI_PWR_UP,
 	.f_max			= 208000000,
 	.explicit_mclk_control	= true,
@@ -447,10 +451,11 @@ void mmci_dma_setup(struct mmci_host *host)
 static int mmci_validate_data(struct mmci_host *host,
 			      struct mmc_data *data)
 {
+	struct variant_data *variant = host->variant;
+
 	if (!data)
 		return 0;
-
-	if (!is_power_of_2(data->blksz)) {
+	if (!is_power_of_2(data->blksz) && !variant->datactrl_odd_blocksz) {
 		dev_err(mmc_dev(host->mmc),
 			"unsupported block size (%d bytes)\n", data->blksz);
 		return -EINVAL;
@@ -515,7 +520,9 @@ int mmci_dma_start(struct mmci_host *host, unsigned int datactrl)
 		 "Submit MMCI DMA job, sglen %d blksz %04x blks %04x flags %08x\n",
 		 data->sg_len, data->blksz, data->blocks, data->flags);
 
-	host->ops->dma_start(host, &datactrl);
+	ret = host->ops->dma_start(host, &datactrl);
+	if (ret)
+		return ret;
 
 	/* Trigger the DMA transfer */
 	mmci_write_datactrlreg(host, datactrl);
@@ -872,9 +879,14 @@ int mmci_dmae_prep_data(struct mmci_host *host,
 int mmci_dmae_start(struct mmci_host *host, unsigned int *datactrl)
 {
 	struct mmci_dmae_priv *dmae = host->dma_priv;
+	int ret;
 
 	host->dma_in_progress = true;
-	dmaengine_submit(dmae->desc_current);
+	ret = dma_submit_error(dmaengine_submit(dmae->desc_current));
+	if (ret < 0) {
+		host->dma_in_progress = false;
+		return ret;
+	}
 	dma_async_issue_pending(dmae->cur);
 
 	*datactrl |= MCI_DPSM_DMAENABLE;
diff --git a/drivers/mmc/host/mmci.h b/drivers/mmc/host/mmci.h
index 833236ecb31e..c7f94726eaa1 100644
--- a/drivers/mmc/host/mmci.h
+++ b/drivers/mmc/host/mmci.h
@@ -278,7 +278,10 @@ struct mmci_host;
  * @stm32_clkdiv: true if using a STM32-specific clock divider algorithm
  * @datactrl_mask_ddrmode: ddr mode mask in datactrl register.
  * @datactrl_mask_sdio: SDIO enable mask in datactrl register
- * @datactrl_blksz: block size in power of two
+ * @datactrl_blocksz: block size in power of two
+ * @datactrl_odd_blocksz: true if block any sizes are supported, such as one
+ *		      single character, as is necessary when using some SDIO
+ *		      devices.
  * @datactrl_first: true if data must be setup before send command
  * @datacnt_useless: true if you could not use datacnt register to read
  *		     remaining data
@@ -323,6 +326,7 @@ struct variant_data {
 	unsigned int		datactrl_mask_ddrmode;
 	unsigned int		datactrl_mask_sdio;
 	unsigned int		datactrl_blocksz;
+	u8			datactrl_odd_blocksz:1;
 	u8			datactrl_first:1;
 	u8			datacnt_useless:1;
 	u8			st_sdio:1;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
