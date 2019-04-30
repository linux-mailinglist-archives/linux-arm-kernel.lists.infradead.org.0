Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB788F9A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:15:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eBpHJ40ZRN2kJcfkmolQKMLBXGIQHTEWtdmTtHXNZHA=; b=V5cpfZ1F2xB+09
	TnR0rGwq3tB3DZOGL+CtTpBjznZFPGO8TlO158R/8j6Gjq80WkkTKVUUe1BZETBV+izpfbe323GMl
	kNJGRvYoQZCSCLaqDYebCTd4FeLVzigeU9Rh/MRhzQ+/d2bwXWDq0WR8K2lwxnucAtbwFHL+hjYhD
	EFCKqJovn+y1nU7HKdMA2xiFhRr9jrCQoifkB3NJ28MlERC3qdgBmacsBMWdr+zJ8iKl7gJjGn4L/
	cCSvYBNhUSakVX20mjKDFrCmanrvdN6t4eLXC4ZbffhBxoFIKoMq/rRedP/XZ0vSnRQAa3o0D7MAx
	HfN/0wYGa1KcqY5dcZZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSb2-0003mD-E6; Tue, 30 Apr 2019 13:14:56 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSat-0003jQ-31
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:14:48 +0000
X-Originating-IP: 90.88.149.145
Received: from mc-bl-xps13.lan
 (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr [90.88.149.145])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 2F8581BF20C;
 Tue, 30 Apr 2019 13:14:34 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: davem@davemloft.net
Subject: [PATCH net-next 0/4] net: mvpp2: cls: Add classification
Date: Tue, 30 Apr 2019 15:14:25 +0200
Message-Id: <20190430131429.19361-1-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_061447_284206_6614925A 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>, netdev@vger.kernel.org,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>, nadavh@marvell.com,
 Saeed Mahameed <saeedm@mellanox.com>, linux-arm-kernel@lists.infradead.org,
 thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com, stefanc@marvell.com,
 mw@semihalf.com, Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi everyone,

This series is a rework of the previously standalone patch adding
classification support for mvpp2 :

https://lore.kernel.org/netdev/20190423075031.26074-1-maxime.chevallier@bootlin.com/

This patch has been reworked according to Saeed's review, to make sure
that the location of the rule is always respected and serves as a way to
prioritize rules between each other. This the 3rd iteration of this
submission, but since it's now a series, I reset the revision numbering.

This series implements that in a limited configuration for now, since we
limit the total number of rules per port to 4.

The main factors for this limitation are that :
 - We share the classification tables between all ports (4 max, although
   one is only used for internal loopback), hence we have to perform a
   logical separation between rules, which is done today by dedicated
   ranges for each port in each table

 - The "Flow table", which dictates which lookups operations are
   performed for an ingress packet, in subdivided into 22 "sub flows",
   each corresponding to a traffic type based on the L3 proto, L4
   proto, the presence or not of a VLAN tag and the L3 fragmentation.

   This makes so that when adding a rule, it has to be added into each
   of these subflows, introducing duplications of entries and limiting
   our max number of entries.

These limitations can be overcomed in several ways, but for readability
sake, I'd rather submit basic classification offload support for now,
and improve it gradually.

This series also adds a small cosmetic cleanup patch (1), and also adds
support for the "Drop" action compared to the first submission of this
feature. It is simple enough to be added with this basic support.

Compared to the first submissions, the NETIF_F_NTUPLE flag was also
removed, following Saeed's comment.

Thanks,

Maxime

Maxime Chevallier (4):
  net: mvpp2: cls: Remove extra whitespace in mvpp2_cls_flow_write
  net: mvpp2: cls: Use a bitfield to represent the flow_type
  net: mvpp2: cls: Add Classification offload support
  net: mvpp2: cls: Allow dropping packets with classification offload

 drivers/net/ethernet/marvell/mvpp2/mvpp2.h    |  42 ++
 .../net/ethernet/marvell/mvpp2/mvpp2_cls.c    | 497 +++++++++++++++---
 .../net/ethernet/marvell/mvpp2/mvpp2_cls.h    |  70 ++-
 .../net/ethernet/marvell/mvpp2/mvpp2_main.c   |  20 +-
 4 files changed, 545 insertions(+), 84 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
