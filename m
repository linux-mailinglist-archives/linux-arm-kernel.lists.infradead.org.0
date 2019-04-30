Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2269FF3EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 12:14:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hxf+8+eMwp3FFcrMq3TqUPlOUoNoK/ucgyZG1gqrKXs=; b=LSBo0tXTAmR35P
	Lf2nmgCq5sR6/SI17wj8jYFc+kHY3aWyRlYrSk/BmKVOIhGb8aoMlM1D9Xt5N2iZd8Z/tff8vFl3Y
	kKczBM1uCj/NTAo8S5SVZU5ETKZm7ha6Hw4ACczAUBSS976rHtrffzcKmFkRh3TBbGbH3HuMaDhhR
	9oOwfLT8xWe+GhPXJnyo4YSJbMwKkW1FjbWq6t5iZaRnIhI6Xd1vptam4iI6MQ7AzGNlmqcwaeBNz
	1yitHlgxQWglVELgclfJ6BulFAjj95Ve7f258sCBaebNXhfbr1QNYhY9xS2+LHBLlNSLLn+/kU5zJ
	+Q01jtlLtdOWj4PJW8kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPmL-00076Q-JF; Tue, 30 Apr 2019 10:14:25 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPlY-0006Md-81
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 10:13:45 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x3UADJNj044340;
 Tue, 30 Apr 2019 05:13:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1556619199;
 bh=1pY+BosnFAL5omdv10vYeqXVIaqAUaCtcfwgHr7h9tw=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=F40Yx/ntWpzU1kWmwkcWpcNPGkFI9EJCZlIs2j4q2yLrsgiQW89IwniohoPeHNw3x
 jsol1orRa8hZXlo/Cc8b5uFr71wqwCzQI7Z1flDZzS7LZIf/TfOtTP0SbmgEfYxNuU
 WrAcofKz3OJwl7QSaDG47vWldJTXYyeeIYWNpr9w=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x3UADJtH125869
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 30 Apr 2019 05:13:19 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 30
 Apr 2019 05:13:18 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 30 Apr 2019 05:13:18 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x3UAD0Y5085082;
 Tue, 30 Apr 2019 05:13:14 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Marc Zyngier <marc.zyngier@arm.com>, Santosh Shilimkar
 <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>, Nishanth Menon
 <nm@ti.com>, <tglx@linutronix.de>, <jason@lakedaemon.net>
Subject: [PATCH v8 03/14] firmware: ti_sci: Add support for IRQ management
Date: Tue, 30 Apr 2019 15:42:19 +0530
Message-ID: <20190430101230.21794-4-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190430101230.21794-1-lokeshvutla@ti.com>
References: <20190430101230.21794-1-lokeshvutla@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_031336_634120_F305FC81 
X-CRM114-Status: GOOD (  20.93  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Tony Lindgren <tony@atomide.com>, linus.walleij@linaro.org,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TISCI abstracts the handling of IRQ routes where interrupt sources
are not directly connected to host interrupt controller. Add support
for the set of TISCI commands for requesting and releasing IRQs.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
Changes since v7:
- Updated to latest system firmware version for not tracking INTR configuration
  coming from INTA.

 drivers/firmware/ti_sci.c              | 245 +++++++++++++++++++++++++
 drivers/firmware/ti_sci.h              |  60 ++++++
 include/linux/soc/ti/ti_sci_protocol.h |  26 +++
 3 files changed, 331 insertions(+)

diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
index 503195223c09..4ccdf9a53648 100644
--- a/drivers/firmware/ti_sci.c
+++ b/drivers/firmware/ti_sci.c
@@ -1765,6 +1765,245 @@ int ti_sci_cmd_get_resource_range_from_shost(const struct ti_sci_handle *handle,
 					 range_start, range_num);
 }
 
+/**
+ * ti_sci_manage_irq() - Helper api to configure/release the irq route between
+ *			 the requested source and destination
+ * @handle:		Pointer to TISCI handle.
+ * @valid_params:	Bit fields defining the validity of certain params
+ * @src_id:		Device ID of the IRQ source
+ * @src_index:		IRQ source index within the source device
+ * @dst_id:		Device ID of the IRQ destination
+ * @dst_host_irq:	IRQ number of the destination device
+ * @ia_id:		Device ID of the IA, if the IRQ flows through this IA
+ * @vint:		Virtual interrupt to be used within the IA
+ * @global_event:	Global event number to be used for the requesting event
+ * @vint_status_bit:	Virtual interrupt status bit to be used for the event
+ * @s_host:		Secondary host ID to which the irq/event is being
+ *			requested for.
+ * @type:		Request type irq set or release.
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int ti_sci_manage_irq(const struct ti_sci_handle *handle,
+			     u32 valid_params, u16 src_id, u16 src_index,
+			     u16 dst_id, u16 dst_host_irq, u16 ia_id, u16 vint,
+			     u16 global_event, u8 vint_status_bit, u8 s_host,
+			     u16 type)
+{
+	struct ti_sci_msg_req_manage_irq *req;
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
+	xfer = ti_sci_get_one_xfer(info, type, TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
+				   sizeof(*req), sizeof(*resp));
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		dev_err(dev, "Message alloc failed(%d)\n", ret);
+		return ret;
+	}
+	req = (struct ti_sci_msg_req_manage_irq *)xfer->xfer_buf;
+	req->valid_params = valid_params;
+	req->src_id = src_id;
+	req->src_index = src_index;
+	req->dst_id = dst_id;
+	req->dst_host_irq = dst_host_irq;
+	req->ia_id = ia_id;
+	req->vint = vint;
+	req->global_event = global_event;
+	req->vint_status_bit = vint_status_bit;
+	req->secondary_host = s_host;
+
+	ret = ti_sci_do_xfer(info, xfer);
+	if (ret) {
+		dev_err(dev, "Mbox send fail %d\n", ret);
+		goto fail;
+	}
+
+	resp = (struct ti_sci_msg_hdr *)xfer->xfer_buf;
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
+ * ti_sci_set_irq() - Helper api to configure the irq route between the
+ *		      requested source and destination
+ * @handle:		Pointer to TISCI handle.
+ * @valid_params:	Bit fields defining the validity of certain params
+ * @src_id:		Device ID of the IRQ source
+ * @src_index:		IRQ source index within the source device
+ * @dst_id:		Device ID of the IRQ destination
+ * @dst_host_irq:	IRQ number of the destination device
+ * @ia_id:		Device ID of the IA, if the IRQ flows through this IA
+ * @vint:		Virtual interrupt to be used within the IA
+ * @global_event:	Global event number to be used for the requesting event
+ * @vint_status_bit:	Virtual interrupt status bit to be used for the event
+ * @s_host:		Secondary host ID to which the irq/event is being
+ *			requested for.
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int ti_sci_set_irq(const struct ti_sci_handle *handle, u32 valid_params,
+			  u16 src_id, u16 src_index, u16 dst_id,
+			  u16 dst_host_irq, u16 ia_id, u16 vint,
+			  u16 global_event, u8 vint_status_bit, u8 s_host)
+{
+	pr_debug("%s: IRQ set with valid_params = 0x%x from src = %d, index = %d, to dst = %d, irq = %d,via ia_id = %d, vint = %d, global event = %d,status_bit = %d\n",
+		 __func__, valid_params, src_id, src_index,
+		 dst_id, dst_host_irq, ia_id, vint, global_event,
+		 vint_status_bit);
+
+	return ti_sci_manage_irq(handle, valid_params, src_id, src_index,
+				 dst_id, dst_host_irq, ia_id, vint,
+				 global_event, vint_status_bit, s_host,
+				 TI_SCI_MSG_SET_IRQ);
+}
+
+/**
+ * ti_sci_free_irq() - Helper api to free the irq route between the
+ *			   requested source and destination
+ * @handle:		Pointer to TISCI handle.
+ * @valid_params:	Bit fields defining the validity of certain params
+ * @src_id:		Device ID of the IRQ source
+ * @src_index:		IRQ source index within the source device
+ * @dst_id:		Device ID of the IRQ destination
+ * @dst_host_irq:	IRQ number of the destination device
+ * @ia_id:		Device ID of the IA, if the IRQ flows through this IA
+ * @vint:		Virtual interrupt to be used within the IA
+ * @global_event:	Global event number to be used for the requesting event
+ * @vint_status_bit:	Virtual interrupt status bit to be used for the event
+ * @s_host:		Secondary host ID to which the irq/event is being
+ *			requested for.
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int ti_sci_free_irq(const struct ti_sci_handle *handle, u32 valid_params,
+			   u16 src_id, u16 src_index, u16 dst_id,
+			   u16 dst_host_irq, u16 ia_id, u16 vint,
+			   u16 global_event, u8 vint_status_bit, u8 s_host)
+{
+	pr_debug("%s: IRQ release with valid_params = 0x%x from src = %d, index = %d, to dst = %d, irq = %d,via ia_id = %d, vint = %d, global event = %d,status_bit = %d\n",
+		 __func__, valid_params, src_id, src_index,
+		 dst_id, dst_host_irq, ia_id, vint, global_event,
+		 vint_status_bit);
+
+	return ti_sci_manage_irq(handle, valid_params, src_id, src_index,
+				 dst_id, dst_host_irq, ia_id, vint,
+				 global_event, vint_status_bit, s_host,
+				 TI_SCI_MSG_FREE_IRQ);
+}
+
+/**
+ * ti_sci_cmd_set_irq() - Configure a host irq route between the requested
+ *			  source and destination.
+ * @handle:		Pointer to TISCI handle.
+ * @src_id:		Device ID of the IRQ source
+ * @src_index:		IRQ source index within the source device
+ * @dst_id:		Device ID of the IRQ destination
+ * @dst_host_irq:	IRQ number of the destination device
+ * @vint_irq:		Boolean specifying if this interrupt belongs to
+ *			Interrupt Aggregator.
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int ti_sci_cmd_set_irq(const struct ti_sci_handle *handle, u16 src_id,
+			      u16 src_index, u16 dst_id, u16 dst_host_irq)
+{
+	u32 valid_params = MSG_FLAG_DST_ID_VALID | MSG_FLAG_DST_HOST_IRQ_VALID;
+
+	return ti_sci_set_irq(handle, valid_params, src_id, src_index, dst_id,
+			      dst_host_irq, 0, 0, 0, 0, 0);
+}
+
+/**
+ * ti_sci_cmd_set_event_map() - Configure an event based irq route between the
+ *				requested source and Interrupt Aggregator.
+ * @handle:		Pointer to TISCI handle.
+ * @src_id:		Device ID of the IRQ source
+ * @src_index:		IRQ source index within the source device
+ * @ia_id:		Device ID of the IA, if the IRQ flows through this IA
+ * @vint:		Virtual interrupt to be used within the IA
+ * @global_event:	Global event number to be used for the requesting event
+ * @vint_status_bit:	Virtual interrupt status bit to be used for the event
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int ti_sci_cmd_set_event_map(const struct ti_sci_handle *handle,
+				    u16 src_id, u16 src_index, u16 ia_id,
+				    u16 vint, u16 global_event,
+				    u8 vint_status_bit)
+{
+	u32 valid_params = MSG_FLAG_IA_ID_VALID | MSG_FLAG_VINT_VALID |
+			   MSG_FLAG_GLB_EVNT_VALID |
+			   MSG_FLAG_VINT_STS_BIT_VALID;
+
+	return ti_sci_set_irq(handle, valid_params, src_id, src_index, 0, 0,
+			      ia_id, vint, global_event, vint_status_bit, 0);
+}
+
+/**
+ * ti_sci_cmd_free_irq() - Free a host irq route between the between the
+ *			   requested source and destination.
+ * @handle:		Pointer to TISCI handle.
+ * @src_id:		Device ID of the IRQ source
+ * @src_index:		IRQ source index within the source device
+ * @dst_id:		Device ID of the IRQ destination
+ * @dst_host_irq:	IRQ number of the destination device
+ * @vint_irq:		Boolean specifying if this interrupt belongs to
+ *			Interrupt Aggregator.
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int ti_sci_cmd_free_irq(const struct ti_sci_handle *handle, u16 src_id,
+			       u16 src_index, u16 dst_id, u16 dst_host_irq)
+{
+	u32 valid_params = MSG_FLAG_DST_ID_VALID | MSG_FLAG_DST_HOST_IRQ_VALID;
+
+	return ti_sci_free_irq(handle, valid_params, src_id, src_index, dst_id,
+			       dst_host_irq, 0, 0, 0, 0, 0);
+}
+
+/**
+ * ti_sci_cmd_free_event_map() - Free an event map between the requested source
+ *				 and Interrupt Aggregator.
+ * @handle:		Pointer to TISCI handle.
+ * @src_id:		Device ID of the IRQ source
+ * @src_index:		IRQ source index within the source device
+ * @ia_id:		Device ID of the IA, if the IRQ flows through this IA
+ * @vint:		Virtual interrupt to be used within the IA
+ * @global_event:	Global event number to be used for the requesting event
+ * @vint_status_bit:	Virtual interrupt status bit to be used for the event
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int ti_sci_cmd_free_event_map(const struct ti_sci_handle *handle,
+				     u16 src_id, u16 src_index, u16 ia_id,
+				     u16 vint, u16 global_event,
+				     u8 vint_status_bit)
+{
+	u32 valid_params = MSG_FLAG_IA_ID_VALID |
+			   MSG_FLAG_VINT_VALID | MSG_FLAG_GLB_EVNT_VALID |
+			   MSG_FLAG_VINT_STS_BIT_VALID;
+
+	return ti_sci_free_irq(handle, valid_params, src_id, src_index, 0, 0,
+			       ia_id, vint, global_event, vint_status_bit, 0);
+}
+
 /*
  * ti_sci_setup_ops() - Setup the operations structures
  * @info:	pointer to TISCI pointer
@@ -1776,6 +2015,7 @@ static void ti_sci_setup_ops(struct ti_sci_info *info)
 	struct ti_sci_dev_ops *dops = &ops->dev_ops;
 	struct ti_sci_clk_ops *cops = &ops->clk_ops;
 	struct ti_sci_rm_core_ops *rm_core_ops = &ops->rm_core_ops;
+	struct ti_sci_rm_irq_ops *iops = &ops->rm_irq_ops;
 
 	core_ops->reboot_device = ti_sci_cmd_core_reboot;
 
@@ -1810,6 +2050,11 @@ static void ti_sci_setup_ops(struct ti_sci_info *info)
 	rm_core_ops->get_range = ti_sci_cmd_get_resource_range;
 	rm_core_ops->get_range_from_shost =
 				ti_sci_cmd_get_resource_range_from_shost;
+
+	iops->set_irq = ti_sci_cmd_set_irq;
+	iops->set_event_map = ti_sci_cmd_set_event_map;
+	iops->free_irq = ti_sci_cmd_free_irq;
+	iops->free_event_map = ti_sci_cmd_free_event_map;
 }
 
 /**
diff --git a/drivers/firmware/ti_sci.h b/drivers/firmware/ti_sci.h
index a043c4762791..4983827151bf 100644
--- a/drivers/firmware/ti_sci.h
+++ b/drivers/firmware/ti_sci.h
@@ -38,6 +38,10 @@
 /* Resource Management Requests */
 #define TI_SCI_MSG_GET_RESOURCE_RANGE	0x1500
 
+/* IRQ requests */
+#define TI_SCI_MSG_SET_IRQ		0x1000
+#define TI_SCI_MSG_FREE_IRQ		0x1001
+
 /**
  * struct ti_sci_msg_hdr - Generic Message Header for All messages and responses
  * @type:	Type of messages: One of TI_SCI_MSG* values
@@ -503,4 +507,60 @@ struct ti_sci_msg_resp_get_resource_range {
 	u16 range_num;
 } __packed;
 
+/**
+ * struct ti_sci_msg_req_manage_irq - Request to configure/release the route
+ *					between the dev and the host.
+ * @hdr:		Generic Header
+ * @valid_params:	Bit fields defining the validity of interrupt source
+ *			parameters. If a bit is not set, then corresponding
+ *			field is not valid and will not be used for route set.
+ *			Bit field definitions:
+ *			0 - Valid bit for @dst_id
+ *			1 - Valid bit for @dst_host_irq
+ *			2 - Valid bit for @ia_id
+ *			3 - Valid bit for @vint
+ *			4 - Valid bit for @global_event
+ *			5 - Valid bit for @vint_status_bit_index
+ *			31 - Valid bit for @secondary_host
+ * @src_id:		IRQ source peripheral ID.
+ * @src_index:		IRQ source index within the peripheral
+ * @dst_id:		IRQ Destination ID. Based on the architecture it can be
+ *			IRQ controller or host processor ID.
+ * @dst_host_irq:	IRQ number of the destination host IRQ controller
+ * @ia_id:		Device ID of the interrupt aggregator in which the
+ *			vint resides.
+ * @vint:		Virtual interrupt number if the interrupt route
+ *			is through an interrupt aggregator.
+ * @global_event:	Global event that is to be mapped to interrupt
+ *			aggregator virtual interrupt status bit.
+ * @vint_status_bit:	Virtual interrupt status bit if the interrupt route
+ *			utilizes an interrupt aggregator status bit.
+ * @secondary_host:	Host ID of the IRQ destination computing entity. This is
+ *			required only when destination host id is different
+ *			from ti sci interface host id.
+ *
+ * Request type is TI_SCI_MSG_SET/RELEASE_IRQ.
+ * Response is generic ACK / NACK message.
+ */
+struct ti_sci_msg_req_manage_irq {
+	struct ti_sci_msg_hdr hdr;
+#define MSG_FLAG_DST_ID_VALID			TI_SCI_MSG_FLAG(0)
+#define MSG_FLAG_DST_HOST_IRQ_VALID		TI_SCI_MSG_FLAG(1)
+#define MSG_FLAG_IA_ID_VALID			TI_SCI_MSG_FLAG(2)
+#define MSG_FLAG_VINT_VALID			TI_SCI_MSG_FLAG(3)
+#define MSG_FLAG_GLB_EVNT_VALID			TI_SCI_MSG_FLAG(4)
+#define MSG_FLAG_VINT_STS_BIT_VALID		TI_SCI_MSG_FLAG(5)
+#define MSG_FLAG_SHOST_VALID			TI_SCI_MSG_FLAG(31)
+	u32 valid_params;
+	u16 src_id;
+	u16 src_index;
+	u16 dst_id;
+	u16 dst_host_irq;
+	u16 ia_id;
+	u16 vint;
+	u16 global_event;
+	u8 vint_status_bit;
+	u8 secondary_host;
+} __packed;
+
 #endif /* __TI_SCI_H */
diff --git a/include/linux/soc/ti/ti_sci_protocol.h b/include/linux/soc/ti/ti_sci_protocol.h
index 0c92a922db6a..d0bc4123232e 100644
--- a/include/linux/soc/ti/ti_sci_protocol.h
+++ b/include/linux/soc/ti/ti_sci_protocol.h
@@ -217,17 +217,43 @@ struct ti_sci_rm_core_ops {
 				    u16 *range_start, u16 *range_num);
 };
 
+/**
+ * struct ti_sci_rm_irq_ops: IRQ management operations
+ * @set_irq:		Set an IRQ route between the requested source
+ *			and destination
+ * @set_event_map:	Set an Event based peripheral irq to Interrupt
+ *			Aggregator.
+ * @free_irq:		Free an an IRQ route between the requested source
+ *			destination.
+ * @free_event_map:	Free an event based peripheral irq to Interrupt
+ *			Aggregator.
+ */
+struct ti_sci_rm_irq_ops {
+	int (*set_irq)(const struct ti_sci_handle *handle, u16 src_id,
+		       u16 src_index, u16 dst_id, u16 dst_host_irq);
+	int (*set_event_map)(const struct ti_sci_handle *handle, u16 src_id,
+			     u16 src_index, u16 ia_id, u16 vint,
+			     u16 global_event, u8 vint_status_bit);
+	int (*free_irq)(const struct ti_sci_handle *handle, u16 src_id,
+			u16 src_index, u16 dst_id, u16 dst_host_irq);
+	int (*free_event_map)(const struct ti_sci_handle *handle, u16 src_id,
+			      u16 src_index, u16 ia_id, u16 vint,
+			      u16 global_event, u8 vint_status_bit);
+};
+
 /**
  * struct ti_sci_ops - Function support for TI SCI
  * @dev_ops:	Device specific operations
  * @clk_ops:	Clock specific operations
  * @rm_core_ops:	Resource management core operations.
+ * @rm_irq_ops:		IRQ management specific operations
  */
 struct ti_sci_ops {
 	struct ti_sci_core_ops core_ops;
 	struct ti_sci_dev_ops dev_ops;
 	struct ti_sci_clk_ops clk_ops;
 	struct ti_sci_rm_core_ops rm_core_ops;
+	struct ti_sci_rm_irq_ops rm_irq_ops;
 };
 
 /**
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
