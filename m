Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6C912D124
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:48:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUL2Hr+SRhmSUN9guCJwHZbymgsp2Jai9D0Oyc2oq6Y=; b=hBwdcFZyj0tOTz
	GV0LcAnLTLTHpUgmCvGSrJ6YOgK7+g8De8Nh5JEQNY1mLicJRjw3gqrHtGBmbPgkos17kkdtOKEI+
	5P9JpTQmuw2nHQLWXcmxQpFHAz88+7qfPe0YYDnayxyvkEJD79XHBGhNgxCG6dtWOMtFwD5NT+/Wy
	2aTCqgg/frr5Sci+hmZha6ekjaBgzF0ulzMVoObSOggKNjCsD7BLdaxh2QurMnXMHWOPN9svEHoc1
	31R6SyQvlXJaYHa8N0SD/QgFm7c8DL10D+3+teewZgr22EaERryiijyxi2fZ8F6RsXQLdixFC/2Lw
	qp1xSGxD9ndt8EFjLuBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwKr-0000St-J2; Mon, 30 Dec 2019 14:47:57 +0000
Received: from mail.dlink.ru ([178.170.168.18] helo=fd.dlink.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilwFc-0003yj-PU; Mon, 30 Dec 2019 14:42:37 +0000
Received: by fd.dlink.ru (Postfix, from userid 5000)
 id A32B11B2191E; Mon, 30 Dec 2019 17:32:10 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru A32B11B2191E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dlink.ru; s=mail;
 t=1577716330; bh=SYnifMPQP4kzdSLpDkUORDps+aCxCuIpXYmwM1fEL9I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=qWSynPqamq2vu3rHWp6/Ys3pxIrOTkLRx3ZezonYii1EquqP08soQTNpX1WjtfEs4
 yz8JzEUB2EzofaWNraN5P31GJonoOytZ/1zxAFeyZBKKLcaHo75Z2jU3DNShyScBch
 lOCVovbzltnCE/K86L53IARuxB6GqHBPxqlI4xOA=
Received: from mail.rzn.dlink.ru (mail.rzn.dlink.ru [178.170.168.13])
 by fd.dlink.ru (Postfix) with ESMTP id 3C8BB1B21825;
 Mon, 30 Dec 2019 17:31:29 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru 3C8BB1B21825
Received: from mail.rzn.dlink.ru (localhost [127.0.0.1])
 by mail.rzn.dlink.ru (Postfix) with ESMTP id 678DC1B229D0;
 Mon, 30 Dec 2019 17:31:27 +0300 (MSK)
Received: from localhost.localdomain (unknown [196.196.203.126])
 by mail.rzn.dlink.ru (Postfix) with ESMTPA;
 Mon, 30 Dec 2019 17:31:27 +0300 (MSK)
From: Alexander Lobakin <alobakin@dlink.ru>
To: "David S. Miller" <davem@davemloft.net>
Subject: [PATCH RFC net-next 13/19] net: dsa: tag_lan9303: add GRO callbacks
Date: Mon, 30 Dec 2019 17:30:21 +0300
Message-Id: <20191230143028.27313-14-alobakin@dlink.ru>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191230143028.27313-1-alobakin@dlink.ru>
References: <20191230143028.27313-1-alobakin@dlink.ru>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_064233_295036_836447C8 
X-CRM114-Status: GOOD (  12.07  )
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

Add GRO callbacks for LAN9303 tagger to make GRO available for frames
tagged with it.

Signed-off-by: Alexander Lobakin <alobakin@dlink.ru>
---
 net/dsa/tag_lan9303.c | 77 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 77 insertions(+)

diff --git a/net/dsa/tag_lan9303.c b/net/dsa/tag_lan9303.c
index ba03502986a4..77aba4311f2d 100644
--- a/net/dsa/tag_lan9303.c
+++ b/net/dsa/tag_lan9303.c
@@ -151,12 +151,89 @@ static void lan9303_flow_dissect(const struct sk_buff *skb, __be16 *proto,
 	*proto = lan9303_encap_proto(skb->data);
 }
 
+static struct sk_buff *lan9303_gro_receive(struct list_head *head,
+					   struct sk_buff *skb)
+{
+	const struct packet_offload *ptype;
+	struct sk_buff *p, *pp = NULL;
+	const u8 *data, *data_p;
+	u32 data_off, data_end;
+	int flush = 1;
+
+	data_off = skb_gro_offset(skb);
+	data_end = data_off + LAN9303_TAG_LEN;
+
+	data = skb_gro_header_fast(skb, data_off);
+	if (skb_gro_header_hard(skb, data_end)) {
+		data = skb_gro_header_slow(skb, data_end, data_off);
+		if (unlikely(!data))
+			goto out;
+	}
+
+	/* Data that is to the left to the current position is already
+	 * pulled to the head
+	 */
+	if (!lan9303_sanity_check(skb->data + data_off))
+		goto out;
+
+	rcu_read_lock();
+
+	ptype = gro_find_receive_by_type(lan9303_encap_proto(data));
+	if (!ptype)
+		goto out_unlock;
+
+	flush = 0;
+
+	list_for_each_entry(p, head, list) {
+		if (!NAPI_GRO_CB(p)->same_flow)
+			continue;
+
+		data_p = p->data + data_off;
+		if (lan9303_source_port(data) ^ lan9303_source_port(data_p))
+			NAPI_GRO_CB(p)->same_flow = 0;
+	}
+
+	skb_gro_pull(skb, LAN9303_TAG_LEN);
+	skb_gro_postpull_rcsum(skb, data, LAN9303_TAG_LEN);
+
+	pp = call_gro_receive(ptype->callbacks.gro_receive, head, skb);
+
+out_unlock:
+	rcu_read_unlock();
+out:
+	skb_gro_flush_final(skb, pp, flush);
+
+	return pp;
+}
+
+static int lan9303_gro_complete(struct sk_buff *skb, int nhoff)
+{
+	const struct packet_offload *ptype;
+	int err = -ENOENT;
+	__be16 proto;
+
+	proto = lan9303_encap_proto(skb->data + nhoff);
+	nhoff += LAN9303_TAG_LEN;
+
+	rcu_read_lock();
+
+	ptype = gro_find_complete_by_type(proto);
+	if (ptype)
+		err = ptype->callbacks.gro_complete(skb, nhoff);
+
+	rcu_read_unlock();
+
+	return err;
+}
+
 static const struct dsa_device_ops lan9303_netdev_ops = {
 	.name		= "lan9303",
 	.proto		= DSA_TAG_PROTO_LAN9303,
 	.xmit		= lan9303_xmit,
 	.rcv		= lan9303_rcv,
 	.flow_dissect	= lan9303_flow_dissect,
+	.gro_receive	= lan9303_gro_receive,
+	.gro_complete	= lan9303_gro_complete,
 	.overhead	= LAN9303_TAG_LEN,
 };
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
