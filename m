Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A6C14812B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 12:17:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tX9C2sJeUC7IiDkNIw4QtDXnwpTlIuXnVGuIRyjP3Kk=; b=CkR8PC0LpUfFaq
	IHM/5VgvJj9sY6lmD6bczJd+2BLFgsdnaoIkaaZX7ic173VyNmxCdmeN5vfznUkx6MAHvI/oetNgR
	YiBHWbx6c9sCXkF2fOowhWBKWSZzfudpNSL/zrOpYa0mZ8qG1cKnVDptt0+HM3sTr6XjO5uECUdxr
	0HyaP1/hGUmIg3plsequ9m32HjazvdZDcRZltYNT6ntDDMbc0evWFJyeqAonLCdvO9SrbxcHJJqHb
	AeznOe1D+nNXb1v+jfwczttljm4Zl4yryFCQQtlGZi7ePypfX2wcl0rwgwmfOEZswesFH94NBMq2x
	SqwPR5d6jH7f0WO/NURQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuwxq-0007z8-Oz; Fri, 24 Jan 2020 11:17:26 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuwxj-0007yF-3E; Fri, 24 Jan 2020 11:17:20 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 3F290B034;
 Fri, 24 Jan 2020 11:17:15 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH for-next] arm64: defconfig: Set bcm2835-dma as built-in
Date: Fri, 24 Jan 2020 12:17:00 +0100
Message-Id: <20200124111700.29910-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_031719_282729_F269D5A0 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: f.fainelli@gmail.com, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With the introduction of 738987a1d6f1 ("mmc: bcm2835: Use
dma_request_chan() instead dma_request_slave_channel()") sdhost-bcm2835
now waits for its DMA channel to be available when defined in the
device-tree (it would previously default to PIO). Albeit the right
behaviour, the MMC host is needed for booting. So this makes sure the
DMA channel shows up in time.

Fixes: 738987a1d6f1 ("mmc: bcm2835: Use dma_request_chan() instead dma_request_slave_channel()")
Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 arch/arm64/configs/defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4631a1190719..905109f6814f 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -683,7 +683,7 @@ CONFIG_RTC_DRV_SNVS=m
 CONFIG_RTC_DRV_IMX_SC=m
 CONFIG_RTC_DRV_XGENE=y
 CONFIG_DMADEVICES=y
-CONFIG_DMA_BCM2835=m
+CONFIG_DMA_BCM2835=y
 CONFIG_DMA_SUN6I=m
 CONFIG_FSL_EDMA=y
 CONFIG_IMX_SDMA=y
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
