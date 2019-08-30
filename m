Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FEA8A34DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 12:21:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7YZQXkEkW62d1IOKCvfVb0hPr/tXlBl2s890a9Z+Joo=; b=HgQ3XsgNP0Of3G
	lkTNYIM7rhIgMZGNS2zaYBfhO+lsp6LtdQSWnOyxRTJ7AGiv4/GdwLwFvwzJ87qTQ74cVj3PfrE4B
	tXZfbzbOXGKzYn8E9oUbn2QFGsfHRPxc5XOm3InJznHcSMVBbG6HtCgiFMfXYu+hh/bWVEz66Nozv
	PS8GfMpNkVj7mHNhOhAXfsDt2yw6ZEeD9N5sbLB8+t85lqGE0MOQ2TFP0b2g0W+GnGvO74TDN8YFw
	I2WWKfA9ePs5AE+49dQsSKpX2IYQ/8vpcct5f+FfH6HRZVgaqkWNhbuJb27BMxntww4T2pUeyvjuh
	V67knFURb6a/BuEHIIeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3e2S-00033O-2p; Fri, 30 Aug 2019 10:21:52 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3e2I-000332-UP
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 10:21:44 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7UALec9092893;
 Fri, 30 Aug 2019 05:21:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567160500;
 bh=vKTZJMgzaZytH5C5aTM2fc6/XZQCKprvE2QqvlRCBk0=;
 h=From:To:CC:Subject:Date;
 b=i+tjHJ4j+VzwNR5lLjfQujxcBW4aX4HakAsPWNATZyYK8JPUvRszSEsuGXz5sxYhq
 ywZmk3RaZsLfvET6jnWNyiSxWNgZ91LaRDBFKVJT1GPwnn3aRzQ5lsJFNIqBoQIlGF
 sCjq402zCFBESLAo4Kc6tzPOib9DjcrJradwf23M=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7UALelD006295
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 30 Aug 2019 05:21:40 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 30
 Aug 2019 05:21:40 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 30 Aug 2019 05:21:40 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7UALcLt099431;
 Fri, 30 Aug 2019 05:21:38 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <nsekhar@ti.com>, <bgolaszewski@baylibre.com>
Subject: [PATCH] ARM: davinci: dm365: Fix McBSP dma_slave_map entry
Date: Fri, 30 Aug 2019 13:22:02 +0300
Message-ID: <20190830102202.22317-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_032143_048310_389AC892 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dm365 have only single McBSP, so the device name is without .0

Fixes: 0c750e1fe481d ("ARM: davinci: dm365: Add dma_slave_map to edma")
Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 arch/arm/mach-davinci/dm365.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-davinci/dm365.c b/arch/arm/mach-davinci/dm365.c
index 2f9ae6431bf5..cebab6af31a2 100644
--- a/arch/arm/mach-davinci/dm365.c
+++ b/arch/arm/mach-davinci/dm365.c
@@ -462,8 +462,8 @@ static s8 dm365_queue_priority_mapping[][2] = {
 };
 
 static const struct dma_slave_map dm365_edma_map[] = {
-	{ "davinci-mcbsp.0", "tx", EDMA_FILTER_PARAM(0, 2) },
-	{ "davinci-mcbsp.0", "rx", EDMA_FILTER_PARAM(0, 3) },
+	{ "davinci-mcbsp", "tx", EDMA_FILTER_PARAM(0, 2) },
+	{ "davinci-mcbsp", "rx", EDMA_FILTER_PARAM(0, 3) },
 	{ "davinci_voicecodec", "tx", EDMA_FILTER_PARAM(0, 2) },
 	{ "davinci_voicecodec", "rx", EDMA_FILTER_PARAM(0, 3) },
 	{ "spi_davinci.2", "tx", EDMA_FILTER_PARAM(0, 10) },
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
