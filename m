Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD217174272
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 23:45:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=54m1sEuhlH0a73v7iI35B8+3E9BnMi4qQ2znOvl9Hh8=; b=b84FC3EQBmIp3N
	MnSMkz8t0dCYK5pIgFsBk7eLVmH6nlyIVNbrTkJc03jDD/4GywAw70CJG9lXHOhsCpIgHjaiq1yek
	brynMAptaAG9Y2AjTnCO+n0DzL7ThL4Bygi5zrmTiUufg/clPxscc2/cFSW5qlHRPmvr9wXe8V/Qc
	RVtU/Yl/3Jfuv77kbShFFl6VJP5zbnogvbHSLzD/84Xdx3kVg3WOUJ+Q61X9D1CvYwZsuM+4Nyrye
	59P5mTA7mmuQsjsDgliPSOxa+KNS+9JfdlhfEsOpu29b9NakGJOhY9GCHtjFwvmi8Tg0Bts20ld+p
	OxKsjV/Mt/6M8FqxZGxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7oNW-0005Ib-1u; Fri, 28 Feb 2020 22:45:06 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7oKu-0003mt-F4
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 22:42:28 +0000
Received: by mail-yw1-xc43.google.com with SMTP id i190so4973814ywc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 14:42:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1SW/DxoqhGjaj3Cy7I1FXx44tNdHemhTbjCDe8OoppQ=;
 b=Z+7dt9FoChoIYa0VcSmB6Sn4oZcTMldAF5o9M9ZIBi3PLZuXBY3F/rISDQAHn4zL1s
 RDE46DIbOfCZ2AAcBPLWoKxPWKgj5cndWjW8/+YICGgguBX9xBobAU54YA3G8aAxllLo
 8F7KviIoIwzfaBIivJ+jeMawGhs2HFHXGwVAysvgrK8/u7Te6Ut5VvyaOWn0JRM+yIsK
 9iabV37jmx8U5k1+4cTzHJzOlXw2CwiZL5MhvkMQEcrMobjumf6KDzjPUn2LduXwyR+8
 3pDQdYiIcGXUG4s+zl8heViJeN17/P7HMgRkhgakATHmhJyAmq3Gy1RnV1/3Czwd+D7z
 v3cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1SW/DxoqhGjaj3Cy7I1FXx44tNdHemhTbjCDe8OoppQ=;
 b=Z/FR7dGAvliUke7yo7cRYrL06rT8i2ACdPU971GaQFP11SzIXjBKQZUtc66H1vvpka
 Rb5+Vm3PZy3X3zXxw+GsoDROWL1bG18h4YrW/ul+OAjruwvHeir5hNXuQTNEzSbwChVk
 8lDLr9K61U2A1wm3BTo4rcqLFGiVkve1W/Bsai0pDGmlEKarujSDVFePg4BZdXkzKm+m
 YgL3tYhcGzXbZrNy6kuhVG8eSDR7f8C/rsYVrH8W4B1DADY9L4DWeFPOGqn0T0zUXMM5
 dK9niSEDnQ7R4z2O47sUNtGjE38+UyJ/sE339yZSS2N3g0Tb/wIWvMr5r2TbfzcxZX1w
 g9GA==
X-Gm-Message-State: APjAAAXlXR9MCGUo0CfKnlZad/BxKvgBOJtdVcFKibuqP2e1HKP/nYL6
 NiKxBcmn0cPm3cs1kSSFBObN2Q==
X-Google-Smtp-Source: APXvYqwpY+JpYE1IwTUNNrCyzh+2u8tpPj+zG9Xu3jbo3h0c0cBmnrURk8I9e3ZS2wGVWRBbFy+KRQ==
X-Received: by 2002:a25:86cb:: with SMTP id y11mr5784130ybm.37.1582929742514; 
 Fri, 28 Feb 2020 14:42:22 -0800 (PST)
Received: from localhost.localdomain (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.gmail.com with ESMTPSA id d188sm4637830ywe.50.2020.02.28.14.42.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 14:42:21 -0800 (PST)
From: Alex Elder <elder@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>,
	David Miller <davem@davemloft.net>
Subject: [PATCH 06/17] soc: qcom: ipa: GSI headers
Date: Fri, 28 Feb 2020 16:41:53 -0600
Message-Id: <20200228224204.17746-7-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228224204.17746-1-elder@linaro.org>
References: <20200228224204.17746-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_144224_911994_53550951 
X-CRM114-Status: GOOD (  23.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Susheel Yadav Yadagiri <syadagir@codeaurora.org>,
 Eric Caruso <ejcaruso@google.com>, devicetree@vger.kernel.org,
 Dan Williams <dcbw@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 Evan Green <evgreen@google.com>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, linux-soc@vger.kernel.org,
 Siddharth Gupta <sidgup@codeaurora.org>,
 Chaitanya Pratapa <cpratapa@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Generic Software Interface is a layer of the IPA driver that
abstracts the underlying hardware.  The next patch includes the
main code for GSI (including some additional documentation).  This
patch just includes three GSI header files.

  - "gsi.h" is the top-level GSI header file.  This structure is
    is embedded within the IPA structure.  The main abstraction
    implemented by the GSI code is the channel, and this header
    exposes several operations that can be performed on a GSI channel.

  - "gsi_private.h" exposes some definitions that are intended to be
    private, used only by the main GSI code and the GSI transaction
    code (defined in an upcoming patch).

  - Like "ipa_reg.h", "gsi_reg.h" defines the offsets of the 32-bit
    registers used by the GSI layer, along with masks that define the
    position and width of fields less than 32 bits located within
    these registers.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 drivers/net/ipa/gsi.h         | 257 +++++++++++++++++++++
 drivers/net/ipa/gsi_private.h | 118 ++++++++++
 drivers/net/ipa/gsi_reg.h     | 417 ++++++++++++++++++++++++++++++++++
 3 files changed, 792 insertions(+)
 create mode 100644 drivers/net/ipa/gsi.h
 create mode 100644 drivers/net/ipa/gsi_private.h
 create mode 100644 drivers/net/ipa/gsi_reg.h

diff --git a/drivers/net/ipa/gsi.h b/drivers/net/ipa/gsi.h
new file mode 100644
index 000000000000..0698ff1ae7a6
--- /dev/null
+++ b/drivers/net/ipa/gsi.h
@@ -0,0 +1,257 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+/* Copyright (c) 2015-2018, The Linux Foundation. All rights reserved.
+ * Copyright (C) 2018-2020 Linaro Ltd.
+ */
+#ifndef _GSI_H_
+#define _GSI_H_
+
+#include <linux/types.h>
+#include <linux/spinlock.h>
+#include <linux/mutex.h>
+#include <linux/completion.h>
+#include <linux/platform_device.h>
+#include <linux/netdevice.h>
+
+/* Maximum number of channels and event rings supported by the driver */
+#define GSI_CHANNEL_COUNT_MAX	17
+#define GSI_EVT_RING_COUNT_MAX	13
+
+/* Maximum TLV FIFO size for a channel; 64 here is arbitrary (and high) */
+#define GSI_TLV_MAX		64
+
+struct device;
+struct scatterlist;
+struct platform_device;
+
+struct gsi;
+struct gsi_trans;
+struct gsi_channel_data;
+struct ipa_gsi_endpoint_data;
+
+/* Execution environment IDs */
+enum gsi_ee_id {
+	GSI_EE_AP	= 0,
+	GSI_EE_MODEM	= 1,
+	GSI_EE_UC	= 2,
+	GSI_EE_TZ	= 3,
+};
+
+struct gsi_ring {
+	void *virt;			/* ring array base address */
+	dma_addr_t addr;		/* primarily low 32 bits used */
+	u32 count;			/* number of elements in ring */
+
+	/* The ring index value indicates the next "open" entry in the ring.
+	 *
+	 * A channel ring consists of TRE entries filled by the AP and passed
+	 * to the hardware for processing.  For a channel ring, the ring index
+	 * identifies the next unused entry to be filled by the AP.
+	 *
+	 * An event ring consists of event structures filled by the hardware
+	 * and passed to the AP.  For event rings, the ring index identifies
+	 * the next ring entry that is not known to have been filled by the
+	 * hardware.
+	 */
+	u32 index;
+};
+
+/* Transactions use several resources that can be allocated dynamically
+ * but taken from a fixed-size pool.  The number of elements required for
+ * the pool is limited by the total number of TREs that can be outstanding.
+ *
+ * If sufficient TREs are available to reserve for a transaction,
+ * allocation from these pools is guaranteed to succeed.  Furthermore,
+ * these resources are implicitly freed whenever the TREs in the
+ * transaction they're associated with are released.
+ *
+ * The result of a pool allocation of multiple elements is always
+ * contiguous.
+ */
+struct gsi_trans_pool {
+	void *base;			/* base address of element pool */
+	u32 count;			/* # elements in the pool */
+	u32 free;			/* next free element in pool (modulo) */
+	u32 size;			/* size (bytes) of an element */
+	u32 max_alloc;			/* max allocation request */
+	dma_addr_t addr;		/* DMA address if DMA pool (or 0) */
+};
+
+struct gsi_trans_info {
+	atomic_t tre_avail;		/* TREs available for allocation */
+	struct gsi_trans_pool pool;	/* transaction pool */
+	struct gsi_trans_pool sg_pool;	/* scatterlist pool */
+	struct gsi_trans_pool cmd_pool;	/* command payload DMA pool */
+	struct gsi_trans_pool info_pool;/* command information pool */
+	struct gsi_trans **map;		/* TRE -> transaction map */
+
+	spinlock_t spinlock;		/* protects updates to the lists */
+	struct list_head alloc;		/* allocated, not committed */
+	struct list_head pending;	/* committed, awaiting completion */
+	struct list_head complete;	/* completed, awaiting poll */
+	struct list_head polled;	/* returned by gsi_channel_poll_one() */
+};
+
+/* Hardware values signifying the state of a channel */
+enum gsi_channel_state {
+	GSI_CHANNEL_STATE_NOT_ALLOCATED	= 0x0,
+	GSI_CHANNEL_STATE_ALLOCATED	= 0x1,
+	GSI_CHANNEL_STATE_STARTED	= 0x2,
+	GSI_CHANNEL_STATE_STOPPED	= 0x3,
+	GSI_CHANNEL_STATE_STOP_IN_PROC	= 0x4,
+	GSI_CHANNEL_STATE_ERROR		= 0xf,
+};
+
+/* We only care about channels between IPA and AP */
+struct gsi_channel {
+	struct gsi *gsi;
+	bool toward_ipa;
+	bool command;			/* AP command TX channel or not */
+	bool use_prefetch;		/* use prefetch (else escape buf) */
+
+	u8 tlv_count;			/* # entries in TLV FIFO */
+	u16 tre_count;
+	u16 event_count;
+
+	struct completion completion;	/* signals channel state changes */
+	enum gsi_channel_state state;
+
+	struct gsi_ring tre_ring;
+	u32 evt_ring_id;
+
+	u64 byte_count;			/* total # bytes transferred */
+	u64 trans_count;		/* total # transactions */
+	/* The following counts are used only for TX endpoints */
+	u64 queued_byte_count;		/* last reported queued byte count */
+	u64 queued_trans_count;		/* ...and queued trans count */
+	u64 compl_byte_count;		/* last reported completed byte count */
+	u64 compl_trans_count;		/* ...and completed trans count */
+
+	struct gsi_trans_info trans_info;
+
+	struct napi_struct napi;
+};
+
+/* Hardware values signifying the state of an event ring */
+enum gsi_evt_ring_state {
+	GSI_EVT_RING_STATE_NOT_ALLOCATED	= 0x0,
+	GSI_EVT_RING_STATE_ALLOCATED		= 0x1,
+	GSI_EVT_RING_STATE_ERROR		= 0xf,
+};
+
+struct gsi_evt_ring {
+	struct gsi_channel *channel;
+	struct completion completion;	/* signals event ring state changes */
+	enum gsi_evt_ring_state state;
+	struct gsi_ring ring;
+};
+
+struct gsi {
+	struct device *dev;		/* Same as IPA device */
+	struct net_device dummy_dev;	/* needed for NAPI */
+	void __iomem *virt;
+	u32 irq;
+	bool irq_wake_enabled;
+	u32 channel_count;
+	u32 evt_ring_count;
+	struct gsi_channel channel[GSI_CHANNEL_COUNT_MAX];
+	struct gsi_evt_ring evt_ring[GSI_EVT_RING_COUNT_MAX];
+	u32 event_bitmap;
+	u32 event_enable_bitmap;
+	u32 modem_channel_bitmap;
+	struct completion completion;	/* for global EE commands */
+	struct mutex mutex;		/* protects commands, programming */
+};
+
+/**
+ * gsi_setup() - Set up the GSI subsystem
+ * @gsi:	Address of GSI structure embedded in an IPA structure
+ * @db_enable:	Whether to use the GSI doorbell engine
+ *
+ * @Return:	0 if successful, or a negative error code
+ *
+ * Performs initialization that must wait until the GSI hardware is
+ * ready (including firmware loaded).
+ */
+int gsi_setup(struct gsi *gsi, bool db_enable);
+
+/**
+ * gsi_teardown() - Tear down GSI subsystem
+ * @gsi:	GSI address previously passed to a successful gsi_setup() call
+ */
+void gsi_teardown(struct gsi *gsi);
+
+/**
+ * gsi_channel_tre_max() - Channel maximum number of in-flight TREs
+ * @gsi:	GSI pointer
+ * @channel_id:	Channel whose limit is to be returned
+ *
+ * @Return:	 The maximum number of TREs oustanding on the channel
+ */
+u32 gsi_channel_tre_max(struct gsi *gsi, u32 channel_id);
+
+/**
+ * gsi_channel_trans_tre_max() - Maximum TREs in a single transaction
+ * @gsi:	GSI pointer
+ * @channel_id:	Channel whose limit is to be returned
+ *
+ * @Return:	 The maximum TRE count per transaction on the channel
+ */
+u32 gsi_channel_trans_tre_max(struct gsi *gsi, u32 channel_id);
+
+/**
+ * gsi_channel_start() - Start an allocated GSI channel
+ * @gsi:	GSI pointer
+ * @channel_id:	Channel to start
+ *
+ * @Return:	0 if successful, or a negative error code
+ */
+int gsi_channel_start(struct gsi *gsi, u32 channel_id);
+
+/**
+ * gsi_channel_stop() - Stop a started GSI channel
+ * @gsi:	GSI pointer returned by gsi_setup()
+ * @channel_id:	Channel to stop
+ *
+ * @Return:	0 if successful, or a negative error code
+ */
+int gsi_channel_stop(struct gsi *gsi, u32 channel_id);
+
+/**
+ * gsi_channel_reset() - Reset an allocated GSI channel
+ * @gsi:	GSI pointer
+ * @channel_id:	Channel to be reset
+ * @db_enable:	Whether doorbell engine should be enabled
+ *
+ * Reset a channel and reconfigure it.  The @db_enable flag indicates
+ * whether the doorbell engine will be enabled following reconfiguration.
+ *
+ * GSI hardware relinquishes ownership of all pending receive buffer
+ * transactions and they will complete with their cancelled flag set.
+ */
+void gsi_channel_reset(struct gsi *gsi, u32 channel_id, bool db_enable);
+
+int gsi_channel_suspend(struct gsi *gsi, u32 channel_id, bool stop);
+int gsi_channel_resume(struct gsi *gsi, u32 channel_id, bool start);
+
+/**
+ * gsi_init() - Initialize the GSI subsystem
+ * @gsi:	Address of GSI structure embedded in an IPA structure
+ * @pdev:	IPA platform device
+ *
+ * @Return:	0 if successful, or a negative error code
+ *
+ * Early stage initialization of the GSI subsystem, performing tasks
+ * that can be done before the GSI hardware is ready to use.
+ */
+int gsi_init(struct gsi *gsi, struct platform_device *pdev, bool prefetch,
+	     u32 count, const struct ipa_gsi_endpoint_data *data,
+	     bool modem_alloc);
+
+/**
+ * gsi_exit() - Exit the GSI subsystem
+ * @gsi:	GSI address previously passed to a successful gsi_init() call
+ */
+void gsi_exit(struct gsi *gsi);
+
+#endif /* _GSI_H_ */
diff --git a/drivers/net/ipa/gsi_private.h b/drivers/net/ipa/gsi_private.h
new file mode 100644
index 000000000000..b57d0198ebc1
--- /dev/null
+++ b/drivers/net/ipa/gsi_private.h
@@ -0,0 +1,118 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+/* Copyright (c) 2015-2018, The Linux Foundation. All rights reserved.
+ * Copyright (C) 2018-2020 Linaro Ltd.
+ */
+#ifndef _GSI_PRIVATE_H_
+#define _GSI_PRIVATE_H_
+
+/* === Only "gsi.c" and "gsi_trans.c" should include this file === */
+
+#include <linux/types.h>
+
+struct gsi_trans;
+struct gsi_ring;
+struct gsi_channel;
+
+#define GSI_RING_ELEMENT_SIZE	16	/* bytes */
+
+/* Return the entry that follows one provided in a transaction pool */
+void *gsi_trans_pool_next(struct gsi_trans_pool *pool, void *element);
+
+/**
+ * gsi_trans_move_complete() - Mark a GSI transaction completed
+ * @trans:	Transaction to commit
+ */
+void gsi_trans_move_complete(struct gsi_trans *trans);
+
+/**
+ * gsi_trans_move_polled() - Mark a transaction polled
+ * @trans:	Transaction to update
+ */
+void gsi_trans_move_polled(struct gsi_trans *trans);
+
+/**
+ * gsi_trans_complete() - Complete a GSI transaction
+ * @trans:	Transaction to complete
+ *
+ * Marks a transaction complete (including freeing it).
+ */
+void gsi_trans_complete(struct gsi_trans *trans);
+
+/**
+ * gsi_channel_trans_mapped() - Return a transaction mapped to a TRE index
+ * @channel:	Channel associated with the transaction
+ * @index:	Index of the TRE having a transaction
+ *
+ * @Return:	The GSI transaction pointer associated with the TRE index
+ */
+struct gsi_trans *gsi_channel_trans_mapped(struct gsi_channel *channel,
+					   u32 index);
+
+/**
+ * gsi_channel_trans_complete() - Return a channel's next completed transaction
+ * @channel:	Channel whose next transaction is to be returned
+ *
+ * @Return:	The next completed transaction, or NULL if nothing new
+ */
+struct gsi_trans *gsi_channel_trans_complete(struct gsi_channel *channel);
+
+/**
+ * gsi_channel_trans_cancel_pending() - Cancel pending transactions
+ * @channel:	Channel whose pending transactions should be cancelled
+ *
+ * Cancel all pending transactions on a channel.  These are transactions
+ * that have been committed but not yet completed.  This is required when
+ * the channel gets reset.  At that time all pending transactions will be
+ * marked as cancelled.
+ *
+ * NOTE:  Transactions already complete at the time of this call are
+ *	  unaffected.
+ */
+void gsi_channel_trans_cancel_pending(struct gsi_channel *channel);
+
+/**
+ * gsi_channel_trans_init() - Initialize a channel's GSI transaction info
+ * @gsi:	GSI pointer
+ * @channel_id:	Channel number
+ *
+ * @Return:	0 if successful, or -ENOMEM on allocation failure
+ *
+ * Creates and sets up information for managing transactions on a channel
+ */
+int gsi_channel_trans_init(struct gsi *gsi, u32 channel_id);
+
+/**
+ * gsi_channel_trans_exit() - Inverse of gsi_channel_trans_init()
+ * @channel:	Channel whose transaction information is to be cleaned up
+ */
+void gsi_channel_trans_exit(struct gsi_channel *channel);
+
+/**
+ * gsi_channel_doorbell() - Ring a channel's doorbell
+ * @channel:	Channel whose doorbell should be rung
+ *
+ * Rings a channel's doorbell to inform the GSI hardware that new
+ * transactions (TREs, really) are available for it to process.
+ */
+void gsi_channel_doorbell(struct gsi_channel *channel);
+
+/**
+ * gsi_ring_virt() - Return virtual address for a ring entry
+ * @ring:	Ring whose address is to be translated
+ * @addr:	Index (slot number) of entry
+ */
+void *gsi_ring_virt(struct gsi_ring *ring, u32 index);
+
+/**
+ * gsi_channel_tx_queued() - Report the number of bytes queued to hardware
+ * @channel:	Channel whose bytes have been queued
+ *
+ * This arranges for the the number of transactions and bytes for
+ * transfer that have been queued to hardware to be reported.  It
+ * passes this information up the network stack so it can be used to
+ * throttle transmissions.
+ */
+void gsi_channel_tx_queued(struct gsi_channel *channel);
+
+#endif /* _GSI_PRIVATE_H_ */
diff --git a/drivers/net/ipa/gsi_reg.h b/drivers/net/ipa/gsi_reg.h
new file mode 100644
index 000000000000..7613b9cc7cf6
--- /dev/null
+++ b/drivers/net/ipa/gsi_reg.h
@@ -0,0 +1,417 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+/* Copyright (c) 2015-2018, The Linux Foundation. All rights reserved.
+ * Copyright (C) 2018-2020 Linaro Ltd.
+ */
+#ifndef _GSI_REG_H_
+#define _GSI_REG_H_
+
+/* === Only "gsi.c" should include this file === */
+
+#include <linux/bits.h>
+
+/**
+ * DOC: GSI Registers
+ *
+ * GSI registers are located within the "gsi" address space defined by Device
+ * Tree.  The offset of each register within that space is specified by
+ * symbols defined below.  The GSI address space is mapped to virtual memory
+ * space in gsi_init().  All GSI registers are 32 bits wide.
+ *
+ * Each register type is duplicated for a number of instances of something.
+ * For example, each GSI channel has its own set of registers defining its
+ * configuration.  The offset to a channel's set of registers is computed
+ * based on a "base" offset plus an additional "stride" amount computed
+ * from the channel's ID.  For such registers, the offset is computed by a
+ * function-like macro that takes a parameter used in the computation.
+ *
+ * The offset of a register dependent on execution environment is computed
+ * by a macro that is supplied a parameter "ee".  The "ee" value is a member
+ * of the gsi_ee_id enumerated type.
+ *
+ * The offset of a channel register is computed by a macro that is supplied a
+ * parameter "ch".  The "ch" value is a channel id whose maximum value is 30
+ * (though the actual limit is hardware-dependent).
+ *
+ * The offset of an event register is computed by a macro that is supplied a
+ * parameter "ev".  The "ev" value is an event id whose maximum value is 15
+ * (though the actual limit is hardware-dependent).
+ */
+
+#define GSI_INTER_EE_SRC_CH_IRQ_OFFSET \
+			GSI_INTER_EE_N_SRC_CH_IRQ_OFFSET(GSI_EE_AP)
+#define GSI_INTER_EE_N_SRC_CH_IRQ_OFFSET(ee) \
+			(0x0000c018 + 0x1000 * (ee))
+
+#define GSI_INTER_EE_SRC_EV_CH_IRQ_OFFSET \
+			GSI_INTER_EE_N_SRC_EV_CH_IRQ_OFFSET(GSI_EE_AP)
+#define GSI_INTER_EE_N_SRC_EV_CH_IRQ_OFFSET(ee) \
+			(0x0000c01c + 0x1000 * (ee))
+
+#define GSI_INTER_EE_SRC_CH_IRQ_CLR_OFFSET \
+			GSI_INTER_EE_N_SRC_CH_IRQ_CLR_OFFSET(GSI_EE_AP)
+#define GSI_INTER_EE_N_SRC_CH_IRQ_CLR_OFFSET(ee) \
+			(0x0000c028 + 0x1000 * (ee))
+
+#define GSI_INTER_EE_SRC_EV_CH_IRQ_CLR_OFFSET \
+			GSI_INTER_EE_N_SRC_EV_CH_IRQ_CLR_OFFSET(GSI_EE_AP)
+#define GSI_INTER_EE_N_SRC_EV_CH_IRQ_CLR_OFFSET(ee) \
+			(0x0000c02c + 0x1000 * (ee))
+
+#define GSI_CH_C_CNTXT_0_OFFSET(ch) \
+		GSI_EE_N_CH_C_CNTXT_0_OFFSET((ch), GSI_EE_AP)
+#define GSI_EE_N_CH_C_CNTXT_0_OFFSET(ch, ee) \
+		(0x0001c000 + 0x4000 * (ee) + 0x80 * (ch))
+#define CHTYPE_PROTOCOL_FMASK		GENMASK(2, 0)
+#define CHTYPE_DIR_FMASK		GENMASK(3, 3)
+#define EE_FMASK			GENMASK(7, 4)
+#define CHID_FMASK			GENMASK(12, 8)
+/* The next field is present for GSI v2.0 and above */
+#define CHTYPE_PROTOCOL_MSB_FMASK	GENMASK(13, 13)
+#define ERINDEX_FMASK			GENMASK(18, 14)
+#define CHSTATE_FMASK			GENMASK(23, 20)
+#define ELEMENT_SIZE_FMASK		GENMASK(31, 24)
+
+#define GSI_CH_C_CNTXT_1_OFFSET(ch) \
+		GSI_EE_N_CH_C_CNTXT_1_OFFSET((ch), GSI_EE_AP)
+#define GSI_EE_N_CH_C_CNTXT_1_OFFSET(ch, ee) \
+		(0x0001c004 + 0x4000 * (ee) + 0x80 * (ch))
+#define R_LENGTH_FMASK			GENMASK(15, 0)
+
+#define GSI_CH_C_CNTXT_2_OFFSET(ch) \
+		GSI_EE_N_CH_C_CNTXT_2_OFFSET((ch), GSI_EE_AP)
+#define GSI_EE_N_CH_C_CNTXT_2_OFFSET(ch, ee) \
+		(0x0001c008 + 0x4000 * (ee) + 0x80 * (ch))
+
+#define GSI_CH_C_CNTXT_3_OFFSET(ch) \
+		GSI_EE_N_CH_C_CNTXT_3_OFFSET((ch), GSI_EE_AP)
+#define GSI_EE_N_CH_C_CNTXT_3_OFFSET(ch, ee) \
+		(0x0001c00c + 0x4000 * (ee) + 0x80 * (ch))
+
+#define GSI_CH_C_QOS_OFFSET(ch) \
+		GSI_EE_N_CH_C_QOS_OFFSET((ch), GSI_EE_AP)
+#define GSI_EE_N_CH_C_QOS_OFFSET(ch, ee) \
+		(0x0001c05c + 0x4000 * (ee) + 0x80 * (ch))
+#define WRR_WEIGHT_FMASK		GENMASK(3, 0)
+#define MAX_PREFETCH_FMASK		GENMASK(8, 8)
+#define USE_DB_ENG_FMASK		GENMASK(9, 9)
+/* The next field is present for GSI v2.0 and above */
+#define USE_ESCAPE_BUF_ONLY_FMASK	GENMASK(10, 10)
+
+#define GSI_CH_C_SCRATCH_0_OFFSET(ch) \
+		GSI_EE_N_CH_C_SCRATCH_0_OFFSET((ch), GSI_EE_AP)
+#define GSI_EE_N_CH_C_SCRATCH_0_OFFSET(ch, ee) \
+		(0x0001c060 + 0x4000 * (ee) + 0x80 * (ch))
+
+#define GSI_CH_C_SCRATCH_1_OFFSET(ch) \
+		GSI_EE_N_CH_C_SCRATCH_1_OFFSET((ch), GSI_EE_AP)
+#define GSI_EE_N_CH_C_SCRATCH_1_OFFSET(ch, ee) \
+		(0x0001c064 + 0x4000 * (ee) + 0x80 * (ch))
+
+#define GSI_CH_C_SCRATCH_2_OFFSET(ch) \
+		GSI_EE_N_CH_C_SCRATCH_2_OFFSET((ch), GSI_EE_AP)
+#define GSI_EE_N_CH_C_SCRATCH_2_OFFSET(ch, ee) \
+		(0x0001c068 + 0x4000 * (ee) + 0x80 * (ch))
+
+#define GSI_CH_C_SCRATCH_3_OFFSET(ch) \
+		GSI_EE_N_CH_C_SCRATCH_3_OFFSET((ch), GSI_EE_AP)
+#define GSI_EE_N_CH_C_SCRATCH_3_OFFSET(ch, ee) \
+		(0x0001c06c + 0x4000 * (ee) + 0x80 * (ch))
+
+#define GSI_EV_CH_E_CNTXT_0_OFFSET(ev) \
+		GSI_EE_N_EV_CH_E_CNTXT_0_OFFSET((ev), GSI_EE_AP)
+#define GSI_EE_N_EV_CH_E_CNTXT_0_OFFSET(ev, ee) \
+		(0x0001d000 + 0x4000 * (ee) + 0x80 * (ev))
+#define EV_CHTYPE_FMASK			GENMASK(3, 0)
+#define EV_EE_FMASK			GENMASK(7, 4)
+#define EV_EVCHID_FMASK			GENMASK(15, 8)
+#define EV_INTYPE_FMASK			GENMASK(16, 16)
+#define EV_CHSTATE_FMASK		GENMASK(23, 20)
+#define EV_ELEMENT_SIZE_FMASK		GENMASK(31, 24)
+
+#define GSI_EV_CH_E_CNTXT_1_OFFSET(ev) \
+		GSI_EE_N_EV_CH_E_CNTXT_1_OFFSET((ev), GSI_EE_AP)
+#define GSI_EE_N_EV_CH_E_CNTXT_1_OFFSET(ev, ee) \
+		(0x0001d004 + 0x4000 * (ee) + 0x80 * (ev))
+#define EV_R_LENGTH_FMASK		GENMASK(15, 0)
+
+#define GSI_EV_CH_E_CNTXT_2_OFFSET(ev) \
+		GSI_EE_N_EV_CH_E_CNTXT_2_OFFSET((ev), GSI_EE_AP)
+#define GSI_EE_N_EV_CH_E_CNTXT_2_OFFSET(ev, ee) \
+		(0x0001d008 + 0x4000 * (ee) + 0x80 * (ev))
+
+#define GSI_EV_CH_E_CNTXT_3_OFFSET(ev) \
+		GSI_EE_N_EV_CH_E_CNTXT_3_OFFSET((ev), GSI_EE_AP)
+#define GSI_EE_N_EV_CH_E_CNTXT_3_OFFSET(ev, ee) \
+		(0x0001d00c + 0x4000 * (ee) + 0x80 * (ev))
+
+#define GSI_EV_CH_E_CNTXT_4_OFFSET(ev) \
+		GSI_EE_N_EV_CH_E_CNTXT_4_OFFSET((ev), GSI_EE_AP)
+#define GSI_EE_N_EV_CH_E_CNTXT_4_OFFSET(ev, ee) \
+		(0x0001d010 + 0x4000 * (ee) + 0x80 * (ev))
+
+#define GSI_EV_CH_E_CNTXT_8_OFFSET(ev) \
+		GSI_EE_N_EV_CH_E_CNTXT_8_OFFSET((ev), GSI_EE_AP)
+#define GSI_EE_N_EV_CH_E_CNTXT_8_OFFSET(ev, ee) \
+		(0x0001d020 + 0x4000 * (ee) + 0x80 * (ev))
+#define MODT_FMASK			GENMASK(15, 0)
+#define MODC_FMASK			GENMASK(23, 16)
+#define MOD_CNT_FMASK			GENMASK(31, 24)
+
+#define GSI_EV_CH_E_CNTXT_9_OFFSET(ev) \
+		GSI_EE_N_EV_CH_E_CNTXT_9_OFFSET((ev), GSI_EE_AP)
+#define GSI_EE_N_EV_CH_E_CNTXT_9_OFFSET(ev, ee) \
+		(0x0001d024 + 0x4000 * (ee) + 0x80 * (ev))
+
+#define GSI_EV_CH_E_CNTXT_10_OFFSET(ev) \
+		GSI_EE_N_EV_CH_E_CNTXT_10_OFFSET((ev), GSI_EE_AP)
+#define GSI_EE_N_EV_CH_E_CNTXT_10_OFFSET(ev, ee) \
+		(0x0001d028 + 0x4000 * (ee) + 0x80 * (ev))
+
+#define GSI_EV_CH_E_CNTXT_11_OFFSET(ev) \
+		GSI_EE_N_EV_CH_E_CNTXT_11_OFFSET((ev), GSI_EE_AP)
+#define GSI_EE_N_EV_CH_E_CNTXT_11_OFFSET(ev, ee) \
+		(0x0001d02c + 0x4000 * (ee) + 0x80 * (ev))
+
+#define GSI_EV_CH_E_CNTXT_12_OFFSET(ev) \
+		GSI_EE_N_EV_CH_E_CNTXT_12_OFFSET((ev), GSI_EE_AP)
+#define GSI_EE_N_EV_CH_E_CNTXT_12_OFFSET(ev, ee) \
+		(0x0001d030 + 0x4000 * (ee) + 0x80 * (ev))
+
+#define GSI_EV_CH_E_CNTXT_13_OFFSET(ev) \
+		GSI_EE_N_EV_CH_E_CNTXT_13_OFFSET((ev), GSI_EE_AP)
+#define GSI_EE_N_EV_CH_E_CNTXT_13_OFFSET(ev, ee) \
+		(0x0001d034 + 0x4000 * (ee) + 0x80 * (ev))
+
+#define GSI_EV_CH_E_SCRATCH_0_OFFSET(ev) \
+		GSI_EE_N_EV_CH_E_SCRATCH_0_OFFSET((ev), GSI_EE_AP)
+#define GSI_EE_N_EV_CH_E_SCRATCH_0_OFFSET(ev, ee) \
+		(0x0001d048 + 0x4000 * (ee) + 0x80 * (ev))
+
+#define GSI_EV_CH_E_SCRATCH_1_OFFSET(ev) \
+		GSI_EE_N_EV_CH_E_SCRATCH_1_OFFSET((ev), GSI_EE_AP)
+#define GSI_EE_N_EV_CH_E_SCRATCH_1_OFFSET(ev, ee) \
+		(0x0001d04c + 0x4000 * (ee) + 0x80 * (ev))
+
+#define GSI_CH_C_DOORBELL_0_OFFSET(ch) \
+		GSI_EE_N_CH_C_DOORBELL_0_OFFSET((ch), GSI_EE_AP)
+#define GSI_EE_N_CH_C_DOORBELL_0_OFFSET(ch, ee) \
+			(0x0001e000 + 0x4000 * (ee) + 0x08 * (ch))
+
+#define GSI_EV_CH_E_DOORBELL_0_OFFSET(ev) \
+			GSI_EE_N_EV_CH_E_DOORBELL_0_OFFSET((ev), GSI_EE_AP)
+#define GSI_EE_N_EV_CH_E_DOORBELL_0_OFFSET(ev, ee) \
+			(0x0001e100 + 0x4000 * (ee) + 0x08 * (ev))
+
+#define GSI_GSI_STATUS_OFFSET \
+			GSI_EE_N_GSI_STATUS_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_GSI_STATUS_OFFSET(ee) \
+			(0x0001f000 + 0x4000 * (ee))
+#define ENABLED_FMASK			GENMASK(0, 0)
+
+#define GSI_CH_CMD_OFFSET \
+			GSI_EE_N_CH_CMD_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_CH_CMD_OFFSET(ee) \
+			(0x0001f008 + 0x4000 * (ee))
+#define CH_CHID_FMASK			GENMASK(7, 0)
+#define CH_OPCODE_FMASK			GENMASK(31, 24)
+
+#define GSI_EV_CH_CMD_OFFSET \
+			GSI_EE_N_EV_CH_CMD_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_EV_CH_CMD_OFFSET(ee) \
+			(0x0001f010 + 0x4000 * (ee))
+#define EV_CHID_FMASK			GENMASK(7, 0)
+#define EV_OPCODE_FMASK			GENMASK(31, 24)
+
+#define GSI_GENERIC_CMD_OFFSET \
+			GSI_EE_N_GENERIC_CMD_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_GENERIC_CMD_OFFSET(ee) \
+			(0x0001f018 + 0x4000 * (ee))
+#define GENERIC_OPCODE_FMASK		GENMASK(4, 0)
+#define GENERIC_CHID_FMASK		GENMASK(9, 5)
+#define GENERIC_EE_FMASK		GENMASK(13, 10)
+
+#define GSI_GSI_HW_PARAM_2_OFFSET \
+			GSI_EE_N_GSI_HW_PARAM_2_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_GSI_HW_PARAM_2_OFFSET(ee) \
+			(0x0001f040 + 0x4000 * (ee))
+#define IRAM_SIZE_FMASK			GENMASK(2, 0)
+#define IRAM_SIZE_ONE_KB_FVAL			0
+#define IRAM_SIZE_TWO_KB_FVAL			1
+/* The next two values are available for GSI v2.0 and above */
+#define IRAM_SIZE_TWO_N_HALF_KB_FVAL		2
+#define IRAM_SIZE_THREE_KB_FVAL			3
+#define NUM_CH_PER_EE_FMASK		GENMASK(7, 3)
+#define NUM_EV_PER_EE_FMASK		GENMASK(12, 8)
+#define GSI_CH_PEND_TRANSLATE_FMASK	GENMASK(13, 13)
+#define GSI_CH_FULL_LOGIC_FMASK		GENMASK(14, 14)
+/* Fields below are present for GSI v2.0 and above */
+#define GSI_USE_SDMA_FMASK		GENMASK(15, 15)
+#define GSI_SDMA_N_INT_FMASK		GENMASK(18, 16)
+#define GSI_SDMA_MAX_BURST_FMASK	GENMASK(26, 19)
+#define GSI_SDMA_N_IOVEC_FMASK		GENMASK(29, 27)
+/* Fields below are present for GSI v2.2 and above */
+#define GSI_USE_RD_WR_ENG_FMASK		GENMASK(30, 30)
+#define GSI_USE_INTER_EE_FMASK		GENMASK(31, 31)
+
+#define GSI_CNTXT_TYPE_IRQ_OFFSET \
+			GSI_EE_N_CNTXT_TYPE_IRQ_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_CNTXT_TYPE_IRQ_OFFSET(ee) \
+			(0x0001f080 + 0x4000 * (ee))
+#define CH_CTRL_FMASK			GENMASK(0, 0)
+#define EV_CTRL_FMASK			GENMASK(1, 1)
+#define GLOB_EE_FMASK			GENMASK(2, 2)
+#define IEOB_FMASK			GENMASK(3, 3)
+#define INTER_EE_CH_CTRL_FMASK		GENMASK(4, 4)
+#define INTER_EE_EV_CTRL_FMASK		GENMASK(5, 5)
+#define GENERAL_FMASK			GENMASK(6, 6)
+
+#define GSI_CNTXT_TYPE_IRQ_MSK_OFFSET \
+			GSI_EE_N_CNTXT_TYPE_IRQ_MSK_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_CNTXT_TYPE_IRQ_MSK_OFFSET(ee) \
+			(0x0001f088 + 0x4000 * (ee))
+#define MSK_CH_CTRL_FMASK		GENMASK(0, 0)
+#define MSK_EV_CTRL_FMASK		GENMASK(1, 1)
+#define MSK_GLOB_EE_FMASK		GENMASK(2, 2)
+#define MSK_IEOB_FMASK			GENMASK(3, 3)
+#define MSK_INTER_EE_CH_CTRL_FMASK	GENMASK(4, 4)
+#define MSK_INTER_EE_EV_CTRL_FMASK	GENMASK(5, 5)
+#define MSK_GENERAL_FMASK		GENMASK(6, 6)
+#define GSI_CNTXT_TYPE_IRQ_MSK_ALL	GENMASK(6, 0)
+
+#define GSI_CNTXT_SRC_CH_IRQ_OFFSET \
+			GSI_EE_N_CNTXT_SRC_CH_IRQ_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_CNTXT_SRC_CH_IRQ_OFFSET(ee) \
+			(0x0001f090 + 0x4000 * (ee))
+
+#define GSI_CNTXT_SRC_EV_CH_IRQ_OFFSET \
+			GSI_EE_N_CNTXT_SRC_EV_CH_IRQ_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_CNTXT_SRC_EV_CH_IRQ_OFFSET(ee) \
+			(0x0001f094 + 0x4000 * (ee))
+
+#define GSI_CNTXT_SRC_CH_IRQ_MSK_OFFSET \
+			GSI_EE_N_CNTXT_SRC_CH_IRQ_MSK_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_CNTXT_SRC_CH_IRQ_MSK_OFFSET(ee) \
+			(0x0001f098 + 0x4000 * (ee))
+
+#define GSI_CNTXT_SRC_EV_CH_IRQ_MSK_OFFSET \
+			GSI_EE_N_CNTXT_SRC_EV_CH_IRQ_MSK_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_CNTXT_SRC_EV_CH_IRQ_MSK_OFFSET(ee) \
+			(0x0001f09c + 0x4000 * (ee))
+
+#define GSI_CNTXT_SRC_CH_IRQ_CLR_OFFSET \
+			GSI_EE_N_CNTXT_SRC_CH_IRQ_CLR_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_CNTXT_SRC_CH_IRQ_CLR_OFFSET(ee) \
+			(0x0001f0a0 + 0x4000 * (ee))
+
+#define GSI_CNTXT_SRC_EV_CH_IRQ_CLR_OFFSET \
+			GSI_EE_N_CNTXT_SRC_EV_CH_IRQ_CLR_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_CNTXT_SRC_EV_CH_IRQ_CLR_OFFSET(ee) \
+			(0x0001f0a4 + 0x4000 * (ee))
+
+#define GSI_CNTXT_SRC_IEOB_IRQ_OFFSET \
+			GSI_EE_N_CNTXT_SRC_IEOB_IRQ_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_CNTXT_SRC_IEOB_IRQ_OFFSET(ee) \
+			(0x0001f0b0 + 0x4000 * (ee))
+
+#define GSI_CNTXT_SRC_IEOB_IRQ_MSK_OFFSET \
+			GSI_EE_N_CNTXT_SRC_IEOB_IRQ_MSK_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_CNTXT_SRC_IEOB_IRQ_MSK_OFFSET(ee) \
+			(0x0001f0b8 + 0x4000 * (ee))
+
+#define GSI_CNTXT_SRC_IEOB_IRQ_CLR_OFFSET \
+			GSI_EE_N_CNTXT_SRC_IEOB_IRQ_CLR_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_CNTXT_SRC_IEOB_IRQ_CLR_OFFSET(ee) \
+			(0x0001f0c0 + 0x4000 * (ee))
+
+#define GSI_CNTXT_GLOB_IRQ_STTS_OFFSET \
+			GSI_EE_N_CNTXT_GLOB_IRQ_STTS_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_CNTXT_GLOB_IRQ_STTS_OFFSET(ee) \
+			(0x0001f100 + 0x4000 * (ee))
+#define ERROR_INT_FMASK			GENMASK(0, 0)
+#define GP_INT1_FMASK			GENMASK(1, 1)
+#define GP_INT2_FMASK			GENMASK(2, 2)
+#define GP_INT3_FMASK			GENMASK(3, 3)
+
+#define GSI_CNTXT_GLOB_IRQ_EN_OFFSET \
+			GSI_EE_N_CNTXT_GLOB_IRQ_EN_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_CNTXT_GLOB_IRQ_EN_OFFSET(ee) \
+			(0x0001f108 + 0x4000 * (ee))
+#define EN_ERROR_INT_FMASK		GENMASK(0, 0)
+#define EN_GP_INT1_FMASK		GENMASK(1, 1)
+#define EN_GP_INT2_FMASK		GENMASK(2, 2)
+#define EN_GP_INT3_FMASK		GENMASK(3, 3)
+#define GSI_CNTXT_GLOB_IRQ_ALL		GENMASK(3, 0)
+
+#define GSI_CNTXT_GLOB_IRQ_CLR_OFFSET \
+			GSI_EE_N_CNTXT_GLOB_IRQ_CLR_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_CNTXT_GLOB_IRQ_CLR_OFFSET(ee) \
+			(0x0001f110 + 0x4000 * (ee))
+#define CLR_ERROR_INT_FMASK		GENMASK(0, 0)
+#define CLR_GP_INT1_FMASK		GENMASK(1, 1)
+#define CLR_GP_INT2_FMASK		GENMASK(2, 2)
+#define CLR_GP_INT3_FMASK		GENMASK(3, 3)
+
+#define GSI_CNTXT_GSI_IRQ_STTS_OFFSET \
+			GSI_EE_N_CNTXT_GSI_IRQ_STTS_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_CNTXT_GSI_IRQ_STTS_OFFSET(ee) \
+			(0x0001f118 + 0x4000 * (ee))
+#define BREAK_POINT_FMASK		GENMASK(0, 0)
+#define BUS_ERROR_FMASK			GENMASK(1, 1)
+#define CMD_FIFO_OVRFLOW_FMASK		GENMASK(2, 2)
+#define MCS_STACK_OVRFLOW_FMASK		GENMASK(3, 3)
+
+#define GSI_CNTXT_GSI_IRQ_EN_OFFSET \
+			GSI_EE_N_CNTXT_GSI_IRQ_EN_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_CNTXT_GSI_IRQ_EN_OFFSET(ee) \
+			(0x0001f120 + 0x4000 * (ee))
+#define EN_BREAK_POINT_FMASK		GENMASK(0, 0)
+#define EN_BUS_ERROR_FMASK		GENMASK(1, 1)
+#define EN_CMD_FIFO_OVRFLOW_FMASK	GENMASK(2, 2)
+#define EN_MCS_STACK_OVRFLOW_FMASK	GENMASK(3, 3)
+#define GSI_CNTXT_GSI_IRQ_ALL		GENMASK(3, 0)
+
+#define GSI_CNTXT_GSI_IRQ_CLR_OFFSET \
+			GSI_EE_N_CNTXT_GSI_IRQ_CLR_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_CNTXT_GSI_IRQ_CLR_OFFSET(ee) \
+			(0x0001f128 + 0x4000 * (ee))
+#define CLR_BREAK_POINT_FMASK		GENMASK(0, 0)
+#define CLR_BUS_ERROR_FMASK		GENMASK(1, 1)
+#define CLR_CMD_FIFO_OVRFLOW_FMASK	GENMASK(2, 2)
+#define CLR_MCS_STACK_OVRFLOW_FMASK	GENMASK(3, 3)
+
+#define GSI_CNTXT_INTSET_OFFSET \
+			GSI_EE_N_CNTXT_INTSET_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_CNTXT_INTSET_OFFSET(ee) \
+			(0x0001f180 + 0x4000 * (ee))
+#define INTYPE_FMASK			GENMASK(0, 0)
+
+#define GSI_ERROR_LOG_OFFSET \
+			GSI_EE_N_ERROR_LOG_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_ERROR_LOG_OFFSET(ee) \
+			(0x0001f200 + 0x4000 * (ee))
+#define ERR_ARG3_FMASK			GENMASK(3, 0)
+#define ERR_ARG2_FMASK			GENMASK(7, 4)
+#define ERR_ARG1_FMASK			GENMASK(11, 8)
+#define ERR_CODE_FMASK			GENMASK(15, 12)
+#define ERR_VIRT_IDX_FMASK		GENMASK(23, 19)
+#define ERR_TYPE_FMASK			GENMASK(27, 24)
+#define ERR_EE_FMASK			GENMASK(31, 28)
+
+#define GSI_ERROR_LOG_CLR_OFFSET \
+			GSI_EE_N_ERROR_LOG_CLR_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_ERROR_LOG_CLR_OFFSET(ee) \
+			(0x0001f210 + 0x4000 * (ee))
+
+#define GSI_CNTXT_SCRATCH_0_OFFSET \
+			GSI_EE_N_CNTXT_SCRATCH_0_OFFSET(GSI_EE_AP)
+#define GSI_EE_N_CNTXT_SCRATCH_0_OFFSET(ee) \
+			(0x0001f400 + 0x4000 * (ee))
+#define INTER_EE_RESULT_FMASK		GENMASK(2, 0)
+#define GENERIC_EE_RESULT_FMASK		GENMASK(7, 5)
+#define GENERIC_EE_SUCCESS_FVAL			1
+#define GENERIC_EE_NO_RESOURCES_FVAL		7
+#define USB_MAX_PACKET_FMASK		GENMASK(15, 15)	/* 0: HS; 1: SS */
+#define MHI_BASE_CHANNEL_FMASK		GENMASK(31, 24)
+
+#endif	/* _GSI_REG_H_ */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
