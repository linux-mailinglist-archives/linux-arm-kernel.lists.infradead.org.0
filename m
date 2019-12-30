Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 439A112D0DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:38:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mrDlLjIZwvFatTtWMwEIR23LX0BG/rNm47iytzN3k/Q=; b=EY2t0Ao1MfCIXq
	5P49tptQizGBh/C2H9fG2MgqOfHQwV5fTXONIJ2XGB4FuV+HNIZdZny0VkBqp8gThP35I6gWUJ6As
	SIRJ2ews6R23MiU3xatxSyvYNZL/rQDyVXhWRRhrSMAj54OP+fDlraA75NoBECiqEKbknd6bTuK1Y
	+2ma/agN1sk1Ja0lLBbgyUjoIehpaSYBchRoPkkzd4FED3FHEJyKQqqvQvM/5BD316krt61b9Bvf5
	WDwZsChGNmIPe/NJR/H6fsx3KxqjQ1hxxCEAu2xRFCr9n4Gz31Ui003MspKh96dPO9/9hbfteSphp
	27ogpWOrf8tsFM3FZaSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwBQ-0001SM-FP; Mon, 30 Dec 2019 14:38:12 +0000
Received: from fd.dlink.ru ([178.170.168.18])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilwAk-0000xS-4X; Mon, 30 Dec 2019 14:37:33 +0000
Received: by fd.dlink.ru (Postfix, from userid 5000)
 id B981F1B201FA; Mon, 30 Dec 2019 17:31:16 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru B981F1B201FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dlink.ru; s=mail;
 t=1577716277; bh=RwOI8oAxd+fijp+Xuc6Oa+5EbKzjW8W4KCZUcnbzQOs=;
 h=From:To:Cc:Subject:Date;
 b=o1PvHtIvToJL7zKhu8jpjdoeiOaz87nSFOdQtyEXLajOapuuo7RLoHiwKzn46tHm0
 Nl0paQ7EifqSHDnuCh9Ai+IK6J1msf833KXg/KQOLaz49bNs9JRD7za5TZD9K/6mL4
 zYFhTQbBXEbWXLw9vLUyzoA0PuKuAM3OAIns7n3g=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dlink.ru
X-Spam-Level: 
X-Spam-Status: No, score=-99.2 required=7.5 tests=BAYES_50,USER_IN_WHITELIST
 autolearn=disabled version=3.4.2
Received: from mail.rzn.dlink.ru (mail.rzn.dlink.ru [178.170.168.13])
 by fd.dlink.ru (Postfix) with ESMTP id C75FB1B205E4;
 Mon, 30 Dec 2019 17:31:03 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru C75FB1B205E4
Received: from mail.rzn.dlink.ru (localhost [127.0.0.1])
 by mail.rzn.dlink.ru (Postfix) with ESMTP id CA84D1B229CB;
 Mon, 30 Dec 2019 17:31:01 +0300 (MSK)
Received: from localhost.localdomain (unknown [196.196.203.126])
 by mail.rzn.dlink.ru (Postfix) with ESMTPA;
 Mon, 30 Dec 2019 17:31:01 +0300 (MSK)
From: Alexander Lobakin <alobakin@dlink.ru>
To: "David S. Miller" <davem@davemloft.net>
Subject: [PATCH RFC net-next 00/20] net: dsa: add GRO support
Date: Mon, 30 Dec 2019 17:30:08 +0300
Message-Id: <20191230143028.27313-1-alobakin@dlink.ru>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_063730_546633_EE1872C3 
X-CRM114-Status: UNSURE (   9.47  )
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

As of now, napi_gro_receive() in cases where the corresponding
device is installed as CPU port of DSA-driven switch is in fact
an overheaded version of netif_receive_skb{,_list}() with no
advantages over:

- dev_gro_receive() can't find packet_offload for ETH_P_XDSA type;
- so it immediately returns GRO_NORMAL;
- napi_skb_finish() passes skb to gro_normal_one() -> netstack.

This series adds a basic infrastructure to allow DSA taggers to
implement GRO callbacks and adds GRO support for 5 tagger drivers:
* tag_ar9331
* tag_gswip
* tag_lan9303
* tag_mtk
* tag_qca

I didn't make it for the rest because they are in fact way more
complicated (e.g. combined DSA + 802.1q tag etc.) and require
more familiarity with them and tests on the real hardware, which
is inaccesible for me at the moment.

This series also includes a bunch of random fixes in several tagger
drivers and some cleanup. I left them all in one place as they depend
on each other, but there's no problem for me to split this into
different series.

I mark this as RFC, and there are the key questions for maintainers,
developers, users etc.:
- Do we need GRO support for DSA at all?
- Which tagger protocols really need it and which don't?
- Are the actual changes correct in every single tagger code?
- Does this series bring any performance improvements on the
  affected systems?
- Would anybody mind if we'd add DSA support to napi_gro_frags()?
- Any code/other comments/notes.

I also would like to see more taggers with GRO callbacks, such as
DSA and EDSA, and the results of their addition.

Alexander Lobakin (20):
  net: dsa: make .flow_dissect() callback returning void
  net: dsa: add GRO support infrastructure
  net: dsa: tag_ar9331: add .flow_dissect() callback
  net: dsa: tag_ar9331: split out common tag accessors
  net: dsa: tag_ar9331: add GRO callbacks
  net: dsa: tag_gswip: fix typo in tag name
  net: dsa: tag_gswip: switch to bitfield helpers
  net: dsa: tag_gswip: add .flow_dissect() callback
  net: dsa: tag_gswip: split out common tag accessors
  net: dsa: tag_gswip: add GRO callbacks
  net: dsa: tag_lan9303: add .flow_dissect() callback
  net: dsa: tag_lan9303: split out common tag accessors
  net: dsa: tag_lan9303: add GRO callbacks
  net: dsa: tag_mtk: split out common tag accessors
  net: dsa: tag_mtk: add GRO callbacks
  net: dsa: tag_qca: fix doubled Tx statistics
  net: dsa: tag_qca: switch to bitfield helpers
  net: dsa: tag_qca: split out common tag accessors
  net: dsa: tag_qca: add GRO callbacks
  net: core: add (unlikely) DSA support in napi_gro_frags()

 include/net/dsa.h         |  10 ++-
 net/core/dev.c            |  11 ++-
 net/core/flow_dissector.c |   8 +-
 net/dsa/dsa.c             |  43 +++++++++-
 net/dsa/dsa2.c            |   1 +
 net/dsa/tag_ar9331.c      | 139 ++++++++++++++++++++++++++-----
 net/dsa/tag_dsa.c         |   5 +-
 net/dsa/tag_edsa.c        |   5 +-
 net/dsa/tag_gswip.c       | 126 +++++++++++++++++++++++-----
 net/dsa/tag_lan9303.c     | 139 ++++++++++++++++++++++++++-----
 net/dsa/tag_mtk.c         | 115 +++++++++++++++++++++-----
 net/dsa/tag_qca.c         | 167 ++++++++++++++++++++++++++++----------
 12 files changed, 629 insertions(+), 140 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
