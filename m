Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BDF1B196C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 00:27:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3ahTw7wUC0otd6K956cQiYLOEOVMZbwYogcu1fArphg=; b=WEYlLfOTZNEVRv
	MM5M5qbtur4pjCkL9HcNzpFOmI8ap9rPeK5h+CewjpfIt3BeHJBI6PKPFjYYY7msWRz/Gqmht0pti
	3hGMNiera+TbWHroMgoXTfBJEZJZTzqUo85OnUuZO1qMfEe+un9eJ+cL2XzesGh7LIMIlRH9OQE3e
	qNEjqGalg5DuRbqrsjZU3r2MsSnUgE90aCpoE+/6w+ZGD5fQ8wRAFmeF/emG/gupPSM8h1yMEv5AC
	nQ5MsaHToOzUf3PEf4sQBoRRvUASyNqm0BxwDOYoaBDIDrmXU+uBxXnwH7ig/pDjbKEEPcdZD1cMS
	a1866uc0Q0fxXsTa2YBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQetB-0001tS-EE; Mon, 20 Apr 2020 22:27:41 +0000
Received: from mail-co1nam11on2084.outbound.protection.outlook.com
 ([40.107.220.84] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQess-0001qZ-PZ
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 22:27:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VU3QGoMAo2+thwoidNRJ6Veeq+lyNvQJDqtHGoLBPsGBjS69oPJLyWGoPhi6XBt2lN6FAmvW1O8rghrZft8rV/2fPk8p4jBLtjFfcdcQtwnnfsGp2WxdkICfs6cF6VyQooYvz8VtSMsPxr7dqbkUukYgY5yMhTwnZ6At0fejSu1Ly+KewzYwlIma88j9pZ3DTSWNbSLe6JBBt/K2H55gogZJ2LedRVzxAQbg11r/CNrAs1IfLlT+EnSimdX5swz5xdZFaZrXF6lKRs2USweRP9RZciUwkIqwKsZcbUPEkvp6UxvUnGwVx5ctK+NC5fTO8JbJp8eSfbrw2lDffVDATA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QkJ0Pi7+LqukkEKtVYWgWpMj1h7fSTsb0NmMPElDMFA=;
 b=mHf2IOoHHc9tyxaQmi/zsGcDY0YU0RhFAyB0cJWpo3aG8/Hzk9rVEkTuwLxoynNQypXRugJRCfJfWIaq/kcQ+NrJOozEopLFLaldK1s5OdOYiDFZeVYORPOzlbCblukeq+hJlDlpvyOg6tLpLTOT9jZbq4DsguxfTgNmT4SfgeazKMD4WhRn9yeL6swFubcmusen3f/vlq4KmjkPDYnAXcER3OBN717FPoW43WT6cSQrJXcy7/eSYlK62dvN/3kGLfVTdkKa0NrAKR0a5BxwDMLYAWPXxYrGbKGfHBlUhYEwgCuClkSvAwpfy8nJqop84wiD5B+Vd5lYb2gZUskjGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QkJ0Pi7+LqukkEKtVYWgWpMj1h7fSTsb0NmMPElDMFA=;
 b=NhPCZefwFqgzWXaXG0imsUaURpEQx5db3F5lmp7BWPodtcBC+xxG+NaEHB/9C5zAn6qNg2l+0aLc4JVDNHQ8AWI7nRZVKAuWPdwRUogzqjlsrxsf3i412nxWx3jSFmpHK6eBBOl6mBS88olr5wfCDSX2L6y01ls86+AWv2z5Jkg=
Received: from SN4PR0701CA0003.namprd07.prod.outlook.com
 (2603:10b6:803:28::13) by BY5PR02MB6802.namprd02.prod.outlook.com
 (2603:10b6:a03:207::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Mon, 20 Apr
 2020 22:27:20 +0000
Received: from SN1NAM02FT031.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:28:cafe::79) by SN4PR0701CA0003.outlook.office365.com
 (2603:10b6:803:28::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25 via Frontend
 Transport; Mon, 20 Apr 2020 22:27:20 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT031.mail.protection.outlook.com (10.152.72.116) with Microsoft SMTP
 Server id 15.20.2921.25 via Frontend Transport; Mon, 20 Apr 2020 22:27:19
 +0000
Received: from [149.199.38.66] (port=33665 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jQers-0000Sh-8o; Mon, 20 Apr 2020 15:26:20 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jQesp-0008OD-Dq; Mon, 20 Apr 2020 15:27:19 -0700
Received: from xsj-pvapsmtp01 (smtp3.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03KMR99e020366; 
 Mon, 20 Apr 2020 15:27:09 -0700
Received: from [172.19.2.206] (helo=xsjblevinsk50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jQesf-0008MN-5M; Mon, 20 Apr 2020 15:27:09 -0700
From: Ben Levinsky <ben.levinsky@xilinx.com>
To: ohad@wizery.com, bjorn.andersson@linaro.org, michal.simek@xilinx.com,
 jollys@xilinx.com, rajan.vaja@xilinx.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH v3 0/5] remoteproc: Add zynqmp_r5 driver
Date: Mon, 20 Apr 2020 15:27:04 -0700
Message-Id: <1587421629-914-1-git-send-email-ben.levinsky@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(346002)(376002)(46966005)(316002)(81156014)(9786002)(8676002)(4326008)(36756003)(26005)(6666004)(478600001)(7696005)(186003)(5660300002)(2906002)(8936002)(2616005)(70206006)(47076004)(81166007)(44832011)(70586007)(336012)(426003)(82740400003)(356005);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3a52bf89-63f8-40ff-7d72-08d7e579fd2d
X-MS-TrafficTypeDiagnostic: BY5PR02MB6802:
X-Microsoft-Antispam-PRVS: <BY5PR02MB680273DB8121CD3AD98C6858B5D40@BY5PR02MB6802.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 03793408BA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uj9Qg+Hy79giPiFvlxBHEfVj7HtF0GLDSqFCxJB8VPA4BmXkrRlYcCIvM1dXjkyiaHm8Lrl9n90C9R4k5MN8GCr8r6H6eMzm4q74H8cpoViiz17Wz/HOsaNpO/UxXGiTrc/fjHyiH34oH0qatzvzhz8N6OsNjCQGbl6qC9iAYnOGmoQc3EdAKnC40CbtQENhyNNLcCJVrPJEp0rqcBkl2qtU4A/11cKgGq8OkKKOc+C8pOetHe4RtbSZ+ljGu/0Ca8PNj/SWEcuTNpgFVqokV7T9B4u/xB2BoOFXq6o8z7VTpA6nR4LWlFZDYqxY1l5fAhRBE4flmBW8HOJ6OKwNPVh3bZUREvg5288OfwZNiguEVPJDg7EEPGA7PJIMmHRH/7MgcfwcPrBww/WtyapsxhFOtbTPlTJatX6fAHnbqAp2VJ/aKEG9qx8VOiDsLcExDlufZ5lIzZpLcTgE/nX6sinoYaTna7wO9UaAeDZ/0x2ZhPp5bW8Pu64WORHUJwoNpdaYD0GotjY5vtpaMHcL9A==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2020 22:27:19.7484 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a52bf89-63f8-40ff-7d72-08d7e579fd2d
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6802
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_152722_829887_ACB7B413 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.84 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.84 listed in wl.mailspike.net]
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

There are Cortex-R5 processors on the Xilinx ZynqMP UltraScale+ MPSoC.
This patch adds a Xilinx ZynqMP R5 remoteproc driver to enable the
Linux kernel to bring up the R5s, and to enable communication
between the Linux kernel and R5s.

Ben Levinsky (5):
  firmware: xilinx: Add ZynqMP firmware ioctl enums for RPU
    configuration.
  firmware: xilinx: Add shutdown/wakeup APIs
  firmware: xilinx: Add RPU configuration APIs
  dt-bindings: remoteproc: Add documentation for ZynqMP R5 rproc
    bindings
  remoteproc: Add initial zynqmp R5 remoteproc driver

Changes since v1:
	- remove domain struct as pre review from Matheiu

Changes since v2:
	- update zynqmp_r5 yaml parsing to not raise warnings for extra
	 information in children of R5 node. The warning "node has a unit
	 name, but no reg or ranges property" will still be raised
	 though as this particular node is needed to describe the
	 '#address-cells' and '#size-cells' information.
	- add xilinx-related platform mgmt fn's instead of wrapping around
		function pointer in xilinx eemi ops struct

 .../remoteproc/xilinx,zynqmp-r5-remoteproc.yaml    | 126 +++
 drivers/firmware/xilinx/zynqmp.c                   | 136 ++++
 drivers/remoteproc/Kconfig                         |  10 +
 drivers/remoteproc/Makefile                        |   1 +
 drivers/remoteproc/zynqmp_r5_remoteproc.c          | 902 +++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h               |  69 ++
 6 files changed, 1244 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml
 create mode 100644 drivers/remoteproc/zynqmp_r5_remoteproc.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
