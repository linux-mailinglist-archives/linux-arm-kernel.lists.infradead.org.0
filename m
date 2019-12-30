Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8F212D129
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:49:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gJFRUErFVTT96bM7tKXCyfJiP/qR5NRRJz0PjN7FZuM=; b=iAxisCyJsGuT+S
	M2sucnlGfVHu+wIod+HFSs8Mwot8k7Mh7bQ9TCK9RnajIa4H1jBysBTfCtqx/TYDcqSmrb8rra39k
	siawRqpK4vazTtufRc5pLKGKRwrounA87NmQ+auNmIjzQf1HflmiUKVaEueNCglEvNNRy6Qak783F
	EqYsTnk2i3hV0b3Ffr0HPTWtfA+58ytTq1d3J6zDgJADLaSwHeyK1sggbQNbHHgTdQJBA7cAW0DtO
	qL12pnt/dB7zBZ80oSBSTmoEmoqQS5gCNsDOkgPYZkhEGWg3y8sSjSWOIa6M7EtApMTfevqvo+yh4
	lp4LYkiaMIf/J598LVFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwLt-0001jk-5m; Mon, 30 Dec 2019 14:49:01 +0000
Received: from mail.dlink.ru ([178.170.168.18] helo=fd.dlink.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilwFe-0003xV-9G; Mon, 30 Dec 2019 14:42:38 +0000
Received: by fd.dlink.ru (Postfix, from userid 5000)
 id 31CC51B218DB; Mon, 30 Dec 2019 17:32:48 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru 31CC51B218DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dlink.ru; s=mail;
 t=1577716369; bh=NXl5VU/NmF4XHV2zVViXhu4aInL/BB6UJlu0+qQYx4Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=sGO8qxyGYybn/Po1WmhPp1sGjgBeQTnyzxajt/66jqkR93107HgRiCDRncWOJ2xlH
 9i+loa1yrvFE4FNXlgrOJD7tI2hsgb57/2uZejcAO8VOYrNMBKPtvdAX+exBfg3fPl
 Nrkzx5bxiaEhjgRf7SsEiDsGwaLCnrtK0tkXmJmE=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dlink.ru
X-Spam-Level: 
X-Spam-Status: No, score=-99.2 required=7.5 tests=BAYES_50,URIBL_BLOCKED,
 USER_IN_WHITELIST autolearn=disabled version=3.4.2
Received: from mail.rzn.dlink.ru (mail.rzn.dlink.ru [178.170.168.13])
 by fd.dlink.ru (Postfix) with ESMTP id 1C4DF1B217AA;
 Mon, 30 Dec 2019 17:31:19 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru 1C4DF1B217AA
Received: from mail.rzn.dlink.ru (localhost [127.0.0.1])
 by mail.rzn.dlink.ru (Postfix) with ESMTP id DF39D1B229D0;
 Mon, 30 Dec 2019 17:31:16 +0300 (MSK)
Received: from localhost.localdomain (unknown [196.196.203.126])
 by mail.rzn.dlink.ru (Postfix) with ESMTPA;
 Mon, 30 Dec 2019 17:31:16 +0300 (MSK)
From: Alexander Lobakin <alobakin@dlink.ru>
To: "David S. Miller" <davem@davemloft.net>
Subject: [PATCH RFC net-next 08/19] net: dsa: tag_gswip: add .flow_dissect()
 callback
Date: Mon, 30 Dec 2019 17:30:16 +0300
Message-Id: <20191230143028.27313-9-alobakin@dlink.ru>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191230143028.27313-1-alobakin@dlink.ru>
References: <20191230143028.27313-1-alobakin@dlink.ru>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_064235_362451_671B0EA2 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
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

In case user would like to configure RPS on such systems.
Misc: fix identation of gswip_netdev_ops structure.

Signed-off-by: Alexander Lobakin <alobakin@dlink.ru>
---
 net/dsa/tag_gswip.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/net/dsa/tag_gswip.c b/net/dsa/tag_gswip.c
index de920f6aac5b..d37289540ef3 100644
--- a/net/dsa/tag_gswip.c
+++ b/net/dsa/tag_gswip.c
@@ -97,12 +97,20 @@ static struct sk_buff *gswip_tag_rcv(struct sk_buff *skb,
 	return skb;
 }
 
+static void gswip_tag_flow_dissect(const struct sk_buff *skb, __be16 *proto,
+				   int *offset)
+{
+	*offset = GSWIP_RX_HEADER_LEN;
+	*proto = *(__be16 *)(skb->data + 6);
+}
+
 static const struct dsa_device_ops gswip_netdev_ops = {
-	.name = "gswip",
-	.proto	= DSA_TAG_PROTO_GSWIP,
-	.xmit = gswip_tag_xmit,
-	.rcv = gswip_tag_rcv,
-	.overhead = GSWIP_RX_HEADER_LEN,
+	.name		= "gswip",
+	.proto		= DSA_TAG_PROTO_GSWIP,
+	.xmit		= gswip_tag_xmit,
+	.rcv		= gswip_tag_rcv,
+	.flow_dissect	= gswip_tag_flow_dissect,
+	.overhead	= GSWIP_RX_HEADER_LEN,
 };
 
 MODULE_LICENSE("GPL");
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
