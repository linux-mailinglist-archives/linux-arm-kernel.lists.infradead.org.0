Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D691AD262
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 23:56:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9mPCMDoIlEFSMy2w3FdAD6SveY/rQmApPNYNTvrbz5c=; b=HRUAvwmvq0tswz
	lycfHiCcuPKtQgeQ1p9Q0/hnh2uFqhyj40LWqPxbCnJc8x+S4w4CyAx6ZgB5nIAbgt9imBi6LYRY9
	u6JKQ9ud3TIuAMwwBpK03i/NnyC8AK+9wNdTYM1UB+W6q6yfbG6h8PJ3v67JJejfWChYjXrmYVEEw
	Q8sj49g2fHkWop8j2LweXNC2v1te6tICfnCgNjzF+vgq1zYbXoYQfT5k4VUSwZSK5v97+az6OldvR
	b3k8L2AfVlJA5R7UYl8X/iUkzI9U30iKrQDusgEZcLl1Q95SpTdYpwPM1NbQ5mQFma6qttcH3HPGt
	und6GnXXKjzQdSfZgIGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPCV6-0006fi-U7; Thu, 16 Apr 2020 21:56:48 +0000
Received: from mail-eopbgr760072.outbound.protection.outlook.com
 ([40.107.76.72] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPCTH-0002nZ-F8
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 21:54:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GbbKIfdPgCv1pEb9n26JfIgMVaArO41N9Il8JlAbbZQcpU5LtYeu03jtNemEWAL1GPzfhHif2T45jky6huEDL3hEhUSHMZxE0VrRASyzOKFk+5DUED0qhBiyBy7Om7VIOPBnbW3y1zIW+Z09RZg1VwuJbcIrO/vWv9WqndTmZmE7Ol+J3t7DmJIi2AhSj6CxPcYv4Av86R7mtRzgO0WVuYgMNdwAk/ZbztIVRk1Stw1rGAmV6OcWpLImz1pWSLMJENWj0KR0FvEFc2jP9QeEitFyifjTSfalIg1SeHG0JCFYtzDt6i/0D5VMNmstATkN1jsNTXJ7UNyiGdwdBSqjTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YHH/Xu5Up+AEOY1e/pHcInyDAs4+tXSoTxvToxsMURc=;
 b=NTFYYDmytLjR7cp/120jjFeYo6Due5qEOLFbHwY59j2uZziJALYZFJLB8HooabB0xgRLjACzWbo+ORb8NKrDwE0MvYmpO7ahZwRDM2oLoVRwzH9hDP4NyeP6NGXJ9jBrVIjgbVhVi6i85F7DElrsPxms+d41VcovFha7Tn7DtVhfa7oMeb1NshOazBIq+PQpGbBdX1CKQ1VUW2SQ74vbtSB62LX7OSgr1yCLF3nCoiuT63WewbAzOlooG9W+l4DZQQL2SDy1OrG6KvtZTf0XyJvS51yLr6rb5Q+q89zXzzimu8Let1fqV4npzQTd0Vdb6oPVrOKUJToaXLN+vbNJmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=wizery.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YHH/Xu5Up+AEOY1e/pHcInyDAs4+tXSoTxvToxsMURc=;
 b=fKGymBHKrUupGeDNUGSR5O7EznZ/0BGN04h0/R73q7WZV4kGCoA2jY4FpYNp+zt7l7KMyTq4pbaYGeemi4C7NECvd7jutrmHMrzKz2BdlRBzgp7jdcScOdHG5zpL8gUJdvtNoHSPo/fbQmpMFORqEOLv1b3I9stYlN31xacEpA0=
Received: from DM5PR15CA0072.namprd15.prod.outlook.com (2603:10b6:3:ae::34) by
 BL0PR02MB5667.namprd02.prod.outlook.com (2603:10b6:208:8f::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.27; Thu, 16 Apr 2020 21:54:48 +0000
Received: from CY1NAM02FT034.eop-nam02.prod.protection.outlook.com
 (2603:10b6:3:ae:cafe::1a) by DM5PR15CA0072.outlook.office365.com
 (2603:10b6:3:ae::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.26 via Frontend
 Transport; Thu, 16 Apr 2020 21:54:47 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; wizery.com; dkim=none (message not signed)
 header.d=none;wizery.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT034.mail.protection.outlook.com (10.152.75.190) with Microsoft SMTP
 Server id 15.20.2921.25 via Frontend Transport; Thu, 16 Apr 2020 21:54:47
 +0000
Received: from [149.199.38.66] (port=38407 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jPCSN-0004ci-MH; Thu, 16 Apr 2020 14:53:59 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jPCT8-0003e3-Sw; Thu, 16 Apr 2020 14:54:46 -0700
Received: from [172.19.2.206] (helo=xsjblevinsk50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jPCT4-0003cm-3j; Thu, 16 Apr 2020 14:54:42 -0700
From: Ben Levinsky <ben.levinsky@xilinx.com>
To: ohad@wizery.com, bjorn.andersson@linaro.org, michal.simek@xilinx.com,
 jollys@xilinx.com, rajan.vaja@xilinx.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH v2 0/5] remoteproc: Add zynqmp_r5 driver
Date: Thu, 16 Apr 2020 14:54:37 -0700
Message-Id: <1587074082-14836-1-git-send-email-ben.levinsky@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(39860400002)(396003)(46966005)(9786002)(5660300002)(47076004)(478600001)(356005)(81166007)(4326008)(70586007)(70206006)(6666004)(7696005)(2906002)(186003)(336012)(426003)(316002)(44832011)(36756003)(8676002)(81156014)(2616005)(8936002)(26005)(82740400003);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c2f13fbb-17f3-4f9c-9dc0-08d7e250c7b1
X-MS-TrafficTypeDiagnostic: BL0PR02MB5667:
X-Microsoft-Antispam-PRVS: <BL0PR02MB566779F2A6A3C459CB201E78B5D80@BL0PR02MB5667.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-Forefront-PRVS: 0375972289
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cPdZ2tQdcHS9c7XeP9V1DdY4784QcKhQidXDjYbyn5HYi5lW+jeeTkwWDatmkk6kks/A23RPw5kzsbzmYuOJpiLo8GbTVJnTQIxxrtbJmuRZ+TExmcQKUwh1yJpiCrGlEjHFWR76w0y6fKBCu3/CtOD34SoEGDLeFYuAkWe5zVG/fqq7UaWDfiCncBNIfwnkRA2lndSnd5TKW37PDob2PPXVF8WqSFH014F1w6TNYloHV4t/BfB5yNYzcS5eqKuT0T35IBgoM9HaOQQCQNH/UFtM0BPWNZf3XLaBwYyS7WjqNnNNtaTyvIqzymtWCb8MpmeRcGdKHSLYvVnywTUA2GmuVNbxCRr4ZFX1+26ESxjkjp6ln6CHUYxagYlqu5uz2EDX/JnEvM6nv1TEJNyqir51sM8Z7G/suvLbb5v+2j58TRiEf5KDqJoGwgVjQ19gqKWdAehnONt6ezVEcjaoadjhrDXpKJrGiZqjEfThoTFOX3XtkLxG+sWNHvzy8Z13iJkDvd3v8KS5mR7AcHW7xQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2020 21:54:47.1661 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c2f13fbb-17f3-4f9c-9dc0-08d7e250c7b1
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB5667
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_145455_503662_F6548B62 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.72 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.76.72 listed in wl.mailspike.net]
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

Ben Levinsky (5):
  firmware: xilinx: Add ZynqMP firmware ioctl enums for RPU
    configuration.
  firmware: xilinx: Add shutdown/wakeup APIs
  firmware: xilinx: Add zynqmp_get_node_status API
  dt-bindings: remoteproc: Add documentation for ZynqMP R5 rproc
    bindings
  remoteproc: Add initial zynqmp R5 remoteproc driver


Changes since v1:
- remove domain struct as per review from Mathieu

 .../remoteproc/xilinx,zynqmp-r5-remoteproc.yaml    | 119 +++
 drivers/firmware/xilinx/zynqmp.c                   |  81 ++
 drivers/remoteproc/Kconfig                         |  10 +
 drivers/remoteproc/Makefile                        |   1 +
 drivers/remoteproc/zynqmp_r5_remoteproc.c          | 911 +++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h               |  30 +
 6 files changed, 1152 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml
 create mode 100644 drivers/remoteproc/zynqmp_r5_remoteproc.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
