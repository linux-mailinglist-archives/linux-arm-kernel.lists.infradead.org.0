Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A684036788
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 00:33:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NWSLp9fZ8vRsLTKChz8wMske5RwG+wYztnJURMrqZxQ=; b=HDH77ProRW8f3b
	iIoEeJTCgjpU5OR3M6149pPQSPrxTpM6PdbgoFV1/yytLqWmnG0h3rJGhivu+SiL9S6KxPkbA0Eu7
	tx2pZr8e3ZQjdF3sfqRQZxeswbG1pPW6fsurhhfXQXFllAJX7xLPf2ChzDcSbp3KjYr4oE8UilDSA
	q8qEEIVEhjnuC4CmKWiDTENLcgVuk8s9lP/Fbgoe6aF+d3s89PEMay57JXYUUpxLHrvarBt689xdX
	LgbEz1YhaZeHzkktvJDvPwMnaBLt3NEjKWPJi/50YUW/31EynD3jZXTR78D321djP7ac2TPzQ1a4x
	mHGdfV3gM1f1kux0odWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYeTd-0000rX-0g; Wed, 05 Jun 2019 22:33:49 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYeTU-0000qv-I8
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 22:33:43 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x55MXatO085154;
 Wed, 5 Jun 2019 17:33:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559774017;
 bh=q06dFQOFUQalZykn0mpr3NiQ7fmNtxmg75h0BYRVV+c=;
 h=From:To:CC:Subject:Date;
 b=hg3WYQwCrsblwKx73EGm+cow8RRczBRJR0efwvQlNboIEim1c40CHyO8H3kSJWAy9
 OyhduSoG0NMyxcsi/JWuL4icpntxjyUsDYivCVkAGAgEUNVlb5I4vSOcOQJILDVF7t
 w/G7ULHdXKgXJzM+4UGhWolPgjSiERbVZxW5QFgk=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x55MXaVa038631
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 5 Jun 2019 17:33:36 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 5 Jun
 2019 17:33:36 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 5 Jun 2019 17:33:36 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x55MXaQQ012743;
 Wed, 5 Jun 2019 17:33:36 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x55MXam27980; 
 Wed, 5 Jun 2019 17:33:36 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>, Santosh
 Shilimkar <ssantosh@kernel.org>
Subject: [PATCH] firmware: ti_sci: Add support for processor control
Date: Wed, 5 Jun 2019 17:33:34 -0500
Message-ID: <20190605223334.30428-1-s-anna@ti.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_153340_707163_13A5E993 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Lokesh Vutla <lokeshvutla@ti.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Texas Instrument's System Control Interface (TI-SCI) Message Protocol
is used in Texas Instrument's System on Chip (SoC) such as those
in K3 family AM654 SoC to communicate between various compute
processors with a central system controller entity.

The system controller provides various services including the control
of other compute processors within the SoC. Extend the TI-SCI protocol
support to add various TI-SCI commands to invoke services associated
with power and reset control, and boot vector management of the
various compute processors from the Linux kernel.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
Hi Santosh, Nishanth, Tero,

Appreciate it if this patch can be picked up for the 5.3 merge window.
This is a dependency patch for my various remoteproc drivers on TI K3
SoCs. Patch is on top of v5.2-rc1.

regards
Suman

 drivers/firmware/ti_sci.c              | 350 +++++++++++++++++++++++++
 drivers/firmware/ti_sci.h              | 135 ++++++++++
 include/linux/soc/ti/ti_sci_protocol.h |  31 +++
 3 files changed, 516 insertions(+)

diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
index 36ce11a67235..596acad89e86 100644
--- a/drivers/firmware/ti_sci.c
+++ b/drivers/firmware/ti_sci.c
@@ -2004,6 +2004,348 @@ static int ti_sci_cmd_free_event_map(const struct ti_sci_handle *handle,
 			       ia_id, vint, global_event, vint_status_bit, 0);
 }
 
+/**
+ * ti_sci_cmd_proc_request() - Command to request a physical processor control
+ * @handle:	Pointer to TI SCI handle
+ * @proc_id:	Processor ID this request is for
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_proc_request(const struct ti_sci_handle *handle,
+				   u8 proc_id)
+{
+	struct ti_sci_msg_req_proc_request *req;
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	struct device *dev;
+	int ret = 0;
+
+	if (!handle)
+		return -EINVAL;
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+
+	info = handle_to_ti_sci_info(handle);
+	dev = info->dev;
+
+	xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_PROC_REQUEST,
+				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				   sizeof(*req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		dev_err(dev, "Message alloc failed(%d)\n", ret);
+		return ret;
+	}
+	req = (struct ti_sci_msg_req_proc_request *)xfer->xfer_buf;
+	req->processor_id = proc_id;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret) {
+		dev_err(dev, "Mbox send fail %d\n", ret);
+		goto fail;
+	}
+
+	resp = (struct ti_sci_msg_hdr *)xfer->tx_message.buf;
+
+	ret = ti_sci_is_response_ack(resp) ? 0 : -ENODEV;
+
+fail:
+	ti_sci_put_one_xfer(&info->minfo, xfer);
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_proc_release() - Command to release a physical processor control
+ * @handle:	Pointer to TI SCI handle
+ * @proc_id:	Processor ID this request is for
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_proc_release(const struct ti_sci_handle *handle,
+				   u8 proc_id)
+{
+	struct ti_sci_msg_req_proc_release *req;
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	struct device *dev;
+	int ret = 0;
+
+	if (!handle)
+		return -EINVAL;
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+
+	info = handle_to_ti_sci_info(handle);
+	dev = info->dev;
+
+	xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_PROC_RELEASE,
+				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				   sizeof(*req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		dev_err(dev, "Message alloc failed(%d)\n", ret);
+		return ret;
+	}
+	req = (struct ti_sci_msg_req_proc_release *)xfer->xfer_buf;
+	req->processor_id = proc_id;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret) {
+		dev_err(dev, "Mbox send fail %d\n", ret);
+		goto fail;
+	}
+
+	resp = (struct ti_sci_msg_hdr *)xfer->tx_message.buf;
+
+	ret = ti_sci_is_response_ack(resp) ? 0 : -ENODEV;
+
+fail:
+	ti_sci_put_one_xfer(&info->minfo, xfer);
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_proc_handover() - Command to handover a physical processor
+ *				control to a host in the processor's access
+ *				control list.
+ * @handle:	Pointer to TI SCI handle
+ * @proc_id:	Processor ID this request is for
+ * @host_id:	Host ID to get the control of the processor
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_proc_handover(const struct ti_sci_handle *handle,
+				    u8 proc_id, u8 host_id)
+{
+	struct ti_sci_msg_req_proc_handover *req;
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	struct device *dev;
+	int ret = 0;
+
+	if (!handle)
+		return -EINVAL;
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+
+	info = handle_to_ti_sci_info(handle);
+	dev = info->dev;
+
+	xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_PROC_HANDOVER,
+				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				   sizeof(*req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		dev_err(dev, "Message alloc failed(%d)\n", ret);
+		return ret;
+	}
+	req = (struct ti_sci_msg_req_proc_handover *)xfer->xfer_buf;
+	req->processor_id = proc_id;
+	req->host_id = host_id;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret) {
+		dev_err(dev, "Mbox send fail %d\n", ret);
+		goto fail;
+	}
+
+	resp = (struct ti_sci_msg_hdr *)xfer->tx_message.buf;
+
+	ret = ti_sci_is_response_ack(resp) ? 0 : -ENODEV;
+
+fail:
+	ti_sci_put_one_xfer(&info->minfo, xfer);
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_proc_set_config() - Command to set the processor boot
+ *				    configuration flags
+ * @handle:		Pointer to TI SCI handle
+ * @proc_id:		Processor ID this request is for
+ * @config_flags_set:	Configuration flags to be set
+ * @config_flags_clear:	Configuration flags to be cleared.
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_proc_set_config(const struct ti_sci_handle *handle,
+				      u8 proc_id, u64 bootvector,
+				      u32 config_flags_set,
+				      u32 config_flags_clear)
+{
+	struct ti_sci_msg_req_set_config *req;
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	struct device *dev;
+	int ret = 0;
+
+	if (!handle)
+		return -EINVAL;
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+
+	info = handle_to_ti_sci_info(handle);
+	dev = info->dev;
+
+	xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_SET_CONFIG,
+				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				   sizeof(*req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		dev_err(dev, "Message alloc failed(%d)\n", ret);
+		return ret;
+	}
+	req = (struct ti_sci_msg_req_set_config *)xfer->xfer_buf;
+	req->processor_id = proc_id;
+	req->bootvector_low = bootvector & TI_SCI_ADDR_LOW_MASK;
+	req->bootvector_high = (bootvector & TI_SCI_ADDR_HIGH_MASK) >>
+				TI_SCI_ADDR_HIGH_SHIFT;
+	req->config_flags_set = config_flags_set;
+	req->config_flags_clear = config_flags_clear;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret) {
+		dev_err(dev, "Mbox send fail %d\n", ret);
+		goto fail;
+	}
+
+	resp = (struct ti_sci_msg_hdr *)xfer->tx_message.buf;
+
+	ret = ti_sci_is_response_ack(resp) ? 0 : -ENODEV;
+
+fail:
+	ti_sci_put_one_xfer(&info->minfo, xfer);
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_proc_set_control() - Command to set the processor boot
+ *				     control flags
+ * @handle:			Pointer to TI SCI handle
+ * @proc_id:			Processor ID this request is for
+ * @control_flags_set:		Control flags to be set
+ * @control_flags_clear:	Control flags to be cleared
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_proc_set_control(const struct ti_sci_handle *handle,
+				       u8 proc_id, u32 control_flags_set,
+				       u32 control_flags_clear)
+{
+	struct ti_sci_msg_req_set_ctrl *req;
+	struct ti_sci_msg_hdr *resp;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	struct device *dev;
+	int ret = 0;
+
+	if (!handle)
+		return -EINVAL;
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+
+	info = handle_to_ti_sci_info(handle);
+	dev = info->dev;
+
+	xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_SET_CTRL,
+				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				   sizeof(*req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		dev_err(dev, "Message alloc failed(%d)\n", ret);
+		return ret;
+	}
+	req = (struct ti_sci_msg_req_set_ctrl *)xfer->xfer_buf;
+	req->processor_id = proc_id;
+	req->control_flags_set = control_flags_set;
+	req->control_flags_clear = control_flags_clear;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret) {
+		dev_err(dev, "Mbox send fail %d\n", ret);
+		goto fail;
+	}
+
+	resp = (struct ti_sci_msg_hdr *)xfer->tx_message.buf;
+
+	ret = ti_sci_is_response_ack(resp) ? 0 : -ENODEV;
+
+fail:
+	ti_sci_put_one_xfer(&info->minfo, xfer);
+
+	return ret;
+}
+
+/**
+ * ti_sci_cmd_get_boot_status() - Command to get the processor boot status
+ * @handle:	Pointer to TI SCI handle
+ * @proc_id:	Processor ID this request is for
+ *
+ * Return: 0 if all went well, else returns appropriate error value.
+ */
+static int ti_sci_cmd_proc_get_status(const struct ti_sci_handle *handle,
+				      u8 proc_id, u64 *bv, u32 *cfg_flags,
+				      u32 *ctrl_flags, u32 *sts_flags)
+{
+	struct ti_sci_msg_resp_get_status *resp;
+	struct ti_sci_msg_req_get_status *req;
+	struct ti_sci_info *info;
+	struct ti_sci_xfer *xfer;
+	struct device *dev;
+	int ret = 0;
+
+	if (!handle)
+		return -EINVAL;
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+
+	info = handle_to_ti_sci_info(handle);
+	dev = info->dev;
+
+	xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_GET_STATUS,
+				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				   sizeof(*req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		dev_err(dev, "Message alloc failed(%d)\n", ret);
+		return ret;
+	}
+	req = (struct ti_sci_msg_req_get_status *)xfer->xfer_buf;
+	req->processor_id = proc_id;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret) {
+		dev_err(dev, "Mbox send fail %d\n", ret);
+		goto fail;
+	}
+
+	resp = (struct ti_sci_msg_resp_get_status *)xfer->tx_message.buf;
+
+	if (!ti_sci_is_response_ack(resp)) {
+		ret = -ENODEV;
+	} else {
+		*bv = (resp->bootvector_low & TI_SCI_ADDR_LOW_MASK) |
+		      (((u64)resp->bootvector_high << TI_SCI_ADDR_HIGH_SHIFT) &
+		       TI_SCI_ADDR_HIGH_MASK);
+		*cfg_flags = resp->config_flags;
+		*ctrl_flags = resp->control_flags;
+		*sts_flags = resp->status_flags;
+	}
+
+fail:
+	ti_sci_put_one_xfer(&info->minfo, xfer);
+
+	return ret;
+}
+
 /*
  * ti_sci_setup_ops() - Setup the operations structures
  * @info:	pointer to TISCI pointer
@@ -2016,6 +2358,7 @@ static void ti_sci_setup_ops(struct ti_sci_info *info)
 	struct ti_sci_clk_ops *cops = &ops->clk_ops;
 	struct ti_sci_rm_core_ops *rm_core_ops = &ops->rm_core_ops;
 	struct ti_sci_rm_irq_ops *iops = &ops->rm_irq_ops;
+	struct ti_sci_proc_ops *pops = &ops->proc_ops;
 
 	core_ops->reboot_device = ti_sci_cmd_core_reboot;
 
@@ -2055,6 +2398,13 @@ static void ti_sci_setup_ops(struct ti_sci_info *info)
 	iops->set_event_map = ti_sci_cmd_set_event_map;
 	iops->free_irq = ti_sci_cmd_free_irq;
 	iops->free_event_map = ti_sci_cmd_free_event_map;
+
+	pops->request = ti_sci_cmd_proc_request;
+	pops->release = ti_sci_cmd_proc_release;
+	pops->handover = ti_sci_cmd_proc_handover;
+	pops->set_config = ti_sci_cmd_proc_set_config;
+	pops->set_control = ti_sci_cmd_proc_set_control;
+	pops->get_status = ti_sci_cmd_proc_get_status;
 }
 
 /**
diff --git a/drivers/firmware/ti_sci.h b/drivers/firmware/ti_sci.h
index 4983827151bf..557b17fea902 100644
--- a/drivers/firmware/ti_sci.h
+++ b/drivers/firmware/ti_sci.h
@@ -42,6 +42,14 @@
 #define TI_SCI_MSG_SET_IRQ		0x1000
 #define TI_SCI_MSG_FREE_IRQ		0x1001
 
+/* Processor Control requests */
+#define TI_SCI_MSG_PROC_REQUEST		0xc000
+#define TI_SCI_MSG_PROC_RELEASE		0xc001
+#define TI_SCI_MSG_PROC_HANDOVER	0xc005
+#define TI_SCI_MSG_SET_CONFIG		0xc100
+#define TI_SCI_MSG_SET_CTRL		0xc101
+#define TI_SCI_MSG_GET_STATUS		0xc400
+
 /**
  * struct ti_sci_msg_hdr - Generic Message Header for All messages and responses
  * @type:	Type of messages: One of TI_SCI_MSG* values
@@ -563,4 +571,131 @@ struct ti_sci_msg_req_manage_irq {
 	u8 secondary_host;
 } __packed;
 
+/**
+ * struct ti_sci_msg_req_proc_request - Request a processor
+ * @hdr:		Generic Header
+ * @processor_id:	ID of processor being requested
+ *
+ * Request type is TI_SCI_MSG_PROC_REQUEST, response is a generic ACK/NACK
+ * message.
+ */
+struct ti_sci_msg_req_proc_request {
+	struct ti_sci_msg_hdr hdr;
+	u8 processor_id;
+} __packed;
+
+/**
+ * struct ti_sci_msg_req_proc_release - Release a processor
+ * @hdr:		Generic Header
+ * @processor_id:	ID of processor being released
+ *
+ * Request type is TI_SCI_MSG_PROC_RELEASE, response is a generic ACK/NACK
+ * message.
+ */
+struct ti_sci_msg_req_proc_release {
+	struct ti_sci_msg_hdr hdr;
+	u8 processor_id;
+} __packed;
+
+/**
+ * struct ti_sci_msg_req_proc_handover - Handover a processor to a host
+ * @hdr:		Generic Header
+ * @processor_id:	ID of processor being handed over
+ * @host_id:		Host ID the control needs to be transferred to
+ *
+ * Request type is TI_SCI_MSG_PROC_HANDOVER, response is a generic ACK/NACK
+ * message.
+ */
+struct ti_sci_msg_req_proc_handover {
+	struct ti_sci_msg_hdr hdr;
+	u8 processor_id;
+	u8 host_id;
+} __packed;
+
+/* Boot Vector masks */
+#define TI_SCI_ADDR_LOW_MASK			GENMASK_ULL(31, 0)
+#define TI_SCI_ADDR_HIGH_MASK			GENMASK_ULL(63, 32)
+#define TI_SCI_ADDR_HIGH_SHIFT			32
+
+/**
+ * struct ti_sci_msg_req_set_config - Set Processor boot configuration
+ * @hdr:		Generic Header
+ * @processor_id:	ID of processor being configured
+ * @bootvector_low:	Lower 32 bit address (Little Endian) of boot vector
+ * @bootvector_high:	Higher 32 bit address (Little Endian) of boot vector
+ * @config_flags_set:	Optional Processor specific Config Flags to set.
+ *			Setting a bit here implies the corresponding mode
+ *			will be set
+ * @config_flags_clear:	Optional Processor specific Config Flags to clear.
+ *			Setting a bit here implies the corresponding mode
+ *			will be cleared
+ *
+ * Request type is TI_SCI_MSG_PROC_HANDOVER, response is a generic ACK/NACK
+ * message.
+ */
+struct ti_sci_msg_req_set_config {
+	struct ti_sci_msg_hdr hdr;
+	u8 processor_id;
+	u32 bootvector_low;
+	u32 bootvector_high;
+	u32 config_flags_set;
+	u32 config_flags_clear;
+} __packed;
+
+/**
+ * struct ti_sci_msg_req_set_ctrl - Set Processor boot control flags
+ * @hdr:		Generic Header
+ * @processor_id:	ID of processor being configured
+ * @control_flags_set:	Optional Processor specific Control Flags to set.
+ *			Setting a bit here implies the corresponding mode
+ *			will be set
+ * @control_flags_clear:Optional Processor specific Control Flags to clear.
+ *			Setting a bit here implies the corresponding mode
+ *			will be cleared
+ *
+ * Request type is TI_SCI_MSG_SET_CTRL, response is a generic ACK/NACK
+ * message.
+ */
+struct ti_sci_msg_req_set_ctrl {
+	struct ti_sci_msg_hdr hdr;
+	u8 processor_id;
+	u32 control_flags_set;
+	u32 control_flags_clear;
+} __packed;
+
+/**
+ * struct ti_sci_msg_req_get_status - Processor boot status request
+ * @hdr:		Generic Header
+ * @processor_id:	ID of processor whose status is being requested
+ *
+ * Request type is TI_SCI_MSG_GET_STATUS, response is an appropriate
+ * message, or NACK in case of inability to satisfy request.
+ */
+struct ti_sci_msg_req_get_status {
+	struct ti_sci_msg_hdr hdr;
+	u8 processor_id;
+} __packed;
+
+/**
+ * struct ti_sci_msg_resp_get_status - Processor boot status response
+ * @hdr:		Generic Header
+ * @processor_id:	ID of processor whose status is returned
+ * @bootvector_low:	Lower 32 bit address (Little Endian) of boot vector
+ * @bootvector_high:	Higher 32 bit address (Little Endian) of boot vector
+ * @config_flags:	Optional Processor specific Config Flags set currently
+ * @control_flags:	Optional Processor specific Control Flags set currently
+ * @status_flags:	Optional Processor specific Status Flags set currently
+ *
+ * Response structure to a TI_SCI_MSG_GET_STATUS request.
+ */
+struct ti_sci_msg_resp_get_status {
+	struct ti_sci_msg_hdr hdr;
+	u8 processor_id;
+	u32 bootvector_low;
+	u32 bootvector_high;
+	u32 config_flags;
+	u32 control_flags;
+	u32 status_flags;
+} __packed;
+
 #endif /* __TI_SCI_H */
diff --git a/include/linux/soc/ti/ti_sci_protocol.h b/include/linux/soc/ti/ti_sci_protocol.h
index 568722a041bf..0e3cd739add5 100644
--- a/include/linux/soc/ti/ti_sci_protocol.h
+++ b/include/linux/soc/ti/ti_sci_protocol.h
@@ -241,12 +241,42 @@ struct ti_sci_rm_irq_ops {
 			      u16 global_event, u8 vint_status_bit);
 };
 
+/**
+ * struct ti_sci_proc_ops - Processor Control operations
+ * @request:	Request to control a physical processor. The requesting host
+ *		should be in the processor access list
+ * @release:	Relinquish a physical processor control
+ * @handover:	Handover a physical processor control to another host
+ *		in the permitted list
+ * @set_config:	Set base configuration of a processor
+ * @set_control: Setup limited control flags in specific cases
+ * @get_status: Get the state of physical processor
+ *
+ * NOTE: The following paramteres are generic in nature for all these ops,
+ * -handle:	Pointer to TI SCI handle as retrieved by *ti_sci_get_handle
+ * -pid:	Processor ID
+ * -hid:	Host ID
+ */
+struct ti_sci_proc_ops {
+	int (*request)(const struct ti_sci_handle *handle, u8 pid);
+	int (*release)(const struct ti_sci_handle *handle, u8 pid);
+	int (*handover)(const struct ti_sci_handle *handle, u8 pid, u8 hid);
+	int (*set_config)(const struct ti_sci_handle *handle, u8 pid,
+			  u64 boot_vector, u32 cfg_set, u32 cfg_clr);
+	int (*set_control)(const struct ti_sci_handle *handle, u8 pid,
+			   u32 ctrl_set, u32 ctrl_clr);
+	int (*get_status)(const struct ti_sci_handle *handle, u8 pid,
+			  u64 *boot_vector, u32 *cfg_flags, u32 *ctrl_flags,
+			  u32 *status_flags);
+};
+
 /**
  * struct ti_sci_ops - Function support for TI SCI
  * @dev_ops:	Device specific operations
  * @clk_ops:	Clock specific operations
  * @rm_core_ops:	Resource management core operations.
  * @rm_irq_ops:		IRQ management specific operations
+ * @proc_ops:	Processor Control specific operations
  */
 struct ti_sci_ops {
 	struct ti_sci_core_ops core_ops;
@@ -254,6 +284,7 @@ struct ti_sci_ops {
 	struct ti_sci_clk_ops clk_ops;
 	struct ti_sci_rm_core_ops rm_core_ops;
 	struct ti_sci_rm_irq_ops rm_irq_ops;
+	struct ti_sci_proc_ops proc_ops;
 };
 
 /**
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
