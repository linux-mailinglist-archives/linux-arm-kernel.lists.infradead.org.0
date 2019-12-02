Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FD210F196
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 21:32:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zOqHTJLYdCuxSASF4GbRH9m7TZ2AQp0Ce3aDAKDY0tc=; b=Xy4hgULfkGAj1O
	LrRc6dIbiVTP6CFfm/hqn6KgkthRyLTAdU3PgUeLaO3U1aHgUAc/GxpOL6yXHT+F+4v/CKHGH0en1
	kpv0dtjoJu32gPDTOo2ddB+bLn5zHSyhl1jLMapFL7oEdqV3bqGEmp3d78+7NEpZW2Ns8UMTikTNE
	1evqJxb3rHerrR4LtzC7emC7z8cjOXIMA1b56OfSknqMyXDcuvTkI6FEDsGyZC93SL37htN2CC88g
	IbhppQb2UofLjozhQVh+a5ADt8D4IkHN5x1OPFdo9w6J/9E4P4C4bgvwNo87HAw8mLVP3gd90Rcvg
	nMT2sr2pZwEiuxYFXYlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibsMv-0006gE-Vn; Mon, 02 Dec 2019 20:32:29 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibsME-0005xa-45
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 20:31:47 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xB2KVY1S116144;
 Mon, 2 Dec 2019 14:31:34 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1575318694;
 bh=I4zArTwz2+uyo5cLd8GOGGyuu7Ob1n/MUYmaFykEDf0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=MOrDhfh9Qab1FfK0q8D3QSJmCj8WSAEX4pWScE4+rTh0ADTkMuBdWERv1hbkfI2NN
 LVuwk5sQyE3eO3ffhdzP95BisKvguwfMq3lvOmrEtM/qFPFdCe14294GQwgU4oIglk
 0GZArIFKa0b56G2vwJVniDgOk7zOjGxqu8jazy5U=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xB2KVYZZ116964
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 2 Dec 2019 14:31:34 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 2 Dec
 2019 14:31:33 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 2 Dec 2019 14:31:32 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xB2KVOPn106889;
 Mon, 2 Dec 2019 14:31:30 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>
Subject: [PATCH 2/3] dmaengine: ti: k3-udma: Workaround for stale transfers
Date: Mon, 2 Dec 2019 22:31:27 +0200
Message-ID: <20191202203128.14348-3-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191202203128.14348-1-peter.ujfalusi@ti.com>
References: <0191128105945.13071-1-peter.ujfalusi@ti.com>
 <20191202203128.14348-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_123146_216278_CD83E26E 
X-CRM114-Status: GOOD (  10.40  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: grygorii.strashko@ti.com, vigneshr@ti.com, tony@atomide.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If the client does issue_pending between terminte_all+synchronize and
free_chan_resources, we need to make sure that it has been handled and
cleared up.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/dma/ti/k3-udma.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/dma/ti/k3-udma.c b/drivers/dma/ti/k3-udma.c
index 1b929f7a84d4..3aede5db9604 100644
--- a/drivers/dma/ti/k3-udma.c
+++ b/drivers/dma/ti/k3-udma.c
@@ -2842,6 +2842,10 @@ static void udma_free_chan_resources(struct dma_chan *chan)
 	struct udma_dev *ud = to_udma_dev(chan->device);
 
 	udma_terminate_all(chan);
+	if (uc->terminated_desc) {
+		udma_reset_chan(uc, false);
+		udma_reset_rings(uc);
+	}
 
 	if (uc->irq_num_ring > 0) {
 		free_irq(uc->irq_num_ring, uc);
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
