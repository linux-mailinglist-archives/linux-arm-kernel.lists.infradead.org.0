Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C3B184E2A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 18:56:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nmaFvvyxHQC/BZc/nUt4SeLdrvtCirm2+fu6l86iZLY=; b=Wzg6oGwRPqhUoY
	GFY91IEnFxBYOX+ltfFdJEu7CXzXqR5SRg8RUsvWm0WRxALQxu+/oPYSbhblDlbzdXku5WO+JWslE
	EXU1reFzi9Vj7d+P3o0kqmKEIn1Nx4XAbtQ+tQXxP/6SXhUXYTNdAexViKonYigyng06Eq/kYUB37
	KYVRyliU4QeG9axQRZZrpNMqCyQQ/ZOhzG75C6xipTLgzQTXl2q+VWVETH3IPhyLwY8gG3TIUV0oO
	8xhhHUaAhwBFLSc6Kn7WopaAwpab/NomlmsygOjJKb8h+WBXLwk19f8ky8jZkID74LmrK0qmIk6n5
	/sEFkTZ1ZGIplO/+wBEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCoXv-0000Zs-Un; Fri, 13 Mar 2020 17:56:31 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCoXF-0000Cb-4H
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 17:55:50 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02DHtj32000928;
 Fri, 13 Mar 2020 12:55:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584122146;
 bh=pfOH4ox5Paw4s1ADE2d3H27U4ycp6Cba0NtZ1NV3DM4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=bVMlB+fUlbCCY52fOhdagU/nDYeyFMQu0ID1D7L/nKoS3XjTKf8PA83THIG7FX7eq
 Lhrf9Z9guz0e+e9T3LiX6ljCjEM+FJukr9SEeTyMvvszEYYpW8Oy4WyrT49MYO8/fO
 lUne4ogczpsCYvFJ0xOrKhAwYoSzS3KvyJD3P/ys=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02DHtjWc010102
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 13 Mar 2020 12:55:45 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 13
 Mar 2020 12:55:45 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 13 Mar 2020 12:55:45 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02DHti0K073394;
 Fri, 13 Mar 2020 12:55:45 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Rob Herring <robh+dt@kernel.org>, Tero Kristo <t-kristo@ti.com>, "David S
 . Miller" <davem@davemloft.net>, netdev <netdev@vger.kernel.org>, Roger
 Quadros <rogerq@ti.com>, <devicetree@vger.kernel.org>, Jakub Kicinski
 <kuba@kernel.org>
Subject: [PATCH net-next v3 03/10] net: ethernet: ti: ale: am65: add support
 for default thread cfg
Date: Fri, 13 Mar 2020 19:55:04 +0200
Message-ID: <20200313175511.2155-4-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200313175511.2155-1-grygorii.strashko@ti.com>
References: <20200313175511.2155-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_105549_306903_CEA8654C 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Murali Karicheri <m-karicheri2@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for default thread configuration for AM65x CPSW NUSS ALE to
allow route all ingress packets to one default RX UDMA flow.

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 drivers/net/ethernet/ti/cpsw_ale.c | 18 ++++++++++++++++++
 drivers/net/ethernet/ti/cpsw_ale.h |  2 ++
 2 files changed, 20 insertions(+)

diff --git a/drivers/net/ethernet/ti/cpsw_ale.c b/drivers/net/ethernet/ti/cpsw_ale.c
index 719e7846127c..0374e6936091 100644
--- a/drivers/net/ethernet/ti/cpsw_ale.c
+++ b/drivers/net/ethernet/ti/cpsw_ale.c
@@ -44,6 +44,8 @@
 #define ALE_UNKNOWNVLAN_FORCE_UNTAG_EGRESS	0x9C
 #define ALE_VLAN_MASK_MUX(reg)			(0xc0 + (0x4 * (reg)))
 
+#define AM65_CPSW_ALE_THREAD_DEF_REG 0x134
+
 #define ALE_TABLE_WRITE		BIT(31)
 
 #define ALE_TYPE_FREE			0
@@ -843,6 +845,22 @@ static struct ale_control_info ale_controls[ALE_NUM_CONTROLS] = {
 		.port_shift	= 0,
 		.bits		= 6,
 	},
+	[ALE_DEFAULT_THREAD_ID] = {
+		.name		= "default_thread_id",
+		.offset		= AM65_CPSW_ALE_THREAD_DEF_REG,
+		.port_offset	= 0,
+		.shift		= 0,
+		.port_shift	= 0,
+		.bits		= 6,
+	},
+	[ALE_DEFAULT_THREAD_ENABLE] = {
+		.name		= "default_thread_id_enable",
+		.offset		= AM65_CPSW_ALE_THREAD_DEF_REG,
+		.port_offset	= 0,
+		.shift		= 15,
+		.port_shift	= 0,
+		.bits		= 1,
+	},
 };
 
 int cpsw_ale_control_set(struct cpsw_ale *ale, int port, int control,
diff --git a/drivers/net/ethernet/ti/cpsw_ale.h b/drivers/net/ethernet/ti/cpsw_ale.h
index eaca73c17ae7..6a3cb6898728 100644
--- a/drivers/net/ethernet/ti/cpsw_ale.h
+++ b/drivers/net/ethernet/ti/cpsw_ale.h
@@ -66,6 +66,8 @@ enum cpsw_ale_control {
 	ALE_PORT_MACONLY_CAF,
 	ALE_PORT_BCAST_LIMIT,
 	ALE_PORT_MCAST_LIMIT,
+	ALE_DEFAULT_THREAD_ID,
+	ALE_DEFAULT_THREAD_ENABLE,
 	ALE_NUM_CONTROLS,
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
