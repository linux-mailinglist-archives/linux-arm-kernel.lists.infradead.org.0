Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2A34A49A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 16:57:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UfzKirD7qEGWoB97I1CHfPA63h0+XO2fxs6G2OKWRVo=; b=kpa3fSQ3enVMAd
	+UD4y7p70Xi+u9soIrj+8yqiiGpuPZcl1npIP+Lq/p/zxOlX0FTIUclJsxryjjsrBffuYrqGf4H8f
	0t/kumCqys0m8U5hm5S03PA7Dk2jRoF3VWrU5SOMFCw3c5lzDjAyG48w/lP8jFwI0AKbAfihBpzlE
	nMpQDvo0asozba5k+xfk0HQhcqP/ZFTyCMLbMYi69LgUY8MdU7TpVHsli61slMQXiAQKhTUotwF9e
	GpWS+zrgn6QyhZkOZjJGXKq+kiOpjwhPf+rRmcFHuLj2l1RTeRPwSovnL2i15NoKscNYV8n/6FuxF
	aOm5EC90V/VqIQRVCyjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFXj-0008BI-SA; Tue, 18 Jun 2019 14:57:03 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFWM-0007A3-Gs
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 14:55:41 +0000
X-Originating-IP: 90.88.23.150
Received: from mc-bl-xps13.lan
 (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr [90.88.23.150])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id EBAFA4000F;
 Tue, 18 Jun 2019 14:55:33 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: davem@davemloft.net
Subject: [PATCH net-next 4/4] net: mvpp2: cls: Add steering based on vlan Id
 and priority.
Date: Tue, 18 Jun 2019 16:55:19 +0200
Message-Id: <20190618145519.27705-5-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190618145519.27705-1-maxime.chevallier@bootlin.com>
References: <20190618145519.27705-1-maxime.chevallier@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_075538_907327_E9144A51 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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

This commit allows using the vlan Id and priority as parts of the key
for classification offload. These fields are extracted from the
outermost tag, if multiple tags are present.

Vlan Id and priority are considered as 2 different fields by the
classifier, however the fields are both appended in the Header Extracted
Key in the same layout as they are found in the tags. This means that
when steering only based on the prio, a 16-bit slot is still taken in
the HEK.

The classifier doesn't allow extracting the DEI bit from the tag, so we
explicitly prevent user from using this bit in the key.

This commit adds the vlan priotity as a compatible HEK field for
tagged traffic, meaning that we limit the possibility of extracting this
field only to the flows that contain tagged traffic.

Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---
 .../net/ethernet/marvell/mvpp2/mvpp2_cls.c    | 97 ++++++++++++++-----
 .../net/ethernet/marvell/mvpp2/mvpp2_cls.h    | 23 +++--
 2 files changed, 86 insertions(+), 34 deletions(-)

diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
index c4c467f5f4f6..b195fb5d61f4 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
@@ -44,17 +44,17 @@ static const struct mvpp2_cls_flow cls_flows[MVPP2_N_PRS_FLOWS] = {
 
 	/* TCP over IPv4 flows, Not fragmented, with vlan tag */
 	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP4, MVPP2_FL_IP4_TCP_NF_TAG,
-		       MVPP22_CLS_HEK_IP4_5T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP4_5T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP4 | MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK),
 
 	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP4, MVPP2_FL_IP4_TCP_NF_TAG,
-		       MVPP22_CLS_HEK_IP4_5T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP4_5T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP4_OPT | MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK),
 
 	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP4, MVPP2_FL_IP4_TCP_NF_TAG,
-		       MVPP22_CLS_HEK_IP4_5T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP4_5T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP4_OTHER | MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK),
 
@@ -79,17 +79,17 @@ static const struct mvpp2_cls_flow cls_flows[MVPP2_N_PRS_FLOWS] = {
 
 	/* TCP over IPv4 flows, fragmented, with vlan tag */
 	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP4, MVPP2_FL_IP4_TCP_FRAG_TAG,
-		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP4 | MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK),
 
 	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP4, MVPP2_FL_IP4_TCP_FRAG_TAG,
-		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP4_OPT | MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK),
 
 	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP4, MVPP2_FL_IP4_TCP_FRAG_TAG,
-		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP4_OTHER | MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK),
 
@@ -114,17 +114,17 @@ static const struct mvpp2_cls_flow cls_flows[MVPP2_N_PRS_FLOWS] = {
 
 	/* UDP over IPv4 flows, Not fragmented, with vlan tag */
 	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP4, MVPP2_FL_IP4_UDP_NF_TAG,
-		       MVPP22_CLS_HEK_IP4_5T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP4_5T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP4 | MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK),
 
 	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP4, MVPP2_FL_IP4_UDP_NF_TAG,
-		       MVPP22_CLS_HEK_IP4_5T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP4_5T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP4_OPT | MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK),
 
 	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP4, MVPP2_FL_IP4_UDP_NF_TAG,
-		       MVPP22_CLS_HEK_IP4_5T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP4_5T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP4_OTHER | MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK),
 
@@ -149,17 +149,17 @@ static const struct mvpp2_cls_flow cls_flows[MVPP2_N_PRS_FLOWS] = {
 
 	/* UDP over IPv4 flows, fragmented, with vlan tag */
 	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP4, MVPP2_FL_IP4_UDP_FRAG_TAG,
-		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP4 | MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK),
 
 	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP4, MVPP2_FL_IP4_UDP_FRAG_TAG,
-		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP4_OPT | MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK),
 
 	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP4, MVPP2_FL_IP4_UDP_FRAG_TAG,
-		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP4_OTHER | MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK),
 
@@ -178,12 +178,12 @@ static const struct mvpp2_cls_flow cls_flows[MVPP2_N_PRS_FLOWS] = {
 
 	/* TCP over IPv6 flows, not fragmented, with vlan tag */
 	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP6, MVPP2_FL_IP6_TCP_NF_TAG,
-		       MVPP22_CLS_HEK_IP6_5T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP6_5T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP6 | MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK),
 
 	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP6, MVPP2_FL_IP6_TCP_NF_TAG,
-		       MVPP22_CLS_HEK_IP6_5T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP6_5T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP6_EXT | MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK),
 
@@ -202,13 +202,13 @@ static const struct mvpp2_cls_flow cls_flows[MVPP2_N_PRS_FLOWS] = {
 
 	/* TCP over IPv6 flows, fragmented, with vlan tag */
 	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP6, MVPP2_FL_IP6_TCP_FRAG_TAG,
-		       MVPP22_CLS_HEK_IP6_2T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP6_2T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP6 | MVPP2_PRS_RI_IP_FRAG_TRUE |
 		       MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK),
 
 	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP6, MVPP2_FL_IP6_TCP_FRAG_TAG,
-		       MVPP22_CLS_HEK_IP6_2T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP6_2T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP6_EXT | MVPP2_PRS_RI_IP_FRAG_TRUE |
 		       MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK),
@@ -228,12 +228,12 @@ static const struct mvpp2_cls_flow cls_flows[MVPP2_N_PRS_FLOWS] = {
 
 	/* UDP over IPv6 flows, not fragmented, with vlan tag */
 	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP6, MVPP2_FL_IP6_UDP_NF_TAG,
-		       MVPP22_CLS_HEK_IP6_5T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP6_5T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP6 | MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK),
 
 	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP6, MVPP2_FL_IP6_UDP_NF_TAG,
-		       MVPP22_CLS_HEK_IP6_5T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP6_5T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP6_EXT | MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK),
 
@@ -252,13 +252,13 @@ static const struct mvpp2_cls_flow cls_flows[MVPP2_N_PRS_FLOWS] = {
 
 	/* UDP over IPv6 flows, fragmented, with vlan tag */
 	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP6, MVPP2_FL_IP6_UDP_FRAG_TAG,
-		       MVPP22_CLS_HEK_IP6_2T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP6_2T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP6 | MVPP2_PRS_RI_IP_FRAG_TRUE |
 		       MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK),
 
 	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP6, MVPP2_FL_IP6_UDP_FRAG_TAG,
-		       MVPP22_CLS_HEK_IP6_2T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP6_2T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP6_EXT | MVPP2_PRS_RI_IP_FRAG_TRUE |
 		       MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK),
@@ -279,15 +279,15 @@ static const struct mvpp2_cls_flow cls_flows[MVPP2_N_PRS_FLOWS] = {
 
 	/* IPv4 flows, with vlan tag */
 	MVPP2_DEF_FLOW(MVPP22_FLOW_IP4, MVPP2_FL_IP4_TAG,
-		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP4,
 		       MVPP2_PRS_RI_L3_PROTO_MASK),
 	MVPP2_DEF_FLOW(MVPP22_FLOW_IP4, MVPP2_FL_IP4_TAG,
-		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP4_OPT,
 		       MVPP2_PRS_RI_L3_PROTO_MASK),
 	MVPP2_DEF_FLOW(MVPP22_FLOW_IP4, MVPP2_FL_IP4_TAG,
-		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP4_OTHER,
 		       MVPP2_PRS_RI_L3_PROTO_MASK),
 
@@ -303,11 +303,11 @@ static const struct mvpp2_cls_flow cls_flows[MVPP2_N_PRS_FLOWS] = {
 
 	/* IPv6 flows, with vlan tag */
 	MVPP2_DEF_FLOW(MVPP22_FLOW_IP6, MVPP2_FL_IP6_TAG,
-		       MVPP22_CLS_HEK_IP6_2T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP6_2T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP6,
 		       MVPP2_PRS_RI_L3_PROTO_MASK),
 	MVPP2_DEF_FLOW(MVPP22_FLOW_IP6, MVPP2_FL_IP6_TAG,
-		       MVPP22_CLS_HEK_IP6_2T | MVPP22_CLS_HEK_OPT_VLAN,
+		       MVPP22_CLS_HEK_IP6_2T | MVPP22_CLS_HEK_TAGGED,
 		       MVPP2_PRS_RI_L3_IP6,
 		       MVPP2_PRS_RI_L3_PROTO_MASK),
 
@@ -655,6 +655,9 @@ static int mvpp2_flow_set_hek_fields(struct mvpp2_cls_flow_entry *fe,
 		case MVPP22_CLS_HEK_OPT_VLAN:
 			field_id = MVPP22_CLS_FIELD_VLAN;
 			break;
+		case MVPP22_CLS_HEK_OPT_VLAN_PRI:
+			field_id = MVPP22_CLS_FIELD_VLAN_PRI;
+			break;
 		case MVPP22_CLS_HEK_OPT_IP4SA:
 			field_id = MVPP22_CLS_FIELD_IP4SA;
 			break;
@@ -689,6 +692,10 @@ static int mvpp2_cls_hek_field_size(u32 field)
 	switch (field) {
 	case MVPP22_CLS_HEK_OPT_MAC_DA:
 		return 48;
+	case MVPP22_CLS_HEK_OPT_VLAN:
+		return 12;
+	case MVPP22_CLS_HEK_OPT_VLAN_PRI:
+		return 3;
 	case MVPP22_CLS_HEK_OPT_IP4SA:
 	case MVPP22_CLS_HEK_OPT_IP4DA:
 		return 32;
@@ -777,6 +784,9 @@ u16 mvpp2_flow_get_hek_fields(struct mvpp2_cls_flow_entry *fe)
 		case MVPP22_CLS_FIELD_VLAN:
 			hash_opts |= MVPP22_CLS_HEK_OPT_VLAN;
 			break;
+		case MVPP22_CLS_FIELD_VLAN_PRI:
+			hash_opts |= MVPP22_CLS_HEK_OPT_VLAN_PRI;
+			break;
 		case MVPP22_CLS_FIELD_L3_PROTO:
 			hash_opts |= MVPP22_CLS_HEK_OPT_L3_PROTO;
 			break;
@@ -1224,6 +1234,43 @@ static int mvpp2_cls_c2_build_match(struct mvpp2_rfs_rule *rule)
 	struct flow_rule *flow = rule->flow;
 	int offs = 0;
 
+	/* The order of insertion in C2 tcam must match the order in which
+	 * the fields are found in the header
+	 */
+	if (flow_rule_match_key(flow, FLOW_DISSECTOR_KEY_VLAN)) {
+		struct flow_match_vlan match;
+
+		flow_rule_match_vlan(flow, &match);
+		if (match.mask->vlan_id) {
+			rule->hek_fields |= MVPP22_CLS_HEK_OPT_VLAN;
+
+			rule->c2_tcam |= ((u64)match.key->vlan_id) << offs;
+			rule->c2_tcam_mask |= ((u64)match.mask->vlan_id) << offs;
+
+			/* Don't update the offset yet */
+		}
+
+		if (match.mask->vlan_priority) {
+			rule->hek_fields |= MVPP22_CLS_HEK_OPT_VLAN_PRI;
+
+			/* VLAN pri is always at offset 13 relative to the
+			 * current offset
+			 */
+			rule->c2_tcam |= ((u64)match.key->vlan_priority) <<
+				(offs + 13);
+			rule->c2_tcam_mask |= ((u64)match.mask->vlan_priority) <<
+				(offs + 13);
+		}
+
+		if (match.mask->vlan_dei)
+			return -EOPNOTSUPP;
+
+		/* vlan id and prio always seem to take a full 16-bit slot in
+		 * the Header Extracted Key.
+		 */
+		offs += 16;
+	}
+
 	if (flow_rule_match_key(flow, FLOW_DISSECTOR_KEY_PORTS)) {
 		struct flow_match_ports match;
 
diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.h b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.h
index 957f80b31743..8867f25afab4 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.h
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.h
@@ -33,15 +33,16 @@ enum mvpp2_cls_engine {
 };
 
 #define MVPP22_CLS_HEK_OPT_MAC_DA	BIT(0)
-#define MVPP22_CLS_HEK_OPT_VLAN		BIT(1)
-#define MVPP22_CLS_HEK_OPT_L3_PROTO	BIT(2)
-#define MVPP22_CLS_HEK_OPT_IP4SA	BIT(3)
-#define MVPP22_CLS_HEK_OPT_IP4DA	BIT(4)
-#define MVPP22_CLS_HEK_OPT_IP6SA	BIT(5)
-#define MVPP22_CLS_HEK_OPT_IP6DA	BIT(6)
-#define MVPP22_CLS_HEK_OPT_L4SIP	BIT(7)
-#define MVPP22_CLS_HEK_OPT_L4DIP	BIT(8)
-#define MVPP22_CLS_HEK_N_FIELDS		9
+#define MVPP22_CLS_HEK_OPT_VLAN_PRI	BIT(1)
+#define MVPP22_CLS_HEK_OPT_VLAN		BIT(2)
+#define MVPP22_CLS_HEK_OPT_L3_PROTO	BIT(3)
+#define MVPP22_CLS_HEK_OPT_IP4SA	BIT(4)
+#define MVPP22_CLS_HEK_OPT_IP4DA	BIT(5)
+#define MVPP22_CLS_HEK_OPT_IP6SA	BIT(6)
+#define MVPP22_CLS_HEK_OPT_IP6DA	BIT(7)
+#define MVPP22_CLS_HEK_OPT_L4SIP	BIT(8)
+#define MVPP22_CLS_HEK_OPT_L4DIP	BIT(9)
+#define MVPP22_CLS_HEK_N_FIELDS		10
 
 #define MVPP22_CLS_HEK_L4_OPTS	(MVPP22_CLS_HEK_OPT_L4SIP | \
 				 MVPP22_CLS_HEK_OPT_L4DIP)
@@ -59,8 +60,12 @@ enum mvpp2_cls_engine {
 #define MVPP22_CLS_HEK_IP6_5T	(MVPP22_CLS_HEK_IP6_2T | \
 				 MVPP22_CLS_HEK_L4_OPTS)
 
+#define MVPP22_CLS_HEK_TAGGED	(MVPP22_CLS_HEK_OPT_VLAN | \
+				 MVPP22_CLS_HEK_OPT_VLAN_PRI)
+
 enum mvpp2_cls_field_id {
 	MVPP22_CLS_FIELD_MAC_DA = 0x03,
+	MVPP22_CLS_FIELD_VLAN_PRI = 0x05,
 	MVPP22_CLS_FIELD_VLAN = 0x06,
 	MVPP22_CLS_FIELD_L3_PROTO = 0x0f,
 	MVPP22_CLS_FIELD_IP4SA = 0x10,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
