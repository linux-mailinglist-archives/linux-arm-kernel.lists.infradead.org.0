Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA637106930
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 10:47:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JELVxvj/KasTPtoSfLwAkXa+8aevzcImlL8ldqkjjyc=; b=YTrkDdSlu4qLhG
	LycWyrnoPVctiKLaKv+p3DHr31VClc+5sY72CgIsq2azJcT/dPdGwN3KNTTSEz8fLMfbTQmqi+HxV
	WgZBndf6pSIFqHRSk5XIHhL/uZPY/iqrB4tmpyUB3FcOPTnAhJapoSn26lov5kpzzyGjydffOv2Kv
	fbk7qlxLUDTiMPkxf3YDT/qg4DbLadX6jBgcqP4ztjerPaW8qB2Mc8wYxjcwIX2MJkcliyAFWmGbH
	EwmhQ8zjn0w/hdkNLpgw4ozIIk6KCjN1PkjIwTjFWwidPNy5cgxthLhIxPVT+UVhoc9Hq6Z/GHQcu
	pHWJVEBAp3ztDUSO6VjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5XX-0002Rk-00; Fri, 22 Nov 2019 09:47:47 +0000
Received: from mail-eopbgr820079.outbound.protection.outlook.com
 ([40.107.82.79] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5Vc-0000zK-2c
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 09:45:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lqk13rmbQ3Ed5b8G1IhcayDtyB7PptUjucLzksEqcKtouXcTYc7gqjSaXXOtTLquPrzS533m1Woyq9uSYr/jH0yD+pbLPD1cgIlXRzNK3gPHsRL4+03bUvisYrTqbIQT+LmRoGaLiTaKmvUS62LaKlWazlv+H0fb1J8HnT9rbDSIAvi8ieQXJDKkysCkXumPJ4d6vfbCfnTMS6ssy7wzQNtlixRgAdiHFuGF7L/fuCca7bHAbiyPEDzzA42ESg4mw++UfghX/GTXzuQ+2LZyX/UnIpt44FSdH5Yc0uxYhQANOjLFNHENZ1KNNTBxTqBgYwOBINps/quUssAyaysPuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5hjL7FUO2D73EHBOW35TqeOgZrf/JF28iZk56yrENfU=;
 b=IiZ45kPULyyp/gF3XkrdJb18CfZp/9L9H61CxBYFijMjjlD/Fu/uua1MHxhii0vV8VUKzBezVfajWbq8oKPNtcf+C5RiifF2Y5RQScGjLHXk30t8pnzHqJFOoMQEF4Vqu0YyPlF62kb/VhFKgZkq50uWLGpg40qm6bgTmg/wLjoDT4+Q5pZik90qiVm+dCAXkBUs4GT8UvL5PmPijVtlHhkgGTdyCM4Y0Bna7HOR0TzFLppKdywNJOwjZi37CMo96vLiEGYRwXvQrn4SCwMdz3w5qWKdlDSJJR+SsesOSK5oaQHhYi1b6UYRyMzZ0ZQjcSpQgZIyDm33othfLHmvfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5hjL7FUO2D73EHBOW35TqeOgZrf/JF28iZk56yrENfU=;
 b=OM5SOJsf16gu31SIDGSvuP9Fs7p+UTae3pZ6Y8+tY7W4B2kh4YggHsUIGlIdWj/baWE288ptA6M0FSILpiLOU2GHfXGFBHN6t1F7gxMldgi5mI+WxKpk4Sd1+CSu1Wuyevhzk++BIV+AUc5BWXGH9YIO1lBkwFtTuBaIWKY+Q0g=
Received: from MWHPR02CA0024.namprd02.prod.outlook.com (2603:10b6:300:4b::34)
 by CY4PR0201MB3411.namprd02.prod.outlook.com (2603:10b6:910:93::34)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.23; Fri, 22 Nov
 2019 09:45:35 +0000
Received: from BL2NAM02FT057.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::201) by MWHPR02CA0024.outlook.office365.com
 (2603:10b6:300:4b::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.18 via Frontend
 Transport; Fri, 22 Nov 2019 09:45:35 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT057.mail.protection.outlook.com (10.152.77.36) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Fri, 22 Nov 2019 09:45:34 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iY5VO-0008SJ-An; Fri, 22 Nov 2019 01:45:34 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iY5VJ-0002pC-8j; Fri, 22 Nov 2019 01:45:29 -0800
Received: from xsj-pvapsmtp01 (xsj-pvapsmtp01.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xAM9jLqS003465; 
 Fri, 22 Nov 2019 01:45:21 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iY5VB-0002ob-DO; Fri, 22 Nov 2019 01:45:21 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, michal.simek@xilinx.com, jolly.shah@xilinx.com,
 m.tretter@pengutronix.de, gustavo@embeddedor.com,
 dan.carpenter@oracle.com, tejas.patel@xilinx.com,
 nava.manne@xilinx.com, mdf@kernel.org
Subject: [PATCH v2 0/6] clk: zynqmp: Extend and fix zynqmp clock driver
Date: Fri, 22 Nov 2019 01:43:28 -0800
Message-Id: <1574415814-19797-1-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573564580-9006-1-git-send-email-rajan.vaja@xilinx.com>
References: <1573564580-9006-1-git-send-email-rajan.vaja@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(136003)(396003)(376002)(199004)(189003)(8936002)(47776003)(50226002)(81166006)(81156014)(8676002)(36386004)(106002)(26005)(48376002)(50466002)(70586007)(16586007)(9786002)(70206006)(356004)(7416002)(316002)(186003)(76176011)(2616005)(305945005)(36756003)(44832011)(426003)(336012)(446003)(11346002)(51416003)(5660300002)(2906002)(7696005)(107886003)(4326008)(478600001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR0201MB3411; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: aafb8ff4-1971-4cfb-8739-08d76f30b919
X-MS-TrafficTypeDiagnostic: CY4PR0201MB3411:
X-Microsoft-Antispam-PRVS: <CY4PR0201MB341125DB4F938857C600A300B7490@CY4PR0201MB3411.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-Forefront-PRVS: 02296943FF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Sg/HSNpYpBZqDAw1kV1/zpGZBUVSnr6I7bv/N7Vv7hF24sFyXELHMZUBJKfbcH7VzvQtQII3cLcarVKih4KPt+FHUDR410G6HoUh+OSUVzbNy1qo+H8Phd4476/naS4Dqicp+mN24OpIVlsBfb3o2KzRVJp1QSbQYfNUffQhRhqYrNPbGiBTB8jCpNCJmuNYJZ5nK+96/ix44Z6DXTa/kenW2IzpHLuxVr6P1j1dbyYyy97EpYOCNNki2UepW8A7Ni1rVw0gx2dqJuIzM62UGeFfnGFeU82wYKq74X75pm4ZJDZbXao1np4KOFDLegDVhxYJOmbQsgmpXQ4t7SPJHdrlDN4NQFzRXeQeu1m1hg/xlCrgrKj5HCUlvWDTn8Jx9XjRM9JNa/6Y/AKe9UCXmljFxqz6sAGAJ7a4Jq9PzBOddW51xul5mAZnGtoS0VmA
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2019 09:45:34.9044 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: aafb8ff4-1971-4cfb-8739-08d76f30b919
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR0201MB3411
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_014548_149709_AE129139 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.79 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ZynqMP clock driver can be used for Versal platform also. Add support
for Versal platform in ZynqMP clock driver.

Also this patch series fixes divider calculation and adds support for get
maximum divider, clock with CLK_DIVIDER_POWER_OF_TWO flag and warn user if
clock users are more than allowed.

Rajan Vaja (5):
  dt-bindings: clock: Add bindings for versal clock driver
  clk: zynqmp: Extend driver for versal
  clk: zynqmp: Warn user if clock user are more than allowed
  clk: zynqmp: Add support for get max divider
  clk: zynqmp: Fix divider calculation

Tejas Patel (1):
  clk: zynqmp: Add support for clock with CLK_DIVIDER_POWER_OF_TWO flag

 .../devicetree/bindings/clock/xlnx,versal-clk.yaml |  64 +++++++++++
 drivers/clk/zynqmp/clkc.c                          |   3 +-
 drivers/clk/zynqmp/divider.c                       | 118 +++++++++++++++++++-
 drivers/clk/zynqmp/pll.c                           |   6 +-
 drivers/firmware/xilinx/zynqmp.c                   |   2 +
 include/dt-bindings/clock/xlnx-versal-clk.h        | 123 +++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h               |   2 +
 7 files changed, 310 insertions(+), 8 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
 create mode 100644 include/dt-bindings/clock/xlnx-versal-clk.h

-- 
Changes in v2:
 - [PATCH 7/7]: Removed patch #7 to fix clock frac to handle backward
		compatibility. Will send this patch separately with
		proper backward compatibility handling.
 - Rest of the changes are mentioned in individual patches.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
