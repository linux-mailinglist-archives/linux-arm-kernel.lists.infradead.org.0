Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72EC84A493
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 16:56:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n786n8A7cus1tUePn/wXxIddWVDppwcBxkidg2uJ7oA=; b=Uzwza8nbE1AhTY
	uf+vTG6lNyiDmle/YUJf/1szbvHlJRV+aam00UadIKTd1G54ZG0F69eqNLtxu0mTE+A6YEDn0Pv7c
	TCOC1m0iQTEQW8i1P0Dcb/EFfjPewqN7h0FxEqwKmSexBdXHOu5dFE+C9s7tO49XsZ2hpYtgaNhpL
	WfqLWFJqKWxAXLhJ4J3I8wYZg3kgMd2D1w48XxlDo9cG89E8IgMW13G/LtbzxtkokPjbEJd62hUP3
	I6fJ+NaeX5ja7my1cRi6t78b2A8EM2RVkwC+eKaVVE6fKXcG9jc/bSAPEgckG77dj0oT4f16L0P5i
	9MgoH39KlvxDwd7oGemw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFWq-0007H7-PA; Tue, 18 Jun 2019 14:56:08 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFWG-00076d-N0
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 14:55:34 +0000
X-Originating-IP: 90.88.23.150
Received: from mc-bl-xps13.lan
 (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr [90.88.23.150])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 5309240014;
 Tue, 18 Jun 2019 14:55:28 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: davem@davemloft.net
Subject: [PATCH net-next 2/4] net: mvpp2: cls: Only select applicable flows of
 classification offload
Date: Tue, 18 Jun 2019 16:55:17 +0200
Message-Id: <20190618145519.27705-3-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190618145519.27705-1-maxime.chevallier@bootlin.com>
References: <20190618145519.27705-1-maxime.chevallier@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_075532_908417_207ECCE3 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>, netdev@vger.kernel.org,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>, nadavh@marvell.com,
 thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com, stefanc@marvell.com,
 mw@semihalf.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The way we currently handle classification offload and RSS is by having
dedicated lookup sequences in the flow table, each being selected
depending on several fields being present in the packet header.

We need to make sure the classification operation we want to perform can
be done in each flow we want to insert it into. As an example,
classifying on VLAN tag can only be done on flows used for tagged
traffic.

This commit makes sure we don't insert rules in flows we aren't
compatible with.

Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---
 drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
index 8af13316ecb1..7cd9d6da0319 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
@@ -1201,6 +1201,9 @@ static int mvpp2_port_flt_rfs_rule_insert(struct mvpp2_port *port,
 		if (!flow)
 			return 0;
 
+		if ((rule->hek_fields & flow->supported_hash_opts) != rule->hek_fields)
+			continue;
+
 		index = MVPP2_CLS_FLT_C2_RFS(port->id, flow->flow_id, rule->loc);
 
 		mvpp2_cls_flow_read(priv, index, &fe);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
