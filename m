Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE6D16AE28
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:54:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SUcNy9WwpB8w+KZMjKhTzLd/sA8gs/cuNDzHD9oetpY=; b=spUx7WO1ukdJqf
	7eP9DpEj45jRM2RhziJsD3NCBQRYfwhWfLuqDjpHzTwKXrHkiWXInNWNKITO54OVVR0DYbcs/DmFT
	Db9mqXbkRE4rLLwnmaY+mTDFahQtjT+d0oqT4JkAhsS6MKB3SqYaccrhsYnjk9wY0Zf9TcH7GIisn
	y2e2WL4XckJk8Em/Bpiprd5/5g28IBZJFps49nAR5pM604hxSkxh0vA2aWYKOujIOJKG823OUK+XH
	Lcq2jlNU635VrnFR1KsGCo0cLw9IFMjroLjFnq7z5ctnaki/fDcQh1w4t7Mh2TEumNQwusSJ93hXP
	ZtXii612UDYxNdmNirVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Hvh-0000bW-Q6; Mon, 24 Feb 2020 17:54:05 +0000
Received: from mail-bn8nam11on2064.outbound.protection.outlook.com
 ([40.107.236.64] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6HuP-00083W-7B
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 17:52:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TZApe+1DUC6JB4zBCfDq/FX/U3bX1odAxZ5Zlz7K3LTVZOQrCDEIbRJ5LU1CIn2fdjAlNqjBrRHt6ZQur8+XsVKORpt2TWKrPMrTPePNG5K9FsY1iuT0+P+VTKA6j+W1FPS9MIxjut9VehrmQqzuwXJdGKhlMANmocWGj1+iT9gsk50JG4frdJdHIuaKIZsYqgq6yw/fi/OeUlnzoYHs4JWv8rUk/V+5RPbqgGGMq0rxMQO2ZFIDOnmIxgaUZdHLNWQcieHpkYRWxbVJz857PETg/Feub0J7Ln/jVS8b8q6TChuE2IM5OBnCN4femXvoF2Ggw1Uzl+XCIg7OYrZ82Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=venyR6vZWrgCT4es/xxKiuvmhiuCwrOOCN7yCb3dZJ0=;
 b=kWF8/ymMjyzStmEi9WEX8aQ+CSnJRkyvjJoPhjCeJEOCQXrmkjWHjMJ4GW1sG9FM03iFvb6q6o4wjGJUtvvZ5jy76uTpGNhUaTU1nFVgKiRZ2NmCDS1zVShNMRAMQUPKQN/Ye5Hs6esCf1D5IJNb0vJq4quhYXJ3StS7AXRHRXhpKIXqACoOksmxWiqaaX6KYRENCpVSTmJo1I6RIbZnur9icaA5ONwc91JY10z3dbNeh3jugL+UkZWTEXsq7b8n870+ijdYF4bLt5w09wLoS1WUvTaFYsNQ3Pufezk9vc0Q7fbtlYH73nNoNBMWHGgdYt0TadwuHZCGFhz5YddgzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=venyR6vZWrgCT4es/xxKiuvmhiuCwrOOCN7yCb3dZJ0=;
 b=sAVWJpSeUFp1s9jJwjDGoyWlES5zxqwoSmuMrSgHdMZWjm2ezOkfxpabbCn3fz6IsEzOhUMDlHcDcp4fAEkkWsF+jKhyvQIILgfaiWjSfHaSBRQZ4E9MQdKjXL424ZX+Tdvf/l5RFgwQ8vE9Y8/yRBZCJJ3a9/x8mOMWU9Ayc8g=
Received: from CY4PR02CA0040.namprd02.prod.outlook.com (2603:10b6:903:117::26)
 by DM6PR02MB5628.namprd02.prod.outlook.com (2603:10b6:5:76::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.21; Mon, 24 Feb
 2020 17:52:41 +0000
Received: from SN1NAM02FT040.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::203) by CY4PR02CA0040.outlook.office365.com
 (2603:10b6:903:117::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.18 via Frontend
 Transport; Mon, 24 Feb 2020 17:52:41 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT040.mail.protection.outlook.com (10.152.72.195) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2750.18
 via Frontend Transport; Mon, 24 Feb 2020 17:52:41 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1j6HuK-0006VE-O0; Mon, 24 Feb 2020 09:52:40 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1j6HuF-0007aa-Ki; Mon, 24 Feb 2020 09:52:35 -0800
Received: from xsj-pvapsmtp01 (maildrop.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 01OHqVrA001811; 
 Mon, 24 Feb 2020 09:52:31 -0800
Received: from [172.19.2.206] (helo=xsjblevinsk50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1j6HuB-0007aE-H1; Mon, 24 Feb 2020 09:52:31 -0800
From: Ben Levinsky <ben.levinsky@xilinx.com>
To: ohad@wizery.com, bjorn.andersson@linaro.org, michal.simek@xilinx.com,
 jollys@xilinx.com, rajan.vaja@xilinx.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH 0/5] remoteproc: Add zynqmp_r5 driver
Date: Mon, 24 Feb 2020 09:52:26 -0800
Message-Id: <1582566751-13118-1-git-send-email-ben.levinsky@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(189003)(199004)(336012)(7696005)(186003)(81166006)(8676002)(8936002)(2906002)(5660300002)(426003)(81156014)(4326008)(26005)(9786002)(498600001)(70206006)(44832011)(70586007)(2616005)(36756003)(6666004)(356004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB5628; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: de16fee8-3cac-4fe9-b845-08d7b9525817
X-MS-TrafficTypeDiagnostic: DM6PR02MB5628:
X-Microsoft-Antispam-PRVS: <DM6PR02MB5628B44EE871996F43B5484AB5EC0@DM6PR02MB5628.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2733;
X-Forefront-PRVS: 032334F434
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: h4HZ7EHKxSu3mmWJRZLp2zFoHzPa3dAMnyfUNhUv0DhVbGisQIQEZtSsNlKw3NHjvhMUfphyzzLxgVpAyAULzoli38zljBQTqHPQ8cjyioConW2PBlPqwa8QFD1vwXVbKcp7zgY/A4c/tUngCPtDvDP8fWMuYfmdsx/YYgMfWJA/D+ppLnNvrkQfRIy2tvWfrQ12q+P7KsTHfTrlbpvU4O548j6vAcUp6lwg79sxUc4U+Nc63der8+oOEqxFY2krCIWrLY1DwGrrWJWJF74thrVlAu3Jj3FSFrkgTVZEYL9rH7MmZqnnqQnYLs2e4kGGiXsmkXpSIeETTYe5esUva6fZgsEvcCUngQhP4aBvgx6PC+O9ZLf9nypMjjT2/X9pP2m4zJCFKUVuwJIbgkTlMAoqHXwmWOI0NGdXzMm1AWzZA3BBynJ61SwNylwtLl/w
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2020 17:52:41.1439 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: de16fee8-3cac-4fe9-b845-08d7b9525817
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5628
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_095245_257555_4CBD4C6A 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are Cortex-R5 processors on Xilinx ZynqMP UltraScale+
MPSoC.
This patch is to add an Xilinx ZynqMP R5 remoteproc driver to
enable Linux kernel to bringup R5, and enable communication
between Linux kernel and R5.

Ben Levinsky (3):
  firmware: xilinx: Add ZynqMP firmware ioctl enums for RPU
    configuration.
  firmware: xilinx: Add shutdown/wakeup APIs
  firmware: xilinx: Add zynqmp_get_node_status API

Jason Wu (2):
  dt-bindings: remoteproc: Add documentation for ZynqMP R5 rproc
    bindings
  remoteproc: Add initial zynqmp R5 remoteproc driver

 .../remoteproc/xilinx,zynqmp-r5-remoteproc.txt     | 135 +++
 drivers/firmware/xilinx/zynqmp.c                   |  81 ++
 drivers/remoteproc/Kconfig                         |  10 +
 drivers/remoteproc/Makefile                        |   1 +
 drivers/remoteproc/zynqmp_r5_remoteproc.c          | 913 +++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h               |  30 +
 6 files changed, 1170 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.txt
 create mode 100644 drivers/remoteproc/zynqmp_r5_remoteproc.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
