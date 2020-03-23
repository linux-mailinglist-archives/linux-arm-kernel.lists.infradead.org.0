Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B45190162
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 23:54:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PgXg22qaLCJjS/KizhRI1zOlwDsl1+95p5KR4svAaM8=; b=So+wKGgtOktMAe
	eBCh/f6o6g6TtGIY32at3+/bJtdD3gTQ6AbeNenHLJqPzacy0kOwOY5as4jcS3VVrfo9kH5+il58Q
	zskdGlD9cU6O2UMwjkj1dNrQ6Qf/hajURTzYZM2v0d1+w4lIpai/GqEZkgnhu99r0kxz+/cXRrL+u
	62k2cG2anXOcggTjLPC22xb8ytheGNvqzTwm2doAL3YuQuNL4JrE9vhI2ObVmIEXk8ifsNgZl6zvg
	/jr0mTl2PCctF2m8j+EqOhDVya2IuENW1BYqk4LkZLOKGGE1ezUmo+UVrEP1I3edCJ8FwFHcMRuG0
	DPtovW0A5XwGgQxkSWPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGVxh-000485-0u; Mon, 23 Mar 2020 22:54:25 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGVwR-00033H-Gb
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 22:53:09 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02NMr4c8046288;
 Mon, 23 Mar 2020 17:53:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585003984;
 bh=aiJoXSgrM3CUgmPL4O8DyE9aj9BIPOzyeWV/f+JXhrk=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=M1pOrUPO3SHhKjDqZ3I948IshUmocM2hM0+G9gd7ScR8eO9iVp3Qej00V3yGg8lqM
 NzDfTRc7A6zeFVG12ml4WxGnpL3tahvQod/bHHVrBrUoba9p2zhtlj7DjgRyTeJkeD
 5D86IonEgitdOZRI4fgUNrWmoPCIsuCsbQDDv2TE=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02NMr4D7102286
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 23 Mar 2020 17:53:04 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 23
 Mar 2020 17:53:04 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 23 Mar 2020 17:53:04 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02NMr24Y079598;
 Mon, 23 Mar 2020 17:53:03 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, Rob Herring <robh@kernel.org>,
 Tero Kristo <t-kristo@ti.com>, "David S . Miller" <davem@davemloft.net>,
 netdev <netdev@vger.kernel.org>, Roger Quadros <rogerq@ti.com>,
 <devicetree@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v6 04/11] net: ethernet: ti: ale: am65: add support
 for default thread cfg
Date: Tue, 24 Mar 2020 00:52:47 +0200
Message-ID: <20200323225254.12759-5-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323225254.12759-1-grygorii.strashko@ti.com>
References: <20200323225254.12759-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_155307_648393_8A99077F 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Murali Karicheri <m-karicheri2@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for default thread configuration for AM65x CPSW NUSS ALE to
allow route all ingress packets to one default RX UDMA flow.

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
Tested-by: Murali Karicheri <m-karicheri2@ti.com>
Tested-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
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
