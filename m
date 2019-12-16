Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 735D11216F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 19:34:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TQawLBKznco5VqZ+O2wMcQ9IVYQw6QAs3QwDECocTEs=; b=WaCNCHJabScgNB
	HpIlA7fFkJ8lOiZZ6AlVcgkE/9Qi817eo8zKV06jj6IykL56Gg4Q1fG3IKETxaQy7OxkdX0ni1p5X
	znP9LZKdrG4mVL2Y7y8+YNwRgg7HHrVfK2yRALpOLZBPZrU4/nwue+vuad/GqkCMTzoVmYmaSsTbX
	n+4UGeNTXyfJIbXjWWu3gfjMhLiEqtX4529v2VIKEUYcwrDLO1hJVuf90GnoIvQfIjlH9PfLK75zS
	q7hiUO03n9EPSZugoi2vc1D0gL2WQ2XCR4sXvTytVjn8Iti5hbwjXG5yaU1YCoFxTcyxGi0ECa24h
	zkDqyLMJ9VzdAGpEmTNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igvBp-0002XR-AX; Mon, 16 Dec 2019 18:33:53 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igvB1-0001qA-Da
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 18:33:04 +0000
Received: by mail-pl1-x642.google.com with SMTP id p9so601997plk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 10:33:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X1zMAvxCxhNskiOgc/FddBrf0+UkJNkVR3iWyW4+/VY=;
 b=TMhmToLvRQp7S5PBPOfHiUUGksvPcQcvqxmiCD3+MZ97QglcZ4fHgSxHtFKa+GN0Fy
 SEyD/TX8F7mW2eKPrGsE+3liuilWz7QkuFpBmfO/VFvtb9/6JbBG/U0tnGgR5bXGPL33
 9H3vzg6Qd0Ii7R++kF7UKiUzmJipvTEtBILZASk9QYsR3QHgNx4fblWUNR3x8Ldp3jcK
 9FxM81lPQbBBsKJBO//GaEmhAa9OQhfXhxfKm1G1eH10ihLPNd/u/r24/Hb/1utjUWXd
 TQ7mNlRzhYK7nGd3HRmAnjX+QAcQucFGFfeP8uG0iKO5J73L3Fl+D1Q378lTpXljntkK
 R0EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X1zMAvxCxhNskiOgc/FddBrf0+UkJNkVR3iWyW4+/VY=;
 b=n+e4OqKhBSC0ClrwEVnLFn79T+b9jcPXZUdMb5NqtW/SI4JRwRen9p7esgR8vVaAAq
 S6gMOV7Q43DXh13lLV1t3t1SnKDLuSNWGEJkewnqGuZuOPl2VCwwCWI9gDWGRoEMyOWl
 xKrbdzcAFa2b7JW0YvbGkn9c7yxLp8X7I0SodeE5+mlKDWi4fnBfhYCZyIKoRm+QqvY9
 rJpgEWU1/kBHLC0OscS8+1fUB1y0oxS8qv3iuDmBRzJX33rbeLIpRxf/akzd6tVcMeQO
 cSyX5Ptu9mZPqQCGazzpetSLrFNlYj/hGwtzo/OZCQor3GuzggMrRALn7l9n/ezgFEw2
 JOlA==
X-Gm-Message-State: APjAAAWDCGyjgpb2IWt6MeQhF/ifwve+RyPeYUAVM4Q4rN3TPT0JEqW9
 TCY+e7QnJCHOMeuW7OdjArc=
X-Google-Smtp-Source: APXvYqzYPP3GI6b+mc7I95bJF2flZn6xh7EvsGcWzXAw1CEIntK0FV1qXcs9LWm/EAIJ4kPexaeDsA==
X-Received: by 2002:a17:90b:90e:: with SMTP id
 bo14mr613573pjb.17.1576521182870; 
 Mon, 16 Dec 2019 10:33:02 -0800 (PST)
Received: from localhost.localdomain (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id d65sm23400738pfa.159.2019.12.16.10.33.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 10:33:02 -0800 (PST)
From: Richard Cochran <richardcochran@gmail.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 3/3] net: axienet: Pass ioctls to the phy.
Date: Mon, 16 Dec 2019 10:32:56 -0800
Message-Id: <361f63095be92df10e8e953af3b981cdac58d98e.1576520432.git.richardcochran@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1576520432.git.richardcochran@gmail.com>
References: <cover.1576520432.git.richardcochran@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_103303_486314_E2E9D62F 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richardcochran[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Michal Simek <michal.simek@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to allow PHY drivers to handle ioctls, the MAC driver must pass
the calls through.  However, the axienet driver does not support ioctls
at all.  This patch fixes the issue by handing off the invocations to the
PHY appropriately.

Signed-off-by: Richard Cochran <richardcochran@gmail.com>
---
 .../net/ethernet/xilinx/xilinx_axienet_main.c  | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
index 05fa7371c39a..d0b996f220f5 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -1067,6 +1067,23 @@ static int axienet_change_mtu(struct net_device *ndev, int new_mtu)
 	return 0;
 }
 
+static int axienet_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
+{
+	if (!netif_running(dev))
+		return -EINVAL;
+
+	switch (cmd) {
+	case SIOCGMIIPHY:
+	case SIOCGMIIREG:
+	case SIOCSMIIREG:
+	case SIOCSHWTSTAMP:
+	case SIOCGHWTSTAMP:
+		return phy_mii_ioctl(dev->phydev, rq, cmd);
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
 #ifdef CONFIG_NET_POLL_CONTROLLER
 /**
  * axienet_poll_controller - Axi Ethernet poll mechanism.
@@ -1095,6 +1112,7 @@ static const struct net_device_ops axienet_netdev_ops = {
 	.ndo_set_mac_address = netdev_set_mac_address,
 	.ndo_validate_addr = eth_validate_addr,
 	.ndo_set_rx_mode = axienet_set_multicast_list,
+	.ndo_do_ioctl = axienet_ioctl,
 #ifdef CONFIG_NET_POLL_CONTROLLER
 	.ndo_poll_controller = axienet_poll_controller,
 #endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
