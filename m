Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E53FACDE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 10:22:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XrmkuXs4Mpq3QxPclmAWMOx1PZDHhu4J8zmG89zBOsY=; b=fY5Y77LyesuST9
	zrXUfrAQGEkgbbzUFoEbq2pxfrjvvOafHIIp4P35l3F9W6RETOwfYN4nc4DNaZAqnOX7qi7xv7onT
	mE47jGnoUJDMOrRx3oweRJWx4pHFz4lkKrd1oJfOY5avGVS6B6W+KMLkxYtfXDx1IXlgDpWEvGJmZ
	YP9RiC2o8uDUGH0492ZPcAi8OnFU/Y0lIYv4ngdnOz8UXK/0F/vHMoNaJu7tUZ6hXiFggrkGvfT7n
	EWdhs1pKx92AacLqjO+YdX7S2chN+NyTYorKbhPoH+XnEv/5CNGl6jtHj0G/7dnXBSWgi0y5+5Per
	Sa7ZcsZueNlpNsSd3qRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUorE-0006uz-BE; Wed, 13 Nov 2019 09:22:36 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUoqM-00069W-4M
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 09:21:43 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAD9Lbln079247;
 Wed, 13 Nov 2019 03:21:37 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573636897;
 bh=VPZmHplZXQZ63+NkFCd+Yo8MCd9uce4y78zsUpDF3q0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=pqvRvrFDAn6U6jgLejHtmCgeFVlxGkxaQpkuv5y2B2Roj2nwta5KMyqKYij3HJL62
 +bYYgSJnae2wBe/b2SgckTaEYgBp97kGa/OcOiIS3jLenUTLJ2pZKrfM+zS2xrYKVF
 w31wISgLz7Gh+q+Nv/yNwOWdp5BVuI9gIVt1Wz4g=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xAD9LbQm101641
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 13 Nov 2019 03:21:37 -0600
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 13
 Nov 2019 03:21:19 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 13 Nov 2019 03:21:19 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAD9LJ1J056807;
 Wed, 13 Nov 2019 03:21:33 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <ludovic.desroches@microchip.com>, <agross@kernel.org>,
 <wsa+renesas@sang-engineering.com>, <ldewangan@nvidia.com>
Subject: [PATCH 3/4] i2c: sh_mobile: Use dma_request_chan() directly for
 channel request
Date: Wed, 13 Nov 2019 11:22:34 +0200
Message-ID: <20191113092235.30440-4-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191113092235.30440-1-peter.ujfalusi@ti.com>
References: <20191113092235.30440-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_012142_285800_2CE40791 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, jonathanh@nvidia.com, vkoul@kernel.org,
 thierry.reding@gmail.com, linux-i2c@vger.kernel.org,
 linux-tegra@vger.kernel.org, digetx@gmail.com, bjorn.andersson@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dma_request_slave_channel_reason() is:
#define dma_request_slave_channel_reason(dev, name) \
	dma_request_chan(dev, name)

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/i2c/busses/i2c-sh_mobile.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-sh_mobile.c b/drivers/i2c/busses/i2c-sh_mobile.c
index 8777af4c695e..82b3b795e0bd 100644
--- a/drivers/i2c/busses/i2c-sh_mobile.c
+++ b/drivers/i2c/busses/i2c-sh_mobile.c
@@ -486,7 +486,7 @@ static struct dma_chan *sh_mobile_i2c_request_dma_chan(struct device *dev,
 	char *chan_name = dir == DMA_MEM_TO_DEV ? "tx" : "rx";
 	int ret;
 
-	chan = dma_request_slave_channel_reason(dev, chan_name);
+	chan = dma_request_chan(dev, chan_name);
 	if (IS_ERR(chan)) {
 		dev_dbg(dev, "request_channel failed for %s (%ld)\n", chan_name,
 			PTR_ERR(chan));
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
