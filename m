Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB81CF9081
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 14:21:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SY+m8tj2zOuAs44Wx1Y9pzV8tIflz8Pp/b5isGFIBOE=; b=P5fnX32JZDdyuI
	rohyjljeSyeFiDxv/l52pwJHS4hS1Z+B+WRbeNkq0RRQFBv6JQDM+Z19VceKkg9XfAQiTTcFEKoBw
	9RQaVAYlg1MrfN4Mk/heOMXNHDN1ZMbzvO2ghAV5U7BWRjazOnj02wiErDddkl7nxZQ/ctSHNvaAO
	7EzENZ0fnef8APPyc87VXQvI98lU15rZFUt5hU5gmwcNF2YYIeV/GMpHBYD81P/IAZp+myGEq9urX
	NrE9fsgxJQZ0dZcPbQ6LqyK7fr20+feLVQJUDPmvo5XLp0eIWYT4ETaE08iaRJed2vQ9LjoIWgHGO
	fcNeAMhMJHmL1SV71Lxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUW71-00039D-89; Tue, 12 Nov 2019 13:21:39 +0000
Received: from mail-eopbgr790053.outbound.protection.outlook.com
 ([40.107.79.53] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUW6n-00038s-4Q
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 13:21:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CZJk0Sgst9KVQHf8Zz//aXqEMConfEDOgNXGAUCaY4nw9r9Emn1HAA9D80Acv5tiLzu7z5PsgqzlOM13jMtYiEbWqt6DllGJpIlhpwgjZMBvMMIOMh3sX3uFILWBsc8oYGlFxaV/nlsiRTSQBAuxWqfAWuuPXQ5Ze8jcQnpaEX66jc3UN4k7JP29NT4sYcsyB5Va9+oYaIfvrucP84vHKFhtVG12iPm92k8yvofBpq2KB2asFHuRJoAImtkHGItiTOrdq+KeVpqzb6oM1cwaVViVstbVbpK9ivd7DjMY8YnrTfE98iyOiKLoKdD6KjyejRSWhkm7qcMulAjXircuMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ic+szegcMXmRV+L8BIyV5McFHgsPGogwbqd2F48xxZs=;
 b=bxX2GubOa7f4G+uqvOrwJyz2kvo/ZMp3gc5jqAeV4ymNP0epUMXFAnixoFvwvyl3G/BMC1MUCYjEjTVp7OwXEn0vnwBZKgWEVKNWEGBq0JUB2kQfs4yi7UhGkSb4CF1VG5CL+cQtMagqz4qsyKCKMZcEYI/9PeF5g789gB+zgP+sAwJDNbnmh814q0jPu2zpfSsvcjeL6csd9mbATh+fwefvN0aQiPtzGNmM2GDwrnHOaA2YFuOycpvtmqoSb0rRwwNRn3qBeCYnJ6yzdVP+LWIHsdhJxs+QuOB+tY16JRnU+w8FFSiCxXVOWLKBeNfATWetF0MJizK6Xot4YS72Cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ic+szegcMXmRV+L8BIyV5McFHgsPGogwbqd2F48xxZs=;
 b=P+vDv5hNYGXCzv3c221StUDex7lhuKzS7Nqpf43phaf7ddbq5tbezEJdY6ZOsLnzf4ZrpAIYf+tQ7Gnt4GDpPdhWIRQPXFfY80trlPHcyt/rfJ7BpP4i6pfix4DB8a5+q5U1Ox/RLDpfTg0VqznWr6rLC5NLglO+BPqf13IBDPI=
Received: from BL0PR02CA0098.namprd02.prod.outlook.com (2603:10b6:208:51::39)
 by BYAPR02MB4678.namprd02.prod.outlook.com (2603:10b6:a03:43::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.25; Tue, 12 Nov
 2019 13:21:22 +0000
Received: from CY1NAM02FT063.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::202) by BL0PR02CA0098.outlook.office365.com
 (2603:10b6:208:51::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.24 via Frontend
 Transport; Tue, 12 Nov 2019 13:21:21 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT063.mail.protection.outlook.com (10.152.75.161) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2430.20
 via Frontend Transport; Tue, 12 Nov 2019 13:21:21 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iUW6i-0003ux-Mf; Tue, 12 Nov 2019 05:21:20 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iUW6d-00058k-JJ; Tue, 12 Nov 2019 05:21:15 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xACDLDSA012481; 
 Tue, 12 Nov 2019 05:21:13 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iUW6b-000578-9l; Tue, 12 Nov 2019 05:21:13 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: sre@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 michal.simek@xilinx.com, jollys@xilinx.com, tejas.patel@xilinx.com
Subject: [PATCH 0/2] drivers: soc: xilinx: Add support for init suspend
Date: Tue, 12 Nov 2019 05:20:49 -0800
Message-Id: <1573564851-9275-1-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(39860400002)(396003)(136003)(199004)(189003)(6636002)(186003)(81156014)(8676002)(81166006)(8936002)(50226002)(4744005)(356004)(6666004)(15650500001)(106002)(2906002)(36756003)(36386004)(478600001)(336012)(316002)(486006)(305945005)(16586007)(5660300002)(9786002)(126002)(48376002)(26005)(7696005)(426003)(70206006)(4326008)(51416003)(476003)(2616005)(70586007)(44832011)(107886003)(47776003)(50466002)(14444005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4678; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1371a3d5-0f44-4fc2-06ad-08d7677335af
X-MS-TrafficTypeDiagnostic: BYAPR02MB4678:
X-Microsoft-Antispam-PRVS: <BYAPR02MB46787F2BCF6BC2D46D2FA487B7770@BYAPR02MB4678.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2803;
X-Forefront-PRVS: 021975AE46
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dTVjn0c9stNcGH2OdhxGO0qkTgFWAjg0YsIdqDWRZxvXr55vOAsU4uVN7rvrrcKxo+3LniQ2Xlf5pnfy7jq9FpiFwQETKjeBUeCurDyCIMa3Pdiar7WoxcFzDmUxlyFVQfcht30oocxQQaipIPC/d3t4KELMjfMEOYuHI29JaHClHv5ST3xmMEApebS+kv8P1OzXxbQkYKoLiY+U/MVNJKaCuzEAWbZT8FPIcxQWE82C5IyUar8azAlaDYBzGLTCTvY5DlXCGs1GfKJK5I5w/BozDn8jpmQNHREIhy2S06HWgT2vz1eTeu7ZcirVDtBxK74DxJ19+y4u+869vRSa9SrB4zIOdpA9kNPArlwLqtsERbMWg876Zw9hoqXlowKPdbl76TzVXAdbu/sQ3tmH+cH9BkQJsHQUerPFESCTkSVBotx5XIX74gXIwzNUJb3D
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2019 13:21:21.4306 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1371a3d5-0f44-4fc2-06ad-08d7677335af
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4678
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_052125_172177_0D9F3C1B 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.53 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for init suspend in xilinx soc driver. Also update
documentation of zynqmp-power with IPI mailbox property.

Rajan Vaja (1):
  dt-bindings: power: reset: xilinx: Add bindings for ipi mailbox

Tejas Patel (1):
  drivers: soc: xilinx: Use mailbox IPI callback

 .../bindings/power/reset/xlnx,zynqmp-power.txt     |  41 ++++++-
 drivers/soc/xilinx/zynqmp_power.c                  | 119 ++++++++++++++++++---
 2 files changed, 144 insertions(+), 16 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
