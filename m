Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 787071E20AA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 13:08:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zf3voEUoofR5G/iD0hDa6yuM9SL3rEjKXxUHayMA1jk=; b=bZSeYPsV7Xxiif
	VktYU7kXYEl2s4fT2OKxXyt7lMpdkYJ5S+uCjwO1rERaTJh3ssjYDZF/qVlwpfghg6P1LmAs0WKQe
	h/Rk2bz7d3ccoqbpfv7FToAONXO/hYrHuK26u/yp/wZBb7F8oUSQJqvw9Ql8iE5r3ubKpjDKmrbxj
	vhwSI9XKu+Ktb2Ld7KWH/06NhSz3IRlE2qWyVOlpFOT2+wMz5AnTcF+GvgTCao3QhtGfUHr1ikO3L
	DUag0rvsK24Ry8iB3n+OvRH4uD3PekD2IV+fRwIV+uNH80rwk1ETqLom/MWDhw9xXixD6eVpJfz6s
	b9YFkf5qHsQMKRBV1Zjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdXRA-0000mi-2F; Tue, 26 May 2020 11:08:00 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdXP3-0007yf-4q
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 11:05:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590491148;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YL7I5JCIHEnCOMA27cTClA3wSdtYCHTGXJdbbFxfa+8=;
 b=TVcExG3xC18YvFDV7bsriUmEi9DwKNta6V0Q/7DIkXSzrbGMm/sYkLM2jI7E66aAQsSamd
 rtcdqqsHJpm+Wf6/6qBE4x28EDl2R/1CTv2kIN0eMJWKFd5GmI7h9Q/0YGFrOPIXQzPbsL
 +dxMsFmDWvcHRcdVUFNLxO6K8jcoGo8=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-371-fptl2S9ENsK4nU_xfsQRrA-1; Tue, 26 May 2020 07:05:46 -0400
X-MC-Unique: fptl2S9ENsK4nU_xfsQRrA-1
Received: by mail-wm1-f72.google.com with SMTP id x11so705689wmc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 04:05:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YL7I5JCIHEnCOMA27cTClA3wSdtYCHTGXJdbbFxfa+8=;
 b=JCpWgQpD0UIP6UUlrWXB5I7IeaWZkFIAlY9rlzayuphcnX4J7jEQqOiAQy2N3L7Gnt
 leqewwkdwayzz7G2H7yU1axlWR6ARKUOhof6STBesdgfQ/uLliQ7u/N2oIW7++9IihHr
 pxOnq6CbVcjjHE2aar8/dfOhnYKpU4zQLWem/dgUJjH6S9nrFDPTKL2O24X3iWv1Fnhy
 oiO6oseQVDHz0W6qHZaZ35fefGATwgpfH14c5Qfx2lERjcUJLDEzG4veUFURVmZQCCne
 st7Dv1m7Rd12v9GVm42pm3xlb+H9EpZPUMSqNkJSP8+LxqocJ/kykte8iW4fopTqisB+
 m/iw==
X-Gm-Message-State: AOAM532qqwWtBb1ghE0X/4i12ERxCDu2Z0cDIBFrobPBVGNr1gdbjkDB
 iiG9nbJAZk3gUCWJNr0UKZKkJabxsRZ0IRUwevZfXHJAyKWCdIN23xalWQkZe0kou2qgNhvrskE
 TqzvlYdKA7w/ywWzt/kOWVL9LkMBh1iLpUDs=
X-Received: by 2002:a5d:484b:: with SMTP id n11mr18085336wrs.356.1590491145437; 
 Tue, 26 May 2020 04:05:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyo4BV3xWVL52mX4Nu+TG9ys/JSV0Y3savYX2kM7iRzxuz+P1aX7wtkuMtb+MvbeCMZqXp14Q==
X-Received: by 2002:a5d:484b:: with SMTP id n11mr18085316wrs.356.1590491145188; 
 Tue, 26 May 2020 04:05:45 -0700 (PDT)
Received: from localhost.localdomain.com ([194.230.155.118])
 by smtp.gmail.com with ESMTPSA id d6sm22928240wrj.90.2020.05.26.04.05.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 04:05:36 -0700 (PDT)
From: Emanuele Giuseppe Esposito <eesposit@redhat.com>
To: kvm@vger.kernel.org
Subject: [PATCH v3 7/7] [not for merge] netstats: example use of stats_fs API
Date: Tue, 26 May 2020 13:03:17 +0200
Message-Id: <20200526110318.69006-8-eesposit@redhat.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200526110318.69006-1-eesposit@redhat.com>
References: <20200526110318.69006-1-eesposit@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_040549_319347_84AF77A4 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Apply stats_fs on the networking statistics subsystem.

Currently it only works with disabled network namespace
(CONFIG_NET_NS=n), because multiple namespaces will have the same
device name under the same root source that will cause a conflict in
stats_fs.

Signed-off-by: Emanuele Giuseppe Esposito <eesposit@redhat.com>
---
 include/linux/netdevice.h |  2 ++
 net/Kconfig               |  1 +
 net/core/dev.c            | 66 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 69 insertions(+)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 130a668049ab..408c4e7b0e21 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -48,6 +48,7 @@
 #include <uapi/linux/if_bonding.h>
 #include <uapi/linux/pkt_cls.h>
 #include <linux/hashtable.h>
+#include <linux/stats_fs.h>
 
 struct netpoll_info;
 struct device;
@@ -2117,6 +2118,7 @@ struct net_device {
 	unsigned		wol_enabled:1;
 
 	struct list_head	net_notifier_list;
+	struct stats_fs_source	*stats_fs_src;
 
 #if IS_ENABLED(CONFIG_MACSEC)
 	/* MACsec management functions */
diff --git a/net/Kconfig b/net/Kconfig
index df8d8c9bd021..3441d5bb6107 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -8,6 +8,7 @@ menuconfig NET
 	select NLATTR
 	select GENERIC_NET_UTILS
 	select BPF
+	select STATS_FS_API
 	---help---
 	  Unless you really know what you are doing, you should say Y here.
 	  The reason is that some programs need kernel networking support even
diff --git a/net/core/dev.c b/net/core/dev.c
index 522288177bbd..3db48cd1a097 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -142,6 +142,7 @@
 #include <linux/net_namespace.h>
 #include <linux/indirect_call_wrapper.h>
 #include <net/devlink.h>
+#include <linux/stats_fs.h>
 
 #include "net-sysfs.h"
 
@@ -150,6 +151,11 @@
 /* This should be increased if a protocol with a bigger head is added. */
 #define GRO_MAX_HEAD (MAX_HEADER + 128)
 
+#define NETDEV_STAT(str, m, ...)						\
+	{ str, offsetof(struct rtnl_link_stats64, m),				\
+	  &stats_fs_type_netdev_u64,						\
+	  STATS_FS_SUM, ## __VA_ARGS__ }
+
 static DEFINE_SPINLOCK(ptype_lock);
 static DEFINE_SPINLOCK(offload_lock);
 struct list_head ptype_base[PTYPE_HASH_SIZE] __read_mostly;
@@ -196,6 +202,53 @@ static DEFINE_READ_MOSTLY_HASHTABLE(napi_hash, 8);
 
 static seqcount_t devnet_rename_seq;
 
+static uint64_t stats_fs_get_netdev_u64(struct stats_fs_value *val,
+					void *base)
+{
+	struct net_device *netdev = (struct net_device *)base;
+	struct rtnl_link_stats64 net_stats;
+
+	dev_get_stats(netdev, &net_stats);
+
+	return stats_fs_get_u64(val, &net_stats);
+}
+
+static struct stats_fs_type stats_fs_type_netdev_u64 = {
+	.get = stats_fs_get_netdev_u64,
+	.clear = NULL,
+	.sign = false
+};
+
+static struct stats_fs_source *netdev_root;
+
+static struct stats_fs_value stats_fs_netdev_entries[] = {
+	NETDEV_STAT("rx_packets", rx_packets),
+	NETDEV_STAT("tx_packets", tx_packets),
+	NETDEV_STAT("rx_bytes", rx_bytes),
+	NETDEV_STAT("tx_bytes", tx_bytes),
+	NETDEV_STAT("rx_errors", rx_errors),
+	NETDEV_STAT("tx_errors", tx_errors),
+	NETDEV_STAT("rx_dropped", rx_dropped),
+	NETDEV_STAT("tx_dropped", tx_dropped),
+	NETDEV_STAT("multicast", multicast),
+	NETDEV_STAT("collisions", collisions),
+	NETDEV_STAT("rx_length_errors", rx_length_errors),
+	NETDEV_STAT("rx_over_errors", rx_over_errors),
+	NETDEV_STAT("rx_crc_errors", rx_crc_errors),
+	NETDEV_STAT("rx_frame_errors", rx_frame_errors),
+	NETDEV_STAT("rx_fifo_errors", rx_fifo_errors),
+	NETDEV_STAT("rx_missed_errors", rx_missed_errors),
+	NETDEV_STAT("tx_aborted_errors", tx_aborted_errors),
+	NETDEV_STAT("tx_carrier_errors", tx_carrier_errors),
+	NETDEV_STAT("tx_fifo_errors", tx_fifo_errors),
+	NETDEV_STAT("tx_heartbeat_errors", tx_heartbeat_errors),
+	NETDEV_STAT("tx_window_errors", tx_window_errors),
+	NETDEV_STAT("rx_compressed", rx_compressed),
+	NETDEV_STAT("tx_compressed", tx_compressed),
+	NETDEV_STAT("rx_nohandler", rx_nohandler),
+	{ NULL }
+};
+
 static inline void dev_base_seq_inc(struct net *net)
 {
 	while (++net->dev_base_seq == 0)
@@ -8783,6 +8836,11 @@ static void rollback_registered_many(struct list_head *head)
 	ASSERT_RTNL();
 
 	list_for_each_entry_safe(dev, tmp, head, unreg_list) {
+		stats_fs_source_remove_subordinate(netdev_root,
+						   dev->stats_fs_src);
+		stats_fs_source_revoke(dev->stats_fs_src);
+		stats_fs_source_put(dev->stats_fs_src);
+
 		/* Some devices call without registering
 		 * for initialization unwind. Remove those
 		 * devices and proceed with the remaining.
@@ -9436,6 +9494,11 @@ int register_netdevice(struct net_device *dev)
 	    dev->rtnl_link_state == RTNL_LINK_INITIALIZED)
 		rtmsg_ifinfo(RTM_NEWLINK, dev, ~0U, GFP_KERNEL);
 
+	dev->stats_fs_src = stats_fs_source_create(0, dev->name);
+	stats_fs_source_add_subordinate(netdev_root, dev->stats_fs_src);
+	stats_fs_source_add_values(dev->stats_fs_src, stats_fs_netdev_entries,
+				   dev, 0);
+
 out:
 	return ret;
 
@@ -10500,6 +10563,9 @@ static int __init net_dev_init(void)
 	if (netdev_kobject_init())
 		goto out;
 
+	netdev_root = stats_fs_source_create(0, "net");
+	stats_fs_source_register(netdev_root);
+
 	INIT_LIST_HEAD(&ptype_all);
 	for (i = 0; i < PTYPE_HASH_SIZE; i++)
 		INIT_LIST_HEAD(&ptype_base[i]);
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
