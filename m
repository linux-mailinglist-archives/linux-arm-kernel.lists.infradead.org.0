Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFD013253E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 12:52:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6BtUghxS3q6oE3Ws+jLrHpQcTNiZEG/ouiIT4csTwGE=; b=o/iihMD4/jYcq0
	R1As/6oZCp2yaV/JnQqb7Vx9ZvKsZcYu2AU6fhnByyh52ukohY2nay++x7CBZTKTLOaA/6+yiH+Gl
	VLNOYXFNuFMLm66+rYY0Y/X7i2+f0MT6u7m72gWR4M2V0l0PJkqmq5lOYe/veMUeIMtfT0x9lJx4Y
	edwUqKetCKj3vVa1cpFWBA3u69hIQsX5o2AY8Myo/9hWtFJ78s9xwPne/X3lU+ttws+wiAtxyubjQ
	B0iPQh7uZKlA8sscvH7Xb9TMGZ/qjY85U8BI3Qn6XazVsauT+IOp9quAhBazYYKWs2NYwK3eSNd6Q
	0AnHR0xpT2enBwqUe3jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ionPW-0006lN-O1; Tue, 07 Jan 2020 11:52:34 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ionPQ-0006ku-4J
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 11:52:29 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 007BqQfX107802;
 Tue, 7 Jan 2020 05:52:26 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578397946;
 bh=/n4geygpYCmBAVJrP9D1RQbQETJykF2u108T2+FxKjo=;
 h=From:To:CC:Subject:Date;
 b=k1hPWFn6Big/lJzkUmgjckDkEW991k2QpC99O9QgyWtsoPb+JaMppYnRlpripLn0d
 bCHEKKXWPcJmzmBFEB2Ou3z1Ww6EWS072RLr3LCLssn0y3WQGW6R6UCtxjkks4o/+G
 aEa+yFQvlyufbZohD2/5B8bIiqdATpZu1j99Fv9E=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 007BqQsW048276
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 7 Jan 2020 05:52:26 -0600
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 7 Jan
 2020 05:52:25 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 7 Jan 2020 05:52:25 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 007BqMQ7067156;
 Tue, 7 Jan 2020 05:52:23 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <mchehab@kernel.org>, <hugues.fruchet@st.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>
Subject: [PATCH v2] media: stm32-dcmi: Use dma_request_chan() instead
 dma_request_slave_channel()
Date: Tue, 7 Jan 2020 13:52:53 +0200
Message-ID: <20200107115253.8351-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_035228_251369_B1651714 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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
Cc: vkoul@kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
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
- Do not print error for EPROBE_DEFER

Regards,
Peter

 drivers/media/platform/stm32/stm32-dcmi.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
index 9392e3409fba..b63ff8d636ce 100644
--- a/drivers/media/platform/stm32/stm32-dcmi.c
+++ b/drivers/media/platform/stm32/stm32-dcmi.c
@@ -1910,10 +1910,13 @@ static int dcmi_probe(struct platform_device *pdev)
 		return PTR_ERR(mclk);
 	}
 
-	chan = dma_request_slave_channel(&pdev->dev, "tx");
-	if (!chan) {
-		dev_info(&pdev->dev, "Unable to request DMA channel, defer probing\n");
-		return -EPROBE_DEFER;
+	chan = dma_request_chan(&pdev->dev, "tx");
+	if (IS_ERR(chan)) {
+		ret = PTR_ERR(chan);
+		if (ret != -EPROBE_DEFER)
+			dev_err(&pdev->dev,
+				"Failed to request DMA channel: %d\n", ret);
+		return ret;
 	}
 
 	spin_lock_init(&dcmi->irqlock);
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
