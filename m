Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC8BFACDD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 10:22:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a0zvqnOFtegAcQPHr0zxZIx5fyOSNGYqisK/jd/AjPQ=; b=lwfm+NmS+B1kqN
	ijbKn8bm2KqXVDjjTlD79rjPrem0VPAUfZIEKNOwhuTzq+BHmWejb+wNOeLwQp2Iwi6F6eXDSAidW
	OTG7yWAWoi/RKDuDNBX+19OOEcXz0NbooFn0UG8W0+FS4KEnIG7XKjiBDiWyqqo8R+9Z5PIKWKEV2
	5HogkBt66p6Sv0fnjI80JWDrMXNTz1kPTvKH6k443tPxP/mqeTwo1zeX9fs1ZpGJb85DWBXjYXi+Q
	NwbLKMIqS/mD4QPnjQ/dDetIYhCDuWzeZySVDGPKQ2x7lxdvn7kTypT+3rL0K1EgPCDdbsYLQUKpN
	7Qga1vNTBwvMnM5oSH7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUor1-0006fz-Mo; Wed, 13 Nov 2019 09:22:23 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUoqK-00066y-92
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 09:21:41 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAD9LZs3079237;
 Wed, 13 Nov 2019 03:21:35 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573636895;
 bh=u9PBpBJyuGK+Y9fwrD9P1uFBRg8ej0bM51sYHD9zJ2E=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ALGUoxWgKCXgCLEsn3aHZeuFbbwtQWHDyd/ghPP5gZ8BMc7pC9DRdQgbnVOYgswGl
 3kkNMeIlfbrMzqFRnChnmGYxq7rCVt7tZf8FvaJLPLhRHo7tC6dZgADnxWtwDKVxZj
 Z/5nlusqlzBhPELltJbxAjA1PVUq5JQJYJMXpqe0=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAD9LZvs030499;
 Wed, 13 Nov 2019 03:21:35 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 13
 Nov 2019 03:21:15 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 13 Nov 2019 03:21:15 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAD9LJ1I056807;
 Wed, 13 Nov 2019 03:21:29 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <ludovic.desroches@microchip.com>, <agross@kernel.org>,
 <wsa+renesas@sang-engineering.com>, <ldewangan@nvidia.com>
Subject: [PATCH 2/4] i2c: qup: Use dma_request_chan() directly for channel
 request
Date: Wed, 13 Nov 2019 11:22:33 +0200
Message-ID: <20191113092235.30440-3-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191113092235.30440-1-peter.ujfalusi@ti.com>
References: <20191113092235.30440-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_012140_430520_22B8BE85 
X-CRM114-Status: GOOD (  11.91  )
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
 drivers/i2c/busses/i2c-qup.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qup.c b/drivers/i2c/busses/i2c-qup.c
index e09cd0775ae9..2d7dabe12723 100644
--- a/drivers/i2c/busses/i2c-qup.c
+++ b/drivers/i2c/busses/i2c-qup.c
@@ -628,7 +628,7 @@ static int qup_i2c_req_dma(struct qup_i2c_dev *qup)
 	int err;
 
 	if (!qup->btx.dma) {
-		qup->btx.dma = dma_request_slave_channel_reason(qup->dev, "tx");
+		qup->btx.dma = dma_request_chan(qup->dev, "tx");
 		if (IS_ERR(qup->btx.dma)) {
 			err = PTR_ERR(qup->btx.dma);
 			qup->btx.dma = NULL;
@@ -638,7 +638,7 @@ static int qup_i2c_req_dma(struct qup_i2c_dev *qup)
 	}
 
 	if (!qup->brx.dma) {
-		qup->brx.dma = dma_request_slave_channel_reason(qup->dev, "rx");
+		qup->brx.dma = dma_request_chan(qup->dev, "rx");
 		if (IS_ERR(qup->brx.dma)) {
 			dev_err(qup->dev, "\n rx channel not available");
 			err = PTR_ERR(qup->brx.dma);
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
