Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B11E1415
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 10:24:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OtbWKQp37PJGUbepbRLHUJykAfmUvbfsIKY9IspUrlc=; b=AW+
	ut9c4JnjqZRtoZKaTidnY6k3Kk0zsSM64ff6I4xjdsPu7govFeCMoQGaJQpiV4Xx/dL6lC9DbAH5k
	K0eB6eEc4NWwOSc/7375N1BYykwCqqA+eCq87+06+0eoK5dubKUDPBk9C4bWzYI1gLwJooXny0QGp
	7qXovUI0xQqzRM5t56m5MHaaUuoKE9+wOQLxLfZ1UyGMNT2JT9Aq29NtUdfSLN3ugyxFAJKr5XJrz
	5JNiEfCt19+FikUxEcFGVGK4HN701Z0kmwhH7xWg+IvvzTOSQbARbxGOkljMNa80oFY/kTfFW+O0R
	PAaCfHX1LGWzU2ecSClRi++m2ldLj3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNBwd-0003Cb-FD; Wed, 23 Oct 2019 08:24:39 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNBw9-0002xd-Ee
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 08:24:11 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3611D1A07C5;
 Wed, 23 Oct 2019 10:24:04 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 8A2761A070F;
 Wed, 23 Oct 2019 10:23:57 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 63804402D3;
 Wed, 23 Oct 2019 16:23:49 +0800 (SGT)
From: Ran Wang <ran.wang_1@nxp.com>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>, Rob Herring <robh+dt@kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Pavel Machek <pavel@ucw.cz>, Huang Anson <anson.huang@nxp.com>
Subject: [PATCH v9 1/3] PM: wakeup: Add routine to help fetch wakeup source
 object.
Date: Wed, 23 Oct 2019 16:24:21 +0800
Message-Id: <20191023082423.12569-1-ran.wang_1@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_012409_766760_17B3488D 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Li Biwen <biwen.li@nxp.com>, Len Brown <len.brown@intel.com>,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ran Wang <ran.wang_1@nxp.com>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some user might want to go through all registered wakeup sources
and doing things accordingly. For example, SoC PM driver might need to
do HW programming to prevent powering down specific IP which wakeup
source depending on. So add this API to help walk through all registered
wakeup source objects on that list and return them one by one.

Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
Tested-by: Leonard Crestez <leonard.crestez@nxp.com>
---
Change in v9:
	- Supplement comments for wakeup_sources_read_lock(),
	  wakeup_sources_read_unlock, wakeup_sources_walk_start and
	  wakeup_sources_walk_next().

Change in v8:
	- Rename wakeup_source_get_next() to wakeup_sources_walk_next().
	- Add wakeup_sources_read_lock() to take over locking job of
	  wakeup_source_get_star().
	- Rename wakeup_source_get_start() to wakeup_sources_walk_start().
	- Replace wakeup_source_get_stop() with wakeup_sources_read_unlock().
	- Define macro for_each_wakeup_source(ws).

Change in v7:
	- Remove define of member *dev in wake_irq to fix conflict with commit 
	c8377adfa781 ("PM / wakeup: Show wakeup sources stats in sysfs"), user 
	will use ws->dev->parent instead.
	- Remove '#include <linux/of_device.h>' because it is not used.

Change in v6:
	- Add wakeup_source_get_star() and wakeup_source_get_stop() to aligned 
	with wakeup_sources_stats_seq_start/nex/stop.

Change in v5:
	- Update commit message, add decription of walk through all wakeup
	source objects.
	- Add SCU protection in function wakeup_source_get_next().
	- Rename wakeup_source member 'attached_dev' to 'dev' and move it up
	(before wakeirq).

Change in v4:
	- None.

Change in v3:
	- Adjust indentation of *attached_dev;.

Change in v2:
	- None.

 drivers/base/power/wakeup.c | 54 +++++++++++++++++++++++++++++++++++++++++++++
 include/linux/pm_wakeup.h   |  9 ++++++++
 2 files changed, 63 insertions(+)

diff --git a/drivers/base/power/wakeup.c b/drivers/base/power/wakeup.c
index 5817b51..70a9edb 100644
--- a/drivers/base/power/wakeup.c
+++ b/drivers/base/power/wakeup.c
@@ -248,6 +248,60 @@ void wakeup_source_unregister(struct wakeup_source *ws)
 EXPORT_SYMBOL_GPL(wakeup_source_unregister);
 
 /**
+ * wakeup_sources_read_lock - Lock wakeup source list for read.
+ *
+ * Returns an index of srcu lock for struct wakeup_srcu.
+ * This index must be passed to the matching wakeup_sources_read_unlock().
+ */
+int wakeup_sources_read_lock(void)
+{
+	return srcu_read_lock(&wakeup_srcu);
+}
+EXPORT_SYMBOL_GPL(wakeup_sources_read_lock);
+
+/**
+ * wakeup_sources_read_unlock - Unlock wakeup source list.
+ * @idx: return value from corresponding wakeup_sources_read_lock()
+ */
+void wakeup_sources_read_unlock(int idx)
+{
+	srcu_read_unlock(&wakeup_srcu, idx);
+}
+EXPORT_SYMBOL_GPL(wakeup_sources_read_unlock);
+
+/**
+ * wakeup_sources_walk_start - Begin a walk on wakeup source list
+ *
+ * Returns first object of the list of wakeup sources.
+ *
+ * Note that to be safe, wakeup sources list needs to be locked by calling
+ * wakeup_source_read_lock() for this.
+ */
+struct wakeup_source *wakeup_sources_walk_start(void)
+{
+	struct list_head *ws_head = &wakeup_sources;
+
+	return list_entry_rcu(ws_head->next, struct wakeup_source, entry);
+}
+EXPORT_SYMBOL_GPL(wakeup_sources_walk_start);
+
+/**
+ * wakeup_sources_walk_next - Get next wakeup source from the list
+ * @ws: Previous wakeup source object
+ *
+ * Note that to be safe, wakeup sources list needs to be locked by calling
+ * wakeup_source_read_lock() for this.
+ */
+struct wakeup_source *wakeup_sources_walk_next(struct wakeup_source *ws)
+{
+	struct list_head *ws_head = &wakeup_sources;
+
+	return list_next_or_null_rcu(ws_head, &ws->entry,
+				struct wakeup_source, entry);
+}
+EXPORT_SYMBOL_GPL(wakeup_sources_walk_next);
+
+/**
  * device_wakeup_attach - Attach a wakeup source object to a device object.
  * @dev: Device to handle.
  * @ws: Wakeup source object to attach to @dev.
diff --git a/include/linux/pm_wakeup.h b/include/linux/pm_wakeup.h
index 661efa0..aa3da66 100644
--- a/include/linux/pm_wakeup.h
+++ b/include/linux/pm_wakeup.h
@@ -63,6 +63,11 @@ struct wakeup_source {
 	bool			autosleep_enabled:1;
 };
 
+#define for_each_wakeup_source(ws) \
+	for ((ws) = wakeup_sources_walk_start();	\
+	     (ws);					\
+	     (ws) = wakeup_sources_walk_next((ws)))
+
 #ifdef CONFIG_PM_SLEEP
 
 /*
@@ -92,6 +97,10 @@ extern void wakeup_source_remove(struct wakeup_source *ws);
 extern struct wakeup_source *wakeup_source_register(struct device *dev,
 						    const char *name);
 extern void wakeup_source_unregister(struct wakeup_source *ws);
+extern int wakeup_sources_read_lock(void);
+extern void wakeup_sources_read_unlock(int idx);
+extern struct wakeup_source *wakeup_sources_walk_start(void);
+extern struct wakeup_source *wakeup_sources_walk_next(struct wakeup_source *ws);
 extern int device_wakeup_enable(struct device *dev);
 extern int device_wakeup_disable(struct device *dev);
 extern void device_set_wakeup_capable(struct device *dev, bool capable);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
