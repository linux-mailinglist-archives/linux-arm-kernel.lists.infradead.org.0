Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D2D1B2839
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 15:41:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3ON+eYnAIifKCunWFv1r5TjzpNIDGoISkA3JXm+PGEs=; b=VS6eSOQs8HYw4I
	YxgjSCyFHed8acu/AgeiIyfyQOS7m+tkXOMLXokmVNEwDQ8Mcm+UfJEWEji41SoxfOA4zvNzC31o/
	dD01DQ3/qkkxuhpZIPI1YQd4+bxuvoMemOK79kRA046495Jp7KK4/FTUWOEqvrutk/sVfhJNWLnWZ
	VlbsbL9qPGIiETq9yGKaak1RTYbk6i19msJITxZQSt2uFMhIcXu0/qUd84aS2BXa/4M/IRmWEbBIC
	P6admOtC4PwMCIDZw/61BGFJZqHN+qDyqWK64V+O6qlHokV+KyWzEsLrQgCflwr5lfh1dQbGRZJOz
	bXkwj/9ezA+qcJjynF3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQt9j-00065v-V4; Tue, 21 Apr 2020 13:41:43 +0000
Received: from forward104j.mail.yandex.net ([2a02:6b8:0:801:2::107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQt9Y-000623-J8; Tue, 21 Apr 2020 13:41:36 +0000
Received: from forward101q.mail.yandex.net (forward101q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:4b:0:640:4012:bb98])
 by forward104j.mail.yandex.net (Yandex) with ESMTP id 4E4314A20FC;
 Tue, 21 Apr 2020 16:41:21 +0300 (MSK)
Received: from mxback12q.mail.yandex.net (mxback12q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:1b3:0:640:3818:d096])
 by forward101q.mail.yandex.net (Yandex) with ESMTP id 460A9CF40002;
 Tue, 21 Apr 2020 16:41:21 +0300 (MSK)
Received: from vla4-d1b041059520.qloud-c.yandex.net
 (vla4-d1b041059520.qloud-c.yandex.net [2a02:6b8:c17:914:0:640:d1b0:4105])
 by mxback12q.mail.yandex.net (mxback/Yandex) with ESMTP id 93xlLFHrpE-fIB0fnjQ;
 Tue, 21 Apr 2020 16:41:21 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1587476481; bh=xCogxVJggB4U0WxqK21fNHt81GXV7XMyn6/5t3LcMbA=;
 h=Subject:To:From:Cc:Date:Message-Id;
 b=h8iyN+76zznVlaSgkJSHKBzd+V/7zOQG160+7quNxObd2jljOUq6wQchjPfcyKg0K
 thZ5XwDNLtpkM4Md/ngAUb5yr4YWuraTezhtDrcr2yzM3Gf+apfwx80soLY+5PacVo
 zC8b3m2igt0SSBbBj4jIojJ1w5FqtG9xXL0ulWEc=
Authentication-Results: mxback12q.mail.yandex.net;
 dkim=pass header.i=@yandex.ru
Received: by vla4-d1b041059520.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA
 id X5d09Yh5QJ-fG2W9Rr2; Tue, 21 Apr 2020 16:41:17 +0300
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (Client certificate not present)
From: Alexander Lobakin <bloodyreaper@yandex.ru>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH v2 net-next] net: dsa: add GRO support via gro_cells
Date: Tue, 21 Apr 2020 16:41:08 +0300
Message-Id: <20200421134108.167646-1-bloodyreaper@yandex.ru>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_064133_169172_C1AEB4AD 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a02:6b8:0:801:2:0:0:107 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bloodyreaper[at]yandex.ru]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Woojung Huh <woojung.huh@microchip.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexander Lobakin <bloodyreaper@yandex.ru>, Hauke Mehrtens <hauke@hauke-m.de>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@mediatek.com>,
 Russell King <linux@armlinux.org.uk>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, netdev@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Oleksij Rempel <linux@rempel-privat.de>,
 Vivien Didelot <vivien.didelot@gmail.com>, linux-kernel@vger.kernel.org,
 Mao Wenan <maowenan@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

gro_cells lib is used by different encapsulating netdevices, such as
geneve, macsec, vxlan etc. to speed up decapsulated traffic processing.
CPU tag is a sort of "encapsulation", and we can use the same mechs to
greatly improve overall DSA performance.
skbs are passed to the GRO layer after removing CPU tags, so we don't
need any new packet offload types as it was firstly proposed by me in
the first GRO-over-DSA variant [1].

The size of struct gro_cells is sizeof(void *), so hot struct
dsa_slave_priv becomes only 4/8 bytes bigger, and all critical fields
remain in one 32-byte cacheline.
The other positive side effect is that drivers for network devices
that can be shipped as CPU ports of DSA-driven switches can now use
napi_gro_frags() to pass skbs to kernel. Packets built that way are
completely non-linear and are likely being dropped without GRO.

This was tested on to-be-mainlined-soon Ethernet driver that uses
napi_gro_frags(), and the overall performance was on par with the
variant from [1], sometimes even better due to minimal overhead.
net.core.gro_normal_batch tuning may help to push it to the limit
on particular setups and platforms.

iperf3 IPoE VLAN NAT TCP forwarding (port1.218 -> port0) setup
on 1.2 GHz MIPS board:

5.7-rc2 baseline:

[ID]  Interval         Transfer     Bitrate        Retr
[ 5]  0.00-120.01 sec  9.00 GBytes  644 Mbits/sec  413  sender
[ 5]  0.00-120.00 sec  8.99 GBytes  644 Mbits/sec       receiver

Iface      RX packets  TX packets
eth0       7097731     7097702
port0      426050      6671829
port1      6671681     425862
port1.218  6671677     425851

With this patch:

[ID]  Interval         Transfer     Bitrate        Retr
[ 5]  0.00-120.01 sec  12.2 GBytes  870 Mbits/sec  122  sender
[ 5]  0.00-120.00 sec  12.2 GBytes  870 Mbits/sec       receiver

Iface      RX packets  TX packets
eth0       9474792     9474777
port0      455200      353288
port1      9019592     455035
port1.218  353144      455024

v2:
 - Add some performance examples in the commit message;
 - No functional changes.

[1] https://lore.kernel.org/netdev/20191230143028.27313-1-alobakin@dlink.ru/

Signed-off-by: Alexander Lobakin <bloodyreaper@yandex.ru>
---
 net/dsa/Kconfig    |  1 +
 net/dsa/dsa.c      |  2 +-
 net/dsa/dsa_priv.h |  3 +++
 net/dsa/slave.c    | 10 +++++++++-
 4 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/net/dsa/Kconfig b/net/dsa/Kconfig
index 92663dcb3aa2..739613070d07 100644
--- a/net/dsa/Kconfig
+++ b/net/dsa/Kconfig
@@ -9,6 +9,7 @@ menuconfig NET_DSA
 	tristate "Distributed Switch Architecture"
 	depends on HAVE_NET_DSA
 	depends on BRIDGE || BRIDGE=n
+	select GRO_CELLS
 	select NET_SWITCHDEV
 	select PHYLINK
 	select NET_DEVLINK
diff --git a/net/dsa/dsa.c b/net/dsa/dsa.c
index ee2610c4d46a..0384a911779e 100644
--- a/net/dsa/dsa.c
+++ b/net/dsa/dsa.c
@@ -234,7 +234,7 @@ static int dsa_switch_rcv(struct sk_buff *skb, struct net_device *dev,
 	if (dsa_skb_defer_rx_timestamp(p, skb))
 		return 0;
 
-	netif_receive_skb(skb);
+	gro_cells_receive(&p->gcells, skb);
 
 	return 0;
 }
diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
index 904cc7c9b882..6d9a1ef65fa0 100644
--- a/net/dsa/dsa_priv.h
+++ b/net/dsa/dsa_priv.h
@@ -11,6 +11,7 @@
 #include <linux/netdevice.h>
 #include <linux/netpoll.h>
 #include <net/dsa.h>
+#include <net/gro_cells.h>
 
 enum {
 	DSA_NOTIFIER_AGEING_TIME,
@@ -77,6 +78,8 @@ struct dsa_slave_priv {
 
 	struct pcpu_sw_netstats	*stats64;
 
+	struct gro_cells	gcells;
+
 	/* DSA port data, such as switch, port index, etc. */
 	struct dsa_port		*dp;
 
diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index 5390ff541658..36c7491e8e5f 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -1762,6 +1762,11 @@ int dsa_slave_create(struct dsa_port *port)
 		free_netdev(slave_dev);
 		return -ENOMEM;
 	}
+
+	ret = gro_cells_init(&p->gcells, slave_dev);
+	if (ret)
+		goto out_free;
+
 	p->dp = port;
 	INIT_LIST_HEAD(&p->mall_tc_list);
 	p->xmit = cpu_dp->tag_ops->xmit;
@@ -1781,7 +1786,7 @@ int dsa_slave_create(struct dsa_port *port)
 	ret = dsa_slave_phy_setup(slave_dev);
 	if (ret) {
 		netdev_err(master, "error %d setting up slave phy\n", ret);
-		goto out_free;
+		goto out_gcells;
 	}
 
 	dsa_slave_notify(slave_dev, DSA_PORT_REGISTER);
@@ -1800,6 +1805,8 @@ int dsa_slave_create(struct dsa_port *port)
 	phylink_disconnect_phy(p->dp->pl);
 	rtnl_unlock();
 	phylink_destroy(p->dp->pl);
+out_gcells:
+	gro_cells_destroy(&p->gcells);
 out_free:
 	free_percpu(p->stats64);
 	free_netdev(slave_dev);
@@ -1820,6 +1827,7 @@ void dsa_slave_destroy(struct net_device *slave_dev)
 	dsa_slave_notify(slave_dev, DSA_PORT_UNREGISTER);
 	unregister_netdev(slave_dev);
 	phylink_destroy(dp->pl);
+	gro_cells_destroy(&p->gcells);
 	free_percpu(p->stats64);
 	free_netdev(slave_dev);
 }
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
