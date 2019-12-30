Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF3012D0D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:37:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4hP6Y5linBwcRreDrT+fkFVhp7VhbvEZh4TjYn3VYrM=; b=X5GlkLTXF8l96G
	iRa8MnWfFb3q3OYtJy4gnWSBbXFxJlarA6xqBhJVRTyY5onji5cahBQ79mZP/PcAvMPyvgn2+OycL
	a3rf4kNmGveH8S+tPq95qVYXbIGphMmFMWeempE0hpiN0w7rOcmdiR451ZpCiQxvb5PQ5fMY57tB+
	SqXHNROa0xgFXntahpzD3L8WkYSBzdX3iAMlIoOe9+S5eMoPCScOSC0x2KN11Yesim2gTYNkEA4Dc
	zETsljJ7ez2/QH35ZV7+GDAdzJc7XENLT3M533kIDS2IjGNyi7vIUjtTa2mY0sgirquH5G2yCYwXh
	EqqQxRVNHDgAkdm64yyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwAt-0000zh-T3; Mon, 30 Dec 2019 14:37:39 +0000
Received: from fd.dlink.ru ([178.170.168.18])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilwAk-0000xR-1X; Mon, 30 Dec 2019 14:37:31 +0000
Received: by fd.dlink.ru (Postfix, from userid 5000)
 id 1D35C1B20759; Mon, 30 Dec 2019 17:31:57 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru 1D35C1B20759
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dlink.ru; s=mail;
 t=1577716317; bh=MElnUAXdbAsEzuA8MGuhZyEpxZHkJL0ydPnsBAYspiA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=PFAfL5sWrlbjw5bOBVaCSHG9T9Lz+DIXQnZ4J2oydzJ8/nGsMPjkU3wcslu2m0Mi5
 8NbvC/5iXl35VH4MvCP84/Zj9rgur1fdwyEakbJ95RGtdax+msw0N6Zl6VgEz5wyXb
 mXrmGNG7/aXIYQ19IgnLoyvkS1qQzubGY2OxKSCM=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dlink.ru
X-Spam-Level: 
X-Spam-Status: No, score=-99.2 required=7.5 tests=BAYES_50,URIBL_BLOCKED,
 USER_IN_WHITELIST autolearn=disabled version=3.4.2
Received: from mail.rzn.dlink.ru (mail.rzn.dlink.ru [178.170.168.13])
 by fd.dlink.ru (Postfix) with ESMTP id 0C2421B207EB;
 Mon, 30 Dec 2019 17:31:11 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru 0C2421B207EB
Received: from mail.rzn.dlink.ru (localhost [127.0.0.1])
 by mail.rzn.dlink.ru (Postfix) with ESMTP id C6D2A1B229CB;
 Mon, 30 Dec 2019 17:31:08 +0300 (MSK)
Received: from localhost.localdomain (unknown [196.196.203.126])
 by mail.rzn.dlink.ru (Postfix) with ESMTPA;
 Mon, 30 Dec 2019 17:31:08 +0300 (MSK)
From: Alexander Lobakin <alobakin@dlink.ru>
To: "David S. Miller" <davem@davemloft.net>
Subject: [PATCH RFC net-next 04/19] net: dsa: tag_ar9331: split out common tag
 accessors
Date: Mon, 30 Dec 2019 17:30:12 +0300
Message-Id: <20191230143028.27313-5-alobakin@dlink.ru>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191230143028.27313-1-alobakin@dlink.ru>
References: <20191230143028.27313-1-alobakin@dlink.ru>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_063730_442130_A7F6DA68 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: 2.4 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.170.168.18 listed in list.dnswl.org]
 2.6 RCVD_IN_SBL            RBL: Received via a relay in Spamhaus SBL
 [196.196.203.126 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Song Liu <songliubraving@fb.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Alexander Lobakin <alobakin@dlink.ru>,
 Yoshiki Komachi <komachi.yoshiki@gmail.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Stanislav Fomichev <sdf@google.com>,
 Matteo Croce <mcroce@redhat.com>, Edward Cree <ecree@solarflare.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jakub Sitnicki <jakub@cloudflare.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Sean Wang <sean.wang@mediatek.com>, Jiri Pirko <jiri@mellanox.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 Paul Blakey <paulb@mellanox.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Taehee Yoo <ap420073@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

They will be reused in upcoming GRO callbacks.
(Almost) no functional changes except less informative error string.

Signed-off-by: Alexander Lobakin <alobakin@dlink.ru>
---
 net/dsa/tag_ar9331.c | 46 +++++++++++++++++++++++++++-----------------
 1 file changed, 28 insertions(+), 18 deletions(-)

diff --git a/net/dsa/tag_ar9331.c b/net/dsa/tag_ar9331.c
index 399ca21ec03b..c22c1b515e02 100644
--- a/net/dsa/tag_ar9331.c
+++ b/net/dsa/tag_ar9331.c
@@ -24,6 +24,25 @@
 #define AR9331_HDR_RESERVED_MASK	GENMASK(5, 4)
 #define AR9331_HDR_PORT_NUM_MASK	GENMASK(3, 0)
 
+static inline bool ar9331_tag_sanity_check(const u8 *data)
+{
+	u16 hdr = le16_to_cpup((__le16 *)(data - ETH_HLEN));
+
+	return FIELD_GET(AR9331_HDR_VERSION_MASK, hdr) == AR9331_HDR_VERSION &&
+	       !(hdr & AR9331_HDR_FROM_CPU);
+}
+
+static inline int ar9331_tag_source_port(const u8 *data)
+{
+	/* hdr comes in LE byte order, so srcport field is in the first byte */
+	return FIELD_GET(AR9331_HDR_PORT_NUM_MASK, *(data - ETH_HLEN));
+}
+
+static inline __be16 ar9331_tag_encap_proto(const u8 *data)
+{
+	return *(__be16 *)data;
+}
+
 static struct sk_buff *ar9331_tag_xmit(struct sk_buff *skb,
 				       struct net_device *dev)
 {
@@ -50,36 +69,27 @@ static struct sk_buff *ar9331_tag_rcv(struct sk_buff *skb,
 				      struct net_device *ndev,
 				      struct packet_type *pt)
 {
-	u8 ver, port;
-	u16 hdr;
+	int port;
 
 	if (unlikely(!pskb_may_pull(skb, AR9331_HDR_LEN)))
 		return NULL;
 
-	hdr = le16_to_cpu(*(__le16 *)skb_mac_header(skb));
-
-	ver = FIELD_GET(AR9331_HDR_VERSION_MASK, hdr);
-	if (unlikely(ver != AR9331_HDR_VERSION)) {
-		netdev_warn_once(ndev, "%s:%i wrong header version 0x%2x\n",
-				 __func__, __LINE__, hdr);
-		return NULL;
-	}
-
-	if (unlikely(hdr & AR9331_HDR_FROM_CPU)) {
-		netdev_warn_once(ndev, "%s:%i packet should not be from cpu 0x%2x\n",
-				 __func__, __LINE__, hdr);
+	if (unlikely(!ar9331_tag_sanity_check(skb->data))) {
+		netdev_warn_once(ndev,
+				 "%s:%i wrong header version or source port\n",
+				 __func__, __LINE__);
 		return NULL;
 	}
 
-	skb_pull_rcsum(skb, AR9331_HDR_LEN);
-
 	/* Get source port information */
-	port = FIELD_GET(AR9331_HDR_PORT_NUM_MASK, hdr);
+	port = ar9331_tag_source_port(skb->data);
 
 	skb->dev = dsa_master_find_slave(ndev, 0, port);
 	if (!skb->dev)
 		return NULL;
 
+	skb_pull_rcsum(skb, AR9331_HDR_LEN);
+
 	return skb;
 }
 
@@ -87,7 +97,7 @@ static void ar9331_tag_flow_dissect(const struct sk_buff *skb, __be16 *proto,
 				    int *offset)
 {
 	*offset = AR9331_HDR_LEN;
-	*proto = *(__be16 *)skb->data;
+	*proto = ar9331_tag_encap_proto(skb->data);
 }
 
 static const struct dsa_device_ops ar9331_netdev_ops = {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
