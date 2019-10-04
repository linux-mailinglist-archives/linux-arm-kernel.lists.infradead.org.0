Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C551CCBADB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:52:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g7mZS92JaxrfiY+JdqONk33KvzxX4GCOaY1Hc+dK47A=; b=rvCvPel8fncZnV
	l1c8jGyGvSnyvz5Xi73vQcAbkSrY2zJsrdHU26uMk6cmrOsac/qfu/Et+OAC8NFZKoB6gSZqwbMmr
	myWE5QDIw3cPPtKb088uu7l5yYXgpTo1RitCiyvLTLSZMxHb6mUKT+THQQjELIFZmx6k+RIdPShLC
	A/XmSlPVBDW2WgA7lEQRrOwSh3VBFd6y9VDJPixncv7nSJ2kBFvnlg2ZDM7+7JFHCRIwOUVvGffL7
	AuVcrqIsAdaYnon7h2kOnop8kii/VgMaq37tdAxwK0I58JyCM4xbNudjLRNfN/8JNITpTtbUWdmHf
	cKQd+t6GAJEj0Rb+8Oyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGN4c-00045l-Fx; Fri, 04 Oct 2019 12:52:42 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGN4U-000451-4J
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:52:35 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 59CBAB125;
 Fri,  4 Oct 2019 12:52:32 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Adrian Hunter <adrian.hunter@intel.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH] mmc: sdhci-iproc: fix spurious interrupts on Multiblock reads
 with bcm2711
Date: Fri,  4 Oct 2019 14:52:26 +0200
Message-Id: <20191004125226.27037-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_055234_313759_7D949C60 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Matthias Brugger <mbrugger@suse.com>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, wahrenst@gmx.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Raspberry Pi 4 SDHCI hardware seems to automatically issue CMD12
after multiblock reads even when ACMD12 is disabled. This triggers
spurious interrupts after the data transfer is done with the following
message:

  mmc1: Got data interrupt 0x00000002 even though no data operation was in progress.
  mmc1: sdhci: ============ SDHCI REGISTER DUMP ===========
  mmc1: sdhci: Sys addr:  0x00000000 | Version:  0x00001002
  mmc1: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000000
  mmc1: sdhci: Argument:  0x00000000 | Trn mode: 0x00000033
  mmc1: sdhci: Present:   0x1fff0000 | Host ctl: 0x00000017
  mmc1: sdhci: Power:     0x0000000f | Blk gap:  0x00000080
  mmc1: sdhci: Wake-up:   0x00000000 | Clock:    0x00000107
  mmc1: sdhci: Timeout:   0x00000000 | Int stat: 0x00000000
  mmc1: sdhci: Int enab:  0x03ff100b | Sig enab: 0x03ff100b
  mmc1: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000000
  mmc1: sdhci: Caps:      0x45ee6432 | Caps_1:   0x0000a525
  mmc1: sdhci: Cmd:       0x00000c1a | Max curr: 0x00080008
  mmc1: sdhci: Resp[0]:   0x00000b00 | Resp[1]:  0x00edc87f
  mmc1: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x00400e00
  mmc1: sdhci: Host ctl2: 0x00000001
  mmc1: sdhci: ADMA Err:  0x00000000 | ADMA Ptr: 0xf3025208
  mmc1: sdhci: ============================================

Enable SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12 to enable ACMD12 on multiblock
reads and suppress the spurious interrupts.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Tested-by: Matthias Brugger <mbrugger@suse.com>
---
 drivers/mmc/host/sdhci-iproc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mmc/host/sdhci-iproc.c b/drivers/mmc/host/sdhci-iproc.c
index 2b9cdcd1dd9d..f4f5f0a70cda 100644
--- a/drivers/mmc/host/sdhci-iproc.c
+++ b/drivers/mmc/host/sdhci-iproc.c
@@ -262,6 +262,7 @@ static const struct sdhci_iproc_data bcm2835_data = {
 };
 
 static const struct sdhci_pltfm_data sdhci_bcm2711_pltfm_data = {
+	.quirks = SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12,
 	.ops = &sdhci_iproc_32only_ops,
 };
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
