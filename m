Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FB01EFF24
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 19:36:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YLrMK077SyUoI69x3kc3QKJOhQmsC+Gyn1Dq4SW/m9Q=; b=g/+PVIgC36UrN5MXnTFGzh0mYL
	y222wGysiINtOIPeFj7Nw5eBN8VotKhe2QG8DcwFwolGpzi+45/wNnhSlmzGOeJcmdGl1YV4bpdUW
	CWX3EGoOKbyaPCuraTJUvhV3V5U/V9w1hlSxGQZpttHsgwMgYxOcBPBQ9inOe1AtiScwdWVP4xIHh
	f0FYtJUX+1ZtYkLwE0UruykOM/ggp7TMBjNDAxLqJ3MHvuLt5Gm0l1OzwUWqNv4bSypg64iGpofXw
	hZ0VHuoe6TlPlwjIzSwel27Bae0xVkWjWXeQGgB5WZ6LmDzVDOWpG07e0kWSh4l2YLuqSASQSMTGR
	D6WzWUMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhGGS-0000ah-VO; Fri, 05 Jun 2020 17:36:21 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhGEC-000510-1a
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 17:34:04 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 086762A509B
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-pm@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-input@vger.kernel.org, linux-tegra@vger.kernel.org,
 patches@opensource.cirrus.com, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org
Subject: [PATCH v3 7/7] Input: Add "inhibited" property
Date: Fri,  5 Jun 2020 19:33:35 +0200
Message-Id: <20200605173335.13753-8-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200605173335.13753-1-andrzej.p@collabora.com>
References: <20200604072853.GP89269@dtor-ws>
 <20200605173335.13753-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_103400_828639_0048EA7C 
X-CRM114-Status: GOOD (  23.10  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: kernel@collabora.com, Nick Dyer <nick@shmanahar.org>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Peter Hutterer <peter.hutterer@redhat.com>, Fabio Estevam <festevam@gmail.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Len Brown <lenb@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Hans de Goede <hdegoede@redhat.com>,
 Barry Song <baohua@kernel.org>, Ferruh Yigit <fery@cypress.com>,
 Patrik Fimml <patrikf@chromium.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Patrik Fimml <patrikf@chromium.org>

Userspace might want to implement a policy to temporarily disregard input
from certain devices, including not treating them as wakeup sources.

An example use case is a laptop, whose keyboard can be folded under the
screen to create tablet-like experience. The user then must hold the laptop
in such a way that it is difficult to avoid pressing the keyboard keys. It
is therefore desirable to temporarily disregard input from the keyboard,
until it is folded back. This obviously is a policy which should be kept
out of the kernel, but the kernel must provide suitable means to implement
such a policy.

This patch adds a sysfs interface for exactly this purpose.

To implement the said interface it adds an "inhibited" property to struct
input_dev, and effectively creates four states a device can be in: closed
uninhibited, closed inhibited, open uninhibited, open inhibited. It also
defers calling driver's ->open() and ->close() to until they are actually
needed, e.g. it makes no sense to prepare the underlying device for
generating events (->open()) if the device is inhibited.

              uninhibit
closed      <------------ closed
uninhibited ------------> inhibited
      | ^     inhibit        | ^
 1st  | |               1st  | |
 open | |               open | |
      | |                    | |
      | | last               | | last
      | | close              | | close
      v |     uninhibit      v |
open        <------------ open
uninhibited ------------> inhibited

The top inhibit/uninhibit transition happens when users == 0.
The bottom inhibit/uninhibit transition happens when users > 0.
The left open/close transition happens when !inhibited.
The right open/close transition happens when inhibited.
Due to all transitions being serialized with dev->mutex, it is impossible
to have "diagonal" transitions between closed uninhibited and open
inhibited or between open uninhibited and closed inhibited.

No new callbacks are added to drivers, because their open() and close()
serve exactly the purpose to tell the driver to start/stop providing
events to the input core. Consequently, open() and close() - if provided
- are called in both inhibit and uninhibit paths.

Signed-off-by: Patrik Fimml <patrikf@chromium.org>
Co-developed-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/input/input.c | 115 +++++++++++++++++++++++++++++++++++++++---
 include/linux/input.h |  12 ++++-
 2 files changed, 118 insertions(+), 9 deletions(-)

diff --git a/drivers/input/input.c b/drivers/input/input.c
index 41377bfa142d..4110b5797219 100644
--- a/drivers/input/input.c
+++ b/drivers/input/input.c
@@ -284,8 +284,11 @@ static int input_get_disposition(struct input_dev *dev,
 	case EV_KEY:
 		if (is_event_supported(code, dev->keybit, KEY_MAX)) {
 
-			/* auto-repeat bypasses state updates */
-			if (value == 2) {
+			/*
+			 * auto-repeat bypasses state updates but repeat
+			 * events are ignored if the key is not pressed
+			 */
+			if (value == 2 && test_bit(code, dev->key)) {
 				disposition = INPUT_PASS_TO_HANDLERS;
 				break;
 			}
@@ -367,8 +370,13 @@ static int input_get_disposition(struct input_dev *dev,
 static void input_handle_event(struct input_dev *dev,
 			       unsigned int type, unsigned int code, int value)
 {
-	int disposition = input_get_disposition(dev, type, code, &value);
+	int disposition;
+
+	/* filter-out events from inhibited devices */
+	if (dev->inhibited)
+		return;
 
+	disposition = input_get_disposition(dev, type, code, &value);
 	if (disposition != INPUT_IGNORE_EVENT && type != EV_SYN)
 		add_input_randomness(type, code, value);
 
@@ -612,7 +620,7 @@ int input_open_device(struct input_handle *handle)
 
 	handle->open++;
 
-	if (dev->users++) {
+	if (dev->users++ || dev->inhibited) {
 		/*
 		 * Device is already opened, so we can exit immediately and
 		 * report success.
@@ -675,10 +683,9 @@ void input_close_device(struct input_handle *handle)
 
 	__input_release_device(handle);
 
-	if (!--dev->users) {
+	if (!dev->inhibited && !--dev->users) {
 		if (dev->poller)
 			input_dev_poller_stop(dev->poller);
-
 		if (dev->close)
 			dev->close(dev);
 	}
@@ -1416,12 +1423,49 @@ static ssize_t input_dev_show_properties(struct device *dev,
 }
 static DEVICE_ATTR(properties, S_IRUGO, input_dev_show_properties, NULL);
 
+static int input_inhibit_device(struct input_dev *dev);
+static int input_uninhibit_device(struct input_dev *dev);
+
+static ssize_t inhibited_show(struct device *dev,
+			      struct device_attribute *attr,
+			      char *buf)
+{
+	struct input_dev *input_dev = to_input_dev(dev);
+
+	return scnprintf(buf, PAGE_SIZE, "%d\n", input_dev->inhibited);
+}
+
+static ssize_t inhibited_store(struct device *dev,
+			       struct device_attribute *attr, const char *buf,
+			       size_t len)
+{
+	struct input_dev *input_dev = to_input_dev(dev);
+	ssize_t rv;
+	bool inhibited;
+
+	if (strtobool(buf, &inhibited))
+		return -EINVAL;
+
+	if (inhibited)
+		rv = input_inhibit_device(input_dev);
+	else
+		rv = input_uninhibit_device(input_dev);
+
+	if (rv != 0)
+		return rv;
+
+	return len;
+}
+
+static DEVICE_ATTR_RW(inhibited);
+
 static struct attribute *input_dev_attrs[] = {
 	&dev_attr_name.attr,
 	&dev_attr_phys.attr,
 	&dev_attr_uniq.attr,
 	&dev_attr_modalias.attr,
 	&dev_attr_properties.attr,
+	&dev_attr_inhibited.attr,
 	NULL
 };
 
@@ -1703,6 +1747,63 @@ void input_reset_device(struct input_dev *dev)
 }
 EXPORT_SYMBOL(input_reset_device);
 
+static int input_inhibit_device(struct input_dev *dev)
+{
+	int ret = 0;
+
+	mutex_lock(&dev->mutex);
+
+	if (dev->inhibited)
+		goto out;
+
+	if (dev->users) {
+		if (dev->close)
+			dev->close(dev);
+		if (dev->poller)
+			input_dev_poller_stop(dev->poller);
+	}
+
+	spin_lock_irq(&dev->event_lock);
+	input_dev_release_keys(dev);
+	input_dev_toggle(dev, false);
+	spin_unlock_irq(&dev->event_lock);
+
+	dev->inhibited = true;
+
+out:
+	mutex_unlock(&dev->mutex);
+	return ret;
+}
+
+static int input_uninhibit_device(struct input_dev *dev)
+{
+	int ret = 0;
+
+	mutex_lock(&dev->mutex);
+
+	if (!dev->inhibited)
+		goto out;
+
+	if (dev->users) {
+		if (dev->open) {
+			ret = dev->open(dev);
+			if (ret)
+				goto out;
+		}
+		if (dev->poller)
+			input_dev_poller_start(dev->poller);
+	}
+
+	dev->inhibited = false;
+	spin_lock_irq(&dev->event_lock);
+	input_dev_toggle(dev, true);
+	spin_unlock_irq(&dev->event_lock);
+
+out:
+	mutex_unlock(&dev->mutex);
+	return ret;
+}
+
 #ifdef CONFIG_PM_SLEEP
 static int input_dev_suspend(struct device *dev)
 {
@@ -2131,7 +2232,7 @@ bool input_device_enabled(struct input_dev *dev)
 {
 	lockdep_assert_held(&dev->mutex);
 
-	return dev->users > 0;
+	return !dev->inhibited && dev->users > 0;
 }
 EXPORT_SYMBOL_GPL(input_device_enabled);
 
diff --git a/include/linux/input.h b/include/linux/input.h
index eda4587dba67..0354b298d874 100644
--- a/include/linux/input.h
+++ b/include/linux/input.h
@@ -90,9 +90,11 @@ enum input_clock_type {
  * @open: this method is called when the very first user calls
  *	input_open_device(). The driver must prepare the device
  *	to start generating events (start polling thread,
- *	request an IRQ, submit URB, etc.)
+ *	request an IRQ, submit URB, etc.). The meaning of open() is
+ *	to start providing events to the input core.
  * @close: this method is called when the very last user calls
- *	input_close_device().
+ *	input_close_device(). The meaning of close() is to stop
+ *	providing events to the input core.
  * @flush: purges the device. Most commonly used to get rid of force
  *	feedback effects loaded into the device when disconnecting
  *	from it
@@ -127,6 +129,10 @@ enum input_clock_type {
  *	and needs not be explicitly unregistered or freed.
  * @timestamp: storage for a timestamp set by input_set_timestamp called
  *  by a driver
+ * @inhibited: indicates that the input device is inhibited. If that is
+ * the case then input core ignores any events generated by the device.
+ * Device's close() is called when it is being inhibited and its open()
+ * is called when it is being uninhibited.
  */
 struct input_dev {
 	const char *name;
@@ -201,6 +207,8 @@ struct input_dev {
 	bool devres_managed;
 
 	ktime_t timestamp[INPUT_CLK_MAX];
+
+	bool inhibited;
 };
 #define to_input_dev(d) container_of(d, struct input_dev, dev)
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
