Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB41CACCD6
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Sep 2019 14:44:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MURmUbBaqXILJZ1FbG0uSfV9syWVtwdYv0w5dCdfZcU=; b=M2HjcXgoB6tGr+
	Ip+zzVLzZNNYQakcL3YMoRsHepzJNluIBBqTbrkXp4IfQ5kh8g7FdF+8Js+5QzKbPCT6vYRmrX2b7
	mqNU4E33JKtVEzOlgvfeRio8lQU4pHCpJtmkrdLixxY5gTc+h0Ze1dX+Xeaqt4gPuGH2w6gKzbFxo
	SutQ2LtyX2aZJwZuEslfFuoFWnfGiSqVl0gA6G3kuNt5PmXJo84eNLOjQxZSu6zEDJQMl0vA4fX7U
	S6aeZErT0zF89P9TivdkxeC8Hl+r4QqVAK2ISfs2A0GPTGFotYOK1GXDVyWKPNSQxVUGeGW0VxhJF
	zJtep3n5E2/y3qGEuMzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6wYJ-0002gR-GK; Sun, 08 Sep 2019 12:44:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6wYD-0002g1-BE; Sun, 08 Sep 2019 12:44:18 +0000
Received: from localhost (unknown [62.28.240.114])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8848421920;
 Sun,  8 Sep 2019 12:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567946657;
 bh=jaiPO4WwP8gIgvXqmYmnleiQmHpvd5tKNuZEiZG9TLo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=E6pfAWU5T9bTWVElJ+z1PWlpPX5uM6C7rb/qEhsxB1vyoOLyMrnNphnNkIBheQbjZ
 5oSWYr2AWRobd+JlNO74LlTuHXGjaOjGNTw3m1VM/MYihwZVz0p1vEhSGmEY2ESoW2
 Qan1hTRBIjOCP0lVJckGyiG7e3jhJogNyvNZVNCg=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.9 18/26] spi: bcm2835aux: ensure interrupts are enabled for
 shared handler
Date: Sun,  8 Sep 2019 13:41:57 +0100
Message-Id: <20190908121108.502407891@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190908121057.216802689@linuxfoundation.org>
References: <20190908121057.216802689@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_054417_405548_B6E36C03 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -1.4 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [62.28.240.114 listed in zen.spamhaus.org]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
index 7428091d3f5b8..bd00b7cc8b78b 100644
--- a/drivers/spi/spi-bcm2835aux.c
+++ b/drivers/spi/spi-bcm2835aux.c
@@ -184,6 +184,11 @@ static irqreturn_t bcm2835aux_spi_interrupt(int irq, void *dev_id)
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
