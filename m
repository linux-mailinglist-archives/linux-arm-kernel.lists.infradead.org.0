Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 889F71BAFFB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 23:09:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YHIkM/SQeYdBFif4CSFtLedv+2Fg9dbcgb2a9FTROI4=; b=nUnsObrlnVCXN+a5ziL0wMUDqN
	OWOsei4WT7xbMMqLcmvtgrHQkn9oyuIzyNb455xLJTmlKZc8aKdjHdnniDffYqenWAF4kbSBXKTa3
	qoc9DohZb71LA+mtaQatnbAANysTTKy2ZGLXhiXibVx4kIvQlngukxxPJ/s5hiomhqf5JZdrb1/uG
	54idFiBwc7YHb+Pq1Gbw1ukIfO66zOjYdSKqF4/nN+5kFcMtCYc8bccHZKleaf7p53jeJudEEswrW
	bLfTtZolPrw2b4Gmlr4qlBBenQOF+NIS6Nu4XNBjqdeJ6MIQqFRO/AA+DA7yc7LEwSpYhDE0IEHNP
	WOasg1zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTB08-00087Z-54; Mon, 27 Apr 2020 21:09:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTAzd-0007z1-EP
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 21:08:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E5D861042;
 Mon, 27 Apr 2020 14:08:38 -0700 (PDT)
Received: from e120937-lin.home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D86303F305;
 Mon, 27 Apr 2020 14:08:37 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 2/3] firmware: arm_scmi: Add SCMI System Power Control
 driver
Date: Mon, 27 Apr 2020 22:08:05 +0100
Message-Id: <20200427210806.37422-3-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200427210806.37422-1-cristian.marussi@arm.com>
References: <20200427210806.37422-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_140845_567945_5435C38B 
X-CRM114-Status: GOOD (  21.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jonathan.Cameron@Huawei.com, cristian.marussi@arm.com,
 james.quinlan@broadcom.com, lukasz.luba@arm.com, sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add an SCMI System Power control driver to handle platform's requests
carried by SYSTEM_POWER_STATE_NOTIFIER notifications: such platform
requested system power state transitions are handled accordingly,
gracefully or forcefully, depending on the notification's flags.

Graceful requests are relayed to userspace using the same Kernel API used
to handle ACPI Shutdown bus events. (orderly_poweroff/reboot()).

For graceful requests grant userspace processes a maximum (configurable)
time to perform their duties and then revert to a forceful transition, so
avoiding completely timing out platform's maximum grace time and hitting
possible abrupt power-cuts.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
 drivers/firmware/Kconfig                      |  12 +
 drivers/firmware/arm_scmi/Makefile            |   1 +
 drivers/firmware/arm_scmi/driver.c            |   1 +
 .../firmware/arm_scmi/scmi_power_control.c    | 359 ++++++++++++++++++
 4 files changed, 373 insertions(+)
 create mode 100644 drivers/firmware/arm_scmi/scmi_power_control.c

diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index 8007d4aa76dc..f064e1f47cb7 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -40,6 +40,18 @@ config ARM_SCMI_POWER_DOMAIN
 	  will be called scmi_pm_domain. Note this may needed early in boot
 	  before rootfs may be available.
 
+config ARM_SCMI_POWER_CONTROL
+	bool "SCMI power control driver"
+	depends on ARM_SCMI_PROTOCOL || (COMPILE_TEST && OF)
+	default y
+	help
+	  This enables System Power control logic which binds system shutdown or
+	  reboot actions to SCMI System Power notificationns generated by SCP
+	  firmware.
+
+	  Graceful requests max timeout can be configured at boot time using
+	  module parameter named scmi_graceful_request_tmo_ms.
+
 config ARM_SCPI_PROTOCOL
 	tristate "ARM System Control and Power Interface (SCPI) Message Protocol"
 	depends on ARM || ARM64 || COMPILE_TEST
diff --git a/drivers/firmware/arm_scmi/Makefile b/drivers/firmware/arm_scmi/Makefile
index e01b67bc74b4..280568632791 100644
--- a/drivers/firmware/arm_scmi/Makefile
+++ b/drivers/firmware/arm_scmi/Makefile
@@ -7,3 +7,4 @@ scmi-transport-$(CONFIG_MAILBOX) += mailbox.o
 scmi-transport-$(CONFIG_HAVE_ARM_SMCCC) += smc.o
 scmi-protocols-y = base.o clock.o perf.o power.o reset.o sensors.o system.o
 obj-$(CONFIG_ARM_SCMI_POWER_DOMAIN) += scmi_pm_domain.o
+obj-$(CONFIG_ARM_SCMI_POWER_CONTROL) += scmi_power_control.o
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 5d89d0e9d650..dd6ac0819c69 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -733,6 +733,7 @@ struct scmi_prot_devnames {
 
 static struct scmi_prot_devnames devnames[] = {
 	{ SCMI_PROTOCOL_POWER,  { "genpd", "notifytest" },},
+	{ SCMI_PROTOCOL_SYSTEM, {"syspower" },},
 	{ SCMI_PROTOCOL_PERF,   { "cpufreq" },},
 	{ SCMI_PROTOCOL_CLOCK,  { "clocks" },},
 	{ SCMI_PROTOCOL_SENSOR, { "hwmon" },},
diff --git a/drivers/firmware/arm_scmi/scmi_power_control.c b/drivers/firmware/arm_scmi/scmi_power_control.c
new file mode 100644
index 000000000000..3b8d50ae2f25
--- /dev/null
+++ b/drivers/firmware/arm_scmi/scmi_power_control.c
@@ -0,0 +1,359 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * SCMI Generic System Power support.
+ *
+ * Copyright (C) 2020 ARM Ltd.
+ */
+/**
+ * DOC: Theory of operation
+ *
+ * In order to handle platform originated SCMI System Power requests (like
+ * shutdowns or cold/warm resets) we register an SCMI Notification notifier
+ * to react when such SCMI System Power events are emitted.
+ *
+ * Once such a notification is received we act accordingly to perform the
+ * required system transition depending on the kind of request.
+ *
+ * Graceful requests are routed to userspace through the same API methods
+ * (orderly_poweroff/reboot()) used by ACPI when handling ACPI Shutdown bus
+ * events.
+ *
+ * Forceful requests instead simply cause and immediate emergency_sync() and
+ * subsequent Kernel-only shutdown/reboot.
+ *
+ * The assumption here is that even graceful requests can be upper-bound by a
+ * maximum final timeout strictly enforced by the platform itself which can
+ * finally cuts the power off at will: in such a scenario, that we want to
+ * avoid, we track the graceful requests progress through thee means of a
+ * reboot_notifier and promptly convert a timing-out graceful request to a
+ * forceful one when userspace is late, in order to at least perform a clean
+ * sync and shutdown/restart.
+ *
+ * Given that such platform hard-timeout, when present, is anyway highly
+ * platform/event specific and not exposed at run-time, we make it configurable
+ * via the Kernel module param @scmi_graceful_request_tmo_ms.
+ */
+
+#include <linux/atomic.h>
+#include <linux/bitfield.h>
+#include <linux/err.h>
+#include <linux/fs.h>
+#include <linux/module.h>
+#include <linux/reboot.h>
+#include <linux/scmi_protocol.h>
+#include <linux/slab.h>
+#include <linux/timer.h>
+#include <linux/types.h>
+#include <linux/workqueue.h>
+
+#define DEFAULT_GRACE_TMO_MS	5000
+static unsigned int scmi_graceful_request_tmo_ms = DEFAULT_GRACE_TMO_MS;
+
+enum scmi_system_request_status {
+	SCMI_SYSPOWER_IDLE,
+	SCMI_SYSPOWER_SERVED,
+	SCMI_SYSPOWER_INPROGRESS,
+	SCMI_SYSPOWER_FORCING,
+};
+
+struct scmi_syspower_config {
+	struct device *dev;
+
+	atomic_t status;
+
+	u32 required_state;
+
+	void (*request_graceful_transition)(struct scmi_syspower_config *conf);
+	void (*request_forceful_transition)(struct scmi_syspower_config *conf);
+
+	struct notifier_block userspace_nb;
+	struct notifier_block reboot_nb;
+
+	struct timer_list request_timer;
+	struct work_struct forceful_work;
+};
+
+static void scmi_forceful_work_func(struct work_struct *work)
+{
+	struct scmi_syspower_config *conf =
+		container_of(work, struct scmi_syspower_config, forceful_work);
+
+	conf->request_forceful_transition(conf);
+}
+
+/**
+ * scmi_request_timeout  - On timeout trigger a forceful transition
+ * @t: The timer reference
+ *
+ * Actual work is deferred out of the timer IRQ context since shutdown/reboot
+ * code do not play well when !in_task().
+ */
+static void scmi_request_timeout(struct timer_list *t)
+{
+	struct scmi_syspower_config *conf = from_timer(conf, t, request_timer);
+
+	dev_warn(conf->dev,
+		 "SCMI Graceful System Transition request timed out !\n");
+	atomic_set(&conf->status, SCMI_SYSPOWER_FORCING);
+	/* Ensure atomic values are updated */
+	smp_mb__after_atomic();
+	schedule_work(&conf->forceful_work);
+}
+
+/**
+ * scmi_reboot_notifier  - A reboot_notifier to catch an ongoing successful
+ * system transition
+ * @nb: Reference to the related notifier block
+ * @reason: The reason for the ongoing reboot
+ * @__unused: The cmd being executed on a restart request (unused)
+ *
+ * When an ongoing system transition is detected, compatible with the requested
+ * one, cancel the timer work.
+ *
+ * Return: NOTIFY_OK in any case
+ */
+static int scmi_reboot_notifier(struct notifier_block *nb,
+				unsigned long reason, void *__unused)
+{
+	struct scmi_syspower_config *conf;
+
+	conf = container_of(nb, struct scmi_syspower_config, reboot_nb);
+
+	/* Ensure atomic values are updated */
+	smp_mb__before_atomic();
+	if (unlikely(atomic_read(&conf->status) == SCMI_SYSPOWER_FORCING))
+		return NOTIFY_OK;
+
+	switch (reason) {
+	case SYS_HALT:
+	case SYS_POWER_OFF:
+		if (conf->required_state == SCMI_SYSTEM_SHUTDOWN)
+			atomic_set(&conf->status, SCMI_SYSPOWER_INPROGRESS);
+		break;
+	case SYS_RESTART:
+		if (conf->required_state == SCMI_SYSTEM_COLDRESET ||
+		    conf->required_state == SCMI_SYSTEM_WARMRESET)
+			atomic_set(&conf->status, SCMI_SYSPOWER_INPROGRESS);
+		break;
+	default:
+		break;
+	}
+
+	/* Ensure atomic values are updated */
+	smp_mb__after_atomic();
+	if (atomic_read(&conf->status) == SCMI_SYSPOWER_INPROGRESS) {
+		dev_info(conf->dev,
+			 "SCMI System State request in progress...\n");
+		del_timer_sync(&conf->request_timer);
+	}
+
+	return NOTIFY_OK;
+}
+
+/**
+ * scmi_request_graceful_transition  - Request graceful SystemPower transition
+ * @conf: The current SystemPower configuration descriptor
+ *
+ * Initiates the required SystemPower transition, requesting userspace
+ * co-operation using the same orderly_ methods used by ACPI Shutdown event
+ * processing.
+ *
+ * This takes care also to register a reboot notifier and a timer callback in
+ * order to detect if userspace actions are taking too long; in such a case
+ * the timeout callback will finally perform a forceful transition, ignoring
+ * lagging userspace: the aim here is to at least perform an emergency_sync()
+ * and a clean shutdown or reboot transition when userspace is late, avoiding
+ * the brutal final power-cut from platform.
+ */
+static void scmi_request_graceful_transition(struct scmi_syspower_config *conf)
+{
+	int ret;
+	u32 status;
+
+	if (conf->required_state >= SCMI_SYSTEM_POWERUP) {
+		dev_warn(conf->dev,
+			 "Received unexpected SYSTEM POWER request: %d\n",
+			 conf->required_state);
+		return;
+	}
+
+	status = atomic_cmpxchg(&conf->status, SCMI_SYSPOWER_IDLE,
+				SCMI_SYSPOWER_SERVED);
+	if (status != SCMI_SYSPOWER_IDLE)
+		return;
+
+	dev_info(conf->dev,
+		 "Serving SCMI Graceful request: %d (timeout_ms:%d)\n",
+		 conf->required_state, scmi_graceful_request_tmo_ms);
+
+	ret = devm_register_reboot_notifier(conf->dev, &conf->reboot_nb);
+	if (ret)
+		dev_warn(conf->dev, "Cannot register reboot notifier !\n");
+
+	INIT_WORK(&conf->forceful_work, scmi_forceful_work_func);
+	conf->request_timer.expires = jiffies +
+				msecs_to_jiffies(scmi_graceful_request_tmo_ms);
+	timer_setup(&conf->request_timer, scmi_request_timeout, 0);
+	add_timer(&conf->request_timer);
+
+	switch (conf->required_state) {
+	case SCMI_SYSTEM_SHUTDOWN:
+		/*
+		 * When received early at boot-time the 'orderly' part will
+		 * fail due to the lack of userspace itself, but the force=true
+		 * argument will anyway be able trigger a successful forced
+		 * shutdown.
+		 */
+		orderly_poweroff(true);
+		break;
+	case SCMI_SYSTEM_COLDRESET:
+	case SCMI_SYSTEM_WARMRESET:
+		orderly_reboot();
+		break;
+	default:
+		break;
+	}
+}
+
+static void scmi_request_forceful_transition(struct scmi_syspower_config *conf)
+{
+	/* Ensure atomic values are updated */
+	smp_mb__before_atomic();
+	if (unlikely(atomic_read(&conf->status) == SCMI_SYSPOWER_INPROGRESS))
+		return;
+
+	dev_info(conf->dev, "Serving SCMI FORCEFUL SystemPower request:%d\n",
+		 conf->required_state);
+
+	emergency_sync();
+	switch (conf->required_state) {
+	case SCMI_SYSTEM_SHUTDOWN:
+		kernel_power_off();
+		break;
+	case SCMI_SYSTEM_COLDRESET:
+	case SCMI_SYSTEM_WARMRESET:
+		kernel_restart(NULL);
+		break;
+	default:
+		break;
+	}
+}
+
+#define SCMI_IS_REQUEST_GRACEFUL(flags)		((flags) & BIT(0))
+
+/**
+ * scmi_userspace_notifier  - Notifier callback to act on SystemPower
+ * Notifications
+ * @nb: Reference to the related notifier block
+ * @event: The SystemPower notification event id
+ * @data: The SystemPower event report
+ *
+ * This callback is in charge of decoding the received SystemPower report
+ * and act accordingly triggering a graceful or forceful system transition.
+ *
+ * Return: NOTIFY_OK in any case
+ */
+static int scmi_userspace_notifier(struct notifier_block *nb,
+				   unsigned long event, void *data)
+{
+	struct scmi_system_power_state_notifier_report *er = data;
+	struct scmi_syspower_config *conf;
+
+	if (unlikely(system_state > SYSTEM_RUNNING))
+		return NOTIFY_OK;
+
+	conf = container_of(nb, struct scmi_syspower_config, userspace_nb);
+	conf->required_state = er->system_state;
+
+	if (conf->required_state >= SCMI_SYSTEM_MAX)
+		return NOTIFY_OK;
+
+	if (SCMI_IS_REQUEST_GRACEFUL(er->flags))
+		conf->request_graceful_transition(conf);
+	else
+		conf->request_forceful_transition(conf);
+
+	return NOTIFY_OK;
+}
+
+/**
+ * scmi_syspower_configure  - General SystemPower configuration init
+ * @dev: The associated struct device
+ *
+ * Return: SystemPower configuration descriptor on Success, NULL otherwise
+ */
+static void *scmi_syspower_configure(struct device *dev)
+{
+	struct scmi_syspower_config *conf;
+
+	conf = devm_kzalloc(dev, sizeof(*conf), GFP_KERNEL);
+	if (!conf)
+		return NULL;
+
+	conf->dev = dev;
+	conf->required_state = SCMI_SYSTEM_MAX;
+	conf->request_graceful_transition = &scmi_request_graceful_transition;
+	conf->request_forceful_transition = &scmi_request_forceful_transition;
+	conf->userspace_nb.notifier_call = &scmi_userspace_notifier;
+	conf->reboot_nb.notifier_call = &scmi_reboot_notifier;
+	atomic_set(&conf->status, SCMI_SYSPOWER_IDLE);
+	/* Ensure atomic values are updated */
+	smp_mb__after_atomic();
+
+	return conf;
+}
+
+static int scmi_syspower_probe(struct scmi_device *sdev)
+{
+	int ret;
+	struct scmi_handle *handle = sdev->handle;
+	struct scmi_syspower_config *syspower_conf;
+
+	if (!handle)
+		return -ENODEV;
+
+	syspower_conf = scmi_syspower_configure(&sdev->dev);
+	if (!syspower_conf)
+		return -ENOMEM;
+
+	dev_set_drvdata(&sdev->dev, syspower_conf);
+	ret = handle->notify_ops->register_event_notifier(handle,
+						SCMI_PROTOCOL_SYSTEM, 0x0, NULL,
+						  &syspower_conf->userspace_nb);
+
+	return 0;
+}
+
+static void scmi_syspower_remove(struct scmi_device *sdev)
+{
+	int ret;
+	const struct scmi_handle *handle = sdev->handle;
+	struct scmi_syspower_config *syspower_conf;
+
+	syspower_conf = dev_get_drvdata(&sdev->dev);
+	ret = handle->notify_ops->unregister_event_notifier(handle,
+						SCMI_PROTOCOL_SYSTEM, 0x0, NULL,
+						  &syspower_conf->userspace_nb);
+}
+
+static const struct scmi_device_id scmi_id_table[] = {
+	{ SCMI_PROTOCOL_SYSTEM, "syspower" },
+	{ },
+};
+MODULE_DEVICE_TABLE(scmi, scmi_id_table);
+
+static struct scmi_driver scmi_system_power_driver = {
+	.name = "scmi-system-power",
+	.probe = scmi_syspower_probe,
+	.remove = scmi_syspower_remove,
+	.id_table = scmi_id_table,
+};
+module_scmi_driver(scmi_system_power_driver);
+
+module_param(scmi_graceful_request_tmo_ms, uint, 0644);
+MODULE_PARM_DESC(scmi_graceful_request_tmo_ms,
+	"Maximum time(ms) allowed to userspace to comply to the request");
+
+MODULE_AUTHOR("Cristian Marussi <cristian.marussi@arm.com>");
+MODULE_DESCRIPTION("ARM SCMI System Power driver");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
