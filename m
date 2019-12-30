Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 271B112D121
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:47:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4GQF0GsfM65wnOjVx1z32DHUlwP4RQPl4o9xmzT60w=; b=oqf2Z8z/aqMCuj
	b+lDvv16AmH11CkJFlXeOKrUw0EUzKgdv/5NNAuuQEXT9ZNpzu2EzbKtxUQUSOi5mTigqd3LRMFXK
	QfpYeAWvJmsFwmhmExkdZr3PU/aBQqaGaR+SfMav8O9A3jtsq/HxlBJP2NlLd/CTYmShRc8HZT1V0
	OOf6GVRpYgjcJYyqdEKsmKqIFIDhkkwOXdIARDU0HMouibOMG7SigwthRI3DZ0EigDZCe5/+vDkQY
	21d2QWIbYQWIu6gJtE+UxJHWIQBjLd++yGr/ljMdDcA2hKizI4uh6voTIR1EatGGTYDGJ/JpgDfMU
	a4xrLMZJsSkuCFvNKGrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwJz-0008Dk-Nd; Mon, 30 Dec 2019 14:47:03 +0000
Received: from mail.dlink.ru ([178.170.168.18] helo=fd.dlink.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilwFb-0003xY-2A; Mon, 30 Dec 2019 14:42:32 +0000
Received: by fd.dlink.ru (Postfix, from userid 5000)
 id 12FCC1B205E4; Mon, 30 Dec 2019 17:31:47 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru 12FCC1B205E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dlink.ru; s=mail;
 t=1577716308; bh=18voDyGBMtcwId3z4bi4wS1wyOebnKJGhqqk04an6a0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=TgfnbWI9TBc3yVVN1K2QdM7eEbyAyE00CNl4wigySu3iFcTjAtP01FSXGw5+R0Cn7
 fwRFXsTjaNiqN6JS+c/zW1l6fC5qvX+S2LJHDvKfn5eKcwTuRczYazS+ki0EwQYXIv
 L5UPgTwDGkc1/OsNzAt1hGc6Zn063tb+VbM8Ubo8=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dlink.ru
X-Spam-Level: 
X-Spam-Status: No, score=-99.2 required=7.5 tests=BAYES_50,URIBL_BLOCKED,
 USER_IN_WHITELIST autolearn=disabled version=3.4.2
Received: from mail.rzn.dlink.ru (mail.rzn.dlink.ru [178.170.168.13])
 by fd.dlink.ru (Postfix) with ESMTP id D7C7E1B205DF;
 Mon, 30 Dec 2019 17:31:08 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru D7C7E1B205DF
Received: from mail.rzn.dlink.ru (localhost [127.0.0.1])
 by mail.rzn.dlink.ru (Postfix) with ESMTP id 1E48A1B229D1;
 Mon, 30 Dec 2019 17:31:07 +0300 (MSK)
Received: from localhost.localdomain (unknown [196.196.203.126])
 by mail.rzn.dlink.ru (Postfix) with ESMTPA;
 Mon, 30 Dec 2019 17:31:07 +0300 (MSK)
From: Alexander Lobakin <alobakin@dlink.ru>
To: "David S. Miller" <davem@davemloft.net>
Subject: [PATCH RFC net-next 03/19] net: dsa: tag_ar9331: add .flow_dissect()
 callback
Date: Mon, 30 Dec 2019 17:30:11 +0300
Message-Id: <20191230143028.27313-4-alobakin@dlink.ru>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191230143028.27313-1-alobakin@dlink.ru>
References: <20191230143028.27313-1-alobakin@dlink.ru>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_064231_280780_E37306E3 
X-CRM114-Status: UNSURE (   9.19  )
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

...to make RPS work correctly if user would like to configure it.
Misc: fix identation of ar9331_netdev_ops structure.

Signed-off-by: Alexander Lobakin <alobakin@dlink.ru>
---
 net/dsa/tag_ar9331.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/net/dsa/tag_ar9331.c b/net/dsa/tag_ar9331.c
index 466ffa92a474..399ca21ec03b 100644
--- a/net/dsa/tag_ar9331.c
+++ b/net/dsa/tag_ar9331.c
@@ -83,12 +83,20 @@ static struct sk_buff *ar9331_tag_rcv(struct sk_buff *skb,
 	return skb;
 }
 
+static void ar9331_tag_flow_dissect(const struct sk_buff *skb, __be16 *proto,
+				    int *offset)
+{
+	*offset = AR9331_HDR_LEN;
+	*proto = *(__be16 *)skb->data;
+}
+
 static const struct dsa_device_ops ar9331_netdev_ops = {
-	.name	= "ar9331",
-	.proto	= DSA_TAG_PROTO_AR9331,
-	.xmit	= ar9331_tag_xmit,
-	.rcv	= ar9331_tag_rcv,
-	.overhead = AR9331_HDR_LEN,
+	.name		= "ar9331",
+	.proto		= DSA_TAG_PROTO_AR9331,
+	.xmit		= ar9331_tag_xmit,
+	.rcv		= ar9331_tag_rcv,
+	.flow_dissect	= ar9331_tag_flow_dissect,
+	.overhead	= AR9331_HDR_LEN,
 };
 
 MODULE_LICENSE("GPL v2");
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
