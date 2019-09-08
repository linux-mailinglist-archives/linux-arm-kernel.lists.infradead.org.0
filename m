Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1D8ACCD5
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Sep 2019 14:43:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dixicH4ewfkqDatCyDIk0kyLNQL5UdaaMNqakmNmihY=; b=H/1lCq7ayqST2P
	aRbrM4sUnDNYFQlhCoT1RcGutI+7CEERvJHIO7tLefy8BWnxWrYQA44/Xr8eLQuqiQLM/DAeySFQi
	ekTv+yJ8oC7sL3FfQOxmcNZIxd844Npr2J/ZNsEnjmCspuOUnuq2sNcEz83Ww3+wiqZ508TJWyM0H
	Amx2MVUIM8A4FxkE/WJNTJvrNjw5cNOYev+Y9DTxMo8PBs4WGcfMwdT9DnbcGmj7hiMnY4KEYJRWO
	71NQB61lcpzX7kdpfzJlmGAAN23ajxdppzlaJWQMuEhvJ1eWDe2IDgDkadyQUWrkA5n1ju/VCUdgC
	F8EPju/2KQcD8h7OAANA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6wXc-0002Ij-R5; Sun, 08 Sep 2019 12:43:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6wXW-0002Hd-OW; Sun, 08 Sep 2019 12:43:36 +0000
Received: from localhost (unknown [62.28.240.114])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1B0E5218AE;
 Sun,  8 Sep 2019 12:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567946612;
 bh=YZJIXJ17E7a0+EEK2SrgMQvwGAvnZmivE5QpgZgWL18=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sJPQiuctj6q06P97XlnT7X3ZvfZePzwL2AzOgd6W+yTGY0bxENK/gSSq80wm2eode
 vsG7sGKc3N80gjm4jTzgb4b3H1RfVNA69DwnCCqlU8NeTfjotGMQezjddCYbCQTFfB
 2UVCp3LBPMvlBuU42pC3Z2FV2tZNJhERcjnLedIw=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.4 17/23] spi: bcm2835aux: ensure interrupts are enabled for
 shared handler
Date: Sun,  8 Sep 2019 13:41:52 +0100
Message-Id: <20190908121100.841586731@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190908121052.898169328@linuxfoundation.org>
References: <20190908121052.898169328@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_054334_822829_77217500 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -1.4 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [62.28.240.114 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, Rob Herring <robh@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Sasha Levin <sashal@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alexander Graf <agraf@suse.de>, stable@vger.kernel.org,
 linux-spi@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 Mark Brown <broonie@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Ray Jui <rjui@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Upstream commit bc519d9574618e47a0c788000fb78da95e18d953 ]

The BCM2835 AUX SPI has a shared interrupt line (with AUX UART).
Downstream fixes this with an AUX irqchip to demux the IRQ sources and a
DT change which breaks compatibility with older kernels. The AUX irqchip
was already rejected for upstream[1] and the DT change would break
working systems if the DTB is updated to a newer one. The latter issue
was brought to my attention by Alex Graf.

The root cause however is a bug in the shared handler. Shared handlers
must check that interrupts are actually enabled before servicing the
interrupt. Add a check that the TXEMPTY or IDLE interrupts are enabled.

[1] https://patchwork.kernel.org/patch/9781221/

Cc: Alexander Graf <agraf@suse.de>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Eric Anholt <eric@anholt.net>
Cc: Stefan Wahren <stefan.wahren@i2se.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Ray Jui <rjui@broadcom.com>
Cc: Scott Branden <sbranden@broadcom.com>
Cc: bcm-kernel-feedback-list@broadcom.com
Cc: linux-spi@vger.kernel.org
Cc: linux-rpi-kernel@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
Reviewed-by: Eric Anholt <eric@anholt.net>
Signed-off-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/spi/spi-bcm2835aux.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/spi/spi-bcm2835aux.c b/drivers/spi/spi-bcm2835aux.c
index 7de6f8472a810..6f4c6aa801f14 100644
--- a/drivers/spi/spi-bcm2835aux.c
+++ b/drivers/spi/spi-bcm2835aux.c
@@ -187,6 +187,11 @@ static irqreturn_t bcm2835aux_spi_interrupt(int irq, void *dev_id)
 	struct bcm2835aux_spi *bs = spi_master_get_devdata(master);
 	irqreturn_t ret = IRQ_NONE;
 
+	/* IRQ may be shared, so return if our interrupts are disabled */
+	if (!(bcm2835aux_rd(bs, BCM2835_AUX_SPI_CNTL1) &
+	      (BCM2835_AUX_SPI_CNTL1_TXEMPTY | BCM2835_AUX_SPI_CNTL1_IDLE)))
+		return ret;
+
 	/* check if we have data to read */
 	while (bs->rx_len &&
 	       (!(bcm2835aux_rd(bs, BCM2835_AUX_SPI_STAT) &
-- 
2.20.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
