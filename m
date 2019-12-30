Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2970312D127
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:48:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=td/3j9rv8nhUgia8Abxa55qtQOLDrUqvjsdcrF9I+uQ=; b=DjD2QYoGHMbaDX
	nMK5xVHy4I5cJH4je+SY4IzWSptsow3WHs/x644T9HXJDGmBOO8JfwoyXg/uc8wg2/cV9KrMY3EHQ
	l+xxkQNkcM9N+Q8M3l81bvcIwJk25GGCA/oWUmBN82/Fs/dWOZ/ty1iN8CSEywEABTAKYdq8+zbIj
	QvBiqsYM4unR/P3rO5UkJ6bdw0cBOkFZYMsY1uL/ea8c1TIIoVtGo5AQ3WaaCKw3dQlNPMQj74jdl
	aDPDR+EJ7YOdu/PUEloLTr9Pj/nFz8lXjP0Zc0LBJClxoqfeHKmN2nfxKrWVMOIgmWbfuDrR0QhDY
	oF51vt0Btw78xzulUNXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwLN-0000v0-AD; Mon, 30 Dec 2019 14:48:29 +0000
Received: from mail.dlink.ru ([178.170.168.18] helo=fd.dlink.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilwFd-0003xY-4w; Mon, 30 Dec 2019 14:42:37 +0000
Received: by fd.dlink.ru (Postfix, from userid 5000)
 id B08931B2196B; Mon, 30 Dec 2019 17:33:36 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru B08931B2196B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dlink.ru; s=mail;
 t=1577716416; bh=YK6u2SeWu80P0OI5Ey+MvrHZ5A/LDUTcrFuPYPEXrWc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=O/FVi7pIJ19rPaWCeIhTGpgbnXWL0lK2fz6ou6mmBXE83LNYfFlRUR0bTHJKoDHLq
 gR90XmpWWhvD08FNbpaRXTtKoavvbnXGNo8BfZq+9EnZlel3XBHMys+j5pzEsM2C8J
 QAqWQvI9U3pRSE7a3XATiBSuqAf6tQJOfjkcAIsM=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dlink.ru
X-Spam-Level: 
X-Spam-Status: No, score=-99.2 required=7.5 tests=BAYES_50,URIBL_BLOCKED,
 USER_IN_WHITELIST autolearn=disabled version=3.4.2
Received: from mail.rzn.dlink.ru (mail.rzn.dlink.ru [178.170.168.13])
 by fd.dlink.ru (Postfix) with ESMTP id 5C4301B2181E;
 Mon, 30 Dec 2019 17:31:25 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru 5C4301B2181E
Received: from mail.rzn.dlink.ru (localhost [127.0.0.1])
 by mail.rzn.dlink.ru (Postfix) with ESMTP id 5FCF01B229D0;
 Mon, 30 Dec 2019 17:31:23 +0300 (MSK)
Received: from localhost.localdomain (unknown [196.196.203.126])
 by mail.rzn.dlink.ru (Postfix) with ESMTPA;
 Mon, 30 Dec 2019 17:31:23 +0300 (MSK)
From: Alexander Lobakin <alobakin@dlink.ru>
To: "David S. Miller" <davem@davemloft.net>
Subject: [PATCH RFC net-next 11/19] net: dsa: tag_lan9303: add .flow_dissect()
 callback
Date: Mon, 30 Dec 2019 17:30:19 +0300
Message-Id: <20191230143028.27313-12-alobakin@dlink.ru>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191230143028.27313-1-alobakin@dlink.ru>
References: <20191230143028.27313-1-alobakin@dlink.ru>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_064233_442396_C51EC539 
X-CRM114-Status: UNSURE (   8.78  )
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

This fixes Rx packet hashing on RPS-enabled systems.
Misc: fix lan9303_netdev_ops identation.

Signed-off-by: Alexander Lobakin <alobakin@dlink.ru>
---
 net/dsa/tag_lan9303.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/net/dsa/tag_lan9303.c b/net/dsa/tag_lan9303.c
index eb0e7a32e53d..d328a44381a9 100644
--- a/net/dsa/tag_lan9303.c
+++ b/net/dsa/tag_lan9303.c
@@ -128,12 +128,20 @@ static struct sk_buff *lan9303_rcv(struct sk_buff *skb, struct net_device *dev,
 	return skb;
 }
 
+static void lan9303_flow_dissect(const struct sk_buff *skb, __be16 *proto,
+				 int *offset)
+{
+	*offset = LAN9303_TAG_LEN;
+	*proto = *(__be16 *)(skb->data + 2);
+}
+
 static const struct dsa_device_ops lan9303_netdev_ops = {
-	.name = "lan9303",
-	.proto	= DSA_TAG_PROTO_LAN9303,
-	.xmit = lan9303_xmit,
-	.rcv = lan9303_rcv,
-	.overhead = LAN9303_TAG_LEN,
+	.name		= "lan9303",
+	.proto		= DSA_TAG_PROTO_LAN9303,
+	.xmit		= lan9303_xmit,
+	.rcv		= lan9303_rcv,
+	.flow_dissect	= lan9303_flow_dissect,
+	.overhead	= LAN9303_TAG_LEN,
 };
 
 MODULE_LICENSE("GPL");
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
