Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 380F3122587
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 08:35:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qJ1t1ZON/4EnIZPhjReXasS3/u1yO+PHQstl7JQeS8I=; b=OVoaAoMxJSeM9s
	3YSwZMrZvzqt/vEs88i9Yu3cypTGWnskCIU9KSwa+6fxHW4Kw6KnF6r7WGz+/KU4czjBCy3HsnbTb
	3YsAmWrJMcvqMq5IGyz4kDKH4dEy2I4tVUBi820FgezM30uFqhCAW3bf1gluUvdD9utslv6JWX+S7
	rDb089ljfsocaPOs5xH+xDXZssPOkU9m6xtGf6Y0faz9oX46b4wCmDCWNMG7X6XQciWMADTckpywW
	Xid7s2Pfw+8oiiTWrr7z0I64PdTqDwD6Awyz7ahXwZGmJ82ucs6jcN5C9DtCULQukzmJm9nQAxiQD
	iBrRDGGiN7wz8vKizAVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih7O0-00084D-2c; Tue, 17 Dec 2019 07:35:16 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih7Nn-0007Qt-2j
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 07:35:04 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBH7YsuK075971;
 Tue, 17 Dec 2019 01:34:54 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576568094;
 bh=0FwLBx8XfykMdjHah7/EtEeo+R5IsHmwRrAh/bmn7U4=;
 h=From:To:CC:Subject:Date;
 b=UUA+YQjalhxvPMh5NdESQCFfzVRQt2XhwqSL3G3PxYYsp3oW28ySWeHVVVoE/lGba
 3bd/pHENNNi++tbecyc6j1GI45euxvXFSitWivdhI+x8nPRzhte0iRF0btn3SAdeQ1
 S2rWKAewPtsdaowSrgNsac+nJie8ugQeaU8rUIjI=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBH7YrYM001109;
 Tue, 17 Dec 2019 01:34:54 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 17
 Dec 2019 01:34:53 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 17 Dec 2019 01:34:53 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBH7YoW6058420;
 Tue, 17 Dec 2019 01:34:51 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH] crypto: stm32/hash - Use dma_request_chan() instead
 dma_request_slave_channel()
Date: Tue, 17 Dec 2019 09:35:06 +0200
Message-ID: <20191217073506.20861-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_233503_167005_C28D6B59 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: vkoul@kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
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
 drivers/crypto/stm32/stm32-hash.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/crypto/stm32/stm32-hash.c b/drivers/crypto/stm32/stm32-hash.c
index cfc8e0e37bee..167b80eec437 100644
--- a/drivers/crypto/stm32/stm32-hash.c
+++ b/drivers/crypto/stm32/stm32-hash.c
@@ -518,10 +518,10 @@ static int stm32_hash_dma_init(struct stm32_hash_dev *hdev)
 	dma_conf.dst_maxburst = hdev->dma_maxburst;
 	dma_conf.device_fc = false;
 
-	hdev->dma_lch = dma_request_slave_channel(hdev->dev, "in");
-	if (!hdev->dma_lch) {
+	hdev->dma_lch = dma_request_chan(hdev->dev, "in");
+	if (IS_ERR(hdev->dma_lch)) {
 		dev_err(hdev->dev, "Couldn't acquire a slave DMA channel.\n");
-		return -EBUSY;
+		return PTR_ERR(hdev->dma_lch);
 	}
 
 	err = dmaengine_slave_config(hdev->dma_lch, &dma_conf);
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
