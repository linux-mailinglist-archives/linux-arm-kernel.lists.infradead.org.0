Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A4518BC96
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 17:30:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8IoE/pW3Og2uxhJB9v+UI7X52MrrLvAy8iTVAVS9JU=; b=jZO/kGOFf5XRSL
	aNxRdhWjUO13Wpk95Q5YmzViV5ytJz4pb+I8goT+pMHBON4T1V59TKYBBbIvr01bpWXdOSDmM6owi
	8fAJdOBMin+DE4kxdohTj8LDLhS9Hab4hZxXIlBUhK9Ps3wD3fHMOXou3cMdm6JzptJRUmENA3azu
	T7YXLu403zFnyrURrBIEKnJ8xN5zwtJb3kjVyP+znnjZikZAjB3Jb0VrYEUyvkW97LhFBQY3Xb7NF
	yFgW2SJfINKqEvxMKpUn9tNja48zYoPqUptjMPS7QSanU5zvwOeLsbq23f752JF4GZ5xVWAa2xkwz
	/29QUdjbWYwSJd6kzKRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEy3J-0007WY-Bl; Thu, 19 Mar 2020 16:29:49 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEy1w-0006cL-NO
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 16:28:30 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02JGSLD3085347;
 Thu, 19 Mar 2020 11:28:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584635301;
 bh=mJfV+9tsEYG5ukC8EERFrenHi+vk4PG18uXOS8eIBcs=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=lQRDan5AFT2Ck1yz6GSh+DX2n4RRgv3aAQXSaq94B87oXiGEHIP5e4e4lJyNCI91T
 yN6JrHUBNxm+nOaH24fzncFb7EUWXX46t5jJBOx+MH7y025lu9sG1Hb57Zf4UmdSrN
 9o/YuISnsEVR5zRxa3jo+Pygx+iBlntnKKh4ZsC8=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02JGSLXk110729
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 19 Mar 2020 11:28:21 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 19
 Mar 2020 11:28:21 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 19 Mar 2020 11:28:20 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02JGSJQX047620;
 Thu, 19 Mar 2020 11:28:20 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, Rob Herring <robh+dt@kernel.org>, 
 Tero Kristo <t-kristo@ti.com>, "David S . Miller" <davem@davemloft.net>,
 netdev <netdev@vger.kernel.org>, Roger Quadros <rogerq@ti.com>,
 <devicetree@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v5 03/11] net: ethernet: ti: ale: add support for
 mac-only mode
Date: Thu, 19 Mar 2020 18:27:58 +0200
Message-ID: <20200319162806.25705-4-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200319162806.25705-1-grygorii.strashko@ti.com>
References: <20200319162806.25705-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_092824_898026_DDDD4374 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Murali Karicheri <m-karicheri2@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new CPSW ALE version, available on TI K3 AM654/J721E SoCs family,
allows to switch any external port to MAC only mode. When MAC only mode
enabled this port be treated like a MAC port for the host. All traffic
received is only sent to the host. The host must direct traffic to this
port as the lookup engine will not send traffic to the ports with the
p0_maconly bit set and the p0_no_learn also set. If p0_maconly bit is set
and the p0_no_learn is not set, the host can send non-directed packets that
can be sent to the destination of a MacOnly port. It is also possible that
The host can broadcast to all ports including MacOnly ports in this mode.

This patch add ALE supprt for MAC only mode.

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
Tested-by: Murali Karicheri <m-karicheri2@ti.com>
---
 drivers/net/ethernet/ti/cpsw_ale.c | 16 ++++++++++++++++
 drivers/net/ethernet/ti/cpsw_ale.h |  2 ++
 2 files changed, 18 insertions(+)

diff --git a/drivers/net/ethernet/ti/cpsw_ale.c b/drivers/net/ethernet/ti/cpsw_ale.c
index 5815225c000c..719e7846127c 100644
--- a/drivers/net/ethernet/ti/cpsw_ale.c
+++ b/drivers/net/ethernet/ti/cpsw_ale.c
@@ -779,6 +779,22 @@ static struct ale_control_info ale_controls[ALE_NUM_CONTROLS] = {
 		.port_shift	= 0,
 		.bits		= 1,
 	},
+	[ALE_PORT_MACONLY]	= {
+		.name		= "mac_only_port_mode",
+		.offset		= ALE_PORTCTL,
+		.port_offset	= 4,
+		.shift		= 11,
+		.port_shift	= 0,
+		.bits		= 1,
+	},
+	[ALE_PORT_MACONLY_CAF]	= {
+		.name		= "mac_only_port_caf",
+		.offset		= ALE_PORTCTL,
+		.port_offset	= 4,
+		.shift		= 13,
+		.port_shift	= 0,
+		.bits		= 1,
+	},
 	[ALE_PORT_MCAST_LIMIT]	= {
 		.name		= "mcast_limit",
 		.offset		= ALE_PORTCTL,
diff --git a/drivers/net/ethernet/ti/cpsw_ale.h b/drivers/net/ethernet/ti/cpsw_ale.h
index 70d0955c2652..eaca73c17ae7 100644
--- a/drivers/net/ethernet/ti/cpsw_ale.h
+++ b/drivers/net/ethernet/ti/cpsw_ale.h
@@ -62,6 +62,8 @@ enum cpsw_ale_control {
 	ALE_PORT_UNKNOWN_MCAST_FLOOD,
 	ALE_PORT_UNKNOWN_REG_MCAST_FLOOD,
 	ALE_PORT_UNTAGGED_EGRESS,
+	ALE_PORT_MACONLY,
+	ALE_PORT_MACONLY_CAF,
 	ALE_PORT_BCAST_LIMIT,
 	ALE_PORT_MCAST_LIMIT,
 	ALE_NUM_CONTROLS,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
