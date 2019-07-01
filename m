Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 283503B1D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 11:19:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uSSZ8qosvxY5B6eRc5rmZjfGIUi1bvBsfK5NLv7Yb6Y=; b=N92VLxHGQTYZmf
	/VCs6CCvCsq4zIvQrmBvnx/FgCsiU2vOQI9/yUDgsK5wv9I0iqeZdXPbe1I7B/z4Qhu8HGD1SULQj
	yjIdEzFykmdzoct5beoLECByJ/u+nMI2G8uIQnecnHiGY5aqL5NrEXrOTtOB/mL+WVK1a/6S7+xFu
	btpDoFbGvx9mcToKQDHfzj/yMVnsn972lKjXkgvUnfz7oKbMx+1PZ3R7XWuelyaH0MCkZDZo4jWqy
	AE2Wen8OJUvrSNaDeGI/chmmx3vdr0/yA48y4qTol43QAwZxFXbC+/m+XOc+bCRnkAxNtYiGbut+U
	W1wwc+pwfLxbG0Z7X8hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haGSI-00021e-9G; Mon, 10 Jun 2019 09:19:06 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haGRx-0001zx-Ah
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 09:18:49 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5A9IWCi089602;
 Mon, 10 Jun 2019 04:18:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560158312;
 bh=hvfr5RYfR1ps4MIKTlEPNHn+3XuPMd9ZEO5yTse5Z1g=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=QrUiKGLOozZDD8oW/jbi0IhqRxV3dpRFl9npdV4+C9/lmixhGANOEQB9rsZZvDw+V
 9R8qz+RNxsq/P2GN7ZWctlOtFotglAx+W2J0yo78t7V2zNxowYppCWXI7JkrKZfdmY
 xS8p0YwXn01QVyPWfuaLkXC+YG+tdwnXyW0RUjQ8=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5A9IW2j112276
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 10 Jun 2019 04:18:32 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 10
 Jun 2019 04:18:31 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 10 Jun 2019 04:18:31 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5A9IPdS034410;
 Mon, 10 Jun 2019 04:18:28 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <nm@ti.com>, <ssantosh@kernel.org>
Subject: [PATCH v1.1] firmware: ti_sci: Add resource management APIs for
 ringacc, psi-l and udma
Date: Mon, 10 Jun 2019 12:18:56 +0300
Message-ID: <20190610091856.25502-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190506123456.6777-2-peter.ujfalusi@ti.com>
References: <20190506123456.6777-2-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_021845_574023_BE34B6D3 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: grygorii.strashko@ti.com, lokeshvutla@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Configuration of NAVSS resource, like rings, UDMAP channels, flows
and PSI-L thread management need to be done via TISCI.

Add the needed structures and functions for NAVSS resource configuration of
the following:
Rings from Ring Accelerator
PSI-L thread management
UDMAP tchan, rchan and rflow configuration.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
Hi,

Changes since v1:
- Missing commit message added
- Comment blocks added for functions lacking them
- Documented rx/tx_burst_size
- Removed dummy structs for ACK/NACK responses
- checkpatch --strict reports replaced:
  CHECK: Lines should not end with a '('
  to
  CHECK: Alignment should match open parenthesis

I did not wanted to send the whole series with change only in this patch, but
Tero indicated that he might be picking this patch up and going to set up an
immutable branch for Vinod containing this patch.

Regards,
Peter

 drivers/firmware/ti_sci.c              | 488 ++++++++++++++++++
 drivers/firmware/ti_sci.h              | 675 +++++++++++++++++++++++++
 include/linux/soc/ti/ti_sci_protocol.h | 215 ++++++++
 3 files changed, 1378 insertions(+)

diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
index 571ce24d7f43..8859c4270a6d 100644
--- a/drivers/firmware/ti_sci.c
+++ b/drivers/firmware/ti_sci.c
@@ -2004,6 +2004,481 @@ static int ti_sci_cmd_free_event_map(const struct ti_sci_handle *handle,
 			       ia_id, vint, global_event, vint_status_bit, 0);
 }
 
+/**
+ * ti_sci_cmd_ring_config() - configure RA ring
+ * @handle:		Pointer to TI SCI handle.
+ * @valid_params:	Bitfield defining validity of ring configuration
+ *			parameters
+ * @nav_id:		Device ID of Navigator Subsystem from which the ring is
+ *			allocated
+ * @index:		Ring index
+ * @addr_lo:		The ring base address lo 32 bits
+ * @addr_hi:		The ring base address hi 32 bits
+ * @count:		Number of ring elements
+ * @mode:		The mode of the ring
+ * @size:		The ring element size.
+ * @order_id:		Specifies the ring's bus order ID
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ *
+ * See @ti_sci_msg_rm_ring_cfg_req for more info.
+ */
+static int ti_sci_cmd_ring_config(const struct ti_sci_handle *handle,
+				  u32 valid_params, u16 nav_id, u16 index,
+				  u32 addr_lo, u32 addr_hi, u32 count,
+				  u8 mode, u8 size, u8 order_id)
+{
+	struct ti_sci_msg_rm_ring_cfg_req *req;
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_xfer *xfer;
+	struct ti_sci_info *info;
+	struct device *dev;
+	int ret = 0;
+
+	if (IS_ERR_OR_NULL(handle))
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+	dev = info->dev;
+
+	xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_RM_RING_CFG,
+				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				   sizeof(*req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		dev_err(info->dev, "RM_RA:Message config failed(%d)\n", ret);
+		return ret;
+	}
+	req = (struct ti_sci_msg_rm_ring_cfg_req *)xfer->xfer_buf;
+	req->valid_params = valid_params;
+	req->nav_id = nav_id;
+	req->index = index;
+	req->addr_lo = addr_lo;
+	req->addr_hi = addr_hi;
+	req->count = count;
+	req->mode = mode;
+	req->size = size;
+	req->order_id = order_id;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret) {
+		dev_err(info->dev, "RM_RA:Mbox config send fail %d\n", ret);
+		goto fail;
+	}
+
+	resp = (struct ti_sci_msg_hdr *)xfer->xfer_buf;
+	ret = ti_sci_is_response_ack(resp) ? 0 : -ENODEV;
+
+fail:
+	ti_sci_put_one_xfer(&info->minfo, xfer);
+	dev_dbg(info->dev, "RM_RA:config ring %u ret:%d\n", index, ret);
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_ring_get_config() - get RA ring configuration
+ * @handle:	Pointer to TI SCI handle.
+ * @nav_id:	Device ID of Navigator Subsystem from which the ring is
+ *		allocated
+ * @index:	Ring index
+ * @addr_lo:	Returns ring's base address lo 32 bits
+ * @addr_hi:	Returns ring's base address hi 32 bits
+ * @count:	Returns number of ring elements
+ * @mode:	Returns mode of the ring
+ * @size:	Returns ring element size
+ * @order_id:	Returns ring's bus order ID
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ *
+ * See @ti_sci_msg_rm_ring_get_cfg_req for more info.
+ */
+static int ti_sci_cmd_ring_get_config(const struct ti_sci_handle *handle,
+				      u32 nav_id, u32 index, u8 *mode,
+				      u32 *addr_lo, u32 *addr_hi,
+				      u32 *count, u8 *size, u8 *order_id)
+{
+	struct ti_sci_msg_rm_ring_get_cfg_resp *resp;
+	struct ti_sci_msg_rm_ring_get_cfg_req *req;
+	struct ti_sci_xfer *xfer;
+	struct ti_sci_info *info;
+	struct device *dev;
+	int ret = 0;
+
+	if (IS_ERR_OR_NULL(handle))
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+	dev = info->dev;
+
+	xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_RM_RING_GET_CFG,
+				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				   sizeof(*req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		dev_err(info->dev,
+			"RM_RA:Message get config failed(%d)\n", ret);
+		return ret;
+	}
+	req = (struct ti_sci_msg_rm_ring_get_cfg_req *)xfer->xfer_buf;
+	req->nav_id = nav_id;
+	req->index = index;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret) {
+		dev_err(info->dev, "RM_RA:Mbox get config send fail %d\n", ret);
+		goto fail;
+	}
+
+	resp = (struct ti_sci_msg_rm_ring_get_cfg_resp *)xfer->xfer_buf;
+
+	if (!ti_sci_is_response_ack(resp)) {
+		ret = -ENODEV;
+	} else {
+		if (mode)
+			*mode = resp->mode;
+		if (addr_lo)
+			*addr_lo = resp->addr_lo;
+		if (addr_hi)
+			*addr_hi = resp->addr_hi;
+		if (count)
+			*count = resp->count;
+		if (size)
+			*size = resp->size;
+		if (order_id)
+			*order_id = resp->order_id;
+	};
+
+fail:
+	ti_sci_put_one_xfer(&info->minfo, xfer);
+	dev_dbg(info->dev, "RM_RA:get config ring %u ret:%d\n", index, ret);
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_rm_psil_pair() - Pair PSI-L source to destination thread
+ * @handle:	Pointer to TI SCI handle.
+ * @nav_id:	Device ID of Navigator Subsystem which should be used for
+ *		pairing
+ * @src_thread:	Source PSI-L thread ID
+ * @dst_thread: Destination PSI-L thread ID
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_rm_psil_pair(const struct ti_sci_handle *handle,
+				   u32 nav_id, u32 src_thread, u32 dst_thread)
+{
+	struct ti_sci_msg_psil_pair *req;
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_xfer *xfer;
+	struct ti_sci_info *info;
+	struct device *dev;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+	dev = info->dev;
+
+	xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_RM_PSIL_PAIR,
+				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				   sizeof(*req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		dev_err(dev, "RM_PSIL:Message reconfig failed(%d)\n", ret);
+		return ret;
+	}
+	req = (struct ti_sci_msg_psil_pair *)xfer->xfer_buf;
+	req->nav_id = nav_id;
+	req->src_thread = src_thread;
+	req->dst_thread = dst_thread;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret) {
+		dev_err(dev, "RM_PSIL:Mbox send fail %d\n", ret);
+		goto fail;
+	}
+
+	resp = (struct ti_sci_msg_hdr *)xfer->xfer_buf;
+	ret = ti_sci_is_response_ack(resp) ? 0 : -EINVAL;
+
+fail:
+	ti_sci_put_one_xfer(&info->minfo, xfer);
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_rm_psil_unpair() - Unpair PSI-L source from destination thread
+ * @handle:	Pointer to TI SCI handle.
+ * @nav_id:	Device ID of Navigator Subsystem which should be used for
+ *		unpairing
+ * @src_thread:	Source PSI-L thread ID
+ * @dst_thread:	Destination PSI-L thread ID
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_rm_psil_unpair(const struct ti_sci_handle *handle,
+				     u32 nav_id, u32 src_thread, u32 dst_thread)
+{
+	struct ti_sci_msg_psil_unpair *req;
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_xfer *xfer;
+	struct ti_sci_info *info;
+	struct device *dev;
+	int ret = 0;
+
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+	dev = info->dev;
+
+	xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_RM_PSIL_UNPAIR,
+				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				   sizeof(*req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		dev_err(dev, "RM_PSIL:Message reconfig failed(%d)\n", ret);
+		return ret;
+	}
+	req = (struct ti_sci_msg_psil_unpair *)xfer->xfer_buf;
+	req->nav_id = nav_id;
+	req->src_thread = src_thread;
+	req->dst_thread = dst_thread;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret) {
+		dev_err(dev, "RM_PSIL:Mbox send fail %d\n", ret);
+		goto fail;
+	}
+
+	resp = (struct ti_sci_msg_hdr *)xfer->xfer_buf;
+	ret = ti_sci_is_response_ack(resp) ? 0 : -EINVAL;
+
+fail:
+	ti_sci_put_one_xfer(&info->minfo, xfer);
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_rm_udmap_tx_ch_cfg() - Configure a UDMAP TX channel
+ * @handle:	Pointer to TI SCI handle.
+ * @params:	Pointer to ti_sci_msg_rm_udmap_tx_ch_cfg TX channel config
+ *		structure
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ *
+ * See @ti_sci_msg_rm_udmap_tx_ch_cfg and @ti_sci_msg_rm_udmap_tx_ch_cfg_req for
+ * more info.
+ */
+static int ti_sci_cmd_rm_udmap_tx_ch_cfg(const struct ti_sci_handle *handle,
+			const struct ti_sci_msg_rm_udmap_tx_ch_cfg *params)
+{
+	struct ti_sci_msg_rm_udmap_tx_ch_cfg_req *req;
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_xfer *xfer;
+	struct ti_sci_info *info;
+	struct device *dev;
+	int ret = 0;
+
+	if (IS_ERR_OR_NULL(handle))
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+	dev = info->dev;
+
+	xfer = ti_sci_get_one_xfer(info, TISCI_MSG_RM_UDMAP_TX_CH_CFG,
+				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				   sizeof(*req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		dev_err(info->dev, "Message TX_CH_CFG alloc failed(%d)\n", ret);
+		return ret;
+	}
+	req = (struct ti_sci_msg_rm_udmap_tx_ch_cfg_req *)xfer->xfer_buf;
+	req->valid_params = params->valid_params;
+	req->nav_id = params->nav_id;
+	req->index = params->index;
+	req->tx_pause_on_err = params->tx_pause_on_err;
+	req->tx_filt_einfo = params->tx_filt_einfo;
+	req->tx_filt_pswords = params->tx_filt_pswords;
+	req->tx_atype = params->tx_atype;
+	req->tx_chan_type = params->tx_chan_type;
+	req->tx_supr_tdpkt = params->tx_supr_tdpkt;
+	req->tx_fetch_size = params->tx_fetch_size;
+	req->tx_credit_count = params->tx_credit_count;
+	req->txcq_qnum = params->txcq_qnum;
+	req->tx_priority = params->tx_priority;
+	req->tx_qos = params->tx_qos;
+	req->tx_orderid = params->tx_orderid;
+	req->fdepth = params->fdepth;
+	req->tx_sched_priority = params->tx_sched_priority;
+	req->tx_burst_size = params->tx_burst_size;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret) {
+		dev_err(info->dev, "Mbox send TX_CH_CFG fail %d\n", ret);
+		goto fail;
+	}
+
+	resp = (struct ti_sci_msg_hdr *)xfer->xfer_buf;
+	ret = ti_sci_is_response_ack(resp) ? 0 : -EINVAL;
+
+fail:
+	ti_sci_put_one_xfer(&info->minfo, xfer);
+	dev_dbg(info->dev, "TX_CH_CFG: chn %u ret:%u\n", params->index, ret);
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_rm_udmap_rx_ch_cfg() - Configure a UDMAP RX channel
+ * @handle:	Pointer to TI SCI handle.
+ * @params:	Pointer to ti_sci_msg_rm_udmap_rx_ch_cfg RX channel config
+ *		structure
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ *
+ * See @ti_sci_msg_rm_udmap_rx_ch_cfg and @ti_sci_msg_rm_udmap_rx_ch_cfg_req for
+ * more info.
+ */
+static int ti_sci_cmd_rm_udmap_rx_ch_cfg(const struct ti_sci_handle *handle,
+			const struct ti_sci_msg_rm_udmap_rx_ch_cfg *params)
+{
+	struct ti_sci_msg_rm_udmap_rx_ch_cfg_req *req;
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_xfer *xfer;
+	struct ti_sci_info *info;
+	struct device *dev;
+	int ret = 0;
+
+	if (IS_ERR_OR_NULL(handle))
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+	dev = info->dev;
+
+	xfer = ti_sci_get_one_xfer(info, TISCI_MSG_RM_UDMAP_RX_CH_CFG,
+				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				   sizeof(*req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		dev_err(info->dev, "Message RX_CH_CFG alloc failed(%d)\n", ret);
+		return ret;
+	}
+	req = (struct ti_sci_msg_rm_udmap_rx_ch_cfg_req *)xfer->xfer_buf;
+	req->valid_params = params->valid_params;
+	req->nav_id = params->nav_id;
+	req->index = params->index;
+	req->rx_fetch_size = params->rx_fetch_size;
+	req->rxcq_qnum = params->rxcq_qnum;
+	req->rx_priority = params->rx_priority;
+	req->rx_qos = params->rx_qos;
+	req->rx_orderid = params->rx_orderid;
+	req->rx_sched_priority = params->rx_sched_priority;
+	req->flowid_start = params->flowid_start;
+	req->flowid_cnt = params->flowid_cnt;
+	req->rx_pause_on_err = params->rx_pause_on_err;
+	req->rx_atype = params->rx_atype;
+	req->rx_chan_type = params->rx_chan_type;
+	req->rx_ignore_short = params->rx_ignore_short;
+	req->rx_ignore_long = params->rx_ignore_long;
+	req->rx_burst_size = params->rx_burst_size;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret) {
+		dev_err(info->dev, "Mbox send RX_CH_CFG fail %d\n", ret);
+		goto fail;
+	}
+
+	resp = (struct ti_sci_msg_hdr *)xfer->xfer_buf;
+	ret = ti_sci_is_response_ack(resp) ? 0 : -EINVAL;
+
+fail:
+	ti_sci_put_one_xfer(&info->minfo, xfer);
+	dev_dbg(info->dev, "RX_CH_CFG: chn %u ret:%d\n", params->index, ret);
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_rm_udmap_rx_flow_cfg() - Configure UDMAP RX FLOW
+ * @handle:	Pointer to TI SCI handle.
+ * @params:	Pointer to ti_sci_msg_rm_udmap_flow_cfg RX FLOW config
+ *		structure
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ *
+ * See @ti_sci_msg_rm_udmap_flow_cfg and @ti_sci_msg_rm_udmap_flow_cfg_req for
+ * more info.
+ */
+static int ti_sci_cmd_rm_udmap_rx_flow_cfg(const struct ti_sci_handle *handle,
+			const struct ti_sci_msg_rm_udmap_flow_cfg *params)
+{
+	struct ti_sci_msg_rm_udmap_flow_cfg_req *req;
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_xfer *xfer;
+	struct ti_sci_info *info;
+	struct device *dev;
+	int ret = 0;
+
+	if (IS_ERR_OR_NULL(handle))
+		return -EINVAL;
+
+	info = handle_to_ti_sci_info(handle);
+	dev = info->dev;
+
+	xfer = ti_sci_get_one_xfer(info, TISCI_MSG_RM_UDMAP_FLOW_CFG,
+				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				   sizeof(*req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		dev_err(dev, "RX_FL_CFG: Message alloc failed(%d)\n", ret);
+		return ret;
+	}
+	req = (struct ti_sci_msg_rm_udmap_flow_cfg_req *)xfer->xfer_buf;
+	req->valid_params = params->valid_params;
+	req->nav_id = params->nav_id;
+	req->flow_index = params->flow_index;
+	req->rx_einfo_present = params->rx_einfo_present;
+	req->rx_psinfo_present = params->rx_psinfo_present;
+	req->rx_error_handling = params->rx_error_handling;
+	req->rx_desc_type = params->rx_desc_type;
+	req->rx_sop_offset = params->rx_sop_offset;
+	req->rx_dest_qnum = params->rx_dest_qnum;
+	req->rx_src_tag_hi = params->rx_src_tag_hi;
+	req->rx_src_tag_lo = params->rx_src_tag_lo;
+	req->rx_dest_tag_hi = params->rx_dest_tag_hi;
+	req->rx_dest_tag_lo = params->rx_dest_tag_lo;
+	req->rx_src_tag_hi_sel = params->rx_src_tag_hi_sel;
+	req->rx_src_tag_lo_sel = params->rx_src_tag_lo_sel;
+	req->rx_dest_tag_hi_sel = params->rx_dest_tag_hi_sel;
+	req->rx_dest_tag_lo_sel = params->rx_dest_tag_lo_sel;
+	req->rx_fdq0_sz0_qnum = params->rx_fdq0_sz0_qnum;
+	req->rx_fdq1_qnum = params->rx_fdq1_qnum;
+	req->rx_fdq2_qnum = params->rx_fdq2_qnum;
+	req->rx_fdq3_qnum = params->rx_fdq3_qnum;
+	req->rx_ps_location = params->rx_ps_location;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret) {
+		dev_err(dev, "RX_FL_CFG: Mbox send fail %d\n", ret);
+		goto fail;
+	}
+
+	resp = (struct ti_sci_msg_hdr *)xfer->xfer_buf;
+	ret = ti_sci_is_response_ack(resp) ? 0 : -EINVAL;
+
+fail:
+	ti_sci_put_one_xfer(&info->minfo, xfer);
+	dev_dbg(info->dev, "RX_FL_CFG: %u ret:%d\n", params->flow_index, ret);
+	return ret;
+}
+
 /*
  * ti_sci_setup_ops() - Setup the operations structures
  * @info:	pointer to TISCI pointer
@@ -2016,6 +2491,9 @@ static void ti_sci_setup_ops(struct ti_sci_info *info)
 	struct ti_sci_clk_ops *cops = &ops->clk_ops;
 	struct ti_sci_rm_core_ops *rm_core_ops = &ops->rm_core_ops;
 	struct ti_sci_rm_irq_ops *iops = &ops->rm_irq_ops;
+	struct ti_sci_rm_ringacc_ops *rops = &ops->rm_ring_ops;
+	struct ti_sci_rm_psil_ops *psilops = &ops->rm_psil_ops;
+	struct ti_sci_rm_udmap_ops *udmap_ops = &ops->rm_udmap_ops;
 
 	core_ops->reboot_device = ti_sci_cmd_core_reboot;
 
@@ -2055,6 +2533,16 @@ static void ti_sci_setup_ops(struct ti_sci_info *info)
 	iops->set_event_map = ti_sci_cmd_set_event_map;
 	iops->free_irq = ti_sci_cmd_free_irq;
 	iops->free_event_map = ti_sci_cmd_free_event_map;
+
+	rops->config = ti_sci_cmd_ring_config;
+	rops->get_config = ti_sci_cmd_ring_get_config;
+
+	psilops->pair = ti_sci_cmd_rm_psil_pair;
+	psilops->unpair = ti_sci_cmd_rm_psil_unpair;
+
+	udmap_ops->tx_ch_cfg = ti_sci_cmd_rm_udmap_tx_ch_cfg;
+	udmap_ops->rx_ch_cfg = ti_sci_cmd_rm_udmap_rx_ch_cfg;
+	udmap_ops->rx_flow_cfg = ti_sci_cmd_rm_udmap_rx_flow_cfg;
 }
 
 /**
diff --git a/drivers/firmware/ti_sci.h b/drivers/firmware/ti_sci.h
index 4983827151bf..2bb81ec7793c 100644
--- a/drivers/firmware/ti_sci.h
+++ b/drivers/firmware/ti_sci.h
@@ -42,6 +42,35 @@
 #define TI_SCI_MSG_SET_IRQ		0x1000
 #define TI_SCI_MSG_FREE_IRQ		0x1001
 
+/* NAVSS resource management */
+/* Ringacc requests */
+#define TI_SCI_MSG_RM_RING_ALLOCATE		0x1100
+#define TI_SCI_MSG_RM_RING_FREE			0x1101
+#define TI_SCI_MSG_RM_RING_RECONFIG		0x1102
+#define TI_SCI_MSG_RM_RING_RESET		0x1103
+#define TI_SCI_MSG_RM_RING_CFG			0x1110
+#define TI_SCI_MSG_RM_RING_GET_CFG		0x1111
+
+/* PSI-L requests */
+#define TI_SCI_MSG_RM_PSIL_PAIR			0x1280
+#define TI_SCI_MSG_RM_PSIL_UNPAIR		0x1281
+
+#define TI_SCI_MSG_RM_UDMAP_TX_ALLOC		0x1200
+#define TI_SCI_MSG_RM_UDMAP_TX_FREE		0x1201
+#define TI_SCI_MSG_RM_UDMAP_RX_ALLOC		0x1210
+#define TI_SCI_MSG_RM_UDMAP_RX_FREE		0x1211
+#define TI_SCI_MSG_RM_UDMAP_FLOW_CFG		0x1220
+#define TI_SCI_MSG_RM_UDMAP_OPT_FLOW_CFG	0x1221
+
+#define TISCI_MSG_RM_UDMAP_TX_CH_CFG		0x1205
+#define TISCI_MSG_RM_UDMAP_TX_CH_GET_CFG	0x1206
+#define TISCI_MSG_RM_UDMAP_RX_CH_CFG		0x1215
+#define TISCI_MSG_RM_UDMAP_RX_CH_GET_CFG	0x1216
+#define TISCI_MSG_RM_UDMAP_FLOW_CFG		0x1230
+#define TISCI_MSG_RM_UDMAP_FLOW_SIZE_THRESH_CFG	0x1231
+#define TISCI_MSG_RM_UDMAP_FLOW_GET_CFG		0x1232
+#define TISCI_MSG_RM_UDMAP_FLOW_SIZE_THRESH_GET_CFG	0x1233
+
 /**
  * struct ti_sci_msg_hdr - Generic Message Header for All messages and responses
  * @type:	Type of messages: One of TI_SCI_MSG* values
@@ -563,4 +592,650 @@ struct ti_sci_msg_req_manage_irq {
 	u8 secondary_host;
 } __packed;
 
+/**
+ * struct ti_sci_msg_rm_ring_cfg_req - Configure a Navigator Subsystem ring
+ *
+ * Configures the non-real-time registers of a Navigator Subsystem ring.
+ * @hdr:	Generic Header
+ * @valid_params: Bitfield defining validity of ring configuration parameters.
+ *	The ring configuration fields are not valid, and will not be used for
+ *	ring configuration, if their corresponding valid bit is zero.
+ *	Valid bit usage:
+ *	0 - Valid bit for @tisci_msg_rm_ring_cfg_req addr_lo
+ *	1 - Valid bit for @tisci_msg_rm_ring_cfg_req addr_hi
+ *	2 - Valid bit for @tisci_msg_rm_ring_cfg_req count
+ *	3 - Valid bit for @tisci_msg_rm_ring_cfg_req mode
+ *	4 - Valid bit for @tisci_msg_rm_ring_cfg_req size
+ *	5 - Valid bit for @tisci_msg_rm_ring_cfg_req order_id
+ * @nav_id: Device ID of Navigator Subsystem from which the ring is allocated
+ * @index: ring index to be configured.
+ * @addr_lo: 32 LSBs of ring base address to be programmed into the ring's
+ *	RING_BA_LO register
+ * @addr_hi: 16 MSBs of ring base address to be programmed into the ring's
+ *	RING_BA_HI register.
+ * @count: Number of ring elements. Must be even if mode is CREDENTIALS or QM
+ *	modes.
+ * @mode: Specifies the mode the ring is to be configured.
+ * @size: Specifies encoded ring element size. To calculate the encoded size use
+ *	the formula (log2(size_bytes) - 2), where size_bytes cannot be
+ *	greater than 256.
+ * @order_id: Specifies the ring's bus order ID.
+ */
+struct ti_sci_msg_rm_ring_cfg_req {
+	struct ti_sci_msg_hdr hdr;
+	u32 valid_params;
+	u16 nav_id;
+	u16 index;
+	u32 addr_lo;
+	u32 addr_hi;
+	u32 count;
+	u8 mode;
+	u8 size;
+	u8 order_id;
+} __packed;
+
+/**
+ * struct ti_sci_msg_rm_ring_get_cfg_req - Get RA ring's configuration
+ *
+ * Gets the configuration of the non-real-time register fields of a ring.  The
+ * host, or a supervisor of the host, who owns the ring must be the requesting
+ * host.  The values of the non-real-time registers are returned in
+ * @ti_sci_msg_rm_ring_get_cfg_resp.
+ *
+ * @hdr: Generic Header
+ * @nav_id: Device ID of Navigator Subsystem from which the ring is allocated
+ * @index: ring index.
+ */
+struct ti_sci_msg_rm_ring_get_cfg_req {
+	struct ti_sci_msg_hdr hdr;
+	u16 nav_id;
+	u16 index;
+} __packed;
+
+/**
+ * struct ti_sci_msg_rm_ring_get_cfg_resp -  Ring get configuration response
+ *
+ * Response received by host processor after RM has handled
+ * @ti_sci_msg_rm_ring_get_cfg_req. The response contains the ring's
+ * non-real-time register values.
+ *
+ * @hdr: Generic Header
+ * @addr_lo: Ring 32 LSBs of base address
+ * @addr_hi: Ring 16 MSBs of base address.
+ * @count: Ring number of elements.
+ * @mode: Ring mode.
+ * @size: encoded Ring element size
+ * @order_id: ing order ID.
+ */
+struct ti_sci_msg_rm_ring_get_cfg_resp {
+	struct ti_sci_msg_hdr hdr;
+	u32 addr_lo;
+	u32 addr_hi;
+	u32 count;
+	u8 mode;
+	u8 size;
+	u8 order_id;
+} __packed;
+
+/**
+ * struct ti_sci_msg_psil_pair - Pairs a PSI-L source thread to a destination
+ *				 thread
+ * @hdr:	Generic Header
+ * @nav_id:	SoC Navigator Subsystem device ID whose PSI-L config proxy is
+ *		used to pair the source and destination threads.
+ * @src_thread:	PSI-L source thread ID within the PSI-L System thread map.
+ *
+ * UDMAP transmit channels mapped to source threads will have their
+ * TCHAN_THRD_ID register programmed with the destination thread if the pairing
+ * is successful.
+
+ * @dst_thread: PSI-L destination thread ID within the PSI-L System thread map.
+ * PSI-L destination threads start at index 0x8000.  The request is NACK'd if
+ * the destination thread is not greater than or equal to 0x8000.
+ *
+ * UDMAP receive channels mapped to destination threads will have their
+ * RCHAN_THRD_ID register programmed with the source thread if the pairing
+ * is successful.
+ *
+ * Request type is TI_SCI_MSG_RM_PSIL_PAIR, response is a generic ACK or NACK
+ * message.
+ */
+struct ti_sci_msg_psil_pair {
+	struct ti_sci_msg_hdr hdr;
+	u32 nav_id;
+	u32 src_thread;
+	u32 dst_thread;
+} __packed;
+
+/**
+ * struct ti_sci_msg_psil_unpair - Unpairs a PSI-L source thread from a
+ *				   destination thread
+ * @hdr:	Generic Header
+ * @nav_id:	SoC Navigator Subsystem device ID whose PSI-L config proxy is
+ *		used to unpair the source and destination threads.
+ * @src_thread:	PSI-L source thread ID within the PSI-L System thread map.
+ *
+ * UDMAP transmit channels mapped to source threads will have their
+ * TCHAN_THRD_ID register cleared if the unpairing is successful.
+ *
+ * @dst_thread: PSI-L destination thread ID within the PSI-L System thread map.
+ * PSI-L destination threads start at index 0x8000.  The request is NACK'd if
+ * the destination thread is not greater than or equal to 0x8000.
+ *
+ * UDMAP receive channels mapped to destination threads will have their
+ * RCHAN_THRD_ID register cleared if the unpairing is successful.
+ *
+ * Request type is TI_SCI_MSG_RM_PSIL_UNPAIR, response is a generic ACK or NACK
+ * message.
+ */
+struct ti_sci_msg_psil_unpair {
+	struct ti_sci_msg_hdr hdr;
+	u32 nav_id;
+	u32 src_thread;
+	u32 dst_thread;
+} __packed;
+
+/**
+ * struct ti_sci_msg_udmap_rx_flow_cfg -  UDMAP receive flow configuration
+ *					  message
+ * @hdr: Generic Header
+ * @nav_id: SoC Navigator Subsystem device ID from which the receive flow is
+ *	allocated
+ * @flow_index: UDMAP receive flow index for non-optional configuration.
+ * @rx_ch_index: Specifies the index of the receive channel using the flow_index
+ * @rx_einfo_present: UDMAP receive flow extended packet info present.
+ * @rx_psinfo_present: UDMAP receive flow PS words present.
+ * @rx_error_handling: UDMAP receive flow error handling configuration. Valid
+ *	values are TI_SCI_RM_UDMAP_RX_FLOW_ERR_DROP/RETRY.
+ * @rx_desc_type: UDMAP receive flow descriptor type. It can be one of
+ *	TI_SCI_RM_UDMAP_RX_FLOW_DESC_HOST/MONO.
+ * @rx_sop_offset: UDMAP receive flow start of packet offset.
+ * @rx_dest_qnum: UDMAP receive flow destination queue number.
+ * @rx_ps_location: UDMAP receive flow PS words location.
+ *	0 - end of packet descriptor
+ *	1 - Beginning of the data buffer
+ * @rx_src_tag_hi: UDMAP receive flow source tag high byte constant
+ * @rx_src_tag_lo: UDMAP receive flow source tag low byte constant
+ * @rx_dest_tag_hi: UDMAP receive flow destination tag high byte constant
+ * @rx_dest_tag_lo: UDMAP receive flow destination tag low byte constant
+ * @rx_src_tag_hi_sel: UDMAP receive flow source tag high byte selector
+ * @rx_src_tag_lo_sel: UDMAP receive flow source tag low byte selector
+ * @rx_dest_tag_hi_sel: UDMAP receive flow destination tag high byte selector
+ * @rx_dest_tag_lo_sel: UDMAP receive flow destination tag low byte selector
+ * @rx_size_thresh_en: UDMAP receive flow packet size based free buffer queue
+ *	enable. If enabled, the ti_sci_rm_udmap_rx_flow_opt_cfg also need to be
+ *	configured and sent.
+ * @rx_fdq0_sz0_qnum: UDMAP receive flow free descriptor queue 0.
+ * @rx_fdq1_qnum: UDMAP receive flow free descriptor queue 1.
+ * @rx_fdq2_qnum: UDMAP receive flow free descriptor queue 2.
+ * @rx_fdq3_qnum: UDMAP receive flow free descriptor queue 3.
+ *
+ * For detailed information on the settings, see the UDMAP section of the TRM.
+ */
+struct ti_sci_msg_udmap_rx_flow_cfg {
+	struct ti_sci_msg_hdr hdr;
+	u32 nav_id;
+	u32 flow_index;
+	u32 rx_ch_index;
+	u8 rx_einfo_present;
+	u8 rx_psinfo_present;
+	u8 rx_error_handling;
+	u8 rx_desc_type;
+	u16 rx_sop_offset;
+	u16 rx_dest_qnum;
+	u8 rx_ps_location;
+	u8 rx_src_tag_hi;
+	u8 rx_src_tag_lo;
+	u8 rx_dest_tag_hi;
+	u8 rx_dest_tag_lo;
+	u8 rx_src_tag_hi_sel;
+	u8 rx_src_tag_lo_sel;
+	u8 rx_dest_tag_hi_sel;
+	u8 rx_dest_tag_lo_sel;
+	u8 rx_size_thresh_en;
+	u16 rx_fdq0_sz0_qnum;
+	u16 rx_fdq1_qnum;
+	u16 rx_fdq2_qnum;
+	u16 rx_fdq3_qnum;
+} __packed;
+
+/**
+ * struct rm_ti_sci_msg_udmap_rx_flow_opt_cfg - parameters for UDMAP receive
+ *						flow optional configuration
+ * @hdr: Generic Header
+ * @nav_id: SoC Navigator Subsystem device ID from which the receive flow is
+ *	allocated
+ * @flow_index: UDMAP receive flow index for optional configuration.
+ * @rx_ch_index: Specifies the index of the receive channel using the flow_index
+ * @rx_size_thresh0: UDMAP receive flow packet size threshold 0.
+ * @rx_size_thresh1: UDMAP receive flow packet size threshold 1.
+ * @rx_size_thresh2: UDMAP receive flow packet size threshold 2.
+ * @rx_fdq0_sz1_qnum: UDMAP receive flow free descriptor queue for size
+ *	threshold 1.
+ * @rx_fdq0_sz2_qnum: UDMAP receive flow free descriptor queue for size
+ *	threshold 2.
+ * @rx_fdq0_sz3_qnum: UDMAP receive flow free descriptor queue for size
+ *	threshold 3.
+ *
+ * For detailed information on the settings, see the UDMAP section of the TRM.
+ */
+struct rm_ti_sci_msg_udmap_rx_flow_opt_cfg {
+	struct ti_sci_msg_hdr hdr;
+	u32 nav_id;
+	u32 flow_index;
+	u32 rx_ch_index;
+	u16 rx_size_thresh0;
+	u16 rx_size_thresh1;
+	u16 rx_size_thresh2;
+	u16 rx_fdq0_sz1_qnum;
+	u16 rx_fdq0_sz2_qnum;
+	u16 rx_fdq0_sz3_qnum;
+} __packed;
+
+/**
+ * Configures a Navigator Subsystem UDMAP transmit channel
+ *
+ * Configures the non-real-time registers of a Navigator Subsystem UDMAP
+ * transmit channel.  The channel index must be assigned to the host defined
+ * in the TISCI header via the RM board configuration resource assignment
+ * range list.
+ *
+ * @hdr: Generic Header
+ *
+ * @valid_params: Bitfield defining validity of tx channel configuration
+ * parameters. The tx channel configuration fields are not valid, and will not
+ * be used for ch configuration, if their corresponding valid bit is zero.
+ * Valid bit usage:
+ *    0 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_pause_on_err
+ *    1 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_atype
+ *    2 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_chan_type
+ *    3 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_fetch_size
+ *    4 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::txcq_qnum
+ *    5 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_priority
+ *    6 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_qos
+ *    7 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_orderid
+ *    8 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_sched_priority
+ *    9 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_filt_einfo
+ *   10 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_filt_pswords
+ *   11 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_supr_tdpkt
+ *   12 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_credit_count
+ *   13 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::fdepth
+ *   14 - Valid bit for @ref ti_sci_msg_rm_udmap_tx_ch_cfg::tx_burst_size
+ *
+ * @nav_id: SoC device ID of Navigator Subsystem where tx channel is located
+ *
+ * @index: UDMAP transmit channel index.
+ *
+ * @tx_pause_on_err: UDMAP transmit channel pause on error configuration to
+ * be programmed into the tx_pause_on_err field of the channel's TCHAN_TCFG
+ * register.
+ *
+ * @tx_filt_einfo: UDMAP transmit channel extended packet information passing
+ * configuration to be programmed into the tx_filt_einfo field of the
+ * channel's TCHAN_TCFG register.
+ *
+ * @tx_filt_pswords: UDMAP transmit channel protocol specific word passing
+ * configuration to be programmed into the tx_filt_pswords field of the
+ * channel's TCHAN_TCFG register.
+ *
+ * @tx_atype: UDMAP transmit channel non Ring Accelerator access pointer
+ * interpretation configuration to be programmed into the tx_atype field of
+ * the channel's TCHAN_TCFG register.
+ *
+ * @tx_chan_type: UDMAP transmit channel functional channel type and work
+ * passing mechanism configuration to be programmed into the tx_chan_type
+ * field of the channel's TCHAN_TCFG register.
+ *
+ * @tx_supr_tdpkt: UDMAP transmit channel teardown packet generation suppression
+ * configuration to be programmed into the tx_supr_tdpkt field of the channel's
+ * TCHAN_TCFG register.
+ *
+ * @tx_fetch_size: UDMAP transmit channel number of 32-bit descriptor words to
+ * fetch configuration to be programmed into the tx_fetch_size field of the
+ * channel's TCHAN_TCFG register.  The user must make sure to set the maximum
+ * word count that can pass through the channel for any allowed descriptor type.
+ *
+ * @tx_credit_count: UDMAP transmit channel transfer request credit count
+ * configuration to be programmed into the count field of the TCHAN_TCREDIT
+ * register.  Specifies how many credits for complete TRs are available.
+ *
+ * @txcq_qnum: UDMAP transmit channel completion queue configuration to be
+ * programmed into the txcq_qnum field of the TCHAN_TCQ register. The specified
+ * completion queue must be assigned to the host, or a subordinate of the host,
+ * requesting configuration of the transmit channel.
+ *
+ * @tx_priority: UDMAP transmit channel transmit priority value to be programmed
+ * into the priority field of the channel's TCHAN_TPRI_CTRL register.
+ *
+ * @tx_qos: UDMAP transmit channel transmit qos value to be programmed into the
+ * qos field of the channel's TCHAN_TPRI_CTRL register.
+ *
+ * @tx_orderid: UDMAP transmit channel bus order id value to be programmed into
+ * the orderid field of the channel's TCHAN_TPRI_CTRL register.
+ *
+ * @fdepth: UDMAP transmit channel FIFO depth configuration to be programmed
+ * into the fdepth field of the TCHAN_TFIFO_DEPTH register. Sets the number of
+ * Tx FIFO bytes which are allowed to be stored for the channel. Check the UDMAP
+ * section of the TRM for restrictions regarding this parameter.
+ *
+ * @tx_sched_priority: UDMAP transmit channel tx scheduling priority
+ * configuration to be programmed into the priority field of the channel's
+ * TCHAN_TST_SCHED register.
+ *
+ * @tx_burst_size: UDMAP transmit channel burst size configuration to be
+ * programmed into the tx_burst_size field of the TCHAN_TCFG register.
+ */
+struct ti_sci_msg_rm_udmap_tx_ch_cfg_req {
+	struct ti_sci_msg_hdr hdr;
+	u32 valid_params;
+	u16 nav_id;
+	u16 index;
+	u8 tx_pause_on_err;
+	u8 tx_filt_einfo;
+	u8 tx_filt_pswords;
+	u8 tx_atype;
+	u8 tx_chan_type;
+	u8 tx_supr_tdpkt;
+	u16 tx_fetch_size;
+	u8 tx_credit_count;
+	u16 txcq_qnum;
+	u8 tx_priority;
+	u8 tx_qos;
+	u8 tx_orderid;
+	u16 fdepth;
+	u8 tx_sched_priority;
+	u8 tx_burst_size;
+} __packed;
+
+/**
+ * Configures a Navigator Subsystem UDMAP receive channel
+ *
+ * Configures the non-real-time registers of a Navigator Subsystem UDMAP
+ * receive channel.  The channel index must be assigned to the host defined
+ * in the TISCI header via the RM board configuration resource assignment
+ * range list.
+ *
+ * @hdr: Generic Header
+ *
+ * @valid_params: Bitfield defining validity of rx channel configuration
+ * parameters.
+ * The rx channel configuration fields are not valid, and will not be used for
+ * ch configuration, if their corresponding valid bit is zero.
+ * Valid bit usage:
+ *    0 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::rx_pause_on_err
+ *    1 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::rx_atype
+ *    2 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::rx_chan_type
+ *    3 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::rx_fetch_size
+ *    4 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::rxcq_qnum
+ *    5 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::rx_priority
+ *    6 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::rx_qos
+ *    7 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::rx_orderid
+ *    8 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::rx_sched_priority
+ *    9 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::flowid_start
+ *   10 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::flowid_cnt
+ *   11 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::rx_ignore_short
+ *   12 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::rx_ignore_long
+ *   14 - Valid bit for @ti_sci_msg_rm_udmap_rx_ch_cfg_req::rx_burst_size
+ *
+ * @nav_id: SoC device ID of Navigator Subsystem where rx channel is located
+ *
+ * @index: UDMAP receive channel index.
+ *
+ * @rx_fetch_size: UDMAP receive channel number of 32-bit descriptor words to
+ * fetch configuration to be programmed into the rx_fetch_size field of the
+ * channel's RCHAN_RCFG register.
+ *
+ * @rxcq_qnum: UDMAP receive channel completion queue configuration to be
+ * programmed into the rxcq_qnum field of the RCHAN_RCQ register.
+ * The specified completion queue must be assigned to the host, or a subordinate
+ * of the host, requesting configuration of the receive channel.
+ *
+ * @rx_priority: UDMAP receive channel receive priority value to be programmed
+ * into the priority field of the channel's RCHAN_RPRI_CTRL register.
+ *
+ * @rx_qos: UDMAP receive channel receive qos value to be programmed into the
+ * qos field of the channel's RCHAN_RPRI_CTRL register.
+ *
+ * @rx_orderid: UDMAP receive channel bus order id value to be programmed into
+ * the orderid field of the channel's RCHAN_RPRI_CTRL register.
+ *
+ * @rx_sched_priority: UDMAP receive channel rx scheduling priority
+ * configuration to be programmed into the priority field of the channel's
+ * RCHAN_RST_SCHED register.
+ *
+ * @flowid_start: UDMAP receive channel additional flows starting index
+ * configuration to program into the flow_start field of the RCHAN_RFLOW_RNG
+ * register. Specifies the starting index for flow IDs the receive channel is to
+ * make use of beyond the default flow. flowid_start and @ref flowid_cnt must be
+ * set as valid and configured together. The starting flow ID set by
+ * @ref flowid_cnt must be a flow index within the Navigator Subsystem's subset
+ * of flows beyond the default flows statically mapped to receive channels.
+ * The additional flows must be assigned to the host, or a subordinate of the
+ * host, requesting configuration of the receive channel.
+ *
+ * @flowid_cnt: UDMAP receive channel additional flows count configuration to
+ * program into the flowid_cnt field of the RCHAN_RFLOW_RNG register.
+ * This field specifies how many flow IDs are in the additional contiguous range
+ * of legal flow IDs for the channel.  @ref flowid_start and flowid_cnt must be
+ * set as valid and configured together. Disabling the valid_params field bit
+ * for flowid_cnt indicates no flow IDs other than the default are to be
+ * allocated and used by the receive channel. @ref flowid_start plus flowid_cnt
+ * cannot be greater than the number of receive flows in the receive channel's
+ * Navigator Subsystem.  The additional flows must be assigned to the host, or a
+ * subordinate of the host, requesting configuration of the receive channel.
+ *
+ * @rx_pause_on_err: UDMAP receive channel pause on error configuration to be
+ * programmed into the rx_pause_on_err field of the channel's RCHAN_RCFG
+ * register.
+ *
+ * @rx_atype: UDMAP receive channel non Ring Accelerator access pointer
+ * interpretation configuration to be programmed into the rx_atype field of the
+ * channel's RCHAN_RCFG register.
+ *
+ * @rx_chan_type: UDMAP receive channel functional channel type and work passing
+ * mechanism configuration to be programmed into the rx_chan_type field of the
+ * channel's RCHAN_RCFG register.
+ *
+ * @rx_ignore_short: UDMAP receive channel short packet treatment configuration
+ * to be programmed into the rx_ignore_short field of the RCHAN_RCFG register.
+ *
+ * @rx_ignore_long: UDMAP receive channel long packet treatment configuration to
+ * be programmed into the rx_ignore_long field of the RCHAN_RCFG register.
+ *
+ * @rx_burst_size: UDMAP receive channel burst size configuration to be
+ * programmed into the rx_burst_size field of the RCHAN_RCFG register.
+ */
+struct ti_sci_msg_rm_udmap_rx_ch_cfg_req {
+	struct ti_sci_msg_hdr hdr;
+	u32 valid_params;
+	u16 nav_id;
+	u16 index;
+	u16 rx_fetch_size;
+	u16 rxcq_qnum;
+	u8 rx_priority;
+	u8 rx_qos;
+	u8 rx_orderid;
+	u8 rx_sched_priority;
+	u16 flowid_start;
+	u16 flowid_cnt;
+	u8 rx_pause_on_err;
+	u8 rx_atype;
+	u8 rx_chan_type;
+	u8 rx_ignore_short;
+	u8 rx_ignore_long;
+	u8 rx_burst_size;
+} __packed;
+
+/**
+ * Configures a Navigator Subsystem UDMAP receive flow
+ *
+ * Configures a Navigator Subsystem UDMAP receive flow's registers.
+ * Configuration does not include the flow registers which handle size-based
+ * free descriptor queue routing.
+ *
+ * The flow index must be assigned to the host defined in the TISCI header via
+ * the RM board configuration resource assignment range list.
+ *
+ * @hdr: Standard TISCI header
+ *
+ * @valid_params
+ * Bitfield defining validity of rx flow configuration parameters.  The
+ * rx flow configuration fields are not valid, and will not be used for flow
+ * configuration, if their corresponding valid bit is zero.  Valid bit usage:
+ *     0 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_einfo_present
+ *     1 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_psinfo_present
+ *     2 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_error_handling
+ *     3 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_desc_type
+ *     4 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_sop_offset
+ *     5 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_dest_qnum
+ *     6 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_src_tag_hi
+ *     7 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_src_tag_lo
+ *     8 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_dest_tag_hi
+ *     9 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_dest_tag_lo
+ *    10 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_src_tag_hi_sel
+ *    11 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_src_tag_lo_sel
+ *    12 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_dest_tag_hi_sel
+ *    13 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_dest_tag_lo_sel
+ *    14 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_fdq0_sz0_qnum
+ *    15 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_fdq1_sz0_qnum
+ *    16 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_fdq2_sz0_qnum
+ *    17 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_fdq3_sz0_qnum
+ *    18 - Valid bit for @tisci_msg_rm_udmap_flow_cfg_req::rx_ps_location
+ *
+ * @nav_id: SoC device ID of Navigator Subsystem from which the receive flow is
+ * allocated
+ *
+ * @flow_index: UDMAP receive flow index for non-optional configuration.
+ *
+ * @rx_einfo_present:
+ * UDMAP receive flow extended packet info present configuration to be
+ * programmed into the rx_einfo_present field of the flow's RFLOW_RFA register.
+ *
+ * @rx_psinfo_present:
+ * UDMAP receive flow PS words present configuration to be programmed into the
+ * rx_psinfo_present field of the flow's RFLOW_RFA register.
+ *
+ * @rx_error_handling:
+ * UDMAP receive flow error handling configuration to be programmed into the
+ * rx_error_handling field of the flow's RFLOW_RFA register.
+ *
+ * @rx_desc_type:
+ * UDMAP receive flow descriptor type configuration to be programmed into the
+ * rx_desc_type field field of the flow's RFLOW_RFA register.
+ *
+ * @rx_sop_offset:
+ * UDMAP receive flow start of packet offset configuration to be programmed
+ * into the rx_sop_offset field of the RFLOW_RFA register.  See the UDMAP
+ * section of the TRM for more information on this setting.  Valid values for
+ * this field are 0-255 bytes.
+ *
+ * @rx_dest_qnum:
+ * UDMAP receive flow destination queue configuration to be programmed into the
+ * rx_dest_qnum field of the flow's RFLOW_RFA register.  The specified
+ * destination queue must be valid within the Navigator Subsystem and must be
+ * owned by the host, or a subordinate of the host, requesting allocation and
+ * configuration of the receive flow.
+ *
+ * @rx_src_tag_hi:
+ * UDMAP receive flow source tag high byte constant configuration to be
+ * programmed into the rx_src_tag_hi field of the flow's RFLOW_RFB register.
+ * See the UDMAP section of the TRM for more information on this setting.
+ *
+ * @rx_src_tag_lo:
+ * UDMAP receive flow source tag low byte constant configuration to be
+ * programmed into the rx_src_tag_lo field of the flow's RFLOW_RFB register.
+ * See the UDMAP section of the TRM for more information on this setting.
+ *
+ * @rx_dest_tag_hi:
+ * UDMAP receive flow destination tag high byte constant configuration to be
+ * programmed into the rx_dest_tag_hi field of the flow's RFLOW_RFB register.
+ * See the UDMAP section of the TRM for more information on this setting.
+ *
+ * @rx_dest_tag_lo:
+ * UDMAP receive flow destination tag low byte constant configuration to be
+ * programmed into the rx_dest_tag_lo field of the flow's RFLOW_RFB register.
+ * See the UDMAP section of the TRM for more information on this setting.
+ *
+ * @rx_src_tag_hi_sel:
+ * UDMAP receive flow source tag high byte selector configuration to be
+ * programmed into the rx_src_tag_hi_sel field of the RFLOW_RFC register.  See
+ * the UDMAP section of the TRM for more information on this setting.
+ *
+ * @rx_src_tag_lo_sel:
+ * UDMAP receive flow source tag low byte selector configuration to be
+ * programmed into the rx_src_tag_lo_sel field of the RFLOW_RFC register.  See
+ * the UDMAP section of the TRM for more information on this setting.
+ *
+ * @rx_dest_tag_hi_sel:
+ * UDMAP receive flow destination tag high byte selector configuration to be
+ * programmed into the rx_dest_tag_hi_sel field of the RFLOW_RFC register.  See
+ * the UDMAP section of the TRM for more information on this setting.
+ *
+ * @rx_dest_tag_lo_sel:
+ * UDMAP receive flow destination tag low byte selector configuration to be
+ * programmed into the rx_dest_tag_lo_sel field of the RFLOW_RFC register.  See
+ * the UDMAP section of the TRM for more information on this setting.
+ *
+ * @rx_fdq0_sz0_qnum:
+ * UDMAP receive flow free descriptor queue 0 configuration to be programmed
+ * into the rx_fdq0_sz0_qnum field of the flow's RFLOW_RFD register.  See the
+ * UDMAP section of the TRM for more information on this setting. The specified
+ * free queue must be valid within the Navigator Subsystem and must be owned
+ * by the host, or a subordinate of the host, requesting allocation and
+ * configuration of the receive flow.
+ *
+ * @rx_fdq1_qnum:
+ * UDMAP receive flow free descriptor queue 1 configuration to be programmed
+ * into the rx_fdq1_qnum field of the flow's RFLOW_RFD register.  See the
+ * UDMAP section of the TRM for more information on this setting.  The specified
+ * free queue must be valid within the Navigator Subsystem and must be owned
+ * by the host, or a subordinate of the host, requesting allocation and
+ * configuration of the receive flow.
+ *
+ * @rx_fdq2_qnum:
+ * UDMAP receive flow free descriptor queue 2 configuration to be programmed
+ * into the rx_fdq2_qnum field of the flow's RFLOW_RFE register.  See the
+ * UDMAP section of the TRM for more information on this setting.  The specified
+ * free queue must be valid within the Navigator Subsystem and must be owned
+ * by the host, or a subordinate of the host, requesting allocation and
+ * configuration of the receive flow.
+ *
+ * @rx_fdq3_qnum:
+ * UDMAP receive flow free descriptor queue 3 configuration to be programmed
+ * into the rx_fdq3_qnum field of the flow's RFLOW_RFE register.  See the
+ * UDMAP section of the TRM for more information on this setting.  The specified
+ * free queue must be valid within the Navigator Subsystem and must be owned
+ * by the host, or a subordinate of the host, requesting allocation and
+ * configuration of the receive flow.
+ *
+ * @rx_ps_location:
+ * UDMAP receive flow PS words location configuration to be programmed into the
+ * rx_ps_location field of the flow's RFLOW_RFA register.
+ */
+struct ti_sci_msg_rm_udmap_flow_cfg_req {
+	struct ti_sci_msg_hdr hdr;
+	u32 valid_params;
+	u16 nav_id;
+	u16 flow_index;
+	u8 rx_einfo_present;
+	u8 rx_psinfo_present;
+	u8 rx_error_handling;
+	u8 rx_desc_type;
+	u16 rx_sop_offset;
+	u16 rx_dest_qnum;
+	u8 rx_src_tag_hi;
+	u8 rx_src_tag_lo;
+	u8 rx_dest_tag_hi;
+	u8 rx_dest_tag_lo;
+	u8 rx_src_tag_hi_sel;
+	u8 rx_src_tag_lo_sel;
+	u8 rx_dest_tag_hi_sel;
+	u8 rx_dest_tag_lo_sel;
+	u16 rx_fdq0_sz0_qnum;
+	u16 rx_fdq1_qnum;
+	u16 rx_fdq2_qnum;
+	u16 rx_fdq3_qnum;
+	u8 rx_ps_location;
+} __packed;
+
 #endif /* __TI_SCI_H */
diff --git a/include/linux/soc/ti/ti_sci_protocol.h b/include/linux/soc/ti/ti_sci_protocol.h
index 568722a041bf..4fd9bff5806b 100644
--- a/include/linux/soc/ti/ti_sci_protocol.h
+++ b/include/linux/soc/ti/ti_sci_protocol.h
@@ -241,6 +241,218 @@ struct ti_sci_rm_irq_ops {
 			      u16 global_event, u8 vint_status_bit);
 };
 
+/* RA config.addr_lo parameter is valid for RM ring configure TI_SCI message */
+#define TI_SCI_MSG_VALUE_RM_RING_ADDR_LO_VALID	BIT(0)
+/* RA config.addr_hi parameter is valid for RM ring configure TI_SCI message */
+#define TI_SCI_MSG_VALUE_RM_RING_ADDR_HI_VALID	BIT(1)
+ /* RA config.count parameter is valid for RM ring configure TI_SCI message */
+#define TI_SCI_MSG_VALUE_RM_RING_COUNT_VALID	BIT(2)
+/* RA config.mode parameter is valid for RM ring configure TI_SCI message */
+#define TI_SCI_MSG_VALUE_RM_RING_MODE_VALID	BIT(3)
+/* RA config.size parameter is valid for RM ring configure TI_SCI message */
+#define TI_SCI_MSG_VALUE_RM_RING_SIZE_VALID	BIT(4)
+/* RA config.order_id parameter is valid for RM ring configure TISCI message */
+#define TI_SCI_MSG_VALUE_RM_RING_ORDER_ID_VALID	BIT(5)
+
+#define TI_SCI_MSG_VALUE_RM_ALL_NO_ORDER \
+	(TI_SCI_MSG_VALUE_RM_RING_ADDR_LO_VALID | \
+	TI_SCI_MSG_VALUE_RM_RING_ADDR_HI_VALID | \
+	TI_SCI_MSG_VALUE_RM_RING_COUNT_VALID | \
+	TI_SCI_MSG_VALUE_RM_RING_MODE_VALID | \
+	TI_SCI_MSG_VALUE_RM_RING_SIZE_VALID)
+
+/**
+ * struct ti_sci_rm_ringacc_ops - Ring Accelerator Management operations
+ * @config: configure the SoC Navigator Subsystem Ring Accelerator ring
+ * @get_config: get the SoC Navigator Subsystem Ring Accelerator ring
+ *		configuration
+ */
+struct ti_sci_rm_ringacc_ops {
+	int (*config)(const struct ti_sci_handle *handle,
+		      u32 valid_params, u16 nav_id, u16 index,
+		      u32 addr_lo, u32 addr_hi, u32 count, u8 mode,
+		      u8 size, u8 order_id
+	);
+	int (*get_config)(const struct ti_sci_handle *handle,
+			  u32 nav_id, u32 index, u8 *mode,
+			  u32 *addr_lo, u32 *addr_hi, u32 *count,
+			  u8 *size, u8 *order_id);
+};
+
+/**
+ * struct ti_sci_rm_psil_ops - PSI-L thread operations
+ * @pair: pair PSI-L source thread to a destination thread.
+ *	If the src_thread is mapped to UDMA tchan, the corresponding channel's
+ *	TCHAN_THRD_ID register is updated.
+ *	If the dst_thread is mapped to UDMA rchan, the corresponding channel's
+ *	RCHAN_THRD_ID register is updated.
+ * @unpair: unpair PSI-L source thread from a destination thread.
+ *	If the src_thread is mapped to UDMA tchan, the corresponding channel's
+ *	TCHAN_THRD_ID register is cleared.
+ *	If the dst_thread is mapped to UDMA rchan, the corresponding channel's
+ *	RCHAN_THRD_ID register is cleared.
+ */
+struct ti_sci_rm_psil_ops {
+	int (*pair)(const struct ti_sci_handle *handle, u32 nav_id,
+		    u32 src_thread, u32 dst_thread);
+	int (*unpair)(const struct ti_sci_handle *handle, u32 nav_id,
+		      u32 src_thread, u32 dst_thread);
+};
+
+/* UDMAP channel types */
+#define TI_SCI_RM_UDMAP_CHAN_TYPE_PKT_PBRR		2
+#define TI_SCI_RM_UDMAP_CHAN_TYPE_PKT_PBRR_SB		3	/* RX only */
+#define TI_SCI_RM_UDMAP_CHAN_TYPE_3RDP_PBRR		10
+#define TI_SCI_RM_UDMAP_CHAN_TYPE_3RDP_PBVR		11
+#define TI_SCI_RM_UDMAP_CHAN_TYPE_3RDP_BCOPY_PBRR	12
+#define TI_SCI_RM_UDMAP_CHAN_TYPE_3RDP_BCOPY_PBVR	13
+
+#define TI_SCI_RM_UDMAP_RX_FLOW_DESC_HOST		0
+#define TI_SCI_RM_UDMAP_RX_FLOW_DESC_MONO		2
+
+#define TI_SCI_RM_UDMAP_CHAN_BURST_SIZE_64_BYTES	1
+#define TI_SCI_RM_UDMAP_CHAN_BURST_SIZE_128_BYTES	2
+#define TI_SCI_RM_UDMAP_CHAN_BURST_SIZE_256_BYTES	3
+
+/* UDMAP TX/RX channel valid_params common declarations */
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_PAUSE_ON_ERR_VALID		BIT(0)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_ATYPE_VALID                BIT(1)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_CHAN_TYPE_VALID            BIT(2)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_FETCH_SIZE_VALID           BIT(3)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_CQ_QNUM_VALID              BIT(4)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_PRIORITY_VALID             BIT(5)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_QOS_VALID                  BIT(6)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_ORDER_ID_VALID             BIT(7)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_SCHED_PRIORITY_VALID       BIT(8)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_BURST_SIZE_VALID		BIT(14)
+
+/**
+ * Configures a Navigator Subsystem UDMAP transmit channel
+ *
+ * Configures a Navigator Subsystem UDMAP transmit channel registers.
+ * See @ti_sci_msg_rm_udmap_tx_ch_cfg_req
+ */
+struct ti_sci_msg_rm_udmap_tx_ch_cfg {
+	u32 valid_params;
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_FILT_EINFO_VALID        BIT(9)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_FILT_PSWORDS_VALID      BIT(10)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_SUPR_TDPKT_VALID        BIT(11)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_CREDIT_COUNT_VALID      BIT(12)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_FDEPTH_VALID            BIT(13)
+	u16 nav_id;
+	u16 index;
+	u8 tx_pause_on_err;
+	u8 tx_filt_einfo;
+	u8 tx_filt_pswords;
+	u8 tx_atype;
+	u8 tx_chan_type;
+	u8 tx_supr_tdpkt;
+	u16 tx_fetch_size;
+	u8 tx_credit_count;
+	u16 txcq_qnum;
+	u8 tx_priority;
+	u8 tx_qos;
+	u8 tx_orderid;
+	u16 fdepth;
+	u8 tx_sched_priority;
+	u8 tx_burst_size;
+};
+
+/**
+ * Configures a Navigator Subsystem UDMAP receive channel
+ *
+ * Configures a Navigator Subsystem UDMAP receive channel registers.
+ * See @ti_sci_msg_rm_udmap_rx_ch_cfg_req
+ */
+struct ti_sci_msg_rm_udmap_rx_ch_cfg {
+	u32 valid_params;
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_RX_FLOWID_START_VALID      BIT(9)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_RX_FLOWID_CNT_VALID        BIT(10)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_RX_IGNORE_SHORT_VALID      BIT(11)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_CH_RX_IGNORE_LONG_VALID       BIT(12)
+	u16 nav_id;
+	u16 index;
+	u16 rx_fetch_size;
+	u16 rxcq_qnum;
+	u8 rx_priority;
+	u8 rx_qos;
+	u8 rx_orderid;
+	u8 rx_sched_priority;
+	u16 flowid_start;
+	u16 flowid_cnt;
+	u8 rx_pause_on_err;
+	u8 rx_atype;
+	u8 rx_chan_type;
+	u8 rx_ignore_short;
+	u8 rx_ignore_long;
+	u8 rx_burst_size;
+};
+
+/**
+ * Configures a Navigator Subsystem UDMAP receive flow
+ *
+ * Configures a Navigator Subsystem UDMAP receive flow's registers.
+ * See @tis_ci_msg_rm_udmap_flow_cfg_req
+ */
+struct ti_sci_msg_rm_udmap_flow_cfg {
+	u32 valid_params;
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_EINFO_PRESENT_VALID	BIT(0)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_PSINFO_PRESENT_VALID     BIT(1)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_ERROR_HANDLING_VALID     BIT(2)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DESC_TYPE_VALID          BIT(3)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_SOP_OFFSET_VALID         BIT(4)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DEST_QNUM_VALID          BIT(5)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_SRC_TAG_HI_VALID         BIT(6)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_SRC_TAG_LO_VALID         BIT(7)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DEST_TAG_HI_VALID        BIT(8)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DEST_TAG_LO_VALID        BIT(9)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_SRC_TAG_HI_SEL_VALID     BIT(10)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_SRC_TAG_LO_SEL_VALID     BIT(11)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DEST_TAG_HI_SEL_VALID    BIT(12)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DEST_TAG_LO_SEL_VALID    BIT(13)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ0_SZ0_QNUM_VALID      BIT(14)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ1_QNUM_VALID          BIT(15)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ2_QNUM_VALID          BIT(16)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ3_QNUM_VALID          BIT(17)
+#define TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_PS_LOCATION_VALID        BIT(18)
+	u16 nav_id;
+	u16 flow_index;
+	u8 rx_einfo_present;
+	u8 rx_psinfo_present;
+	u8 rx_error_handling;
+	u8 rx_desc_type;
+	u16 rx_sop_offset;
+	u16 rx_dest_qnum;
+	u8 rx_src_tag_hi;
+	u8 rx_src_tag_lo;
+	u8 rx_dest_tag_hi;
+	u8 rx_dest_tag_lo;
+	u8 rx_src_tag_hi_sel;
+	u8 rx_src_tag_lo_sel;
+	u8 rx_dest_tag_hi_sel;
+	u8 rx_dest_tag_lo_sel;
+	u16 rx_fdq0_sz0_qnum;
+	u16 rx_fdq1_qnum;
+	u16 rx_fdq2_qnum;
+	u16 rx_fdq3_qnum;
+	u8 rx_ps_location;
+};
+
+/**
+ * struct ti_sci_rm_udmap_ops - UDMA Management operations
+ * @tx_ch_cfg: configure SoC Navigator Subsystem UDMA transmit channel.
+ * @rx_ch_cfg: configure SoC Navigator Subsystem UDMA receive channel.
+ * @rx_flow_cfg1: configure SoC Navigator Subsystem UDMA receive flow.
+ */
+struct ti_sci_rm_udmap_ops {
+	int (*tx_ch_cfg)(const struct ti_sci_handle *handle,
+			 const struct ti_sci_msg_rm_udmap_tx_ch_cfg *params);
+	int (*rx_ch_cfg)(const struct ti_sci_handle *handle,
+			 const struct ti_sci_msg_rm_udmap_rx_ch_cfg *params);
+	int (*rx_flow_cfg)(const struct ti_sci_handle *handle,
+			   const struct ti_sci_msg_rm_udmap_flow_cfg *params);
+};
+
 /**
  * struct ti_sci_ops - Function support for TI SCI
  * @dev_ops:	Device specific operations
@@ -254,6 +466,9 @@ struct ti_sci_ops {
 	struct ti_sci_clk_ops clk_ops;
 	struct ti_sci_rm_core_ops rm_core_ops;
 	struct ti_sci_rm_irq_ops rm_irq_ops;
+	struct ti_sci_rm_ringacc_ops rm_ring_ops;
+	struct ti_sci_rm_psil_ops rm_psil_ops;
+	struct ti_sci_rm_udmap_ops rm_udmap_ops;
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
