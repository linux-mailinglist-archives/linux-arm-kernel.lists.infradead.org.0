Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 641991FB86C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 17:57:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yK3jh5L4MHALsvaASdBf4ko8tQ8pVLoDCMAH7rw73FM=; b=nSkNkhjV8yWh6f
	sitEh32Qs0nd/YEJ7lHyA6ycanOl8vBMtJW1FMnTFUvM765kx/MKWtIXuQOTe9Sa5eI4/yqSbA6Dz
	cBskU0sGQE3uwDxjANF3zfJ8nVQjBg+H464/m9U2slSqp7AhGs508b+Yto5P3PMbO0rL/P+rixTUV
	WWugirmdcH6b7sisI1NlYBd0kn76r+dsW3VU1cf12wdOUnl3APRYygc/vHOYjIn1HWFU9flU9k5x3
	67BH3t4nOsKSjoYclcqSoc/Gj0u1CFXpaEHVcZydYZzMi3i+7JSeKMO6yYpl2VmdrNyhwsGS6kzB6
	oPJdORaIHrkZe5uLGL9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlDxN-0001iP-Eg; Tue, 16 Jun 2020 15:57:01 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlDwu-0001ZP-8V
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 15:56:34 +0000
IronPort-SDR: CytWjShRvUHNBVA+jM6y4x/Hxpad6NqdJYQlgeIVs9qH7BsAZ1Q9cJjivMGyFEAgoALTTVLJX0
 x8huvnO25afw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 08:56:32 -0700
IronPort-SDR: FvxslkR+QjmwBIjRagfdSr8+gm/P/RidpUuKLVrDNrMJy4D6Lufrzac7Y/i1FispkIt/j0dwN3
 rR8rAQGxXLGg==
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="449888107"
Received: from pperycz-mobl.ger.corp.intel.com (HELO
 dalessan-mobl1.ir.intel.com) ([10.213.235.69])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 08:56:28 -0700
From: Daniele Alessandrelli <daniele.alessandrelli@linux.intel.com>
To: linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jassi Brar <jassisinghbrar@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 2/7] mailbox: keembay-scmi-mailbox: Add support for Keem Bay
 mailbox
Date: Tue, 16 Jun 2020 16:56:08 +0100
Message-Id: <20200616155613.121242-3-daniele.alessandrelli@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200616155613.121242-1-daniele.alessandrelli@linux.intel.com>
References: <20200616155613.121242-1-daniele.alessandrelli@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_085632_378508_D8BCE1C0 
X-CRM114-Status: GOOD (  22.18  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Dinh Nguyen <dinguyen@kernel.org>,
 Paul Murphy <paul.j.murphy@intel.com>, Will Deacon <will@kernel.org>,
 Daniele Alessandrelli <daniele.alessandrelli@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Paul Murphy <paul.j.murphy@intel.com>

Keem Bay SoC has a ARM trusted firmware-based secure monitor which acts
as the SCP for the purposes of power management over SCMI.

This driver implements the transport layer for SCMI to function.

Doclink: http://infocenter.arm.com/help/topic/com.arm.doc.den0056b/DEN0056B_System_Control_and_Management_Interface_v2_0.pdf

Reviewed-by: Dinh Nguyen <dinguyen@kernel.org>
Signed-off-by: Paul Murphy <paul.j.murphy@intel.com>
---
 MAINTAINERS                            |   6 +
 drivers/mailbox/Kconfig                |   9 ++
 drivers/mailbox/Makefile               |   2 +
 drivers/mailbox/keembay-scmi-mailbox.c | 203 +++++++++++++++++++++++++
 4 files changed, 220 insertions(+)
 create mode 100644 drivers/mailbox/keembay-scmi-mailbox.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 5ddad1d70f5f..4887e004cd26 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9330,6 +9330,12 @@ F:	include/linux/crash_dump.h
 F:	include/uapi/linux/vmcore.h
 F:	kernel/crash_*.c
 
+KEEMBAY SCMI MAILBOX DRIVER
+M:	Paul Murphy <paul.j.murphy@intel.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/mailbox/intel,keembay-scmi-mailbox.yaml
+F:	drivers/mailbox/keembay-scmi-mailbox.c
+
 KEENE FM RADIO TRANSMITTER DRIVER
 M:	Hans Verkuil <hverkuil@xs4all.nl>
 L:	linux-media@vger.kernel.org
diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig
index 05b1009e2820..064d4c4794a2 100644
--- a/drivers/mailbox/Kconfig
+++ b/drivers/mailbox/Kconfig
@@ -16,6 +16,15 @@ config ARM_MHU
 	  The controller has 3 mailbox channels, the last of which can be
 	  used in Secure mode only.
 
+config KEEMBAY_SCMI_MBOX
+	tristate "Keem Bay SoC SCMI Mailbox"
+	depends on HAVE_ARM_SMCCC
+	help
+	  An implementation of a mailbox implemented using 'smc' calls to the
+	  ARM secure world monitor. This enables communication with an 'SCP'
+	  running in the secure world on Keem Bay SoCs.
+	  Say Y here if you want to build the Keem Bay SoC SCMI Mailbox.
+
 config IMX_MBOX
 	tristate "i.MX Mailbox"
 	depends on ARCH_MXC || COMPILE_TEST
diff --git a/drivers/mailbox/Makefile b/drivers/mailbox/Makefile
index 60d224b723a1..7aba6edc8d44 100644
--- a/drivers/mailbox/Makefile
+++ b/drivers/mailbox/Makefile
@@ -54,3 +54,5 @@ obj-$(CONFIG_SUN6I_MSGBOX)	+= sun6i-msgbox.o
 obj-$(CONFIG_SPRD_MBOX)		+= sprd-mailbox.o
 
 obj-$(CONFIG_QCOM_IPCC)		+= qcom-ipcc.o
+
+obj-$(CONFIG_KEEMBAY_SCMI_MBOX)	+= keembay-scmi-mailbox.o
diff --git a/drivers/mailbox/keembay-scmi-mailbox.c b/drivers/mailbox/keembay-scmi-mailbox.c
new file mode 100644
index 000000000000..6f13b21f4f80
--- /dev/null
+++ b/drivers/mailbox/keembay-scmi-mailbox.c
@@ -0,0 +1,203 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Keem Bay SCMI mailbox driver.
+ *
+ * Copyright (c) 2019-2020 Intel Corporation.
+ */
+
+#include <linux/arm-smccc.h>
+#include <linux/kernel.h>
+#include <linux/mailbox_controller.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/platform_device.h>
+
+/* Function id of SiP service */
+#define KMB_SIP_SVC_SCMI 0xFF19
+
+/*
+ * Number of channels this mailbox supports: 1 channel,
+ * between AP and SCP.
+ */
+#define NUM_CHANNELS 1
+
+/* How long to wait before triggering the mailbox receive event */
+#define NOTIFY_WAIT_TIME_NS 50
+
+/**
+ * struct keembay_scmi_mbox
+ * @mbox:	Mailbox controller struct
+ * @dev:	Platform device
+ * @shmem_res:	Resource describing memory region shared between secure and
+ *		non-secure world
+ * @notify_hrt:	Timer to asynchronously trigger a mbox received data event
+ */
+struct keembay_scmi_mbox {
+	struct mbox_controller mbox;
+	struct device *dev;
+	struct resource shmem_res;
+	struct hrtimer notify_hrt;
+};
+
+static int keembay_scmi_request(u32 base_address)
+{
+	struct arm_smccc_res res;
+	u64 function_id;
+	u16 function_number = KMB_SIP_SVC_SCMI;
+
+	function_id = ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL, ARM_SMCCC_SMC_32,
+					 ARM_SMCCC_OWNER_SIP, function_number);
+
+	arm_smccc_smc(function_id, base_address, 0, 0, 0, 0, 0, 0, &res);
+
+	return res.a0;
+}
+
+static enum hrtimer_restart keembay_scmi_async_notify(struct hrtimer *hrtimer)
+{
+	struct keembay_scmi_mbox *mbox =
+		container_of(hrtimer, struct keembay_scmi_mbox, notify_hrt);
+	struct mbox_chan *chan = &mbox->mbox.chans[0];
+
+	mbox_chan_received_data(chan, NULL);
+
+	return HRTIMER_NORESTART;
+}
+
+static int keembay_scmi_mailbox_send_data(struct mbox_chan *chan, void *data)
+{
+	struct keembay_scmi_mbox *mbox = chan->con_priv;
+	struct device *dev = mbox->dev;
+	int rc;
+
+	/*
+	 * Handle case where timer is still on and a new message arrives.
+	 * We only have one timer, if it were to happen that a second
+	 * request came in and we failed to respond as expected to the
+	 * first, the caller's state machine may end up in an unexpected
+	 * state.
+	 */
+	if (hrtimer_active(&mbox->notify_hrt)) {
+		dev_warn(dev, "Mailbox was busy when request arrived.\n");
+		return -EBUSY;
+	}
+
+	rc = keembay_scmi_request((u32)mbox->shmem_res.start);
+	if (rc < 0) {
+		dev_warn(dev, "Failed to send message to SCP: %d\n", rc);
+		return rc;
+	}
+
+	/*
+	 * If there is an asynchronous interrupt pending, trigger it
+	 * via timer. We will know that, because secure world will
+	 * respond with > 0 return value.
+	 */
+	if (rc) {
+		hrtimer_start(&mbox->notify_hrt,
+			      ns_to_ktime(NOTIFY_WAIT_TIME_NS),
+			      HRTIMER_MODE_REL);
+	}
+
+	return 0;
+}
+
+static bool keembay_scmi_mailbox_last_tx_done(struct mbox_chan *chan)
+{
+	return true;
+}
+
+static int keembay_scmi_mailbox_startup(struct mbox_chan *chan)
+{
+	struct keembay_scmi_mbox *mbox = chan->con_priv;
+
+	hrtimer_init(&mbox->notify_hrt, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
+	mbox->notify_hrt.function = keembay_scmi_async_notify;
+
+	return 0;
+}
+
+static const struct mbox_chan_ops scmi_mbox_ops = {
+	.startup = keembay_scmi_mailbox_startup,
+	.send_data = keembay_scmi_mailbox_send_data,
+	.last_tx_done = keembay_scmi_mailbox_last_tx_done,
+};
+
+static int keembay_scmi_get_shmem_res(struct device *dev, struct resource *res)
+{
+	struct device_node *node;
+	int rc;
+
+	node = of_parse_phandle(dev->of_node, "memory-region", 0);
+	if (!node) {
+		dev_err(dev, "Couldn't find region.\n");
+		return -EINVAL;
+	}
+
+	rc = of_address_to_resource(node, 0, res);
+	of_node_put(node);
+	if (rc)
+		dev_err(dev, "Couldn't resolve region.\n");
+
+	return rc;
+}
+
+static int keembay_scmi_mailbox_probe(struct platform_device *pdev)
+{
+	struct keembay_scmi_mbox *scmi_mbox;
+	struct device *dev = &pdev->dev;
+	int ret;
+
+	scmi_mbox = devm_kzalloc(dev, sizeof(*scmi_mbox), GFP_KERNEL);
+	if (!scmi_mbox)
+		return -ENOMEM;
+
+	ret = keembay_scmi_get_shmem_res(dev, &scmi_mbox->shmem_res);
+	if (ret) {
+		dev_err(dev, "Failed to get SCMI shared region resource.\n");
+		return ret;
+	}
+
+	scmi_mbox->mbox.dev = dev;
+	scmi_mbox->mbox.txdone_poll = true;
+	scmi_mbox->mbox.txpoll_period = 5;
+	scmi_mbox->mbox.ops = &scmi_mbox_ops;
+	scmi_mbox->mbox.num_chans = NUM_CHANNELS;
+	scmi_mbox->mbox.chans = devm_kcalloc(dev, scmi_mbox->mbox.num_chans,
+					     sizeof(*scmi_mbox->mbox.chans),
+					     GFP_KERNEL);
+	if (!scmi_mbox->mbox.chans)
+		return -ENOMEM;
+	scmi_mbox->mbox.chans[0].con_priv = scmi_mbox;
+
+	ret = devm_mbox_controller_register(dev, &scmi_mbox->mbox);
+	if (ret)
+		return ret;
+
+	scmi_mbox->dev = dev;
+
+	platform_set_drvdata(pdev, scmi_mbox);
+
+	return 0;
+}
+
+static const struct of_device_id keembay_scmi_mailbox_of_match[] = {
+	{
+		.compatible = "intel,keembay-scmi-mailbox",
+	},
+	{}
+};
+
+static struct platform_driver keembay_scmi_mailbox_driver = {
+	.driver = {
+			.name = "keembay-scmi-mailbox",
+			.of_match_table = keembay_scmi_mailbox_of_match,
+		},
+	.probe = keembay_scmi_mailbox_probe,
+};
+module_platform_driver(keembay_scmi_mailbox_driver);
+
+MODULE_DESCRIPTION("Keem Bay SCMI mailbox driver");
+MODULE_AUTHOR("Paul Murphy <paul.j.murphy@intel.com>");
+MODULE_LICENSE("GPL v2");
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
