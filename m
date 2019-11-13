Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D15FAD30
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 10:42:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i6Nm7hwQ54rp1AY30mkr/Lvgmll+PiYvxGPbFlmJ8RQ=; b=tvguQioSAkcnOI
	I4gjHXBf7MPECXVlrWkcmhTbMm0A8rxSTmf6QfGwXRtFByYnRgXppZlWejQpCV+JWOP87iRzTp5pD
	t0QfpsJkMLQHQ5QxvBg2UQeb9A634i8igbOraYHzuKLeNJ1qOMzTg1GE7xyAFa7iD3qs4n11Owkas
	oC01APlVC+TLgE2EBVijDk/Bh1iwJr+ZP2jfmCnkBCod/0zl4zYH4BK1B0YssmisjzVm0IuhjrB0y
	Aw148UnTSEWUnEm+rKsf0PyfYa9SARABz55w4x+s4Sn2eQ8/1kT2l3kwZpMCaTLgkC6kpvl7Crge3
	DJQV1QFUN9JQdDTAxDpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUpA6-0007iq-Ga; Wed, 13 Nov 2019 09:42:06 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUp9y-0007iX-6w
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 09:41:59 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAD9fj21122267;
 Wed, 13 Nov 2019 03:41:45 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573638105;
 bh=wWJNZTFuNZCcK7Gn/PoNwIYOeJyEw7kXPqGfgVe5Kjc=;
 h=From:To:CC:Subject:Date;
 b=qzhwgSI41DHaPdsyG2pybK58nnrYlcNzOwFvAEJ8zErgmDrcjk1MfdN+sJjRHHzmw
 TZ55lqmjSWXuIVOxk6d4EruLhRJTbRGG67gVQsMgQ3oFAmnm5kC4sSmDrv3I4Shnsw
 aDqVx4jgrSYEmfOnxHZ1iTygLNmBbocseB2cbO/0=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xAD9fjAM080798
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 13 Nov 2019 03:41:45 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 13
 Nov 2019 03:41:27 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 13 Nov 2019 03:41:27 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAD9feM0072663;
 Wed, 13 Nov 2019 03:41:41 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <broonie@kernel.org>, <radu_nicolae.pirea@upb.ro>, <shawnguo@kernel.org>, 
 <s.hauer@pengutronix.de>, <linus.walleij@linaro.org>,
 <agross@kernel.org>, <bjorn.andersson@linaro.org>, <andi@etezian.org>,
 <ldewangan@nvidia.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>
Subject: [PATCH 0/9] spi: Use dma_request_chan() directly for channel request
Date: Wed, 13 Nov 2019 11:42:47 +0200
Message-ID: <20191113094256.1108-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_014158_340717_F65D7465 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.belloni@bootlin.com, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, krzk@kernel.org, linux-spi@vger.kernel.org,
 vkoul@kernel.org, kgene@kernel.org, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I'm going through the tree to remove dma_request_slave_channel_reason() as it
is just:
#define dma_request_slave_channel_reason(dev, name) \
	dma_request_chan(dev, name)

Regards,
Peter
---
Peter Ujfalusi (9):
  spi: at91-usart: Use dma_request_chan() directly for channel request
  spi: atmel: Use dma_request_chan() directly for channel request
  spi: fsl-lpspi: Use dma_request_chan() directly for channel request
  spi: imx: Use dma_request_chan() directly for channel request
  spi: pl022: Use dma_request_chan() directly for channel request
  spi: qup: Use dma_request_chan() directly for channel request
  spi: s3c64xx: Use dma_request_chan() directly for channel request
  spi: tegra114: Use dma_request_chan() directly for channel request
  spi: tegra20-slink: Use dma_request_chan() directly for channel
    request

 drivers/spi/spi-at91-usart.c    | 4 ++--
 drivers/spi/spi-atmel.c         | 2 +-
 drivers/spi/spi-fsl-lpspi.c     | 4 ++--
 drivers/spi/spi-imx.c           | 4 ++--
 drivers/spi/spi-pl022.c         | 4 ++--
 drivers/spi/spi-qup.c           | 4 ++--
 drivers/spi/spi-s3c64xx.c       | 6 ++----
 drivers/spi/spi-tegra114.c      | 3 +--
 drivers/spi/spi-tegra20-slink.c | 3 +--
 9 files changed, 15 insertions(+), 19 deletions(-)

-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
