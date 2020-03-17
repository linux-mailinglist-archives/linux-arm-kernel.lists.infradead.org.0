Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D29187A0E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 07:57:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iPEWEM2ILVGZ3qPR9FvGVC7bKRqDcS9827EH8/Kc5X4=; b=QJ0KxQJU/7pf/A
	GHEaJhTGg3Q+BzPk6zWDq5lW/3D2qoEOkPs/cEURJjfTM0EPhRrqMJ0HuKPc0+ugaOrXR8KAFrd1V
	Djj3+53hlGtf9AQQknvsYNnaLdQDCyB4ZlKT/YBnNO4xLH1uF+p1X71T72ZkeBgEsIpNIvHQIpnDF
	C++Z+6mXkBatCFDFzk55mRU0zhAKHucwOrjhaqikX0YDLK9DEHTQ3JgnATtwFLZ7+dL1lS4imh37B
	3K3H+Nd4wqWNtnAoeotHzybuhoKsbDpvpLiLcCl/yWOqHDj12zDOWw8InRmfQr7lhNE6dnzSJOWam
	AAWbvi2KEi6+TGrX0fjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE6A6-0006Hh-Fg; Tue, 17 Mar 2020 06:57:14 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE68C-000499-MP
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 06:55:21 +0000
Received: by mail-pl1-x649.google.com with SMTP id j8so11939691plk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 23:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=AhDNtOnE0i0fbvNrO5Hy/wYWuzw/VPXEbOKSweJpsf4=;
 b=wPH+ZNue3MAR6e1XSTYBhe/11JXInDuWWXzaIdDLj6ZrHDYT77PY79OhR+WRTt/2lX
 lhvOTWaOj+7VclxkB62+XMab5YrZ5ctJUl+/RkVJMkmB007BhW2oOqlG7SgJ6L1dB/oG
 HjPt3qSwFtfcNr7PhP0LPel+skTIylPhHOMgAWlo+8K74T8IpRw+NDpYJBjvLCXh3LBS
 eDCRwvQigaB1NLKJAiv//yde0zyS1WNHgD/k7MLRxNb6iRgNENMat7tHRv2wIByRQzfD
 7aEFIw2zOu9CPPTe1KQmctOEHAXicUmiktlhfql+0oCGiwJtByZOf2b+c4Bzo5K0siiK
 uT4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=AhDNtOnE0i0fbvNrO5Hy/wYWuzw/VPXEbOKSweJpsf4=;
 b=dxsAIQ1N+1y7+99YSSutj/2nYmqDrPtm3WeA234O5iyDkXBavp1c62OOJ5RtrMwWnb
 9kocgXUYE/eUlusLKM8qe1i0fhjRVd7qMDMQ2t43EykQgKLrlSTWjdiYc5UxhrwChejs
 4VbEkFRjBy0JUfAkIkL0hdfzMMocPZRsw8BfjFpcunAB8mn2T7XJezyN8sG7f4lAp5Cv
 vgmmOn4JiL9MhkjRj87NqnaY/sRo6ajPMkwEcE4ytsQgeLmLEl6BWPHwiVhALfWrVrm4
 8AxKdbBh9S+BZ5oyrjkOq+D3CVNClCsHC/O6JshrGGIeU5dZQ3qimCRFC0T2PQtyGXD7
 osAA==
X-Gm-Message-State: ANhLgQ0+bztUdJDerDiZGvchKuKA5x5EjzsI3gKH8ujYDJ66+R0QrZXJ
 jUN7+ymcj+4rbmTpalJXYP++pLyUXoc2Rj8=
X-Google-Smtp-Source: ADFU+vvl2cl8n4lzMBjDD8zqvg5K6fNDYrXAwCc02UcwgL8/e9RticTUSfTj8N+XhNr2UOwP0gkSKrKkqpSimEA=
X-Received: by 2002:a17:90a:2147:: with SMTP id
 a65mr3660422pje.176.1584428107828; 
 Mon, 16 Mar 2020 23:55:07 -0700 (PDT)
Date: Mon, 16 Mar 2020 23:54:49 -0700
In-Reply-To: <20200317065452.236670-1-saravanak@google.com>
Message-Id: <20200317065452.236670-4-saravanak@google.com>
Mime-Version: 1.0
References: <20200317065452.236670-1-saravanak@google.com>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
Subject: [PATCH v1 3/6] driver core: Make driver core own stateful device links
From: Saravana Kannan <saravanak@google.com>
To: stable@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Len Brown <len.brown@intel.com>, Pavel Machek <pavel@ucw.cz>, 
 Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_235516_772435_04376D5B 
X-CRM114-Status: GOOD (  30.08  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Saravana Kannan <saravanak@google.com>, linux-pm@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>

Even though stateful device links are managed by the driver core in
principle, their creators are allowed and sometimes even expected
to drop references to them via device_link_del() or
device_link_remove(), but that doesn't really play well with the
"persistent" link concept.

If "persistent" managed device links are created from driver
probe callbacks, device_link_add() called to do that will take a
new reference on the link each time the callback runs and those
references will never be dropped, which kind of isn't nice.

This issues arises because of the link reference counting carried
out by device_link_add() for existing links, but that is only done to
avoid deleting device links that may still be necessary, which
shouldn't be a concern for managed (stateful) links.  These device
links are managed by the driver core and whoever creates one of them
will need it at least as long as until the consumer driver is detached
from its device and deleting it may be left to the driver core just
fine.

For this reason, rework device_link_add() to apply the reference
counting to stateless links only and make device_link_del() and
device_link_remove() drop references to stateless links only too.
After this change, if called to add a stateful device link for
a consumer-supplier pair for which a stateful device link is
present already, device_link_add() will return the existing link
without incrementing its reference counter.  Accordingly,
device_link_del() and device_link_remove() will WARN() and do
nothing when called to drop a reference to a stateful link.  Thus,
effectively, all stateful device links will be owned by the driver
core.

In addition, clean up the handling of the link management flags,
DL_FLAG_AUTOREMOVE_CONSUMER and DL_FLAG_AUTOREMOVE_SUPPLIER, so that
(a) they are never set at the same time and (b) if device_link_add()
is called for a consumer-supplier pair with an existing stateful link
between them, the flags of that link will be combined with the flags
passed to device_link_add() to ensure that the life time of the link
is sufficient for all of the callers of device_link_add() for the
same consumer-supplier pair.

Update the device_link_add() kerneldoc comment to reflect the
above changes.

Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
(cherry picked from commit 72175d4ea4c442d95cf690c3e968eeee90fd43ca)
Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 Documentation/driver-api/device_link.rst | 42 +++++++++------
 drivers/base/core.c                      | 69 ++++++++++++++++++------
 2 files changed, 79 insertions(+), 32 deletions(-)

diff --git a/Documentation/driver-api/device_link.rst b/Documentation/driver-api/device_link.rst
index 5c7178189612..e249e074a8d2 100644
--- a/Documentation/driver-api/device_link.rst
+++ b/Documentation/driver-api/device_link.rst
@@ -25,8 +25,8 @@ suspend/resume and shutdown ordering.
 
 Device links allow representation of such dependencies in the driver core.
 
-In its standard form, a device link combines *both* dependency types:
-It guarantees correct suspend/resume and shutdown ordering between a
+In its standard or *managed* form, a device link combines *both* dependency
+types:  It guarantees correct suspend/resume and shutdown ordering between a
 "supplier" device and its "consumer" devices, and it guarantees driver
 presence on the supplier.  The consumer devices are not probed before the
 supplier is bound to a driver, and they're unbound before the supplier
@@ -69,12 +69,14 @@ know that the supplier is functional already at the link creation time (that is
 the case, for instance, if the consumer has just acquired some resources that
 would not have been available had the supplier not been functional then).]
 
-If a device link is added in the ``->probe`` callback of the supplier or
-consumer driver, it is typically deleted in its ``->remove`` callback for
-symmetry.  That way, if the driver is compiled as a module, the device
-link is added on module load and orderly deleted on unload.  The same
-restrictions that apply to device link addition (e.g. exclusion of a
-parallel suspend/resume transition) apply equally to deletion.
+If a device link with ``DL_FLAG_STATELESS`` set (i.e. a stateless device link)
+is added in the ``->probe`` callback of the supplier or consumer driver, it is
+typically deleted in its ``->remove`` callback for symmetry.  That way, if the
+driver is compiled as a module, the device link is added on module load and
+orderly deleted on unload.  The same restrictions that apply to device link
+addition (e.g. exclusion of a parallel suspend/resume transition) apply equally
+to deletion.  Device links with ``DL_FLAG_STATELESS`` unset (i.e. managed
+device links) are deleted automatically by the driver core.
 
 Several flags may be specified on device link addition, two of which
 have already been mentioned above:  ``DL_FLAG_STATELESS`` to express that no
@@ -87,8 +89,6 @@ link is added from the consumer's ``->probe`` callback:  ``DL_FLAG_RPM_ACTIVE``
 can be specified to runtime resume the supplier upon addition of the
 device link.  ``DL_FLAG_AUTOREMOVE_CONSUMER`` causes the device link to be
 automatically purged when the consumer fails to probe or later unbinds.
-This obviates the need to explicitly delete the link in the ``->remove``
-callback or in the error path of the ``->probe`` callback.
 
 Similarly, when the device link is added from supplier's ``->probe`` callback,
 ``DL_FLAG_AUTOREMOVE_SUPPLIER`` causes the device link to be automatically
@@ -97,12 +97,20 @@ purged when the supplier fails to probe or later unbinds.
 Limitations
 ===========
 
-Driver authors should be aware that a driver presence dependency (i.e. when
-``DL_FLAG_STATELESS`` is not specified on link addition) may cause probing of
-the consumer to be deferred indefinitely.  This can become a problem if the
-consumer is required to probe before a certain initcall level is reached.
-Worse, if the supplier driver is blacklisted or missing, the consumer will
-never be probed.
+Driver authors should be aware that a driver presence dependency for managed
+device links (i.e. when ``DL_FLAG_STATELESS`` is not specified on link addition)
+may cause probing of the consumer to be deferred indefinitely.  This can become
+a problem if the consumer is required to probe before a certain initcall level
+is reached.  Worse, if the supplier driver is blacklisted or missing, the
+consumer will never be probed.
+
+Moreover, managed device links cannot be deleted directly.  They are deleted
+by the driver core when they are not necessary any more in accordance with the
+``DL_FLAG_AUTOREMOVE_CONSUMER`` and ``DL_FLAG_AUTOREMOVE_SUPPLIER`` flags.
+However, stateless device links (i.e. device links with ``DL_FLAG_STATELESS``
+set) are expected to be removed by whoever called :c:func:`device_link_add()`
+to add them with the help of either :c:func:`device_link_del()` or
+:c:func:`device_link_remove()`.
 
 Sometimes drivers depend on optional resources.  They are able to operate
 in a degraded mode (reduced feature set or performance) when those resources
@@ -286,4 +294,4 @@ API
 ===
 
 .. kernel-doc:: drivers/base/core.c
-   :functions: device_link_add device_link_del
+   :functions: device_link_add device_link_del device_link_remove
diff --git a/drivers/base/core.c b/drivers/base/core.c
index ae2f85ca78fb..d8273792950b 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -179,10 +179,21 @@ void device_pm_move_to_tail(struct device *dev)
  * of the link.  If DL_FLAG_PM_RUNTIME is not set, DL_FLAG_RPM_ACTIVE will be
  * ignored.
  *
- * If the DL_FLAG_AUTOREMOVE_CONSUMER flag is set, the link will be removed
- * automatically when the consumer device driver unbinds from it.  Analogously,
- * if DL_FLAG_AUTOREMOVE_SUPPLIER is set in @flags, the link will be removed
- * automatically when the supplier device driver unbinds from it.
+ * If DL_FLAG_STATELESS is set in @flags, the link is not going to be managed by
+ * the driver core and, in particular, the caller of this function is expected
+ * to drop the reference to the link acquired by it directly.
+ *
+ * If that flag is not set, however, the caller of this function is handing the
+ * management of the link over to the driver core entirely and its return value
+ * can only be used to check whether or not the link is present.  In that case,
+ * the DL_FLAG_AUTOREMOVE_CONSUMER and DL_FLAG_AUTOREMOVE_SUPPLIER device link
+ * flags can be used to indicate to the driver core when the link can be safely
+ * deleted.  Namely, setting one of them in @flags indicates to the driver core
+ * that the link is not going to be used (by the given caller of this function)
+ * after unbinding the consumer or supplier driver, respectively, from its
+ * device, so the link can be deleted at that point.  If none of them is set,
+ * the link will be maintained until one of the devices pointed to by it (either
+ * the consumer or the supplier) is unregistered.
  *
  * The combination of DL_FLAG_STATELESS and either DL_FLAG_AUTOREMOVE_CONSUMER
  * or DL_FLAG_AUTOREMOVE_SUPPLIER set in @flags at the same time is invalid and
@@ -228,6 +239,14 @@ struct device_link *device_link_add(struct device *consumer,
 		goto out;
 	}
 
+	/*
+	 * DL_FLAG_AUTOREMOVE_SUPPLIER indicates that the link will be needed
+	 * longer than for DL_FLAG_AUTOREMOVE_CONSUMER and setting them both
+	 * together doesn't make sense, so prefer DL_FLAG_AUTOREMOVE_SUPPLIER.
+	 */
+	if (flags & DL_FLAG_AUTOREMOVE_SUPPLIER)
+		flags &= ~DL_FLAG_AUTOREMOVE_CONSUMER;
+
 	list_for_each_entry(link, &supplier->links.consumers, s_node) {
 		if (link->consumer != consumer)
 			continue;
@@ -241,12 +260,6 @@ struct device_link *device_link_add(struct device *consumer,
 			goto out;
 		}
 
-		if (flags & DL_FLAG_AUTOREMOVE_CONSUMER)
-			link->flags |= DL_FLAG_AUTOREMOVE_CONSUMER;
-
-		if (flags & DL_FLAG_AUTOREMOVE_SUPPLIER)
-			link->flags |= DL_FLAG_AUTOREMOVE_SUPPLIER;
-
 		if (flags & DL_FLAG_PM_RUNTIME) {
 			if (!(link->flags & DL_FLAG_PM_RUNTIME)) {
 				pm_runtime_new_link(consumer);
@@ -256,7 +269,25 @@ struct device_link *device_link_add(struct device *consumer,
 				refcount_inc(&link->rpm_active);
 		}
 
-		kref_get(&link->kref);
+		if (flags & DL_FLAG_STATELESS) {
+			kref_get(&link->kref);
+			goto out;
+		}
+
+		/*
+		 * If the life time of the link following from the new flags is
+		 * longer than indicated by the flags of the existing link,
+		 * update the existing link to stay around longer.
+		 */
+		if (flags & DL_FLAG_AUTOREMOVE_SUPPLIER) {
+			if (link->flags & DL_FLAG_AUTOREMOVE_CONSUMER) {
+				link->flags &= ~DL_FLAG_AUTOREMOVE_CONSUMER;
+				link->flags |= DL_FLAG_AUTOREMOVE_SUPPLIER;
+			}
+		} else if (!(flags & DL_FLAG_AUTOREMOVE_CONSUMER)) {
+			link->flags &= ~(DL_FLAG_AUTOREMOVE_CONSUMER |
+					 DL_FLAG_AUTOREMOVE_SUPPLIER);
+		}
 		goto out;
 	}
 
@@ -406,8 +437,16 @@ static void __device_link_del(struct kref *kref)
 }
 #endif /* !CONFIG_SRCU */
 
+static void device_link_put_kref(struct device_link *link)
+{
+	if (link->flags & DL_FLAG_STATELESS)
+		kref_put(&link->kref, __device_link_del);
+	else
+		WARN(1, "Unable to drop a managed device link reference\n");
+}
+
 /**
- * device_link_del - Delete a link between two devices.
+ * device_link_del - Delete a stateless link between two devices.
  * @link: Device link to delete.
  *
  * The caller must ensure proper synchronization of this function with runtime
@@ -419,14 +458,14 @@ void device_link_del(struct device_link *link)
 {
 	device_links_write_lock();
 	device_pm_lock();
-	kref_put(&link->kref, __device_link_del);
+	device_link_put_kref(link);
 	device_pm_unlock();
 	device_links_write_unlock();
 }
 EXPORT_SYMBOL_GPL(device_link_del);
 
 /**
- * device_link_remove - remove a link between two devices.
+ * device_link_remove - Delete a stateless link between two devices.
  * @consumer: Consumer end of the link.
  * @supplier: Supplier end of the link.
  *
@@ -445,7 +484,7 @@ void device_link_remove(void *consumer, struct device *supplier)
 
 	list_for_each_entry(link, &supplier->links.consumers, s_node) {
 		if (link->consumer == consumer) {
-			kref_put(&link->kref, __device_link_del);
+			device_link_put_kref(link);
 			break;
 		}
 	}
-- 
2.25.1.481.gfbce0eb801-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
