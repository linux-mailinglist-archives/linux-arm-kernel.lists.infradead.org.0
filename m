Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 240BC187A02
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 07:56:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxCY0qtblwVhOpquKgtQwlYZ12uIpg+kACvASQLHoG0=; b=XVDziZoiHCjaRm
	XpdOJV6DjFf4KH5wTUxp6EWrWG96xIQSZy92Nypl2IUVXIlwbQvTcj/YqQr4zU4wAnGy24zBxOhkU
	oBwHOJVQPxkWwLxkyJVO4bmbWxAQLsT2DA6SgoRE8tKJ0HF8/6iJBmcflVFlu8dRWRjU5xRRl+AxW
	BonDumcKz1OjBgYv2WBkar+jugjQaKv9HJRz1gWLmNP+6niNbXt2EhAKZCov/AJitXjT3EqUgkJ4O
	8G0N60FznSAiy83v9UoM5hjGuZljjXl9vU79pW2qVq2JitXV0ZkCIfmHgbUwYYI1O2u8hm4bf2l9W
	LPfjco8ZrV5FR8uSaMDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE68s-00057h-2D; Tue, 17 Mar 2020 06:55:58 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE681-0003q2-QG
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 06:55:09 +0000
Received: by mail-pf1-x449.google.com with SMTP id z8so12460085pfj.16
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 23:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=E7+oI0v4YJiTcfxieAo+ZZx+f+6HuOczFo3lOATV4XM=;
 b=B4PdTjmn0c6lJeIMW8vcsIVdp4xg+iTkfxBW8URMxjsfTod/34RC00rlZ8dY9/NGHj
 rrKCTZusWClEMd6JNJPoxGp2JjQz3Vdcd8YYYLt20NfXX8ALy1ABiNkndW95RCqpE8hd
 prQy8VwzHquTUj0dlmzVMKgJZiHOcwoRwnil89BdWszSfGhsLF+e6ccAm7U7VcM+GpvA
 zmI9qXY0QpJJDmeCYFi7yAUGGnzoy7kTjPoTQHDso+wb2n8wl8eXnlryMojF8X+TorD1
 AEuCw5Nq+ijxA2n3vndlx84VOq2VM3qpbtV13CO6bY/Gcj9J8dKvRO5GcexCO5mWqaVS
 ukZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=E7+oI0v4YJiTcfxieAo+ZZx+f+6HuOczFo3lOATV4XM=;
 b=hpYjqL6fu7RM5YAXtzp0U1yG1aj3fL3WHJvSROoM0rypApRIDTJL8qy+7B/IQQSJrc
 AiL1qzTEvOH+LsRUkrTEYh64i7Ih+KQBvbTmfvZQC2HNMqM3qYJtiGaANQnULLrwTk7Q
 MVlem/C9rFiKd6oVsPt2QCfBHyaC+4YalPe8OpeuvCDKSdXkH7F2pNDc/IgOXASajG2W
 6so2GYeZ8LT67yQ6ggc5r6+/uJNWgGbkoRqnQIOZV3bvV6LrWeZxFQho+IrYb8tWT/J0
 7zxr8xEGdTCcMgmmBThEKl5+MZYOMwJnFZ8Eni+ECGwE5DjQpsj9m4L0+2Zszzrzb5FP
 11XA==
X-Gm-Message-State: ANhLgQ2/GaXpChygpI51tcCzpcuoqeqF0ZCZFPybiAWTppWxOZa3Unav
 bv2ZdkhKmTjWesIu01IWjYaVOI+g6uAbUcE=
X-Google-Smtp-Source: ADFU+vvIXvU94f5jKeoxuIFXK8fHLpbZJnHvhyMgI7zQmzpPqHJV9jhKFftzMx25WRb9Z932oqWKrkPXIha6jjs=
X-Received: by 2002:a17:90a:d101:: with SMTP id
 l1mr3844319pju.130.1584428104661; 
 Mon, 16 Mar 2020 23:55:04 -0700 (PDT)
Date: Mon, 16 Mar 2020 23:54:48 -0700
In-Reply-To: <20200317065452.236670-1-saravanak@google.com>
Message-Id: <20200317065452.236670-3-saravanak@google.com>
Mime-Version: 1.0
References: <20200317065452.236670-1-saravanak@google.com>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
Subject: [PATCH v1 2/6] driver core: Fix adding device links to probing
 suppliers
From: Saravana Kannan <saravanak@google.com>
To: stable@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Len Brown <len.brown@intel.com>, Pavel Machek <pavel@ucw.cz>, 
 Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_235505_975697_6EFBFE61 
X-CRM114-Status: GOOD (  28.19  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
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

Currently, it is not valid to add a device link from a consumer
driver ->probe callback to a supplier that is still probing too, but
generally this is a valid use case.  For example, if the consumer has
just acquired a resource that can only be available if the supplier
is functional, adding a device link to that supplier right away
should be safe (and even desirable arguably), but device_link_add()
doesn't handle that case correctly and the initial state of the link
created by it is wrong then.

To address this problem, change the initial state of device links
added between a probing supplier and a probing consumer to
DL_STATE_CONSUMER_PROBE and update device_links_driver_bound() to
skip such links on the supplier side.

With this change, if the supplier probe completes first,
device_links_driver_bound() called for it will skip the link state
update and when it is called for the consumer, the link state will
be updated to "active".  In turn, if the consumer probe completes
first, device_links_driver_bound() called for it will change the
state of the link to "active" and when it is called for the
supplier, the link status update will be skipped.

However, in principle the supplier or consumer probe may still fail
after the link has been added, so modify device_links_no_driver() to
change device links in the "active" or "consumer probe" state to
"dormant" on the supplier side and update __device_links_no_driver()
to change the link state to "available" only if it is "consumer
probe" or "active".

Then, if the supplier probe fails first, the leftover link to the
probing consumer will become "dormant" and device_links_no_driver()
called for the consumer (when its probe fails) will clean it up.
In turn, if the consumer probe fails first, it will either drop the
link, or change its state to "available" and, in the latter case,
when device_links_no_driver() is called for the supplier, it will
update the link state to "dormant".  [If the supplier probe fails,
but the consumer probe succeeds, which should not happen as long as
the consumer driver is correct, the link still will be around, but
it will be "dormant" until the supplier is probed again.]

Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
(cherry picked from commit 15cfb094160385cc0b303c4cda483caa102af654)
Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 Documentation/driver-api/device_link.rst | 10 +++-
 drivers/base/core.c                      | 74 +++++++++++++++++++++---
 2 files changed, 73 insertions(+), 11 deletions(-)

diff --git a/Documentation/driver-api/device_link.rst b/Documentation/driver-api/device_link.rst
index d6763272e747..5c7178189612 100644
--- a/Documentation/driver-api/device_link.rst
+++ b/Documentation/driver-api/device_link.rst
@@ -59,11 +59,15 @@ device ``->probe`` callback or a boot-time PCI quirk.
 
 Another example for an inconsistent state would be a device link that
 represents a driver presence dependency, yet is added from the consumer's
-``->probe`` callback while the supplier hasn't probed yet:  Had the driver
-core known about the device link earlier, it wouldn't have probed the
+``->probe`` callback while the supplier hasn't started to probe yet:  Had the
+driver core known about the device link earlier, it wouldn't have probed the
 consumer in the first place.  The onus is thus on the consumer to check
 presence of the supplier after adding the link, and defer probing on
-non-presence.
+non-presence.  [Note that it is valid to create a link from the consumer's
+``->probe`` callback while the supplier is still probing, but the consumer must
+know that the supplier is functional already at the link creation time (that is
+the case, for instance, if the consumer has just acquired some resources that
+would not have been available had the supplier not been functional then).]
 
 If a device link is added in the ``->probe`` callback of the supplier or
 consumer driver, it is typically deleted in its ``->remove`` callback for
diff --git a/drivers/base/core.c b/drivers/base/core.c
index b354fdd7ce75..ae2f85ca78fb 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -287,17 +287,26 @@ struct device_link *device_link_add(struct device *consumer,
 		link->status = DL_STATE_NONE;
 	} else {
 		switch (supplier->links.status) {
-		case DL_DEV_DRIVER_BOUND:
+		case DL_DEV_PROBING:
 			switch (consumer->links.status) {
 			case DL_DEV_PROBING:
 				/*
-				 * Some callers expect the link creation during
-				 * consumer driver probe to resume the supplier
-				 * even without DL_FLAG_RPM_ACTIVE.
+				 * A consumer driver can create a link to a
+				 * supplier that has not completed its probing
+				 * yet as long as it knows that the supplier is
+				 * already functional (for example, it has just
+				 * acquired some resources from the supplier).
 				 */
-				if (flags & DL_FLAG_PM_RUNTIME)
-					pm_runtime_resume(supplier);
-
+				link->status = DL_STATE_CONSUMER_PROBE;
+				break;
+			default:
+				link->status = DL_STATE_DORMANT;
+				break;
+			}
+			break;
+		case DL_DEV_DRIVER_BOUND:
+			switch (consumer->links.status) {
+			case DL_DEV_PROBING:
 				link->status = DL_STATE_CONSUMER_PROBE;
 				break;
 			case DL_DEV_DRIVER_BOUND:
@@ -317,6 +326,14 @@ struct device_link *device_link_add(struct device *consumer,
 		}
 	}
 
+	/*
+	 * Some callers expect the link creation during consumer driver probe to
+	 * resume the supplier even without DL_FLAG_RPM_ACTIVE.
+	 */
+	if (link->status == DL_STATE_CONSUMER_PROBE &&
+	    flags & DL_FLAG_PM_RUNTIME)
+		pm_runtime_resume(supplier);
+
 	/*
 	 * Move the consumer and all of the devices depending on it to the end
 	 * of dpm_list and the devices_kset list.
@@ -508,6 +525,16 @@ void device_links_driver_bound(struct device *dev)
 		if (link->flags & DL_FLAG_STATELESS)
 			continue;
 
+		/*
+		 * Links created during consumer probe may be in the "consumer
+		 * probe" state to start with if the supplier is still probing
+		 * when they are created and they may become "active" if the
+		 * consumer probe returns first.  Skip them here.
+		 */
+		if (link->status == DL_STATE_CONSUMER_PROBE ||
+		    link->status == DL_STATE_ACTIVE)
+			continue;
+
 		WARN_ON(link->status != DL_STATE_DORMANT);
 		WRITE_ONCE(link->status, DL_STATE_AVAILABLE);
 	}
@@ -547,17 +574,48 @@ static void __device_links_no_driver(struct device *dev)
 
 		if (link->flags & DL_FLAG_AUTOREMOVE_CONSUMER)
 			__device_link_del(&link->kref);
-		else if (link->status != DL_STATE_SUPPLIER_UNBIND)
+		else if (link->status == DL_STATE_CONSUMER_PROBE ||
+			 link->status == DL_STATE_ACTIVE)
 			WRITE_ONCE(link->status, DL_STATE_AVAILABLE);
 	}
 
 	dev->links.status = DL_DEV_NO_DRIVER;
 }
 
+/**
+ * device_links_no_driver - Update links after failing driver probe.
+ * @dev: Device whose driver has just failed to probe.
+ *
+ * Clean up leftover links to consumers for @dev and invoke
+ * %__device_links_no_driver() to update links to suppliers for it as
+ * appropriate.
+ *
+ * Links with the DL_FLAG_STATELESS flag set are ignored.
+ */
 void device_links_no_driver(struct device *dev)
 {
+	struct device_link *link;
+
 	device_links_write_lock();
+
+	list_for_each_entry(link, &dev->links.consumers, s_node) {
+		if (link->flags & DL_FLAG_STATELESS)
+			continue;
+
+		/*
+		 * The probe has failed, so if the status of the link is
+		 * "consumer probe" or "active", it must have been added by
+		 * a probing consumer while this device was still probing.
+		 * Change its state to "dormant", as it represents a valid
+		 * relationship, but it is not functionally meaningful.
+		 */
+		if (link->status == DL_STATE_CONSUMER_PROBE ||
+		    link->status == DL_STATE_ACTIVE)
+			WRITE_ONCE(link->status, DL_STATE_DORMANT);
+	}
+
 	__device_links_no_driver(dev);
+
 	device_links_write_unlock();
 }
 
-- 
2.25.1.481.gfbce0eb801-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
