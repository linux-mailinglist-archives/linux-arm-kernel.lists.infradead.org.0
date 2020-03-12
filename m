Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E6B183B5A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 22:32:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cuj+h/MUJ84dHPdQvFB+MeotLkEKGilGf5BLNsxdqNE=; b=NJfJv8uzo27Yr7
	2276QRfFf7yACdn1oqYzH5go6AvD0LujTR/faAtfc36Ou+uB0l1ih3p78TET7QE6tIqp5IaBZ6yJX
	8kIVjrwEUiw0kwF2fL4RiX6vKe1kNXE8etPyYBL1NtXlqXHQ+VlaPQ8RuLNvZjgMCdR3R1Qey5EHK
	hVzH8sePeXTCQ7yAL2myFe5bgqFcGex01pqiJPLABHFEOIJ7Qpfj9BlNhw737KkGGEQbB29Mtld0A
	w6GGJ3ZfhJB0tKJne76hYPz/D2zBb5RmlC04adudzn3bhZPN0/iojcAbc5c/tT+Mh9BbaG89XUHA9
	fOrNOaTEb2bmZTdcN+9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCVRO-0004qQ-OC; Thu, 12 Mar 2020 21:32:30 +0000
Received: from mail-eopbgr700050.outbound.protection.outlook.com
 ([40.107.70.50] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCVR4-0004go-IB
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 21:32:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cSLSB6QVmsq/2to+gJj/Awxl8rhLuRvSaf2VgayQXbPVtGaI0X8zXvvfEqnwvyNWC2KJmeQeKUWJVOE8qnkzT6wPDtUzUVr3yUxC+NqZ2nrVvUnR31lOvnn0h33jCRyplKTS2VMG3BbfK1nxUIYHv528LW4ru5Y7EFiD4TTyQ85WYfvToOvo/Z/FvBlJYjufFsHerN6/68iK5+mMR0+ug+uHGPixqNsEytrGkAC7CF7ziZ+dZbJzj8osCV8yFzXQqj8vV1y+WOJpB6P5hY3Wpy4+DFhZvpKLwZ8JEW7h/YYJFGXOsA+Zk61gNsbOrpTZ/A/0UyR3rrJCY9vpz/DfJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uBHeGX19n9xnM5jqHBWiC1hhg2R7qXvx6xByDvNDHx4=;
 b=NgdQ+Fv37wrTduFqqNO/iDwNP6NWRl+6+0AbuJqrUBP1du9JR73DH4LYRCw/dMvFdNyFTLPqJcq6buBXw9huuKdUr5LqzWimdz01f1Fb0P+Dpl0a6Fr1jxckBcUCBwRZy5aPDpe+bRgynTFowNKq7fXdCrV9IJp9Jzr9kzNWp75R8nxnu+BtuyRPgF5TWg+IEA9It34XSUSygi82J3f3kwWKlCpVmq3Zkg4oIrQXiwsY7XyMeY9OA9ySs3noh+AVWtnCokNZylEGx0gtWmHktfsLMNtWZzzsDo2QPjyMLwFqAUoc2WPuyY3pko6NE2OQH/mrxd32sFuNlw3hDa2bdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lixom.net smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uBHeGX19n9xnM5jqHBWiC1hhg2R7qXvx6xByDvNDHx4=;
 b=FY0EDykjBZjV9oA+65FXAdpPsJfJ6fqBqRXSm6v7d4RAUjf31UEKx0kv1U2e417UrBjvHjQU6ygH+unPaEAhh6Rcv4ABGEp2IavhG/kycdDhTzf5jlnI4Gob2EHdQLJMmALz2M66L/IkplclXjNDKApC3yu81ujfzeZXjstLHHg=
Received: from MN2PR08CA0004.namprd08.prod.outlook.com (2603:10b6:208:239::9)
 by DM6PR02MB7033.namprd02.prod.outlook.com (2603:10b6:5:25d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.14; Thu, 12 Mar
 2020 21:32:08 +0000
Received: from BL2NAM02FT036.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:239:cafe::4e) by MN2PR08CA0004.outlook.office365.com
 (2603:10b6:208:239::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.16 via Frontend
 Transport; Thu, 12 Mar 2020 21:32:08 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lixom.net; dkim=none (message not signed)
 header.d=none;lixom.net; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT036.mail.protection.outlook.com (10.152.77.154) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2814.13
 via Frontend Transport; Thu, 12 Mar 2020 21:32:07 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jCVR1-0001nD-0j; Thu, 12 Mar 2020 14:32:07 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jCVQv-0006jp-QH; Thu, 12 Mar 2020 14:32:01 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jCVQn-0006iZ-14; Thu, 12 Mar 2020 14:31:53 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: olof@lixom.net, mturquette@baylibre.com, sboyd@kernel.org,
 michal.simek@xilinx.com, arm@kernel.org, linux-clk@vger.kernel.org
Subject: [PATCH v2 2/2] drivers: clk: zynqmp: Update fraction clock check from
 custom type flags
Date: Thu, 12 Mar 2020 14:31:39 -0700
Message-Id: <1584048699-24186-3-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584048699-24186-1-git-send-email-jolly.shah@xilinx.com>
References: <1584048699-24186-1-git-send-email-jolly.shah@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(39860400002)(376002)(346002)(199004)(356004)(9786002)(54906003)(336012)(36756003)(316002)(426003)(107886003)(186003)(2616005)(4326008)(26005)(81156014)(15650500001)(81166006)(7696005)(5660300002)(6666004)(8936002)(70586007)(8676002)(44832011)(70206006)(478600001)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB7033; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bfd8371e-8da9-44e9-4264-08d7c6ccd10b
X-MS-TrafficTypeDiagnostic: DM6PR02MB7033:
X-Microsoft-Antispam-PRVS: <DM6PR02MB70333B2BBD4FE1D061CBE0BFB8FD0@DM6PR02MB7033.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0340850FCD
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8+Mv1G2tLiRIyRtLaTMhxb5yrYad5tBECOSV11T4kGryS/7F/J53q9rkkHQ9zJP2asa2INkw5w6HHj8X8Wuw7VA5iVPtu+/qKTEbl/Pa7ubgEnCxDZI/WhkT8Iuos0dEHunEM2Q7NFMKbdam3nCSfr4ly2HfUtni0atfdJ3UWgA4xYFeL9b2sPegTrdWo49Qy6DiG8ySYsyeUB2BTdiMkQ4kB4vjuaMXpgCmlzA9VYdIhtAULVINOBxmcpYKOIyRd4zdub26Q/G3DndNfxocydbBj/uQZydtW3XNkCIqOERUf7qsVleg1o8oDW2t1IHgETtkU1fxMBH99wT/t9xf+tgbs0gBE935Ms+3GdTlxQ9j3FnK1VEqHCRBC+sTsO70aTFKcdvErLqkDZeQtqgAVnWHBI9QDUDtv8DBNr5QyqpDyo99vHogW8RuRhGOxtYo
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 21:32:07.7257 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bfd8371e-8da9-44e9-4264-08d7c6ccd10b
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB7033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_143210_604281_04FF3202 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.50 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-kernel@vger.kernel.org, rajanv@xilinx.com,
 Jolly Shah <jolly.shah@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tejas Patel <tejas.patel@xilinx.com>

Older firmware version sets BIT(13) in clkflag to mark a
divider as fractional divider. Updated firmware version sets BIT(4)
in type flags to mark a divider as fractional divider since
BIT(13) is defined as CLK_DUTY_CYCLE_PARENT in the common clk
framework flags.

To support both old and new firmware version, consider BIT(13) from
clkflag and BIT(4) from type_flag to check if divider is fractional
or not.

To maintain compatibility BIT(13) of clkflag in firmware will not be
used in future for any purpose and will be marked as unused.

Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/clk/zynqmp/divider.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
index 8eed715..efe2ed6 100644
--- a/drivers/clk/zynqmp/divider.c
+++ b/drivers/clk/zynqmp/divider.c
@@ -25,7 +25,8 @@
 #define to_zynqmp_clk_divider(_hw)		\
 	container_of(_hw, struct zynqmp_clk_divider, hw)
 
-#define CLK_FRAC	BIT(13) /* has a fractional parent */
+#define CLK_FRAC		BIT(13) /* has a fractional parent */
+#define CUSTOM_FLAG_CLK_FRAC	BIT(0) /* has a fractional parent in custom type flag */
 
 /**
  * struct zynqmp_clk_divider - adjustable divider clock
@@ -307,7 +308,8 @@ struct clk_hw *zynqmp_clk_register_divider(const char *name,
 	init.num_parents = 1;
 
 	/* struct clk_divider assignments */
-	div->is_frac = !!(nodes->flag & CLK_FRAC);
+	div->is_frac = !!((nodes->flag & CLK_FRAC) |
+			  (nodes->custom_type_flag & CUSTOM_FLAG_CLK_FRAC));
 	div->flags = nodes->type_flag;
 	div->hw.init = &init;
 	div->clk_id = clk_id;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
