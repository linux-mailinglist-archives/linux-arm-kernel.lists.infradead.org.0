Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53654187A0A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 07:56:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LzWMhgCPpytDWA/BOYSRggRmiG7mU9/qBUxncZ+9dhI=; b=VTNoua8P/zYgCN
	pBQxZge+Ln7DZrQh7MrH2Xd4IdC9kgjisAtLtSOeAugLgkGbI+2oNbPcqHVs+SowUq7WeAjHH/fOo
	K3ZSpwCcNsb6cUBeYe67wp190QAS9kjA/Fb++dJGNj6Dr+QSVqSu9PnpuBnOmtbwlyXJsE9r+dMLG
	y89OwKfOwMkTPJXqsoQRZO4oO2jpoXvNwBrcWfOUnPEvQmodj7eR59Nuy6JBmn82TfXcguPYyLKjx
	Or9YRnjm09GtbUNLa23XRccPGCuYXwgEMud9BG+LcsGdvuYXmTlK08HoZ2Q8sK3rlkE1UaTBHgyWr
	2uJ45WMZ85K3rDsLnLCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE69Y-0005oW-5V; Tue, 17 Mar 2020 06:56:40 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE689-0004VP-QY
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 06:55:17 +0000
Received: by mail-qk1-x74a.google.com with SMTP id w195so3900627qkb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 23:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=7ngORi0qjHGKSTPYP6jqwB2CTxTKHni0v/JyFS4TsJY=;
 b=Nab2iMTktoEDgr02ucqDK9isAmOo4ipKNIJmcdWX9C+9c6ibZ0ACWVVDLKrmvFK2Nv
 +n/CdhwFe7D0fcDDF+KueDiskyTSirfZzgH7ApN17BUlo33WGiDWYQxSdr+88om+U7ug
 yLoYp18sCc0bH6o010hAp7CyOux2D4YkIDi5T36j6CpG9ul39ZcoEkPKPhqNjdZI5Hbq
 126yvaty609YLDursNVsFv1zTmvhwtCRCM5ONcqGkUz4vJt9r3XlTRWSa/0fb+rJO1Jk
 ZCqKS5PHRoyv6IVk7cQ1Tmnu4uXf0ZkfZkTpEZsAsodLYoQolYkSZVpKlgOncY4D208G
 e0aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=7ngORi0qjHGKSTPYP6jqwB2CTxTKHni0v/JyFS4TsJY=;
 b=KNRFiwHNXH1509XOX+GYS43RSnn70L1aGZOzphdgXpMr/Ycp7xd9KjBLRUqwwOlR3Y
 nVvP5ektjLfdVk1DFUhx+f5mElNajYyDtaXMtkvJ9/mZX0mLPlvPKbBZ7CigXX3zrGTs
 YZvVpC0RjqGb5YIiLs/1DjE+bNqPvmOXqREXbg/rY0JNAd4UQO7jkOlXgtlpl1xE24rg
 2wP/4LgqUh1BU3AzWWlr/B3p+sjc37MzVR/1IlA/0+038VyrXwQ7EyzQgIpZmXkULAjb
 ZWg65bufTEolY037iLzUaqaABWX8kb9CNNvlnh3FzPOJvpwaWdJBgaW9eiYPLrIWK8ga
 UDIA==
X-Gm-Message-State: ANhLgQ27KfB5ZnVL2vIedw0PEF3LO4m1TgHqG99kVt/d5T1+qUvz4jf2
 sGFglDPSex9441471wG3sWBy0x6YzKtFYtU=
X-Google-Smtp-Source: ADFU+vu6Q/y175df99s4giYR9vMy2KQkhva5yiVcjNt6xji0hnXCikbzl84Cs4t7LJdeoDn8q4XTKNSqQvCeU0w=
X-Received: by 2002:ac8:3003:: with SMTP id f3mr3817009qte.293.1584428111301; 
 Mon, 16 Mar 2020 23:55:11 -0700 (PDT)
Date: Mon, 16 Mar 2020 23:54:50 -0700
In-Reply-To: <20200317065452.236670-1-saravanak@google.com>
Message-Id: <20200317065452.236670-5-saravanak@google.com>
Mime-Version: 1.0
References: <20200317065452.236670-1-saravanak@google.com>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
Subject: [PATCH v1 4/6] driver core: Add device link flag
 DL_FLAG_AUTOPROBE_CONSUMER
From: Saravana Kannan <saravanak@google.com>
To: stable@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Len Brown <len.brown@intel.com>, Pavel Machek <pavel@ucw.cz>, 
 Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_235514_096634_16B0E114 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
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

Add a new device link flag, DL_FLAG_AUTOPROBE_CONSUMER, to request the
driver core to probe for a consumer driver automatically after binding
a driver to the supplier device on a persistent managed device link.

As unbinding the supplier driver on a managed device link causes the
consumer driver to be detached from its device automatically, this
flag provides a complementary mechanism which is needed to address
some "composite device" use cases.

Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
(cherry picked from commit e7dd40105aac9ba051e44ad711123bc53a5e4c71)
Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 Documentation/driver-api/device_link.rst |  9 +++++++++
 drivers/base/core.c                      | 16 +++++++++++++++-
 drivers/base/dd.c                        |  2 +-
 include/linux/device.h                   |  3 +++
 4 files changed, 28 insertions(+), 2 deletions(-)

diff --git a/Documentation/driver-api/device_link.rst b/Documentation/driver-api/device_link.rst
index e249e074a8d2..c764755121c7 100644
--- a/Documentation/driver-api/device_link.rst
+++ b/Documentation/driver-api/device_link.rst
@@ -94,6 +94,15 @@ Similarly, when the device link is added from supplier's ``->probe`` callback,
 ``DL_FLAG_AUTOREMOVE_SUPPLIER`` causes the device link to be automatically
 purged when the supplier fails to probe or later unbinds.
 
+If neither ``DL_FLAG_AUTOREMOVE_CONSUMER`` nor ``DL_FLAG_AUTOREMOVE_SUPPLIER``
+is set, ``DL_FLAG_AUTOPROBE_CONSUMER`` can be used to request the driver core
+to probe for a driver for the consumer driver on the link automatically after
+a driver has been bound to the supplier device.
+
+Note, however, that any combinations of ``DL_FLAG_AUTOREMOVE_CONSUMER``,
+``DL_FLAG_AUTOREMOVE_SUPPLIER`` or ``DL_FLAG_AUTOPROBE_CONSUMER`` with
+``DL_FLAG_STATELESS`` are invalid and cannot be used.
+
 Limitations
 ===========
 
diff --git a/drivers/base/core.c b/drivers/base/core.c
index d8273792950b..3495da13b18a 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -195,6 +195,12 @@ void device_pm_move_to_tail(struct device *dev)
  * the link will be maintained until one of the devices pointed to by it (either
  * the consumer or the supplier) is unregistered.
  *
+ * Also, if DL_FLAG_STATELESS, DL_FLAG_AUTOREMOVE_CONSUMER and
+ * DL_FLAG_AUTOREMOVE_SUPPLIER are not set in @flags (that is, a persistent
+ * managed device link is being added), the DL_FLAG_AUTOPROBE_CONSUMER flag can
+ * be used to request the driver core to automaticall probe for a consmer
+ * driver after successfully binding a driver to the supplier device.
+ *
  * The combination of DL_FLAG_STATELESS and either DL_FLAG_AUTOREMOVE_CONSUMER
  * or DL_FLAG_AUTOREMOVE_SUPPLIER set in @flags at the same time is invalid and
  * will cause NULL to be returned upfront.
@@ -215,7 +221,12 @@ struct device_link *device_link_add(struct device *consumer,
 
 	if (!consumer || !supplier ||
 	    (flags & DL_FLAG_STATELESS &&
-	     flags & (DL_FLAG_AUTOREMOVE_CONSUMER | DL_FLAG_AUTOREMOVE_SUPPLIER)))
+	     flags & (DL_FLAG_AUTOREMOVE_CONSUMER |
+		      DL_FLAG_AUTOREMOVE_SUPPLIER |
+		      DL_FLAG_AUTOPROBE_CONSUMER)) ||
+	    (flags & DL_FLAG_AUTOPROBE_CONSUMER &&
+	     flags & (DL_FLAG_AUTOREMOVE_CONSUMER |
+		      DL_FLAG_AUTOREMOVE_SUPPLIER)))
 		return NULL;
 
 	if (flags & DL_FLAG_PM_RUNTIME && flags & DL_FLAG_RPM_ACTIVE) {
@@ -576,6 +587,9 @@ void device_links_driver_bound(struct device *dev)
 
 		WARN_ON(link->status != DL_STATE_DORMANT);
 		WRITE_ONCE(link->status, DL_STATE_AVAILABLE);
+
+		if (link->flags & DL_FLAG_AUTOPROBE_CONSUMER)
+			driver_deferred_probe_add(link->consumer);
 	}
 
 	list_for_each_entry(link, &dev->links.suppliers, c_node) {
diff --git a/drivers/base/dd.c b/drivers/base/dd.c
index 5f6416e6ba96..caaeb7910a04 100644
--- a/drivers/base/dd.c
+++ b/drivers/base/dd.c
@@ -116,7 +116,7 @@ static void deferred_probe_work_func(struct work_struct *work)
 }
 static DECLARE_WORK(deferred_probe_work, deferred_probe_work_func);
 
-static void driver_deferred_probe_add(struct device *dev)
+void driver_deferred_probe_add(struct device *dev)
 {
 	mutex_lock(&deferred_probe_mutex);
 	if (list_empty(&dev->p->deferred_probe)) {
diff --git a/include/linux/device.h b/include/linux/device.h
index c74ce473589a..7569cff2f4dc 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -339,6 +339,7 @@ struct device *driver_find_device(struct device_driver *drv,
 				  struct device *start, void *data,
 				  int (*match)(struct device *dev, void *data));
 
+void driver_deferred_probe_add(struct device *dev);
 int driver_deferred_probe_check_state(struct device *dev);
 
 /**
@@ -824,12 +825,14 @@ enum device_link_state {
  * PM_RUNTIME: If set, the runtime PM framework will use this link.
  * RPM_ACTIVE: Run pm_runtime_get_sync() on the supplier during link creation.
  * AUTOREMOVE_SUPPLIER: Remove the link automatically on supplier driver unbind.
+ * AUTOPROBE_CONSUMER: Probe consumer driver automatically after supplier binds.
  */
 #define DL_FLAG_STATELESS		BIT(0)
 #define DL_FLAG_AUTOREMOVE_CONSUMER	BIT(1)
 #define DL_FLAG_PM_RUNTIME		BIT(2)
 #define DL_FLAG_RPM_ACTIVE		BIT(3)
 #define DL_FLAG_AUTOREMOVE_SUPPLIER	BIT(4)
+#define DL_FLAG_AUTOPROBE_CONSUMER	BIT(5)
 
 /**
  * struct device_link - Device link representation.
-- 
2.25.1.481.gfbce0eb801-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
