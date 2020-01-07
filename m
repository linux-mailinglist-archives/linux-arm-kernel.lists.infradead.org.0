Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8D3132505
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 12:37:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p+LWeTLhqFH0HFaLW9NduWIt0m6Z7t1fbpL0rIXqC54=; b=jlTM/wfW74wuWG
	DPyyaOl86N116+ARK181QT4oiKN4KoA96ckGzRifyQLbv/PQYt8fBYeqXdOjc08G/8+rDI9CFhfd0
	lcYfTSsJyusuU1m+zqo59sbdjyBVyJBw94s/SOKFo33FB5ci0+grG3NyA3HWEO3WPnyxor/JBALJO
	o/M0lMztibQZjBrpEi94aJ0klo/Eo0Bm00D+NcOoXhLFw8XvDUobSvqH8qj+KAtaWFRsxUaOtdjPv
	8St12x1ccJFWUBjiR4s+yB1LdmRn/dzhWck3FZka6Wt2cnS/J2omYc/eKmtHGQDFV3RuGieGV1d9z
	VZPUMoqgOc7bXNQfe2MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ionAe-0000Qp-8w; Tue, 07 Jan 2020 11:37:12 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ionAX-0000Q0-Aw
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 11:37:06 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 007Bb3Ih031529;
 Tue, 7 Jan 2020 05:37:03 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578397023;
 bh=DRchkeBbfpXpoPDU4rLABJfItAYPhwbN4UBzSTInVco=;
 h=From:To:CC:Subject:Date;
 b=PwUaLm7vhc1r8FlRTJWufFy66U8m0B793SmevJROLewAoDC/DlN8QXKvYRyYSWPaQ
 Dt4RMedAx46Z2f7Xtqvm68DiIVq4Me7uaBs+LujNRtXyHb/qQTEv7jRO1KttX2Tqbk
 L+bo8d5lZrrir4BxxtgN+fvwz2WgPUSVYrSlDSrc=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 007Bb2Ff065450;
 Tue, 7 Jan 2020 05:37:03 -0600
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 7 Jan
 2020 05:37:01 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 7 Jan 2020 05:37:01 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 007BawCS104100;
 Tue, 7 Jan 2020 05:36:59 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <jic23@kernel.org>
Subject: [PATCH v3] iio: adc: at91-sama5d2_adc: Use dma_request_chan() instead
 dma_request_slave_channel()
Date: Tue, 7 Jan 2020 13:37:29 +0200
Message-ID: <20200107113729.5505-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_033705_420748_AE7810D0 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-iio@vger.kernel.org, ludovic.desroches@microchip.com,
 linux-kernel@vger.kernel.org, vkoul@kernel.org, eugen.hristev@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dma_request_slave_channel() is a wrapper on top of dma_request_chan()
eating up the error code.

The dma_request_chan() is the standard API to request slave channel,
clients should be moved away from the legacy API to allow us to retire
them.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
Hi,

Changes since v2:
- Commit message updated

Changes since v1:
- Subject prefix is corrected to "iio: adc: at91-sama5d2_adc:"

Regards,
Peter

 drivers/iio/adc/at91-sama5d2_adc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
index e1850f3d5cf3..a5c7771227d5 100644
--- a/drivers/iio/adc/at91-sama5d2_adc.c
+++ b/drivers/iio/adc/at91-sama5d2_adc.c
@@ -1444,10 +1444,10 @@ static void at91_adc_dma_init(struct platform_device *pdev)
 	if (st->dma_st.dma_chan)
 		return;
 
-	st->dma_st.dma_chan = dma_request_slave_channel(&pdev->dev, "rx");
-
-	if (!st->dma_st.dma_chan)  {
+	st->dma_st.dma_chan = dma_request_chan(&pdev->dev, "rx");
+	if (IS_ERR(st->dma_st.dma_chan))  {
 		dev_info(&pdev->dev, "can't get DMA channel\n");
+		st->dma_st.dma_chan = NULL;
 		goto dma_exit;
 	}
 
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
