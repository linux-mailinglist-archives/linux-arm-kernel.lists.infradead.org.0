Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E44E17427B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 23:48:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xafw4E3D6J2LX9XUyG/yTe5DJhk4x9h+siGge1Z66ws=; b=leMvpt8AS+ZSzB
	kXsDqdyIRg+j4qEw+PU/1yaNZVSfphys1s6EOpowhYj8RFbSiWt2bWhkphWbR1bxgpTMb4tXrAh4z
	AWq5zqHw/iUxRIlWfUhZnZKJu0wmAdT1xqO8DhHoAKePQ+fX2x0mT2fv66jKEzS3m/Dmr3UvGNefi
	2ACL/tI3JZjDOLHWJ73Gsw9cj159zAwSC9egnahHJcoBXWvqiZwuaeT4mumq5WzrHsF1zdiCdyF6R
	ZmugKMGH8XaoB8yFSFQfHg9FmtPDJ/8gh81splAs1s1rRAwDNwR5D81KbfLVAlV+1VZnWrDShsL7S
	c3x7GddVwPGm6FwHkNfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7oQJ-0000dS-QU; Fri, 28 Feb 2020 22:47:59 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7oL8-0003wn-Md
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 22:42:56 +0000
Received: by mail-yw1-xc44.google.com with SMTP id o186so666009ywc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 14:42:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1FjiyB2UR7IJCTV4hdav4BRXYVXWGABQs9i9JOUx400=;
 b=ETaWSSrPrWgTnfT3fl2uhvUAy3w9OudX93kaTsPeJvgLvR2s0BVz04AJeRFwLod+/M
 5ldc8Bu0ncFjnNFDpgVqeYWIZrVNFoB36y6LYhykxlgTbTA8aORkvVSSKtjfC03tm2R3
 PnT9rJdYE+rybV9AZXtEaGzn0Ypdhc+/gTdE2fb/tMm8tmFD+gH+5fPd9mJvELIaBj6v
 ktG0Ocp1PP+1HF1GOVaGVz/yBZ2yM6BpWb/EXgiI5lbm9PGiC6abWQhkwneIEBVcluYZ
 cDqKwxqq83qOlUR+bZgZpsLvYq24c8I713+eYcu8tYaGxmS6jR9qKm90ntKKsjgzvAx9
 euaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1FjiyB2UR7IJCTV4hdav4BRXYVXWGABQs9i9JOUx400=;
 b=ev8EWcKIM4aGmz0Fmp2T1+fSshsyoEpSeoig4+KYL4Hik0XRyUd12RXxfcO5xixNcl
 ePbQjjkH/LG1mOUZLW40uOJgSdETWPS9SqsCUQNQj0zoRgyZ9H7K+FM6cf/i2CPgKk7b
 JT7wMsQ9IRv7Ln4UkY1GSmF5MapQWnUeQxfm3Oian8S5YjAEshWh3iyGWmcTJncpB+J7
 Q1TltOH8PI0tgBs2euYOTVZbKfYJ+C2aBcaksDUGQ2o5v3PWMnaOehj+UMTzUbhY7R9h
 imOY3AKuj+WAiJ3ww7sF0SmSJe/kQzYMRsqGIv+iFNbTeBC8FWTSHJgZ6pBG2GjaJ/gK
 TabQ==
X-Gm-Message-State: APjAAAX2LU2SfZJo7vq/hf1DACmN/lv60pHSyNT1Zwh34v4U7DwW0/6Y
 JGRlbd0rD5KSpWB0UQtXOPBCWg==
X-Google-Smtp-Source: APXvYqxce0PWb19HHSo2U6WSdUjpvkWrkbmV5AlarN1qHJeBrbI24L4I8hRRWxGC/lhO93YG3JJ5Hw==
X-Received: by 2002:a25:becd:: with SMTP id k13mr5777808ybm.220.1582929757504; 
 Fri, 28 Feb 2020 14:42:37 -0800 (PST)
Received: from localhost.localdomain (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.gmail.com with ESMTPSA id d188sm4637830ywe.50.2020.02.28.14.42.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 14:42:36 -0800 (PST)
From: Alex Elder <elder@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>,
	David Miller <davem@davemloft.net>
Subject: [PATCH 13/17] soc: qcom: ipa: modem and microcontroller
Date: Fri, 28 Feb 2020 16:42:00 -0600
Message-Id: <20200228224204.17746-14-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228224204.17746-1-elder@linaro.org>
References: <20200228224204.17746-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_144238_828743_8FB42EFB 
X-CRM114-Status: GOOD (  24.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
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

This patch includes code implementing the modem functionality.
There are several communication paths between the AP and modem,
separate from the main data path provided by IPA.  SMP2P provides
primitive messaging and interrupt capability, and QMI allows more
complex out-of-band messaging to occur between entities on the AP
and modem.  (SMP2P and QMI support are added by the next patch.)
Management of these (plus the network device implementing the data
path) is done by code within "ipa_modem.c".

Sort of unrelated, this patch also includes the code supporting the
microcontroller CPU present on the IPA.  The microcontroller can be
used to implement special handling of packets, but at this time we
don't support that.  Still, it is a component that needs to be
initialized, and in the event of a crash we need to do some
synchronization between the AP and the microcontroller.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 drivers/net/ipa/ipa_modem.c | 383 ++++++++++++++++++++++++++++++++++++
 drivers/net/ipa/ipa_modem.h |  31 +++
 drivers/net/ipa/ipa_uc.c    | 211 ++++++++++++++++++++
 drivers/net/ipa/ipa_uc.h    |  32 +++
 4 files changed, 657 insertions(+)
 create mode 100644 drivers/net/ipa/ipa_modem.c
 create mode 100644 drivers/net/ipa/ipa_modem.h
 create mode 100644 drivers/net/ipa/ipa_uc.c
 create mode 100644 drivers/net/ipa/ipa_uc.h

diff --git a/drivers/net/ipa/ipa_modem.c b/drivers/net/ipa/ipa_modem.c
new file mode 100644
index 000000000000..039afc8c608e
--- /dev/null
+++ b/drivers/net/ipa/ipa_modem.c
@@ -0,0 +1,383 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/* Copyright (c) 2014-2018, The Linux Foundation. All rights reserved.
+ * Copyright (C) 2018-2020 Linaro Ltd.
+ */
+
+#include <linux/errno.h>
+#include <linux/if_arp.h>
+#include <linux/netdevice.h>
+#include <linux/skbuff.h>
+#include <linux/if_rmnet.h>
+#include <linux/remoteproc/qcom_q6v5_ipa_notify.h>
+
+#include "ipa.h"
+#include "ipa_data.h"
+#include "ipa_endpoint.h"
+#include "ipa_table.h"
+#include "ipa_mem.h"
+#include "ipa_modem.h"
+#include "ipa_smp2p.h"
+#include "ipa_qmi.h"
+
+#define IPA_NETDEV_NAME		"rmnet_ipa%d"
+#define IPA_NETDEV_TAILROOM	0	/* for padding by mux layer */
+#define IPA_NETDEV_TIMEOUT	10	/* seconds */
+
+enum ipa_modem_state {
+	IPA_MODEM_STATE_STOPPED	= 0,
+	IPA_MODEM_STATE_STARTING,
+	IPA_MODEM_STATE_RUNNING,
+	IPA_MODEM_STATE_STOPPING,
+};
+
+/** struct ipa_priv - IPA network device private data */
+struct ipa_priv {
+	struct ipa *ipa;
+};
+
+/** ipa_open() - Opens the modem network interface */
+static int ipa_open(struct net_device *netdev)
+{
+	struct ipa_priv *priv = netdev_priv(netdev);
+	struct ipa *ipa = priv->ipa;
+	int ret;
+
+	ret = ipa_endpoint_enable_one(ipa->name_map[IPA_ENDPOINT_AP_MODEM_TX]);
+	if (ret)
+		return ret;
+	ret = ipa_endpoint_enable_one(ipa->name_map[IPA_ENDPOINT_AP_MODEM_RX]);
+	if (ret)
+		goto err_disable_tx;
+
+	netif_start_queue(netdev);
+
+	return 0;
+
+err_disable_tx:
+	ipa_endpoint_disable_one(ipa->name_map[IPA_ENDPOINT_AP_MODEM_TX]);
+
+	return ret;
+}
+
+/** ipa_stop() - Stops the modem network interface. */
+static int ipa_stop(struct net_device *netdev)
+{
+	struct ipa_priv *priv = netdev_priv(netdev);
+	struct ipa *ipa = priv->ipa;
+
+	netif_stop_queue(netdev);
+
+	ipa_endpoint_disable_one(ipa->name_map[IPA_ENDPOINT_AP_MODEM_RX]);
+	ipa_endpoint_disable_one(ipa->name_map[IPA_ENDPOINT_AP_MODEM_TX]);
+
+	return 0;
+}
+
+/** ipa_start_xmit() - Transmits an skb.
+ * @skb: skb to be transmitted
+ * @dev: network device
+ *
+ * Return codes:
+ * NETDEV_TX_OK: Success
+ * NETDEV_TX_BUSY: Error while transmitting the skb. Try again later
+ */
+static int ipa_start_xmit(struct sk_buff *skb, struct net_device *netdev)
+{
+	struct net_device_stats *stats = &netdev->stats;
+	struct ipa_priv *priv = netdev_priv(netdev);
+	struct ipa_endpoint *endpoint;
+	struct ipa *ipa = priv->ipa;
+	u32 skb_len = skb->len;
+	int ret;
+
+	if (!skb_len)
+		goto err_drop_skb;
+
+	endpoint = ipa->name_map[IPA_ENDPOINT_AP_MODEM_TX];
+	if (endpoint->data->qmap && skb->protocol != htons(ETH_P_MAP))
+		goto err_drop_skb;
+
+	ret = ipa_endpoint_skb_tx(endpoint, skb);
+	if (ret) {
+		if (ret != -E2BIG)
+			return NETDEV_TX_BUSY;
+		goto err_drop_skb;
+	}
+
+	stats->tx_packets++;
+	stats->tx_bytes += skb_len;
+
+	return NETDEV_TX_OK;
+
+err_drop_skb:
+	dev_kfree_skb_any(skb);
+	stats->tx_dropped++;
+
+	return NETDEV_TX_OK;
+}
+
+void ipa_modem_skb_rx(struct net_device *netdev, struct sk_buff *skb)
+{
+	struct net_device_stats *stats = &netdev->stats;
+
+	if (skb) {
+		skb->dev = netdev;
+		skb->protocol = htons(ETH_P_MAP);
+		stats->rx_packets++;
+		stats->rx_bytes += skb->len;
+
+		(void)netif_receive_skb(skb);
+	} else {
+		stats->rx_dropped++;
+	}
+}
+
+static const struct net_device_ops ipa_modem_ops = {
+	.ndo_open	= ipa_open,
+	.ndo_stop	= ipa_stop,
+	.ndo_start_xmit	= ipa_start_xmit,
+};
+
+/** ipa_modem_netdev_setup() - netdev setup function for the modem */
+static void ipa_modem_netdev_setup(struct net_device *netdev)
+{
+	netdev->netdev_ops = &ipa_modem_ops;
+	ether_setup(netdev);
+	/* No header ops (override value set by ether_setup()) */
+	netdev->header_ops = NULL;
+	netdev->type = ARPHRD_RAWIP;
+	netdev->hard_header_len = 0;
+	netdev->max_mtu = IPA_MTU;
+	netdev->mtu = netdev->max_mtu;
+	netdev->addr_len = 0;
+	netdev->flags &= ~(IFF_BROADCAST | IFF_MULTICAST);
+	/* The endpoint is configured for QMAP */
+	netdev->needed_headroom = sizeof(struct rmnet_map_header);
+	netdev->needed_tailroom = IPA_NETDEV_TAILROOM;
+	netdev->watchdog_timeo = IPA_NETDEV_TIMEOUT * HZ;
+	netdev->hw_features = NETIF_F_SG;
+}
+
+/** ipa_modem_suspend() - suspend callback
+ * @netdev:	Network device
+ *
+ * Suspend the modem's endpoints.
+ */
+void ipa_modem_suspend(struct net_device *netdev)
+{
+	struct ipa_priv *priv = netdev_priv(netdev);
+	struct ipa *ipa = priv->ipa;
+
+	netif_stop_queue(netdev);
+
+	ipa_endpoint_suspend_one(ipa->name_map[IPA_ENDPOINT_AP_MODEM_RX]);
+	ipa_endpoint_suspend_one(ipa->name_map[IPA_ENDPOINT_AP_MODEM_TX]);
+}
+
+/** ipa_modem_resume() - resume callback for runtime_pm
+ * @dev: pointer to device
+ *
+ * Resume the modem's endpoints.
+ */
+void ipa_modem_resume(struct net_device *netdev)
+{
+	struct ipa_priv *priv = netdev_priv(netdev);
+	struct ipa *ipa = priv->ipa;
+
+	ipa_endpoint_resume_one(ipa->name_map[IPA_ENDPOINT_AP_MODEM_TX]);
+	ipa_endpoint_resume_one(ipa->name_map[IPA_ENDPOINT_AP_MODEM_RX]);
+
+	netif_wake_queue(netdev);
+}
+
+int ipa_modem_start(struct ipa *ipa)
+{
+	enum ipa_modem_state state;
+	struct net_device *netdev;
+	struct ipa_priv *priv;
+	int ret;
+
+	/* Only attempt to start the modem if it's stopped */
+	state = atomic_cmpxchg(&ipa->modem_state, IPA_MODEM_STATE_STOPPED,
+			       IPA_MODEM_STATE_STARTING);
+
+	/* Silently ignore attempts when running, or when changing state */
+	if (state != IPA_MODEM_STATE_STOPPED)
+		return 0;
+
+	netdev = alloc_netdev(sizeof(struct ipa_priv), IPA_NETDEV_NAME,
+			      NET_NAME_UNKNOWN, ipa_modem_netdev_setup);
+	if (!netdev) {
+		ret = -ENOMEM;
+		goto out_set_state;
+	}
+
+	ipa->name_map[IPA_ENDPOINT_AP_MODEM_TX]->netdev = netdev;
+	ipa->name_map[IPA_ENDPOINT_AP_MODEM_RX]->netdev = netdev;
+
+	priv = netdev_priv(netdev);
+	priv->ipa = ipa;
+
+	ret = register_netdev(netdev);
+	if (ret)
+		free_netdev(netdev);
+	else
+		ipa->modem_netdev = netdev;
+
+out_set_state:
+	if (ret)
+		atomic_set(&ipa->modem_state, IPA_MODEM_STATE_STOPPED);
+	else
+		atomic_set(&ipa->modem_state, IPA_MODEM_STATE_RUNNING);
+	smp_mb__after_atomic();
+
+	return ret;
+}
+
+int ipa_modem_stop(struct ipa *ipa)
+{
+	struct net_device *netdev = ipa->modem_netdev;
+	enum ipa_modem_state state;
+	int ret;
+
+	/* Only attempt to stop the modem if it's running */
+	state = atomic_cmpxchg(&ipa->modem_state, IPA_MODEM_STATE_RUNNING,
+			       IPA_MODEM_STATE_STOPPING);
+
+	/* Silently ignore attempts when already stopped */
+	if (state == IPA_MODEM_STATE_STOPPED)
+		return 0;
+
+	/* If we're somewhere between stopped and starting, we're busy */
+	if (state != IPA_MODEM_STATE_RUNNING)
+		return -EBUSY;
+
+	/* Prevent the modem from triggering a call to ipa_setup() */
+	ipa_smp2p_disable(ipa);
+
+	if (netdev) {
+		/* Stop the queue and disable the endpoints if it's open */
+		ret = ipa_stop(netdev);
+		if (ret)
+			goto out_set_state;
+
+		ipa->modem_netdev = NULL;
+		unregister_netdev(netdev);
+		free_netdev(netdev);
+	} else {
+		ret = 0;
+	}
+
+out_set_state:
+	if (ret)
+		atomic_set(&ipa->modem_state, IPA_MODEM_STATE_RUNNING);
+	else
+		atomic_set(&ipa->modem_state, IPA_MODEM_STATE_STOPPED);
+	smp_mb__after_atomic();
+
+	return ret;
+}
+
+/* Treat a "clean" modem stop the same as a crash */
+static void ipa_modem_crashed(struct ipa *ipa)
+{
+	struct device *dev = &ipa->pdev->dev;
+	int ret;
+
+	ipa_endpoint_modem_pause_all(ipa, true);
+
+	ipa_endpoint_modem_hol_block_clear_all(ipa);
+
+	ipa_table_reset(ipa, true);
+
+	ret = ipa_table_hash_flush(ipa);
+	if (ret)
+		dev_err(dev, "error %d flushing hash cahces\n", ret);
+
+	ret = ipa_endpoint_modem_exception_reset_all(ipa);
+	if (ret)
+		dev_err(dev, "error %d resetting exception endpoint",
+			ret);
+
+	ipa_endpoint_modem_pause_all(ipa, false);
+
+	ret = ipa_modem_stop(ipa);
+	if (ret)
+		dev_err(dev, "error %d stopping modem", ret);
+
+	/* Now prepare for the next modem boot */
+	ret = ipa_mem_zero_modem(ipa);
+	if (ret)
+		dev_err(dev, "error %d zeroing modem memory regions\n", ret);
+}
+
+static void ipa_modem_notify(void *data, enum qcom_rproc_event event)
+{
+	struct ipa *ipa = data;
+	struct device *dev;
+
+	dev = &ipa->pdev->dev;
+	switch (event) {
+	case MODEM_STARTING:
+		dev_info(dev, "received modem starting event\n");
+		ipa_smp2p_notify_reset(ipa);
+		break;
+
+	case MODEM_RUNNING:
+		dev_info(dev, "received modem running event\n");
+		break;
+
+	case MODEM_STOPPING:
+	case MODEM_CRASHED:
+		dev_info(dev, "received modem %s event\n",
+			 event == MODEM_STOPPING ? "stopping"
+						 : "crashed");
+		if (ipa->setup_complete)
+			ipa_modem_crashed(ipa);
+		break;
+
+	case MODEM_OFFLINE:
+		dev_info(dev, "received modem offline event\n");
+		break;
+
+	case MODEM_REMOVING:
+		dev_info(dev, "received modem stopping event\n");
+		break;
+
+	default:
+		dev_err(&ipa->pdev->dev, "unrecognized event %u\n", event);
+		break;
+	}
+}
+
+int ipa_modem_init(struct ipa *ipa, bool modem_init)
+{
+	return ipa_smp2p_init(ipa, modem_init);
+}
+
+void ipa_modem_exit(struct ipa *ipa)
+{
+	ipa_smp2p_exit(ipa);
+}
+
+int ipa_modem_config(struct ipa *ipa)
+{
+	return qcom_register_ipa_notify(ipa->modem_rproc, ipa_modem_notify,
+					ipa);
+}
+
+void ipa_modem_deconfig(struct ipa *ipa)
+{
+	qcom_deregister_ipa_notify(ipa->modem_rproc);
+}
+
+int ipa_modem_setup(struct ipa *ipa)
+{
+	return ipa_qmi_setup(ipa);
+}
+
+void ipa_modem_teardown(struct ipa *ipa)
+{
+	ipa_qmi_teardown(ipa);
+}
diff --git a/drivers/net/ipa/ipa_modem.h b/drivers/net/ipa/ipa_modem.h
new file mode 100644
index 000000000000..2de3e216d1d4
--- /dev/null
+++ b/drivers/net/ipa/ipa_modem.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+/* Copyright (c) 2012-2018, The Linux Foundation. All rights reserved.
+ * Copyright (C) 2018-2020 Linaro Ltd.
+ */
+#ifndef _IPA_MODEM_H_
+#define _IPA_MODEM_H_
+
+struct ipa;
+struct ipa_endpoint;
+struct net_device;
+struct sk_buff;
+
+int ipa_modem_start(struct ipa *ipa);
+int ipa_modem_stop(struct ipa *ipa);
+
+void ipa_modem_skb_rx(struct net_device *netdev, struct sk_buff *skb);
+
+void ipa_modem_suspend(struct net_device *netdev);
+void ipa_modem_resume(struct net_device *netdev);
+
+int ipa_modem_init(struct ipa *ipa, bool modem_init);
+void ipa_modem_exit(struct ipa *ipa);
+
+int ipa_modem_config(struct ipa *ipa);
+void ipa_modem_deconfig(struct ipa *ipa);
+
+int ipa_modem_setup(struct ipa *ipa);
+void ipa_modem_teardown(struct ipa *ipa);
+
+#endif /* _IPA_MODEM_H_ */
diff --git a/drivers/net/ipa/ipa_uc.c b/drivers/net/ipa/ipa_uc.c
new file mode 100644
index 000000000000..a1f8db00d55a
--- /dev/null
+++ b/drivers/net/ipa/ipa_uc.c
@@ -0,0 +1,211 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/* Copyright (c) 2012-2018, The Linux Foundation. All rights reserved.
+ * Copyright (C) 2018-2020 Linaro Ltd.
+ */
+
+#include <linux/types.h>
+#include <linux/io.h>
+#include <linux/delay.h>
+
+#include "ipa.h"
+#include "ipa_clock.h"
+#include "ipa_uc.h"
+
+/**
+ * DOC:  The IPA embedded microcontroller
+ *
+ * The IPA incorporates a microcontroller that is able to do some additional
+ * handling/offloading of network activity.  The current code makes
+ * essentially no use of the microcontroller, but it still requires some
+ * initialization.  It needs to be notified in the event the AP crashes.
+ *
+ * The microcontroller can generate two interrupts to the AP.  One interrupt
+ * is used to indicate that a response to a request from the AP is available.
+ * The other is used to notify the AP of the occurrence of an event.  In
+ * addition, the AP can interrupt the microcontroller by writing a register.
+ *
+ * A 128 byte block of structured memory within the IPA SRAM is used together
+ * with these interrupts to implement the communication interface between the
+ * AP and the IPA microcontroller.  Each side writes data to the shared area
+ * before interrupting its peer, which will read the written data in response
+ * to the interrupt.  Some information found in the shared area is currently
+ * unused.  All remaining space in the shared area is reserved, and must not
+ * be read or written by the AP.
+ */
+/* Supports hardware interface version 0x2000 */
+
+/* Offset relative to the base of the IPA shared address space of the
+ * shared region used for communication with the microcontroller.  The
+ * region is 128 bytes in size, but only the first 40 bytes are used.
+ */
+#define IPA_MEM_UC_OFFSET	0x0000
+
+/* Delay to allow a the microcontroller to save state when crashing */
+#define IPA_SEND_DELAY		100	/* microseconds */
+
+/**
+ * struct ipa_uc_mem_area - AP/microcontroller shared memory area
+ * @command:		command code (AP->microcontroller)
+ * @command_param:	low 32 bits of command parameter (AP->microcontroller)
+ * @command_param_hi:	high 32 bits of command parameter (AP->microcontroller)
+ *
+ * @response:		response code (microcontroller->AP)
+ * @response_param:	response parameter (microcontroller->AP)
+ *
+ * @event:		event code (microcontroller->AP)
+ * @event_param:	event parameter (microcontroller->AP)
+ *
+ * @first_error_address: address of first error-source on SNOC
+ * @hw_state:		state of hardware (including error type information)
+ * @warning_counter:	counter of non-fatal hardware errors
+ * @interface_version:	hardware-reported interface version
+ */
+struct ipa_uc_mem_area {
+	u8 command;		/* enum ipa_uc_command */
+	u8 reserved0[3];
+	__le32 command_param;
+	__le32 command_param_hi;
+	u8 response;		/* enum ipa_uc_response */
+	u8 reserved1[3];
+	__le32 response_param;
+	u8 event;		/* enum ipa_uc_event */
+	u8 reserved2[3];
+
+	__le32 event_param;
+	__le32 first_error_address;
+	u8 hw_state;
+	u8 warning_counter;
+	__le16 reserved3;
+	__le16 interface_version;
+	__le16 reserved4;
+};
+
+/** enum ipa_uc_command - commands from the AP to the microcontroller */
+enum ipa_uc_command {
+	IPA_UC_COMMAND_NO_OP		= 0,
+	IPA_UC_COMMAND_UPDATE_FLAGS	= 1,
+	IPA_UC_COMMAND_DEBUG_RUN_TEST	= 2,
+	IPA_UC_COMMAND_DEBUG_GET_INFO	= 3,
+	IPA_UC_COMMAND_ERR_FATAL	= 4,
+	IPA_UC_COMMAND_CLK_GATE		= 5,
+	IPA_UC_COMMAND_CLK_UNGATE	= 6,
+	IPA_UC_COMMAND_MEMCPY		= 7,
+	IPA_UC_COMMAND_RESET_PIPE	= 8,
+	IPA_UC_COMMAND_REG_WRITE	= 9,
+	IPA_UC_COMMAND_GSI_CH_EMPTY	= 10,
+};
+
+/** enum ipa_uc_response - microcontroller response codes */
+enum ipa_uc_response {
+	IPA_UC_RESPONSE_NO_OP		= 0,
+	IPA_UC_RESPONSE_INIT_COMPLETED	= 1,
+	IPA_UC_RESPONSE_CMD_COMPLETED	= 2,
+	IPA_UC_RESPONSE_DEBUG_GET_INFO	= 3,
+};
+
+/** enum ipa_uc_event - common cpu events reported by the microcontroller */
+enum ipa_uc_event {
+	IPA_UC_EVENT_NO_OP     = 0,
+	IPA_UC_EVENT_ERROR     = 1,
+	IPA_UC_EVENT_LOG_INFO  = 2,
+};
+
+static struct ipa_uc_mem_area *ipa_uc_shared(struct ipa *ipa)
+{
+	u32 offset = ipa->mem_offset + ipa->mem[IPA_MEM_UC_SHARED].offset;
+
+	return ipa->mem_virt + offset;
+}
+
+/* Microcontroller event IPA interrupt handler */
+static void ipa_uc_event_handler(struct ipa *ipa, enum ipa_irq_id irq_id)
+{
+	struct ipa_uc_mem_area *shared = ipa_uc_shared(ipa);
+	struct device *dev = &ipa->pdev->dev;
+
+	if (shared->event == IPA_UC_EVENT_ERROR)
+		dev_err(dev, "microcontroller error event\n");
+	else
+		dev_err(dev, "unsupported microcontroller event %hhu\n",
+			shared->event);
+}
+
+/* Microcontroller response IPA interrupt handler */
+static void ipa_uc_response_hdlr(struct ipa *ipa, enum ipa_irq_id irq_id)
+{
+	struct ipa_uc_mem_area *shared = ipa_uc_shared(ipa);
+
+	/* An INIT_COMPLETED response message is sent to the AP by the
+	 * microcontroller when it is operational.  Other than this, the AP
+	 * should only receive responses from the microcontroller when it has
+	 * sent it a request message.
+	 *
+	 * We can drop the clock reference taken in ipa_uc_init() once we
+	 * know the microcontroller has finished its initialization.
+	 */
+	switch (shared->response) {
+	case IPA_UC_RESPONSE_INIT_COMPLETED:
+		ipa->uc_loaded = true;
+		ipa_clock_put(ipa);
+		break;
+	default:
+		dev_warn(&ipa->pdev->dev,
+			 "unsupported microcontroller response %hhu\n",
+			 shared->response);
+		break;
+	}
+}
+
+/* ipa_uc_setup() - Set up the microcontroller */
+void ipa_uc_setup(struct ipa *ipa)
+{
+	/* The microcontroller needs the IPA clock running until it has
+	 * completed its initialization.  It signals this by sending an
+	 * INIT_COMPLETED response message to the AP.  This could occur after
+	 * we have finished doing the rest of the IPA initialization, so we
+	 * need to take an extra "proxy" reference, and hold it until we've
+	 * received that signal.  (This reference is dropped in
+	 * ipa_uc_response_hdlr(), above.)
+	 */
+	ipa_clock_get(ipa);
+
+	ipa->uc_loaded = false;
+	ipa_interrupt_add(ipa->interrupt, IPA_IRQ_UC_0, ipa_uc_event_handler);
+	ipa_interrupt_add(ipa->interrupt, IPA_IRQ_UC_1, ipa_uc_response_hdlr);
+}
+
+/* Inverse of ipa_uc_setup() */
+void ipa_uc_teardown(struct ipa *ipa)
+{
+	ipa_interrupt_remove(ipa->interrupt, IPA_IRQ_UC_1);
+	ipa_interrupt_remove(ipa->interrupt, IPA_IRQ_UC_0);
+	if (!ipa->uc_loaded)
+		ipa_clock_put(ipa);
+}
+
+/* Send a command to the microcontroller */
+static void send_uc_command(struct ipa *ipa, u32 command, u32 command_param)
+{
+	struct ipa_uc_mem_area *shared = ipa_uc_shared(ipa);
+
+	shared->command = command;
+	shared->command_param = cpu_to_le32(command_param);
+	shared->command_param_hi = 0;
+	shared->response = 0;
+	shared->response_param = 0;
+
+	iowrite32(1, ipa->reg_virt + IPA_REG_IRQ_UC_OFFSET);
+}
+
+/* Tell the microcontroller the AP is shutting down */
+void ipa_uc_panic_notifier(struct ipa *ipa)
+{
+	if (!ipa->uc_loaded)
+		return;
+
+	send_uc_command(ipa, IPA_UC_COMMAND_ERR_FATAL, 0);
+
+	/* give uc enough time to save state */
+	udelay(IPA_SEND_DELAY);
+}
diff --git a/drivers/net/ipa/ipa_uc.h b/drivers/net/ipa/ipa_uc.h
new file mode 100644
index 000000000000..e8510899a3f0
--- /dev/null
+++ b/drivers/net/ipa/ipa_uc.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+/* Copyright (c) 2012-2018, The Linux Foundation. All rights reserved.
+ * Copyright (C) 2019-2020 Linaro Ltd.
+ */
+#ifndef _IPA_UC_H_
+#define _IPA_UC_H_
+
+struct ipa;
+
+/**
+ * ipa_uc_setup() - set up the IPA microcontroller subsystem
+ * @ipa:	IPA pointer
+ */
+void ipa_uc_setup(struct ipa *ipa);
+
+/**
+ * ipa_uc_teardown() - inverse of ipa_uc_setup()
+ * @ipa:	IPA pointer
+ */
+void ipa_uc_teardown(struct ipa *ipa);
+
+/**
+ * ipa_uc_panic_notifier()
+ * @ipa:	IPA pointer
+ *
+ * Notifier function called when the system crashes, to inform the
+ * microcontroller of the event.
+ */
+void ipa_uc_panic_notifier(struct ipa *ipa);
+
+#endif /* _IPA_UC_H_ */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
