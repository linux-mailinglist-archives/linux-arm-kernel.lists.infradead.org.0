Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 488DE1717A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:39:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rHzEK+Cg6Ucm9LMaqaJgXPSYceX7xAvgvkH8D9PXbGM=; b=upiq7opWW4pZ8X
	6N+lRLjCfCG5xa1jmKkFw+8xbNMQIH7CEZbmtDa/md3alb0yb3lRj2Glbltk5V268jrV5I4ss7ZCN
	FriaMVVpTHo5G3u1yfaE/uDZvC7DDVr1i3LMFhr7zospyN7VdGbMT7O6mG2+fyseZ0g+jEyYa7nBk
	PzeWbslLYfExrl1M1KZEoigiBD8VXdjpNwnl3LS/s+TgIexcq2uStVnEZFo8QppxYSuX418aWv4Hp
	AqTCK7rMbttxXN0M1skUFzynGs4DU7vKuRdnEdZXviF1nfe6/6AmTPNeTJPNKcgIyhjksZAU9zI4Z
	aXK0ZmNESQI0BVjylw6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7IRp-0002bc-RX; Thu, 27 Feb 2020 12:39:25 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7IQa-0001ij-Ag; Thu, 27 Feb 2020 12:38:11 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01RCbrEZ089743;
 Thu, 27 Feb 2020 06:37:53 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582807073;
 bh=N0ZTnsWAGol2AuTpDnmtxbZq6ogLFkSohABUVzcd+sE=;
 h=From:To:CC:Subject:Date;
 b=QjZeglP3AIt+Vfhur4e95S7ux4fT6vGQuuR59x4CU4MDfozKzCGK7gX6k01I/FJo/
 3B/CfbHDM8esY4J4EqdSOh0tSnxweSOHKtl/x15h1+3Q70VvdK4FV2gbbtoS0swBfq
 DZndI5YUx/MGSer6tbBQ1yeUzNCaEC1TmDZ1EQEg=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01RCbrsE130414;
 Thu, 27 Feb 2020 06:37:53 -0600
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 27
 Feb 2020 06:37:52 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 27 Feb 2020 06:37:52 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01RCbnvN100207;
 Thu, 27 Feb 2020 06:37:49 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vigneshr@ti.com>, <miquel.raynal@bootlin.com>, <han.xu@nxp.com>,
 <richard@nod.at>, <mripard@kernel.org>, <wens@csie.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH 0/7] mtd: rawnand: Convert drivers to use dma_request_chan()
Date: Thu, 27 Feb 2020 14:37:42 +0200
Message-ID: <20200227123749.24064-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_043808_643833_7103286D 
X-CRM114-Status: UNSURE (   6.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: vkoul@kernel.org, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

With dma_request_chan() drivers can know why the channel request failed and
depending on how they are implemented can handle the failure in a best effort,
either deferring or falling back to PIO mode.

Regards,
Peter
---
Peter Ujfalusi (7):
  mtd: rawnand: gpmi: Use dma_request_chan() instead
    dma_request_slave_channel()
  mtd: rawnand: marvell: Release DMA channel on error
  mtd: rawnand: marvell: Use dma_request_chan() instead
    dma_request_slave_channel()
  mtd: rawnand: sunxi: Use dma_request_chan() instead
    dma_request_slave_channel()
  mtd: rawnand: qcom: Release resources on failure within
    qcom_nandc_alloc()
  mtd: rawnand: qcom: Use dma_request_chan() instead
    dma_request_slave_channel()
  mtd: rawnand: stm32_fmc2: Use dma_request_chan() instead
    dma_request_slave_channel()

 drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c |  21 +++--
 drivers/mtd/nand/raw/marvell_nand.c        |  38 +++++---
 drivers/mtd/nand/raw/qcom_nandc.c          | 105 +++++++++++++--------
 drivers/mtd/nand/raw/stm32_fmc2_nand.c     |  44 +++++++--
 drivers/mtd/nand/raw/sunxi_nand.c          |  15 ++-
 5 files changed, 149 insertions(+), 74 deletions(-)

-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
