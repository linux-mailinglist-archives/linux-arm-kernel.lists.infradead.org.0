Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7157C106846
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 09:45:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gfE64rqau59qN9Evn94aq1KO1uqHA5v3PnWqOuPVCBU=; b=JLOrlofa3S1ADz
	v9+33XPXrSd7ls1DH6fWHah220E9QmYOxzkWDZafHUjThyVAeon3Ipi+1NgAEnqBrShisSAM8HMmV
	3alBojcdRKRDfOWNbzMIJS530baOQowCpohNv/jgNRJ5xb9k1C2u0kq1XFHYtrXkm4gfkErl1+/Oz
	GRQ9jSplw8veNUfmgdf2LGJuqqOoNJ5McZIMBs/kwEaa+TpghAKkQ1/vV1lu13/AhjXRyLbUjbKts
	l/4iIuWsMVbWnx3FKMo8mlNaqh/265K/a3KPXmyuQSzsn4oh9Vsz/6s6NnZ0vXy8euk1NA7UuHaZa
	cfrqoItSv49qtr33Uv1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY4ZX-00039P-Lw; Fri, 22 Nov 2019 08:45:47 +0000
Received: from mail-eopbgr790043.outbound.protection.outlook.com
 ([40.107.79.43] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY4ZO-00037r-W4
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 08:45:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WO5hyWgiVIZpmOl1Vtyp9/+E/aucxly3aRG0+Jvu9umBgDeI9UevrO5XqeKNO/N74u2MtVmuAo34f1A4TBEXtMbguBPTRDcDPZBVCVmxexNLQ/109txCYrymEkRjJJe7Vj4VN08zeRtSowHZBCzsLjK51e6aGCixZMk6OIzzBX73djuEtMDrBL++WQuQ4ezAaK4FdvO8Y9WhFCsH2YPRbNTqLRGriyFHoi7QK2U2sSveswkYDt4OGkOXhqRxRvguwHWKcH3E0MQSe4Uj7UIh/LNFzuhOG7LftSbAXkWk2I9KisOLnqP+9TE8Z2oPXbgn4TpiJthKwZzywvD7gV2mtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UkKXvpjjYp+f2ZO+5gxL7nNc70EiSBvI5DDUclb54JE=;
 b=JezbMPc7TA/qfIPQC2pHAfgBX37IqGXOcoPBJUI8uhZFLTfyxC30DhDcl43YrbdAB0EFcidJmucrBtooJB7z2cwlUKOpd1r3ny+Ej0oJIJgako0gccIowDeohMe6w3LmOHjeV7SJbmRAuJK7GlqwMADfoJVP0bvE+g0JZweLttXsWjjXffLAig5h6RVEodW6fG1tBE1rE10Yj/YIF4S/7QqDymGJ8E200YFkF6heACzdGLnkAmBS4slAzVbr+5nHerxHUANRKKh8Z5EVQ607aXAAQd9DQOPBI+RjuGdc0Kin7QLqWl1fHM/6J6eoJS3ZOaUBfWzLB+Ui8m/TgB/jjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UkKXvpjjYp+f2ZO+5gxL7nNc70EiSBvI5DDUclb54JE=;
 b=VoQdgPFaHiM0K+7gi9UhwSa1KjSeBvAuqCWk0EAFiJmnx6eXnnNIxX2oKQW7d7mgeKhxqIJ7lbOxlGhuf2sWwQIJ/XpqtihgDckCuRCQZutsC4ZnY+olSH50Ma2D7AxJsC4s4DtTW5YfRQ3fv6UYQsiAWS7w5+zH27fPkUvEdrY=
Received: from BYAPR02CA0052.namprd02.prod.outlook.com (2603:10b6:a03:54::29)
 by DM6PR02MB4444.namprd02.prod.outlook.com (2603:10b6:5:2a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.29; Fri, 22 Nov
 2019 08:45:35 +0000
Received: from BL2NAM02FT036.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::209) by BYAPR02CA0052.outlook.office365.com
 (2603:10b6:a03:54::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.30 via Frontend
 Transport; Fri, 22 Nov 2019 08:45:34 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT036.mail.protection.outlook.com (10.152.77.154) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Fri, 22 Nov 2019 08:45:33 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iY4ZI-0006UV-Uz; Fri, 22 Nov 2019 00:45:32 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iY4ZD-00053U-SI; Fri, 22 Nov 2019 00:45:27 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp1.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xAM8jIrj019355; 
 Fri, 22 Nov 2019 00:45:19 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iY4Z4-00052Z-Ph; Fri, 22 Nov 2019 00:45:18 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: sre@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 michal.simek@xilinx.com, jollys@xilinx.com, tejas.patel@xilinx.com
Subject: [PATCH v2 0/2] drivers: soc: xilinx: Add support for init suspend
Date: Fri, 22 Nov 2019 00:44:16 -0800
Message-Id: <1574412258-17988-1-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573564851-9275-1-git-send-email-rajan.vaja@xilinx.com>
References: <1573564851-9275-1-git-send-email-rajan.vaja@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(396003)(39860400002)(346002)(189003)(199004)(51416003)(8936002)(14444005)(107886003)(50226002)(16586007)(36756003)(70206006)(106002)(305945005)(4744005)(446003)(478600001)(2616005)(11346002)(356004)(36386004)(44832011)(48376002)(50466002)(4326008)(186003)(316002)(47776003)(76176011)(8676002)(2906002)(7696005)(336012)(426003)(26005)(9786002)(6636002)(5660300002)(81156014)(81166006)(70586007)(15650500001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4444; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 90db285d-8cc4-46c2-f384-08d76f2856bb
X-MS-TrafficTypeDiagnostic: DM6PR02MB4444:
X-Microsoft-Antispam-PRVS: <DM6PR02MB4444B84E94194D3BF5DC462BB7490@DM6PR02MB4444.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2803;
X-Forefront-PRVS: 02296943FF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kWCdQC+CHiSXJ/qLmLoEqDIg4d6Dpn2s+AC279FuxFVeS9t1F2Y31Weh0s8qQstTCb3H0mcNuZL1UZcmBpE4pyT2IG3f8FwIY9Qn4rq8rYAVW0mR8O41coyrPNiu4W4/8CFcUpv5zE+pEREkxElJ5dSC4kS7sm4kyC1AuZTvY0cnGaRKDxt9l4K1wo9PMBBTEwafdc1oqxXjiXNZVWNlsiGUCDw9mQfO1pIWD7TxD/LDr+t6NDvsUnBEnrZOng38SbA3nq/86CMxP5fkg5FFzjmGRGl8t+v/Y8Q3O56eGt8keknQMqdZmERrR+GMZK9thhCfo5hHxL/PEpGhmZ8AqO3GvICLG+/CwjzKomARiqjubInJg+NoqybuF86h+FjoYBwIrHT+QEbP8W2pmao1638mWvQ04m7raayMGkVI/hu+HPmjj3vuhTZ3YMq2nCtH
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2019 08:45:33.9016 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 90db285d-8cc4-46c2-f384-08d76f2856bb
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4444
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_004539_033118_BED7EC7E 
X-CRM114-Status: UNSURE (   6.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.43 listed in list.dnswl.org]
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

 .../bindings/power/reset/xlnx,zynqmp-power.txt     |  43 +++++++-
 drivers/soc/xilinx/zynqmp_power.c                  | 119 ++++++++++++++++++---
 2 files changed, 146 insertions(+), 16 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
