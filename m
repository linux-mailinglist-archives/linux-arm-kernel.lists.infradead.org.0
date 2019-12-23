Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B211294D5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 12:09:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k7FJ9ClUBeudnL56VXOspgKaJmAowaaavfY9+xYOrGU=; b=iKSjgvucuU1MOR
	tPu66yBQewR5HA4pZPrs04TJzBxR/4kFDPWnAoCZtYXmYD1d0Hv96F2nacSybnUls3P5zjkI8QaUp
	Tqml7Po+hwApVQF4s5Q3t8YZ/ltBwiWe22bHDPYOezBss1vxg7rrywWL2be5C0rj1M6r1FuqWkOJ6
	gsRuzG6+0JyZyiVBq6HzUaSKo9DqZda/C+AIWxKWLopCiQKXg2NVmzwf+qF51k71Yi7y+lUV5NxJh
	B3X1j23RB4e1sxzQRzdi5MrqxD6rhzaeHItJ5+aFANkJSnrOl612e6uu7yZyzC1MvBLzRc0Zb2pFM
	E1pqE9lXiSuS20hxWbfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijLau-0005Eb-5Y; Mon, 23 Dec 2019 11:09:48 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijLWu-0002Jx-1q
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 11:05:47 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBNB5ZFA085741;
 Mon, 23 Dec 2019 05:05:35 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1577099135;
 bh=ng3cV7nKixZ3AZqN/OwSxz60VqHNtc/YBatih0fgyMQ=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=XZUoq1YXi/erDvwYIqGL6qdtHd+m9fNZb8p8b+bBv6xaV7VugHLqJ+qWU449yTDbi
 MqBjkP9SYDQDQUsourY93039b/8Y1S4rWLlpepHrcGHKNhQyd+APlzAaq1bezcDlBU
 25GofEN9F0dx5q71ILSUFDe54bLK1vZ9lIwOgB2c=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBNB5Z8W107267
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 23 Dec 2019 05:05:35 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 23
 Dec 2019 05:05:35 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 23 Dec 2019 05:05:35 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBNB4eMK025693;
 Mon, 23 Dec 2019 05:05:31 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
Subject: [PATCH v8 13/18] dmaengine: ti: k3-udma: Wait for peer teardown
 completion if supported
Date: Mon, 23 Dec 2019 13:04:53 +0200
Message-ID: <20191223110458.30766-14-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191223110458.30766-1-peter.ujfalusi@ti.com>
References: <20191223110458.30766-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_030540_203719_F590D4FE 
X-CRM114-Status: GOOD (  13.76  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, vigneshr@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, frowand.list@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Set the TDTYPE if it is supported on the platform (j721e) which will cause
UDMAP to wait for the remote peer to finish the teardown before returning
the teardown completed message.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
Tested-by: Keerthy <j-keerthy@ti.com>
Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 drivers/dma/ti/k3-udma.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/ti/k3-udma.c b/drivers/dma/ti/k3-udma.c
index 9974e72cdc50..c97c5f6f1e29 100644
--- a/drivers/dma/ti/k3-udma.c
+++ b/drivers/dma/ti/k3-udma.c
@@ -84,6 +84,7 @@ struct udma_rchan {
 
 #define UDMA_FLAG_PDMA_ACC32		BIT(0)
 #define UDMA_FLAG_PDMA_BURST		BIT(1)
+#define UDMA_FLAG_TDTYPE		BIT(2)
 
 struct udma_match_data {
 	u32 psil_base;
@@ -1587,6 +1588,13 @@ static int udma_tisci_tx_channel_config(struct udma_chan *uc)
 	req_tx.tx_supr_tdpkt = uc->config.notdpkt;
 	req_tx.tx_fetch_size = fetch_size >> 2;
 	req_tx.txcq_qnum = tc_ring;
+	if (uc->config.ep_type == PSIL_EP_PDMA_XY &&
+	    ud->match_data->flags & UDMA_FLAG_TDTYPE) {
+		/* wait for peer to complete the teardown for PDMAs */
+		req_tx.valid_params |=
+				TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_TDTYPE_VALID;
+		req_tx.tx_tdtype = 1;
+	}
 
 	ret = tisci_ops->tx_ch_cfg(tisci_rm->tisci, &req_tx);
 	if (ret)
@@ -3039,7 +3047,7 @@ static struct udma_match_data am654_mcu_data = {
 static struct udma_match_data j721e_main_data = {
 	.psil_base = 0x1000,
 	.enable_memcpy_support = true,
-	.flags = UDMA_FLAG_PDMA_ACC32 | UDMA_FLAG_PDMA_BURST,
+	.flags = UDMA_FLAG_PDMA_ACC32 | UDMA_FLAG_PDMA_BURST | UDMA_FLAG_TDTYPE,
 	.statictr_z_mask = GENMASK(23, 0),
 	.rchan_oes_offset = 0x400,
 	.tpl_levels = 3,
@@ -3053,7 +3061,7 @@ static struct udma_match_data j721e_main_data = {
 static struct udma_match_data j721e_mcu_data = {
 	.psil_base = 0x6000,
 	.enable_memcpy_support = false, /* MEM_TO_MEM is slow via MCU UDMA */
-	.flags = UDMA_FLAG_PDMA_ACC32 | UDMA_FLAG_PDMA_BURST,
+	.flags = UDMA_FLAG_PDMA_ACC32 | UDMA_FLAG_PDMA_BURST | UDMA_FLAG_TDTYPE,
 	.statictr_z_mask = GENMASK(23, 0),
 	.rchan_oes_offset = 0x400,
 	.tpl_levels = 2,
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
