Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9D0187A61
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 08:28:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2cc9vAa8yOY64IN59No8JE4Sd9zDzP+w6r771xWILoY=; b=Rmfc/dfsUqkP6p
	582fmVo1n/t7+9w37zeYnSehxctaoKNkQBWx4/JZPc2mHy405CZuNuY+HR6FaBF4Et7nP7JDVqyHI
	zwKwpGWODqCDk6xltGu0h4QbRA5yjycWy+0KDrXYksySfLNHuJ1mKdWOhQVGwgsbwVCwCwGRRsDmc
	kRW5438eQEimkQ0OFjW2VtHLMqsY1FQt1uqMBK3WyWOaGq092hjHKrJJW7aWibl0xLbCZ4gRxcyA/
	aQUTJXZFiu63GlTPQ4aJ4t3VSRab8UOFGAVh8R89JlZ8C6DamrD0ng85aPNb5XelSe01el484tr44
	08CMd3GAeJcBjgPoxOvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE6ec-0001xB-Jg; Tue, 17 Mar 2020 07:28:46 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE6dz-0001fK-5M
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 07:28:08 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02H7S3Vx062377;
 Tue, 17 Mar 2020 02:28:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584430083;
 bh=GkIWSmqvUvL2zn1Fz+5BNI1CldpfxGZjKHp5TqDc4bY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=g/vgMYhq3cJXgrTPYzpCByxDT1iz7zT2T4U4+7ZUuzJRqf5StDS2xaIJBY0TkJHgk
 dhxDV4yNZ9U+Q03qitJnB0Gyt4XjDtkNMRGVW5Au2qaeiBra5Mj/BSrL7AWPDruuuo
 Rs9+dnX9hNA16T+hR0XvnfAQuahEaKbF/IxuY6iM=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02H7S2Ln056091
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 17 Mar 2020 02:28:03 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 17
 Mar 2020 02:28:02 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 17 Mar 2020 02:28:02 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02H7S0wt123456;
 Tue, 17 Mar 2020 02:28:01 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
 Tero Kristo <t-kristo@ti.com>, "David S . Miller" <davem@davemloft.net>,
 netdev <netdev@vger.kernel.org>, Roger Quadros <rogerq@ti.com>,
 <devicetree@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v4 02/11] net: ethernet: ti: ale: fix seeing unreg
 mcast packets with promisc and allmulti disabled
Date: Tue, 17 Mar 2020 09:27:30 +0200
Message-ID: <20200317072739.23950-3-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200317072739.23950-1-grygorii.strashko@ti.com>
References: <20200317072739.23950-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_002807_329325_107BF4A8 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Grygorii Strashko <grygorii.strashko@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Murali Karicheri <m-karicheri2@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On AM65xx MCU CPSW2G NUSS and 66AK2E/L NUSS the unregistered multicast
packets are still can be received with promisc and allmulti disabled.

This happens, because ALE VLAN entries on these SoCs do not contain port
masks for reg/unreg mcast packets, but instead store indexes of
ALE_VLAN_MASK_MUXx_REG registers which intended for store port masks for
reg/unreg mcast packets.

ALE VLAN entry:UNREG_MCAST_FLOOD_INDEX -> ALE_VLAN_MASK_MUXx
ALE VLAN entry:REG_MCAST_FLOOD_INDEX -> ALE_VLAN_MASK_MUXy

The commit b361da837392 ("net: netcp: ale: add proper ale entry mask bits
for netcp switch ALE") update ALE code to support such ALE entries, it is
always used ALE_VLAN_MASK_MUX0_REG index in ALE VLAN entry for unreg mcast
packets mask configuration, which is read-only, at least for AM65xx MCU
CPSW2G NUSS and 66AK2E/L NUSS. As result unreg mcast packets are allowed
always.

Hence, update ALE code to use ALE_VLAN_MASK_MUX1_REG index for ALE VLAN
entries to configure unreg mcast port mask.

Fixes: b361da837392 ("net: netcp: ale: add proper ale entry mask bits for netcp switch ALE")
Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 drivers/net/ethernet/ti/cpsw_ale.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/ti/cpsw_ale.c b/drivers/net/ethernet/ti/cpsw_ale.c
index ecdbde539eb7..5815225c000c 100644
--- a/drivers/net/ethernet/ti/cpsw_ale.c
+++ b/drivers/net/ethernet/ti/cpsw_ale.c
@@ -122,6 +122,8 @@ DEFINE_ALE_FIELD(mcast,			40,	1)
 DEFINE_ALE_FIELD(vlan_unreg_mcast_idx,	20,	3)
 DEFINE_ALE_FIELD(vlan_reg_mcast_idx,	44,	3)
 
+#define NU_VLAN_UNREG_MCAST_IDX	1
+
 /* The MAC address field in the ALE entry cannot be macroized as above */
 static inline void cpsw_ale_get_addr(u32 *ale_entry, u8 *addr)
 {
@@ -455,6 +457,8 @@ int cpsw_ale_add_vlan(struct cpsw_ale *ale, u16 vid, int port_mask, int untag,
 		cpsw_ale_set_vlan_unreg_mcast(ale_entry, unreg_mcast,
 					      ale->vlan_field_bits);
 	} else {
+		cpsw_ale_set_vlan_unreg_mcast_idx(ale_entry,
+						  NU_VLAN_UNREG_MCAST_IDX);
 		cpsw_ale_set_vlan_mcast(ale, ale_entry, reg_mcast, unreg_mcast);
 	}
 	cpsw_ale_set_vlan_member_list(ale_entry, port_mask,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
