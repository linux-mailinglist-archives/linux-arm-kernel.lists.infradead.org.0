Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B7D1E20A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 13:06:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p0k6oFqXkoEhh0I+5kM8UBeku/g5s9V/cW7odS05OLU=; b=JHbUOCfkF5RoAe
	unwdi6jfUw++oJF9Rvxwdv6wQYHwSVZJ3IXKNa4KnsfuzuZhTAKswnmaZIk5uqV8p5gbeiJ6wMvB/
	qwa5BNaEGgTRfnAU3NmINDBe+d1uLCgV4yQmvPMl7B4z/7aQjXXvhSysjAW3mgiHJBTIM92v1VveW
	jfqwAUV8THARBcptfJc6kVaraxU0QUh44U2kkQUo9dUF3Gm7ZWehQTXRP0kV2aJDXSvB+CAuhLghd
	XCr9zztKcgyCpzWAF6slqiijwWGOJPcd7ACr23a3v53Vlx9hX2KS16uMYVTJsQYSUMLfUsjHN8vC9
	c472QDESS0Bc8nH3mJJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdXPZ-00082C-Bh; Tue, 26 May 2020 11:06:21 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdXOC-00057H-2y
 for linux-arm-kernel@bombadil.infradead.org; Tue, 26 May 2020 11:04:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=tHhJ8BBQRZ0iPlyD+IrpnOZUd0hkhRFRJvdSxd1ueEk=; b=IGgSn2L7oPLsg5tfz0hwJHIOB1
 ycEJQegwqPVkI8ry1AErY71PSI4TK13RsjiSAwcHz7Xprmd8QwABSqEPD7rUI+E9JO5FEyZTpqSzU
 6z4nb+EM4Obq5L7Jyyl8eJdbOSMPWJz+U1kOJGSlTmy7Xbiq2k7EZVVIUy+N1DBL3cAlRUD6cTxZi
 EBZIa/tohEnDK0jWBHFuDtCPQe2i6B8sy5+1NKBmbljNY1QU0Zbzp7TudCYjANJsAzO1Ct8F6InqQ
 UqUVvlXVFqN1kRqF6QHn0rWq3ua0z8YXFB5gFLH0ywuAFp0DuWsNR0B+R+3GqrXHFlzL7dWgO93Sz
 on3uTsSQ==;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdXO9-0007Bw-NO
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 11:04:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590491037;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tHhJ8BBQRZ0iPlyD+IrpnOZUd0hkhRFRJvdSxd1ueEk=;
 b=AQGxkCoHakbvCdSRa0d8IuCUUFIhfX8VikeN3cvoQ0tV9bOc8t4fTlKmGy9yMNFbKA/0Cg
 swBXTal4Qj660ehVUrMuu8U8g6ZW14H8Aw6ODV/hhC0XGTLu4G7Yf9Xd1WdSy0jfU9WPQs
 SAV6r/DYN+gmvgcKR5KvwR6YTE6BriM=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590491062;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tHhJ8BBQRZ0iPlyD+IrpnOZUd0hkhRFRJvdSxd1ueEk=;
 b=JDFoDwmE4UezywN2YoMN00p30eDL2YYtnisK1YVQem1uDhr93AVavx3CziAJxMVTZJ5Dr4
 mxo4pUs1Gc/TnSpGDJ+8Lw4Ess7b3HiMn6rOFL0mluYYET6Ct9l4j23BuFdKA1vdiehb0Z
 WmRViWIQVbwwS+hMgoIAhppzwhQgSZA=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590491093;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tHhJ8BBQRZ0iPlyD+IrpnOZUd0hkhRFRJvdSxd1ueEk=;
 b=EAq4yOLHEDIVkYcEqkbNniXx64fUMRlxL7TSkAGq1+KG3PtswBYgMqDoEEOMKqFL3qkC/b
 vaH4HUp6oYLQS3dUveJn5RlqawRzOv/Dd8ANyJJsgz3NpI705MNjv1JJs7XhKm2NopYbbo
 wwrX+QU9dgAgrCLnEbx/1eQDNAhEVe0=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-420-1cffPSu9Nl2nycEkaWBByg-1; Tue, 26 May 2020 07:03:54 -0400
X-MC-Unique: 1cffPSu9Nl2nycEkaWBByg-1
Received: by mail-wm1-f69.google.com with SMTP id z5so944077wml.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 04:03:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tHhJ8BBQRZ0iPlyD+IrpnOZUd0hkhRFRJvdSxd1ueEk=;
 b=pHz16fOeWB4tHmz8dWQAgphj9dCzdCgH4MziwjY9monpCgo2NE2bzZGTpmlJQQAXMU
 6wGbJ6ceG6bnBpoKgIpQv56zcIaitN2zIw6yQ1V/DwNBbliOJTtMRUg3eMh4jxwg5TbL
 h5lkiWtxH+U+MqW/397rdaAtwyCHXYnufDJFah2p/7CVwh54X7p2GYfpTcww/ZcLOhxC
 xUmVRo9E46UZtAMdM4yhwfKMQmSkW+gttnje5uETQ5knft3UR64k44bNlFxh9xdljwSZ
 j3+4zo1Jatqqi3S1hX66Bxbs8onkY7l8rMRXErXiH89+E4OLTeTHlEyzUkjzEpWgLoqL
 S0sQ==
X-Gm-Message-State: AOAM530U9DKWfWamJ0Zpx8rBamrqxzVoggooyTbpSySJ8KchQ7Gp9Nn3
 DxK70Ioe2zW81MHQ/Vat16LsNXV8vT2VYHAkImIP5aBHph09c7+HZEwyLrxjsY7viGfhABss+Cm
 VkVkndwIq+LfhjHhVcdKoUHTL82CBibk1of4=
X-Received: by 2002:a5d:6145:: with SMTP id y5mr18412218wrt.195.1590491031227; 
 Tue, 26 May 2020 04:03:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwOY0Un9v5V7lkYHdpZvdgxIzFdEx42az92mapDCM2lLdpSXBwr8ImUoRA4WoT7/mpKmTjABA==
X-Received: by 2002:a5d:6145:: with SMTP id y5mr18412163wrt.195.1590491030475; 
 Tue, 26 May 2020 04:03:50 -0700 (PDT)
Received: from localhost.localdomain.com ([194.230.155.118])
 by smtp.gmail.com with ESMTPSA id d6sm22928240wrj.90.2020.05.26.04.03.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 04:03:44 -0700 (PDT)
From: Emanuele Giuseppe Esposito <eesposit@redhat.com>
To: kvm@vger.kernel.org
Subject: [PATCH v3 1/7] stats_fs API: create,
 add and remove stats_fs sources and values
Date: Tue, 26 May 2020 13:03:11 +0200
Message-Id: <20200526110318.69006-2-eesposit@redhat.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200526110318.69006-1-eesposit@redhat.com>
References: <20200526110318.69006-1-eesposit@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Emanuele Giuseppe Esposito <eesposit@redhat.com>,
 linux-s390@vger.kernel.org, linux-doc@vger.kernel.org, netdev@vger.kernel.org,
 Emanuele Giuseppe Esposito <e.emanuelegiuseppe@gmail.com>,
 linux-kernel@vger.kernel.org, kvm-ppc@vger.kernel.org,
 Jonathan Adams <jwadams@google.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Rientjes <rientjes@google.com>,
 linux-fsdevel@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
 linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduction to the stats_fs API, that allows to easily create, add
and remove stats_fs sources and values. The API allows to easily building
the statistics directory tree to automatically gather them for the linux
kernel. The main functionalities are: create a source, add child
sources/values/aggregates, register it to the root source (that on
the virtual fs would be /sys/kernel/stats), ad perform a search for
a value/aggregate.

Each source and value has an optional flag parameter:
in a value, it represent whether the statistic is cumulative or floating, in a
source whether it should be visible from the filesystem or not.
Defaults are respectively cumulative and visible.
Both flags fields are represented as an uint32_t to offer portability for
future flags.

Each value also takes a struct stats_fs_type pointer that defines
get and clear function for that stat, allowing custom
types handling. The API also  provides default get and clear types for
the supported standard types (stats_fs_type_*).

The API representation is only logical and will be backed up
by a virtual file system in patch 4.
Its usage will be shared between the stats_fs file system
and the end-users like kvm, the former calling it when it needs to
display and clear statistics, the latter to add values and sources.

Signed-off-by: Emanuele Giuseppe Esposito <eesposit@redhat.com>
---
 MAINTAINERS              |   7 +
 fs/Kconfig               |  14 +
 fs/Makefile              |   1 +
 fs/stats_fs/Makefile     |   5 +
 fs/stats_fs/internal.h   |  19 ++
 fs/stats_fs/stats_fs.c   | 552 +++++++++++++++++++++++++++++++++++++++
 fs/stats_fs/stub.c       |  13 +
 include/linux/stats_fs.h | 363 +++++++++++++++++++++++++
 8 files changed, 974 insertions(+)
 create mode 100644 fs/stats_fs/Makefile
 create mode 100644 fs/stats_fs/internal.h
 create mode 100644 fs/stats_fs/stats_fs.c
 create mode 100644 fs/stats_fs/stub.c
 create mode 100644 include/linux/stats_fs.h

diff --git a/MAINTAINERS b/MAINTAINERS
index b816a453b10e..a8403d07cee5 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5229,6 +5229,13 @@ F:	include/linux/debugfs.h
 F:	include/linux/kobj*
 F:	lib/kobj*
 
+STATS_FS
+M:	Paolo Bonzini <pbonzini@redhat.com>
+R:	Emanuele Giuseppe Esposito <e.emanuelegiuseppe@gmail.com>
+S:	Supported
+F:	include/linux/stats_fs.h
+F:	fs/stats_fs
+
 DRIVERS FOR ADAPTIVE VOLTAGE SCALING (AVS)
 M:	Kevin Hilman <khilman@kernel.org>
 M:	Nishanth Menon <nm@ti.com>
diff --git a/fs/Kconfig b/fs/Kconfig
index f08fbbfafd9a..684ad61129ab 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -221,6 +221,20 @@ config MEMFD_CREATE
 config ARCH_HAS_GIGANTIC_PAGE
 	bool
 
+config STATS_FS
+	bool "Statistics Filesystem"
+	help
+	  stats_fs is a virtual file system that provides counters and
+	  other statistics about the running kernel.
+
+config STATS_FS_API
+	bool
+	imply STATS_FS
+
+config STATS_FS_STUB
+	bool
+	default y if STATS_FS_API && !STATS_FS
+
 source "fs/configfs/Kconfig"
 source "fs/efivarfs/Kconfig"
 
diff --git a/fs/Makefile b/fs/Makefile
index 2ce5112b02c8..91558eca0cf7 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -125,6 +125,7 @@ obj-$(CONFIG_BEFS_FS)		+= befs/
 obj-$(CONFIG_HOSTFS)		+= hostfs/
 obj-$(CONFIG_CACHEFILES)	+= cachefiles/
 obj-$(CONFIG_DEBUG_FS)		+= debugfs/
+obj-$(CONFIG_STATS_FS)		+= stats_fs/
 obj-$(CONFIG_TRACING)		+= tracefs/
 obj-$(CONFIG_OCFS2_FS)		+= ocfs2/
 obj-$(CONFIG_BTRFS_FS)		+= btrfs/
diff --git a/fs/stats_fs/Makefile b/fs/stats_fs/Makefile
new file mode 100644
index 000000000000..bd988daa4c39
--- /dev/null
+++ b/fs/stats_fs/Makefile
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+stats_fs-objs	:= stats_fs.o
+
+obj-$(CONFIG_STATS_FS)	    += stats_fs.o
+obj-$(CONFIG_STATS_FS_STUB) += stub.o
diff --git a/fs/stats_fs/internal.h b/fs/stats_fs/internal.h
new file mode 100644
index 000000000000..4993afbb1e45
--- /dev/null
+++ b/fs/stats_fs/internal.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _STATS_FS_INTERNAL_H_
+#define _STATS_FS_INTERNAL_H_
+
+#include <linux/list.h>
+#include <linux/kref.h>
+#include <linux/rwsem.h>
+#include <linux/stats_fs.h>
+
+/* values, grouped by base */
+struct stats_fs_value_source {
+	void *base_addr;
+	bool files_created;
+	uint32_t common_flags;
+	struct stats_fs_value *values;
+	struct list_head list_element;
+};
+
+#endif /* _STATS_FS_INTERNAL_H_ */
diff --git a/fs/stats_fs/stats_fs.c b/fs/stats_fs/stats_fs.c
new file mode 100644
index 000000000000..b76ee44f6dac
--- /dev/null
+++ b/fs/stats_fs/stats_fs.c
@@ -0,0 +1,552 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <linux/module.h>
+#include <linux/errno.h>
+#include <linux/file.h>
+#include <linux/fs.h>
+#include <linux/slab.h>
+#include <linux/rwsem.h>
+#include <linux/list.h>
+#include <linux/kref.h>
+#include <linux/limits.h>
+#include <linux/stats_fs.h>
+
+#include "internal.h"
+
+struct stats_fs_aggregate_value {
+	uint64_t sum, min, max;
+	uint32_t count, count_zero;
+};
+
+#define STATS_FS_DEFINE_TYPE_STRUCT(gtype, stype, si)                          \
+	const struct stats_fs_type stats_fs_type_##gtype =		       \
+		{                                                              \
+			.get = stats_fs_get_##gtype,			       \
+			.clear = stats_fs_clear_##stype,		       \
+			.sign = si,                                            \
+		};							       \
+	EXPORT_SYMBOL_GPL(stats_fs_type_##gtype);
+
+#define STATS_FS_TYPE_STRUCT_US(len)				               \
+	STATS_FS_DEFINE_TYPE_STRUCT(u##len, len, false)			       \
+	STATS_FS_DEFINE_TYPE_STRUCT(s##len, len, true)
+
+#define STATS_FS_TYPE_STRUCT(type)				               \
+	STATS_FS_DEFINE_TYPE_STRUCT(type, type, false)
+
+STATS_FS_TYPE_STRUCT_US(8)
+STATS_FS_TYPE_STRUCT_US(16)
+STATS_FS_TYPE_STRUCT_US(32)
+STATS_FS_TYPE_STRUCT_US(64)
+STATS_FS_TYPE_STRUCT(bool)
+
+static int is_val_signed(struct stats_fs_value *val)
+{
+	return val->type->sign;
+}
+
+static struct stats_fs_value *find_value(struct stats_fs_value_source *src,
+					 struct stats_fs_value *val)
+{
+	struct stats_fs_value *entry;
+
+	for (entry = src->values; entry->name; entry++) {
+		if (entry == val)
+			return entry;
+	}
+	return NULL;
+}
+
+static struct stats_fs_value *
+search_value_in_source(struct stats_fs_source *src, struct stats_fs_value *arg,
+		       struct stats_fs_value_source **val_src)
+{
+	struct stats_fs_value *entry;
+	struct stats_fs_value_source *src_entry;
+
+	list_for_each_entry (src_entry, &src->values_head, list_element) {
+		entry = find_value(src_entry, arg);
+		if (entry) {
+			*val_src = src_entry;
+			return entry;
+		}
+	}
+
+	return NULL;
+}
+
+/* Called with rwsem held for writing */
+static struct stats_fs_value_source *create_value_source(void *base, uint32_t flags)
+{
+	struct stats_fs_value_source *val_src;
+
+	val_src = kzalloc(sizeof(struct stats_fs_value_source), GFP_KERNEL);
+	if (!val_src)
+		return ERR_PTR(-ENOMEM);
+
+	val_src->base_addr = base;
+	val_src->common_flags = flags;
+	INIT_LIST_HEAD(&val_src->list_element);
+
+	return val_src;
+}
+
+int stats_fs_source_add_values(struct stats_fs_source *source,
+			       struct stats_fs_value *stat, void *ptr,
+			       uint32_t flags)
+{
+	struct stats_fs_value_source *val_src;
+	struct stats_fs_value_source *entry;
+
+	down_write(&source->rwsem);
+
+	list_for_each_entry (entry, &source->values_head, list_element) {
+		if (entry->base_addr == ptr && entry->values == stat) {
+			up_write(&source->rwsem);
+			return -EEXIST;
+		}
+	}
+
+	val_src = create_value_source(ptr, flags);
+	val_src->values = (struct stats_fs_value *)stat;
+
+	/* add the val_src to the source list */
+	list_add(&val_src->list_element, &source->values_head);
+
+	up_write(&source->rwsem);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(stats_fs_source_add_values);
+
+void stats_fs_source_add_subordinate(struct stats_fs_source *source,
+				     struct stats_fs_source *sub)
+{
+	down_write(&source->rwsem);
+
+	stats_fs_source_get(sub);
+	list_add(&sub->list_element, &source->subordinates_head);
+
+	up_write(&source->rwsem);
+}
+EXPORT_SYMBOL_GPL(stats_fs_source_add_subordinate);
+
+/* Called with rwsem held for writing */
+static void
+stats_fs_source_remove_subordinate_locked(struct stats_fs_source *source,
+					  struct stats_fs_source *sub)
+{
+	struct stats_fs_source *src_entry;
+
+	list_for_each_entry (src_entry, &source->subordinates_head,
+			     list_element) {
+		if (src_entry == sub) {
+			list_del_init(&src_entry->list_element);
+			stats_fs_source_put(src_entry);
+			return;
+		}
+	}
+}
+
+void stats_fs_source_remove_subordinate(struct stats_fs_source *source,
+					struct stats_fs_source *sub)
+{
+	down_write(&source->rwsem);
+	stats_fs_source_remove_subordinate_locked(source, sub);
+	up_write(&source->rwsem);
+}
+EXPORT_SYMBOL_GPL(stats_fs_source_remove_subordinate);
+
+/* Called with rwsem held for reading */
+static uint64_t get_simple_value(struct stats_fs_value_source *src,
+				 struct stats_fs_value *val)
+{
+	if (val->type->get)
+		return val->type->get(val, src->base_addr);
+	return 0;
+}
+
+/* Called with rwsem held for reading */
+static void
+search_all_simple_values(struct stats_fs_source *src,
+			 struct stats_fs_value_source *ref_src_entry,
+			 struct stats_fs_value *val,
+			 struct stats_fs_aggregate_value *agg)
+{
+	struct stats_fs_value_source *src_entry;
+	uint64_t value_found;
+
+	list_for_each_entry (src_entry, &src->values_head, list_element) {
+		/* skip aggregates */
+		if (src_entry->base_addr == NULL)
+			continue;
+
+		/* useless to search here */
+		if (src_entry->values != ref_src_entry->values)
+			continue;
+
+		/* must be here */
+		value_found = get_simple_value(src_entry, val);
+
+		agg->sum += value_found;
+		agg->count++;
+		agg->count_zero += (value_found == 0);
+
+		if (is_val_signed(val)) {
+			agg->max = (((int64_t)value_found) >=
+				    ((int64_t)agg->max)) ?
+					   value_found :
+					   agg->max;
+			agg->min = (((int64_t)value_found) <=
+				    ((int64_t)agg->min)) ?
+					   value_found :
+					   agg->min;
+		} else {
+			agg->max = (value_found >= agg->max) ? value_found :
+							       agg->max;
+			agg->min = (value_found <= agg->min) ? value_found :
+							       agg->min;
+		}
+	}
+}
+
+/* Called with rwsem held for reading */
+static void
+do_recursive_aggregation(struct stats_fs_source *root,
+			 struct stats_fs_value_source *ref_src_entry,
+			 struct stats_fs_value *val,
+			 struct stats_fs_aggregate_value *agg)
+{
+	struct stats_fs_source *subordinate;
+
+	/* search all simple values in this folder */
+	search_all_simple_values(root, ref_src_entry, val, agg);
+
+	/* recursively search in all subfolders */
+	list_for_each_entry (subordinate, &root->subordinates_head,
+			     list_element) {
+		down_read(&subordinate->rwsem);
+		do_recursive_aggregation(subordinate, ref_src_entry, val, agg);
+		up_read(&subordinate->rwsem);
+	}
+}
+
+/* Called with rwsem held for reading */
+static void init_aggregate_value(struct stats_fs_aggregate_value *agg,
+				 struct stats_fs_value *val)
+{
+	agg->count = agg->count_zero = agg->sum = 0;
+	if (is_val_signed(val)) {
+		agg->max = S64_MIN;
+		agg->min = S64_MAX;
+	} else {
+		agg->max = 0;
+		agg->min = U64_MAX;
+	}
+}
+
+/* Called with rwsem held for reading */
+static void store_final_value(struct stats_fs_aggregate_value *agg,
+			      struct stats_fs_value *val, uint64_t *ret)
+{
+	switch (val->aggr_kind) {
+	case STATS_FS_AVG:{
+		if (is_val_signed(val))
+			*ret = agg->count ? ((int64_t)agg->sum) / agg->count : 0;
+		else
+			*ret = agg->count ? agg->sum / agg->count : 0;
+		break;
+	}
+	case STATS_FS_SUM:
+		*ret = agg->sum;
+		break;
+	case STATS_FS_MIN:
+		*ret = agg->min;
+		break;
+	case STATS_FS_MAX:
+		*ret = agg->max;
+		break;
+	case STATS_FS_COUNT_ZERO:
+		*ret = agg->count_zero;
+		break;
+	default:
+		break;
+	}
+}
+
+/* Called with rwsem held for reading */
+static int stats_fs_source_get_value_locked(struct stats_fs_source *source,
+					    struct stats_fs_value *arg,
+					    uint64_t *ret)
+{
+	struct stats_fs_value_source *src_entry;
+	struct stats_fs_value *found;
+	struct stats_fs_aggregate_value aggr;
+
+	*ret = 0;
+
+	if (!arg)
+		return -ENOENT;
+
+	/* look in simple values */
+	found = search_value_in_source(source, arg, &src_entry);
+
+	if (!found) {
+		printk(KERN_ERR "Stats_fs: Value in source \"%s\" not found!\n",
+		       source->name);
+		return -ENOENT;
+	}
+
+	if (src_entry->base_addr != NULL) {
+		*ret = get_simple_value(src_entry, found);
+		return 0;
+	}
+
+	/* look in aggregates */
+	init_aggregate_value(&aggr, found);
+	do_recursive_aggregation(source, src_entry, found, &aggr);
+	store_final_value(&aggr, found, ret);
+
+	return 0;
+}
+
+int stats_fs_source_get_value(struct stats_fs_source *source,
+			      struct stats_fs_value *arg, uint64_t *ret)
+{
+	int retval;
+
+	down_read(&source->rwsem);
+	retval = stats_fs_source_get_value_locked(source, arg, ret);
+	up_read(&source->rwsem);
+
+	return retval;
+}
+EXPORT_SYMBOL_GPL(stats_fs_source_get_value);
+
+/* Called with rwsem held for reading */
+static void set_all_simple_values(struct stats_fs_source *src,
+				  struct stats_fs_value_source *ref_src_entry,
+				  struct stats_fs_value *val)
+{
+	struct stats_fs_value_source *src_entry;
+
+	list_for_each_entry (src_entry, &src->values_head, list_element) {
+		/* skip aggregates */
+		if (src_entry->base_addr == NULL)
+			continue;
+
+		/* wrong to search here */
+		if (src_entry->values != ref_src_entry->values)
+			continue;
+
+		if (src_entry->base_addr &&
+		    src_entry->values == ref_src_entry->values &&
+		    val->type->clear)
+			val->type->clear(val, src_entry->base_addr);
+	}
+}
+
+/* Called with rwsem held for reading */
+static void do_recursive_clean(struct stats_fs_source *root,
+			       struct stats_fs_value_source *ref_src_entry,
+			       struct stats_fs_value *val)
+{
+	struct stats_fs_source *subordinate;
+
+	/* search all simple values in this folder */
+	set_all_simple_values(root, ref_src_entry, val);
+
+	/* recursively search in all subfolders */
+	list_for_each_entry (subordinate, &root->subordinates_head,
+			     list_element) {
+		down_read(&subordinate->rwsem);
+		do_recursive_clean(subordinate, ref_src_entry, val);
+		up_read(&subordinate->rwsem);
+	}
+}
+
+/* Called with rwsem held for reading */
+static int stats_fs_source_clear_locked(struct stats_fs_source *source,
+					struct stats_fs_value *val)
+{
+	struct stats_fs_value_source *src_entry;
+	struct stats_fs_value *found;
+
+	if (!val)
+		return -ENOENT;
+
+	/* look in simple values */
+	found = search_value_in_source(source, val, &src_entry);
+
+	if (!found) {
+		printk(KERN_ERR "Stats_fs: Value in source \"%s\" not found!\n",
+		       source->name);
+		return -ENOENT;
+	}
+
+	if (!(stats_fs_val_get_mode(val) & 0222))
+		return -EPERM;
+
+	if (src_entry->base_addr != NULL && found->type->clear) {
+		found->type->clear(found, src_entry->base_addr);
+		return 0;
+	}
+
+	/* look in aggregates */
+	do_recursive_clean(source, src_entry, found);
+
+	return 0;
+}
+
+int stats_fs_source_clear(struct stats_fs_source *source,
+			  struct stats_fs_value *val)
+{
+	int retval;
+
+	down_read(&source->rwsem);
+	retval = stats_fs_source_clear_locked(source, val);
+	up_read(&source->rwsem);
+
+	return retval;
+}
+
+/* Called with rwsem held for reading */
+static struct stats_fs_value *
+find_value_by_name(struct stats_fs_value_source *src, char *val)
+{
+	struct stats_fs_value *entry;
+
+	for (entry = src->values; entry->name; entry++)
+		if (!strcmp(entry->name, val))
+			return entry;
+
+	return NULL;
+}
+
+/* Called with rwsem held for reading */
+static struct stats_fs_value *
+search_in_source_by_name(struct stats_fs_source *src, char *name)
+{
+	struct stats_fs_value *entry;
+	struct stats_fs_value_source *src_entry;
+
+	list_for_each_entry (src_entry, &src->values_head, list_element) {
+		entry = find_value_by_name(src_entry, name);
+		if (entry)
+			return entry;
+	}
+
+	return NULL;
+}
+
+int stats_fs_source_get_value_by_name(struct stats_fs_source *source,
+				      char *name, uint64_t *ret)
+{
+	struct stats_fs_value *val;
+	int retval;
+
+	down_read(&source->rwsem);
+	val = search_in_source_by_name(source, name);
+
+	if (!val) {
+		*ret = 0;
+		up_read(&source->rwsem);
+		return -ENOENT;
+	}
+
+	retval = stats_fs_source_get_value_locked(source, val, ret);
+	up_read(&source->rwsem);
+
+	return retval;
+}
+EXPORT_SYMBOL_GPL(stats_fs_source_get_value_by_name);
+
+void stats_fs_source_get(struct stats_fs_source *source)
+{
+	kref_get(&source->refcount);
+}
+EXPORT_SYMBOL_GPL(stats_fs_source_get);
+
+void stats_fs_source_revoke(struct stats_fs_source *source)
+{
+	struct stats_fs_value_source *val_src_entry;
+
+	down_write(&source->rwsem);
+
+	list_for_each_entry (val_src_entry, &source->values_head, list_element)
+		val_src_entry->base_addr = NULL;
+
+	up_write(&source->rwsem);
+}
+EXPORT_SYMBOL_GPL(stats_fs_source_revoke);
+
+/* Called with rwsem held for writing
+ *
+ * The refcount is 0 and the lock was taken before refcount
+ * went from 1 to 0
+ */
+static void stats_fs_source_destroy(struct kref *kref_source)
+{
+	struct stats_fs_value_source *val_src_entry;
+	struct list_head *it, *safe;
+	struct stats_fs_source *child, *source;
+
+	source = container_of(kref_source, struct stats_fs_source, refcount);
+
+	/* iterate through the values and delete them */
+	list_for_each_safe (it, safe, &source->values_head) {
+		val_src_entry = list_entry(it, struct stats_fs_value_source,
+					   list_element);
+		kfree(val_src_entry);
+	}
+
+	/* iterate through the subordinates and delete them */
+	list_for_each_safe (it, safe, &source->subordinates_head) {
+		child = list_entry(it, struct stats_fs_source, list_element);
+		stats_fs_source_remove_subordinate_locked(source, child);
+	}
+
+	up_write(&source->rwsem);
+	kfree(source->name);
+	kfree(source);
+}
+
+void stats_fs_source_put(struct stats_fs_source *source)
+{
+	kref_put_rwsem(&source->refcount, stats_fs_source_destroy,
+		       &source->rwsem);
+}
+EXPORT_SYMBOL_GPL(stats_fs_source_put);
+
+struct stats_fs_source *stats_fs_source_create(uint32_t flags, const char *fmt, ...)
+{
+	va_list ap;
+	char buf[100];
+	struct stats_fs_source *ret;
+	int char_needed;
+
+	va_start(ap, fmt);
+	char_needed = vsnprintf(buf, 100, fmt, ap);
+	va_end(ap);
+
+	ret = kzalloc(sizeof(struct stats_fs_source), GFP_KERNEL);
+	if (!ret)
+		return ERR_PTR(-ENOMEM);
+
+	ret->name = kstrdup(buf, GFP_KERNEL);
+	if (!ret->name) {
+		kfree(ret);
+		return ERR_PTR(-ENOMEM);
+	}
+
+	ret->common_flags = flags;
+
+	kref_init(&ret->refcount);
+	init_rwsem(&ret->rwsem);
+
+	INIT_LIST_HEAD(&ret->values_head);
+	INIT_LIST_HEAD(&ret->subordinates_head);
+	INIT_LIST_HEAD(&ret->list_element);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(stats_fs_source_create);
diff --git a/fs/stats_fs/stub.c b/fs/stats_fs/stub.c
new file mode 100644
index 000000000000..0843b58ad3be
--- /dev/null
+++ b/fs/stats_fs/stub.c
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <linux/module.h>
+#include <linux/errno.h>
+#include <linux/file.h>
+#include <linux/fs.h>
+#include <linux/slab.h>
+#include <linux/rwsem.h>
+#include <linux/list.h>
+#include <linux/kref.h>
+#include <linux/limits.h>
+#include <linux/stats_fs.h>
+
+const struct stats_fs_type stats_fs_type_stub;
diff --git a/include/linux/stats_fs.h b/include/linux/stats_fs.h
new file mode 100644
index 000000000000..93847383f597
--- /dev/null
+++ b/include/linux/stats_fs.h
@@ -0,0 +1,363 @@
+/* SPDX-License-Identifier: GPL-2.0
+ *
+ *  stats_fs.h - a tiny little statistics file system
+ *
+ *  Copyright (C) 2020 Emanuele Giuseppe Esposito
+ *  Copyright (C) 2020 Redhat.
+ *
+ */
+
+#ifndef _STATS_FS_H_
+#define _STATS_FS_H_
+
+#include <linux/list.h>
+
+enum stat_aggr {
+	STATS_FS_NONE = 0,
+	STATS_FS_SUM,
+	STATS_FS_MIN,
+	STATS_FS_MAX,
+	STATS_FS_COUNT_ZERO,
+	STATS_FS_AVG,
+};
+
+/* flags used by source and internal source_value structure */
+enum source_value_common_flags {
+	STATS_FS_HIDDEN = 0x1,
+};
+
+enum stat_fs_value_flag {
+	STATS_FS_FLOATING_VALUE = 0x1,
+};
+
+struct stats_fs_value;
+
+struct stats_fs_type {
+	uint64_t (*get)(struct stats_fs_value *, void *);
+	void (*clear)(struct stats_fs_value *, void *);
+	bool sign;
+};
+
+struct stats_fs_value {
+	/* Name of the stat */
+	char *name;
+
+	/* Offset from base address to field containing the value */
+	int offset;
+
+	/* Type of the stat BOOL,U64,... */
+	const struct stats_fs_type *type;
+
+	/* Aggregate type: MIN, MAX, SUM,... */
+	enum stat_aggr aggr_kind;
+
+	uint32_t value_flag;
+};
+
+struct stats_fs_source {
+	struct kref refcount;
+
+	char *name;
+
+	uint32_t common_flags;
+
+	/* list of source stats_fs_value_source*/
+	struct list_head values_head;
+
+	/* list of struct stats_fs_source for subordinate sources */
+	struct list_head subordinates_head;
+
+	struct list_head list_element;
+
+	struct rw_semaphore rwsem;
+
+	struct dentry *source_dentry;
+};
+
+static inline int stats_fs_val_get_mode(struct stats_fs_value *val)
+{
+	return (val->value_flag & STATS_FS_FLOATING_VALUE || !val->type->clear)
+		? 0444 : 0644;
+}
+
+#define STATS_FS_DEFINE_GET(name, type)					       \
+	static inline uint64_t stats_fs_get_##name(struct stats_fs_value *val, \
+						   void *base)                 \
+	{                                                                      \
+		return *((type *)(base + (uintptr_t)val->offset));	       \
+	}
+
+#define STATS_FS_DEFINE_CLEAR(name, type)                                      \
+	static inline void stats_fs_clear_##name(struct stats_fs_value *val,   \
+						 void *base)                   \
+	{                                                                      \
+		*((type *)(base + (uintptr_t)val->offset)) = 0;                \
+	}
+
+#define STATS_FS_DEFINE_FUNCT_US(len)					       \
+	STATS_FS_DEFINE_GET(u##len, u##len)				       \
+	STATS_FS_DEFINE_GET(s##len, s##len)				       \
+	STATS_FS_DEFINE_CLEAR(len, u##len)
+
+#define STATS_FS_DEFINE_FUNCT(type)					       \
+	STATS_FS_DEFINE_GET(type, type)					       \
+	STATS_FS_DEFINE_CLEAR(type, type)
+
+STATS_FS_DEFINE_FUNCT_US(8)
+STATS_FS_DEFINE_FUNCT_US(16)
+STATS_FS_DEFINE_FUNCT_US(32)
+STATS_FS_DEFINE_FUNCT_US(64)
+STATS_FS_DEFINE_FUNCT(bool)
+
+#undef STATS_FS_DEFINE_FUNCT
+#undef STATS_FS_DEFINE_FUNCT_US
+#undef STATS_FS_DEFINE_GET
+#undef STATS_FS_DEFINE_CLEAR
+
+#if defined(CONFIG_STATS_FS)
+
+extern const struct stats_fs_type stats_fs_type_u8;
+extern const struct stats_fs_type stats_fs_type_s8;
+extern const struct stats_fs_type stats_fs_type_u16;
+extern const struct stats_fs_type stats_fs_type_s16;
+extern const struct stats_fs_type stats_fs_type_u32;
+extern const struct stats_fs_type stats_fs_type_s32;
+extern const struct stats_fs_type stats_fs_type_u64;
+extern const struct stats_fs_type stats_fs_type_s64;
+extern const struct stats_fs_type stats_fs_type_bool;
+
+/**
+ * stats_fs_source_create - create a stats_fs_source
+ * @flags: an integer containing all source flags (STATS_FS_HIDDEN, ...)
+ * @fmt: source name format
+ *
+ * Creates a stats_fs_source with the given name. This
+ * does not mean it will be backed by the filesystem yet, it will only
+ * be visible to the user once one of its parents (or itself) are
+ * registered in stats_fs.
+ *
+ * Returns a pointer to a stats_fs_source if it succeeds.
+ * This or one of the parents' pointer must be passed to the stats_fs_put()
+ * function when the file is to be removed.  If an error occurs,
+ * ERR_PTR(-ERROR) will be returned.
+ */
+struct stats_fs_source *stats_fs_source_create(uint32_t flags, const char *fmt,
+					       ...);
+
+/**
+ * stats_fs_source_add_values - adds values to the given source
+ * @source: a pointer to the source that will receive the values
+ * @val: a pointer to the NULL terminated stats_fs_value array to add
+ * @base_ptr: a pointer to the base pointer used by these values
+ * @flags: an integer containing common value flags (STATS_FS_HIDDEN, ...)
+ *
+ * In addition to adding values to the source, also create the
+ * files in the filesystem if the source already is backed up by a directory.
+ *
+ * Returns 0 it succeeds. If the value are already in the
+ * source and have the same base_ptr, -EEXIST is returned.
+ */
+int stats_fs_source_add_values(struct stats_fs_source *source,
+			       struct stats_fs_value *val, void *base_ptr,
+			       uint32_t flags);
+
+/**
+ * stats_fs_source_add_subordinate - adds a child to the given source
+ * @parent: a pointer to the parent source
+ * @child: a pointer to child source to add
+ *
+ * Recursively create all files in the stats_fs filesystem
+ * only if the parent has already a dentry (created with
+ * stats_fs_source_register).
+ * This avoids the case where this function is called before register.
+ */
+void stats_fs_source_add_subordinate(struct stats_fs_source *parent,
+				     struct stats_fs_source *child);
+
+/**
+ * stats_fs_source_remove_subordinate - removes a child from the given source
+ * @parent: a pointer to the parent source
+ * @child: a pointer to child source to remove
+ *
+ * Look if there is such child in the parent. If so,
+ * it will remove all its files and call stats_fs_put on the child.
+ */
+void stats_fs_source_remove_subordinate(struct stats_fs_source *parent,
+					struct stats_fs_source *child);
+
+/**
+ * stats_fs_source_get_value - search a value in the source (and
+ * subordinates)
+ * @source: a pointer to the source that will be searched
+ * @val: a pointer to the stats_fs_value to search
+ * @ret: a pointer to the uint64_t that will hold the found value
+ *
+ * Look up in the source if a value with same value pointer
+ * exists.
+ * If not, it will return -ENOENT. If it exists and it's a simple value
+ * (not an aggregate), the value that it points to will be returned.
+ * If it exists and it's an aggregate (aggr_type != STATS_FS_NONE), all
+ * subordinates will be recursively searched and every simple value match
+ * will be used to aggregate the final result. For example if it's a sum,
+ * all suboordinates having the same value will be sum together.
+ *
+ * This function will return 0 it succeeds.
+ */
+int stats_fs_source_get_value(struct stats_fs_source *source,
+			      struct stats_fs_value *val, uint64_t *ret);
+
+/**
+ * stats_fs_source_get_value_by_name - search a value in the source (and
+ * subordinates)
+ * @source: a pointer to the source that will be searched
+ * @name: a pointer to the string representing the value to search
+ *        (for example "exits")
+ * @ret: a pointer to the uint64_t that will hold the found value
+ *
+ * Same as stats_fs_source_get_value, but initially the name is used
+ * to search in the given source if there is a value with a matching
+ * name. If so, stats_fs_source_get_value will be called with the found
+ * value, otherwise -ENOENT will be returned.
+ */
+int stats_fs_source_get_value_by_name(struct stats_fs_source *source,
+				      char *name, uint64_t *ret);
+
+/**
+ * stats_fs_source_clear - search and clears a value in the source (and
+ * subordinates)
+ * @source: a pointer to the source that will be searched
+ * @val: a pointer to the stats_fs_value to search
+ *
+ * Look up in the source if a value with same value pointer
+ * exists.
+ * If not, it will return -ENOENT. If it exists and it's a simple value
+ * (not an aggregate), the value that it points to will be set to 0.
+ * If it exists and it's an aggregate (aggr_type != STATS_FS_NONE), all
+ * subordinates will be recursively searched and every simple value match
+ * will be set to 0.
+ *
+ * This function will return 0 it succeeds.
+ */
+int stats_fs_source_clear(struct stats_fs_source *source,
+			  struct stats_fs_value *val);
+
+/**
+ * stats_fs_source_revoke - disconnect the source from its backing data
+ * @source: a pointer to the source that will be revoked
+ *
+ * Ensure that stats_fs will not access the data that were passed to
+ * stats_fs_source_add_value for this source.
+ *
+ * Because open files increase the reference count for a stats_fs_source,
+ * the source can end up living longer than the data that provides the
+ * values for the source.  Calling stats_fs_source_revoke just before the
+ * backing data is freed avoids accesses to freed data structures.  The
+ * sources will return 0.
+ */
+void stats_fs_source_revoke(struct stats_fs_source *source);
+
+/**
+ * stats_fs_source_get - increases refcount of source
+ * @source: a pointer to the source whose refcount will be increased
+ */
+void stats_fs_source_get(struct stats_fs_source *source);
+
+/**
+ * stats_fs_source_put - decreases refcount of source and deletes if needed
+ * @source: a pointer to the source whose refcount will be decreased
+ *
+ * If refcount arrives to zero, take care of deleting
+ * and free the source resources and files, by firstly recursively calling
+ * stats_fs_source_remove_subordinate to the child and then deleting
+ * its own files and allocations.
+ */
+void stats_fs_source_put(struct stats_fs_source *source);
+
+/**
+ * stats_fs_initialized - returns true if stats_fs fs has been registered
+ */
+bool stats_fs_initialized(void);
+
+#else
+
+#include <linux/err.h>
+
+#define stats_fs_type_u8 stats_fs_type_stub
+#define stats_fs_type_s8 stats_fs_type_stub
+#define stats_fs_type_u16 stats_fs_type_stub
+#define stats_fs_type_s16 stats_fs_type_stub
+#define stats_fs_type_u32 stats_fs_type_stub
+#define stats_fs_type_s32 stats_fs_type_stub
+#define stats_fs_type_u64 stats_fs_type_stub
+#define stats_fs_type_s64 stats_fs_type_stub
+#define stats_fs_type_bool stats_fs_type_stub
+
+extern const struct stats_fs_type stats_fs_type_stub;
+
+/*
+ * We do not return NULL from these functions if CONFIG_STATS_FS is not enabled
+ * so users have a chance to detect if there was a real error or not.  We don't
+ * want to duplicate the design decision mistakes of procfs and devfs again.
+ */
+
+static inline struct stats_fs_source *stats_fs_source_create(uint32_t flags,
+							     const char *fmt,
+							     ...)
+{
+	return ERR_PTR(-ENODEV);
+}
+
+static inline int stats_fs_source_add_values(struct stats_fs_source *source,
+					     struct stats_fs_value *val,
+					     void *base_ptr, uint32_t flags)
+{
+	return -ENODEV;
+}
+
+static inline void
+stats_fs_source_add_subordinate(struct stats_fs_source *parent,
+				struct stats_fs_source *child)
+{ }
+
+static inline void
+stats_fs_source_remove_subordinate(struct stats_fs_source *parent,
+				   struct stats_fs_source *child)
+{ }
+
+static inline int stats_fs_source_get_value(struct stats_fs_source *source,
+					    struct stats_fs_value *val,
+					    uint64_t *ret)
+{
+	return -ENODEV;
+}
+
+static inline int
+stats_fs_source_get_value_by_name(struct stats_fs_source *source, char *name,
+				  uint64_t *ret)
+{
+	return -ENODEV;
+}
+
+static inline int stats_fs_source_clear(struct stats_fs_source *source,
+					struct stats_fs_value *val)
+{
+	return -ENODEV;
+}
+
+static inline void stats_fs_source_revoke(struct stats_fs_source *source)
+{ }
+
+static inline void stats_fs_source_get(struct stats_fs_source *source)
+{ }
+
+static inline void stats_fs_source_put(struct stats_fs_source *source)
+{ }
+
+static inline bool stats_fs_initialized(void)
+{
+	return false;
+}
+
+#endif
+
+#endif
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
