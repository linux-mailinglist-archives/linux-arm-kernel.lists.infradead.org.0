Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CDB4A498
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 16:56:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CeRcqSjE11IHO9Lugxo5VMwc8vHvCh2MoOkSGRoKO08=; b=XM9MGdnbxCtH01
	iTuD3oKpY/qP7YUJpus/0cgjI8/QflIB8Lq58yxp1j8USPtFCmPdqW9k+vK0o0yfCjpmPVJwKfkKy
	1dt2q1DlZVW5Q66rUuJ1Dq9/a6YGGcZ1rf0csKGhn6DA0EWjhSv/HPb08AB4iwTBbwGL2QtAC60/i
	PLWuOlGbN02k++xxY4HEn7pPppvqBhXpTVlfhdWk0CO5s5fNA3+EzodKntX5mUMxd01ItZxZXNGgL
	6m7Wx/dZXYhIEgo/VJNAMvAuXCdK21S5Knkp1RnQSa6adWeV0xjbLBVDe4m2XDwZq8Jq9alVvqU+o
	GHdVU6SNFsIGK/LuxCXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFXR-0007vZ-Ix; Tue, 18 Jun 2019 14:56:45 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFWJ-00077h-8l
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 14:55:37 +0000
X-Originating-IP: 90.88.23.150
Received: from mc-bl-xps13.lan
 (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr [90.88.23.150])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 5D05340008;
 Tue, 18 Jun 2019 14:55:31 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: davem@davemloft.net
Subject: [PATCH net-next 3/4] net: mvpp2: cls: right-justify the C2 TCAM keys
Date: Tue, 18 Jun 2019 16:55:18 +0200
Message-Id: <20190618145519.27705-4-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190618145519.27705-1-maxime.chevallier@bootlin.com>
References: <20190618145519.27705-1-maxime.chevallier@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_075535_623574_D9244D2C 
X-CRM114-Status: UNSURE (   9.67  )
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

The C2 TCAM used for classification uses a key (Header Extracted Key)
built by concatenating several fields extracted from the packet header.

After a lot of trial-and-error and some guess work, it seems the HEK is
right justified, with the first fields being stored in the MSB, then
concatenated up until the LSB.

Until now, this doesn't cause any issue since all HEK fields we use are
full bytes. However this is an issue for the upcoming VLAN id and pri
extraction, which aren't full bytes.

Rework the way we built that TCAM key, by changing the order in which we
append the fields.

Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---
 drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
index 7cd9d6da0319..c4c467f5f4f6 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
@@ -1081,13 +1081,13 @@ static int mvpp2_port_c2_tcam_rule_add(struct mvpp2_port *port,
 
 	rule->c2_index = c2.index;
 
-	c2.tcam[0] = (rule->c2_tcam & 0xffff) |
+	c2.tcam[3] = (rule->c2_tcam & 0xffff) |
 		     ((rule->c2_tcam_mask & 0xffff) << 16);
-	c2.tcam[1] = ((rule->c2_tcam >> 16) & 0xffff) |
+	c2.tcam[2] = ((rule->c2_tcam >> 16) & 0xffff) |
 		     (((rule->c2_tcam_mask >> 16) & 0xffff) << 16);
-	c2.tcam[2] = ((rule->c2_tcam >> 32) & 0xffff) |
+	c2.tcam[1] = ((rule->c2_tcam >> 32) & 0xffff) |
 		     (((rule->c2_tcam_mask >> 32) & 0xffff) << 16);
-	c2.tcam[3] = ((rule->c2_tcam >> 48) & 0xffff) |
+	c2.tcam[0] = ((rule->c2_tcam >> 48) & 0xffff) |
 		     (((rule->c2_tcam_mask >> 48) & 0xffff) << 16);
 
 	pmap = BIT(port->id);
@@ -1222,7 +1222,7 @@ static int mvpp2_port_flt_rfs_rule_insert(struct mvpp2_port *port,
 static int mvpp2_cls_c2_build_match(struct mvpp2_rfs_rule *rule)
 {
 	struct flow_rule *flow = rule->flow;
-	int offs = 64;
+	int offs = 0;
 
 	if (flow_rule_match_key(flow, FLOW_DISSECTOR_KEY_PORTS)) {
 		struct flow_match_ports match;
@@ -1230,18 +1230,18 @@ static int mvpp2_cls_c2_build_match(struct mvpp2_rfs_rule *rule)
 		flow_rule_match_ports(flow, &match);
 		if (match.mask->src) {
 			rule->hek_fields |= MVPP22_CLS_HEK_OPT_L4SIP;
-			offs -= mvpp2_cls_hek_field_size(MVPP22_CLS_HEK_OPT_L4SIP);
 
 			rule->c2_tcam |= ((u64)ntohs(match.key->src)) << offs;
 			rule->c2_tcam_mask |= ((u64)ntohs(match.mask->src)) << offs;
+			offs += mvpp2_cls_hek_field_size(MVPP22_CLS_HEK_OPT_L4SIP);
 		}
 
 		if (match.mask->dst) {
 			rule->hek_fields |= MVPP22_CLS_HEK_OPT_L4DIP;
-			offs -= mvpp2_cls_hek_field_size(MVPP22_CLS_HEK_OPT_L4DIP);
 
 			rule->c2_tcam |= ((u64)ntohs(match.key->dst)) << offs;
 			rule->c2_tcam_mask |= ((u64)ntohs(match.mask->dst)) << offs;
+			offs += mvpp2_cls_hek_field_size(MVPP22_CLS_HEK_OPT_L4DIP);
 		}
 	}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
