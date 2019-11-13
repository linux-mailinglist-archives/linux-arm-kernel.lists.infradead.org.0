Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F25FAD16
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 10:35:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IT+Whj2j1g744i8JZyQ8aOD7U3ItgiKkdyLLlDzvwKk=; b=pELLi0ewomVBug
	PzBSPdN0v1T9JZivUXAdkR9ChsmLOKMGm/pGbk5GUoYgnTgYR1OXzLLhIQu4bChSjFFKmovm0E6V5
	jtV9bXMe2lGRU4u4XufgXuzYQgBI/A43zpzm0wKk8yam90TBgRgSJh4e+ER/lTfNmnE2/e0aCcuzZ
	zVjlSVNNG0f4YqegJttS/jA6pMq1SkVgRcYh2w637xzR6lSNC+E675QnYBv1BowxL3NqbKNwRAaMM
	QG68NsuStORKXGue+tPcUKhptf2Gx1b2y2+ekJa0cfixFTNLDlAmuswM4R8ZHeUioBA9afFBHTc3e
	4M0srpjnqwIGJSNJXuSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUp3x-0004r3-P3; Wed, 13 Nov 2019 09:35:45 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUp3R-0004HK-7i
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 09:35:14 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAD9Z8pX120169;
 Wed, 13 Nov 2019 03:35:08 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573637708;
 bh=u3ZvJsFOOfO8a0rAzgmvXe0foFjNhQpaW0ZsCfur1kw=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=bn7l0zfNnZ8KC8BrugwAGVFgVIdZalaFTGg9uLrXOOvAW56pIu7/5UpSqQaM9YPBB
 YkYcxCd1OXO7O4qbbwFCGsXIIqVWIVlt4RaL+7wRcwEmjJiB5AHj0l2ZlvfRe2kgwC
 Oc4sjAEheYmA2JJAoVaqrsski1WLpcR1YCckrAbM=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAD9Z8s4051456;
 Wed, 13 Nov 2019 03:35:08 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 13
 Nov 2019 03:34:50 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 13 Nov 2019 03:34:50 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAD9Z0hV086866;
 Wed, 13 Nov 2019 03:35:06 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <ulf.hansson@linaro.org>, <ludovic.desroches@microchip.com>
Subject: [PATCH 2/2] mmc: moxart: Use dma_request_chan() directly for channel
 request
Date: Wed, 13 Nov 2019 11:36:16 +0200
Message-ID: <20191113093616.32474-3-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191113093616.32474-1-peter.ujfalusi@ti.com>
References: <20191113093616.32474-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_013513_417867_6DAC47CA 
X-CRM114-Status: GOOD (  11.70  )
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
Cc: alexandre.belloni@bootlin.com, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, vkoul@kernel.org,
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
 drivers/mmc/host/moxart-mmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mmc/host/moxart-mmc.c b/drivers/mmc/host/moxart-mmc.c
index a0670e9cd012..fc6b9cf27d0b 100644
--- a/drivers/mmc/host/moxart-mmc.c
+++ b/drivers/mmc/host/moxart-mmc.c
@@ -608,8 +608,8 @@ static int moxart_probe(struct platform_device *pdev)
 	host->timeout = msecs_to_jiffies(1000);
 	host->sysclk = clk_get_rate(clk);
 	host->fifo_width = readl(host->base + REG_FEATURE) << 2;
-	host->dma_chan_tx = dma_request_slave_channel_reason(dev, "tx");
-	host->dma_chan_rx = dma_request_slave_channel_reason(dev, "rx");
+	host->dma_chan_tx = dma_request_chan(dev, "tx");
+	host->dma_chan_rx = dma_request_chan(dev, "rx");
 
 	spin_lock_init(&host->lock);
 
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
