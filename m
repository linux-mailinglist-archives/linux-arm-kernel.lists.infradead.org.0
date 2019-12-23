Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA2B1294D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 12:09:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pkuMr4Qc+tDMjvm9OKgYsnUfCYkIVQpfGiKXIR5a6ks=; b=DevkA231WZZpTx
	E6KU/iHgfSTWtMW4myv74SGUwJ64Drgb797urQ9XyvIUBDUdgIxZds4MzCdCIiR44GY9MNqppspOg
	3xf7gYGwU4xR9E6xsIDySmivi+5da00QgjYM5jpb6rJvEBK2FrIHOEMM+hOX0000YT7/qCkgJc8iD
	ltoMwG04Q1rG61ZOJpUeds3QciRULJn+8I3uQ3sgyeLR2bLouMUgR8/0ZUKKh3hMGrWPAIED6Jy0K
	SgoHpHxSytcD8qLJwGPhlT3YnbQ3vVMeUyMF1jfKfAKykyx00Cs171yTeZf+0mAXcDlV0OntoF5uC
	Zg+VqUbx0uKByPfAypCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijLaa-000506-A1; Mon, 23 Dec 2019 11:09:28 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijLWr-0002I7-FO
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 11:05:47 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBNB5Xeo085735;
 Mon, 23 Dec 2019 05:05:33 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1577099133;
 bh=DXhPXQ57bTixpANNa4EeL9ylMJkN8luzm7W8jy4bdI8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=lZaHGjmgf4Uaupf5cCETugvA45j+4x0GwKeDqOxqFQT4vd08A7WWB4z024xFefzlN
 QYaABLNKPJfdb8L122BiRA285KDyGrdpFGSqmiPCLABCmr05lkw8x1+GvaEio50Xa+
 sHmOTNKx1EZ3AKuM7LzNAanAjuGA2PpJCCtLZeuU=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBNB5XrO107219
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 23 Dec 2019 05:05:33 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 23
 Dec 2019 05:05:31 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 23 Dec 2019 05:05:31 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBNB4eMJ025693;
 Mon, 23 Dec 2019 05:05:28 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
Subject: [PATCH v8 12/18] firmware: ti_sci: rm: Add support for tx_tdtype
 parameter for tx channel
Date: Mon, 23 Dec 2019 13:04:52 +0200
Message-ID: <20191223110458.30766-13-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191223110458.30766-1-peter.ujfalusi@ti.com>
References: <20191223110458.30766-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_030537_630222_22D46F57 
X-CRM114-Status: GOOD (  12.57  )
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

The system controller's resource manager have support for configuring the
TDTYPE of TCHAN_CFG register on j721e.
With this parameter the teardown completion can be controlled:
TDTYPE == 0: Return without waiting for peer to complete the teardown
TDTYPE == 1: Wait for peer to complete the teardown

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
Reviewed-by: Tero Kristo <t-kristo@ti.com>
Tested-by: Keerthy <j-keerthy@ti.com>
Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 drivers/firmware/ti_sci.c              | 1 +
 drivers/firmware/ti_sci.h              | 7 +++++++
 include/linux/soc/ti/ti_sci_protocol.h | 2 ++
 3 files changed, 10 insertions(+)

diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
index 4126be9e3216..f13e4a96f3b7 100644
--- a/drivers/firmware/ti_sci.c
+++ b/drivers/firmware/ti_sci.c
@@ -2412,6 +2412,7 @@ static int ti_sci_cmd_rm_udmap_tx_ch_cfg(const struct ti_sci_handle *handle,
 	req->fdepth = params->fdepth;
 	req->tx_sched_priority = params->tx_sched_priority;
 	req->tx_burst_size = params->tx_burst_size;
+	req->tx_tdtype = params->tx_tdtype;
 
 	ret = ti_sci_do_xfer(info, xfer);
 	if (ret) {
diff --git a/drivers/firmware/ti_sci.h b/drivers/firmware/ti_sci.h
index f0d068c03944..255327171dae 100644
--- a/drivers/firmware/ti_sci.h
+++ b/drivers/firmware/ti_sci.h
@@ -910,6 +910,7 @@ struct rm_ti_sci_msg_udmap_rx_flow_opt_cfg {
  *   12 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_credit_count
  *   13 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::fdepth
  *   14 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_burst_size
+ *   15 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_tdtype
  *
  * @nav_id: SoC device ID of Navigator Subsystem where tx channel is located
  *
@@ -973,6 +974,11 @@ struct rm_ti_sci_msg_udmap_rx_flow_opt_cfg {
  *
  * @tx_burst_size: UDMAP transmit channel burst size configuration to be
  * programmed into the tx_burst_size field of the TCHAN_TCFG register.
+ *
+ * @tx_tdtype: UDMAP transmit channel teardown type configuration to be
+ * programmed into the tdtype field of the TCHAN_TCFG register:
+ * 0 - Return immediately
+ * 1 - Wait for completion message from remote peer
  */
 struct ti_sci_msg_rm_udmap_tx_ch_cfg_req {
 	struct ti_sci_msg_hdr hdr;
@@ -994,6 +1000,7 @@ struct ti_sci_msg_rm_udmap_tx_ch_cfg_req {
 	u16 fdepth;
 	u8 tx_sched_priority;
 	u8 tx_burst_size;
+	u8 tx_tdtype;
 } __packed;
 
 /**
diff --git a/include/linux/soc/ti/ti_sci_protocol.h b/include/linux/soc/ti/ti_sci_protocol.h
index 9531ec823298..f3aed0b91564 100644
--- a/include/linux/soc/ti/ti_sci_protocol.h
+++ b/include/linux/soc/ti/ti_sci_protocol.h
@@ -342,6 +342,7 @@ struct ti_sci_msg_rm_udmap_tx_ch_cfg {
 #define TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_SUPR_TDPKT_VALID        BIT(11)
 #define TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_CREDIT_COUNT_VALID      BIT(12)
 #define TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_FDEPTH_VALID            BIT(13)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_TDTYPE_VALID            BIT(15)
 	u16 nav_id;
 	u16 index;
 	u8 tx_pause_on_err;
@@ -359,6 +360,7 @@ struct ti_sci_msg_rm_udmap_tx_ch_cfg {
 	u16 fdepth;
 	u8 tx_sched_priority;
 	u8 tx_burst_size;
+	u8 tx_tdtype;
 };
 
 /**
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
