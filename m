Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F59122B5F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 13:23:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LwXF/Dy3Wni31kns1zyOZVqfDN+vTMcZPJ5r1CiblUE=; b=WMF/yN/xFthPsQ
	YAQ59eCrdVintGeq2SKjy9rQsuZLql25SWHu0CsOATEd3mBedPPmtXB9qEBzxI41H/ebgI9cvXvij
	rQ0cCowZPCyoMNP5vkfBa3p2QYtybg+rJRlMyzIDai7TKWppxfnYddlaf6njdr7bypO5QvnHTx6/m
	cdCwzzkwSIno6gQDCKxKsj3royHoT7DNFmRHWRRGRw4T0BLorspSJq3ULIQrYQZV6ykuio4HCB8LX
	TT8+hWrW3jFlqCBT2VJo7i1WPP3FUIssef2/wDmjntY6CI/cAqmskeqeI/tOAMi2dFP64HvFtmyC5
	peNjbN7PMwG5cqpcsIKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihBsO-00031F-TH; Tue, 17 Dec 2019 12:22:56 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihBsD-00030r-ON; Tue, 17 Dec 2019 12:22:47 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBHCMgIe018636;
 Tue, 17 Dec 2019 06:22:42 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576585362;
 bh=qM9xJdxmrDLNaME/gOYVTnReJwrGrvAeNa92VYltRFM=;
 h=From:To:CC:Subject:Date;
 b=bM70QIlptkcNkidobo0JsKJTMLt21guPkDWa1gj2BY6HTH+1KGrOAEr/fwTXy4xe/
 rtwCTbOCi79rEhbnrtlKk76ZFwkUUSaEcSX1ISRsoX/bqY8KKw6FF46rXmAvVIHm3j
 6+We98QHhTHmX/cwOhwWvnYfRARygw8FcETyZ3rs=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBHCMgmr017727
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 17 Dec 2019 06:22:42 -0600
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 17
 Dec 2019 06:22:42 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 17 Dec 2019 06:22:42 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBHCMcZh054542;
 Tue, 17 Dec 2019 06:22:39 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <ulf.hansson@linaro.org>, <f.fainelli@gmail.com>, <rjui@broadcom.com>,
 <sbranden@broadcom.com>, <nsaenzjulienne@suse.de>
Subject: [PATCH v2] mmc: bcm2835: Use dma_request_chan() instead
 dma_request_slave_channel()
Date: Tue, 17 Dec 2019 14:22:54 +0200
Message-ID: <20191217122254.7103-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_042245_876699_B7939F8B 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, vkoul@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dma_request_slave_channel() is a wrapper on top of dma_request_chan()
eating up the error code.

By using dma_request_chan() directly the driver can support deferred
probing against DMA.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
Hi,

Changes since v1:
- instead of returning jump to err: to free up resources

Regards,
Peter

 drivers/mmc/host/bcm2835.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/bcm2835.c b/drivers/mmc/host/bcm2835.c
index 99f61fd2a658..c3d949847cbd 100644
--- a/drivers/mmc/host/bcm2835.c
+++ b/drivers/mmc/host/bcm2835.c
@@ -1393,7 +1393,17 @@ static int bcm2835_probe(struct platform_device *pdev)
 	host->dma_chan = NULL;
 	host->dma_desc = NULL;
 
-	host->dma_chan_rxtx = dma_request_slave_channel(dev, "rx-tx");
+	host->dma_chan_rxtx = dma_request_chan(dev, "rx-tx");
+	if (IS_ERR(host->dma_chan_rxtx)) {
+		ret = PTR_ERR(host->dma_chan_rxtx);
+		host->dma_chan_rxtx = NULL;
+
+		if (ret == -EPROBE_DEFER)
+			goto err;
+
+		/* Ignore errors to fall back to PIO mode */
+	}
+
 
 	clk = devm_clk_get(dev, NULL);
 	if (IS_ERR(clk)) {
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
