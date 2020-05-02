Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D8E1C21EE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 02:25:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+OxsiLPUkjfy95usWH2YfIlW+3tGqwP3wv+Zk2lUhmI=; b=oDANXNb7V0tQxs
	iZRicJXjDWG/4eNIsTDLgQCYCk9gumwrj8FW4CB14T0vKuMWGfkZuh47xoQTBCeRdzIOG5vdHQFGK
	3RSHrxyed/Qz3awv9I2nB2fJKWMxgv8SwdV2peSL46znB0z+1+ab4p7sCFwOw40vaGa4AulxAUDAI
	teYC/0fAjPFRa1l2c4wtBpFn/3EKjt/gQA6O6m6tQk9k05z0p+KwHMyTZbbkJcAduYxxq0O45KupR
	uIBU0RS2HyRAT2YORAyohR1W9vgl9HL17ONyhXbxzT6SaWVVSUSf5lgF95cS+XukLuZ85Rx72Wasu
	An7g5YAsjT0YSXjtz7Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUfyZ-00019S-M0; Sat, 02 May 2020 00:25:51 +0000
Received: from mail-bn8nam12on2041.outbound.protection.outlook.com
 ([40.107.237.41] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUfyE-0000zi-0E
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 00:25:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nN/a/Ix1ayoDZxFp5dhwOaoVIUdi2RluIAMX9UM18USYP8l3pjSXc32Z08FsyFgaSftjsPlpUYLG6PXd9jIUzaGaJZ2QEvsA6n3+y4f/nKFvMmnnu8Roo1NIKaHjfrpp+3ioV5oHqK/YRnQBhxVYZahmFHnjIQFCWxXRw+jo4MpjBxyq5ErUyZtTuVUPhiXt4FEDDXxsa2HDk0olQ6UCUWxSqZObUjx0Rqth81hyN6ULVfatoewDbFXIMWHH24bhH0DGj0OPdhoL2t9YEyKyz2C/M2alQbhnaZKazhEPRd2vOZon7uO9LSoiBAKuyZ6rwqa/AFpsw3wdplWfQg/IGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JlwoRETXK8dK1LUyYeUzMX/A0nSc1vZw3PgFadZZ4hQ=;
 b=kIzYe9M4hVn5nsHCbnVRwMfGRu3Pp8uT53Iz5hNTSLib2YGfwkrvwYzTASaaiGDRlyeYe9L+Uks0KQ0NsZyefjJz4lq6XwhdEW6hQ4SudpfXCY04mLhxl54+hB+oun2tGQC2uvLj8u/9xjAabzD59gAZs3wZwDQwyqic07xUVgMIrLBvPiXaqUSbWU3Szau7DHqKeijfavm7XyI0ENbfKOLwhKxEz5yXCXHiZ2duMDo0k4c3Cl4pZpBI1JGnivUSUBZxntZTlfNHz9vtmPksU/AamLupUjrRGjCE40NRPW0TsBVBkJBXmKRHr89fL6fvoeetbUdiUYXdf5k3+Vhwww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JlwoRETXK8dK1LUyYeUzMX/A0nSc1vZw3PgFadZZ4hQ=;
 b=KVwSffcWiyu0XuPeeo9cwsJxKqRUaYcf51CfliZgcLkmDVMesduono3/RSC4DFFr4ZdkZvWLDOqHHCPuXr/5JQYUMnOqw73Oy9U067lFD2msUFR6w+VBcyw7JeqOrubIdU0JCbguYHkibmVngOn0rG1tE1uqns5rMj1yUvyE/Pg=
Received: from MN2PR11CA0001.namprd11.prod.outlook.com (2603:10b6:208:23b::6)
 by CY4PR0201MB3539.namprd02.prod.outlook.com (2603:10b6:910:94::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Sat, 2 May
 2020 00:25:26 +0000
Received: from BL2NAM02FT021.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:23b:cafe::22) by MN2PR11CA0001.outlook.office365.com
 (2603:10b6:208:23b::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20 via Frontend
 Transport; Sat, 2 May 2020 00:25:26 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT021.mail.protection.outlook.com (10.152.77.158) with Microsoft SMTP
 Server id 15.20.2958.27 via Frontend Transport; Sat, 2 May 2020 00:25:25
 +0000
Received: from [149.199.38.66] (port=38216 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <amit.sunil.dhamne@xilinx.com>)
 id 1jUfy7-0006Qg-A3; Fri, 01 May 2020 17:25:23 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <amit.sunil.dhamne@xilinx.com>)
 id 1jUfy9-0004NS-J1; Fri, 01 May 2020 17:25:25 -0700
Received: from xsj-pvapsmtp01 (xsj-smtp1.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 0420PIOr027413; 
 Fri, 1 May 2020 17:25:18 -0700
Received: from [172.19.3.8] (helo=xsjamitsuni50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <amit.sunil.dhamne@xilinx.com>)
 id 1jUfy2-0004Mq-0I; Fri, 01 May 2020 17:25:18 -0700
From: Amit Sunil Dhamne <amit.sunil.dhamne@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, michal.simek@xilinx.com,
 mark.rutland@arm.com, linux-clk@vger.kernel.org
Subject: [RESEND PATCH v2 0/2] drivers: clk: zynqmp: Update fraction clock
 check from custom type flags
Date: Fri,  1 May 2020 17:25:15 -0700
Message-Id: <1588379117-254190-1-git-send-email-amit.sunil.dhamne@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(136003)(396003)(376002)(46966005)(70586007)(47076004)(81166007)(2906002)(36756003)(7696005)(70206006)(8936002)(8676002)(9786002)(5660300002)(26005)(478600001)(15650500001)(186003)(6666004)(966005)(426003)(82740400003)(356005)(4326008)(316002)(2616005)(107886003)(336012)(82310400002);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 85bdb782-49d2-41bb-5d2d-08d7ee2f4f6d
X-MS-TrafficTypeDiagnostic: CY4PR0201MB3539:
X-Microsoft-Antispam-PRVS: <CY4PR0201MB353982497261AAFE3330278EA7A80@CY4PR0201MB3539.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 039178EF4A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WOT2aaUJTDWvKTJmOm9SD42qcNZ+ySoyRBjQgELIcr1SaT93P7QbOTP4SKEIakGU/FFG2N1xD4GcrQ1/jWIuqyS94f9E/J+EALgoJKnWdQgzfxiAk732XISra+6lhKXG/5Fk68BOvr6/x9z5l9evexbX0mngR28hvlj8j11AsZIdaky5R7n2ze3Rk/I4HHRKOThvv6kd16FIizlpGxTUbAgfB9IjJe+aq6OxjJxWKsZrGU8JUGjxjmzcjKToJhLNrhJLr795Fd5K1iOKCheLbrLxoFDt4XeD4RfYJUc/4qzUTTTzZd+ckOdmHMa7M4aJXlJu/TfQb+0OcDZc+jYGFtig5C3nnHFkHOXnAJE0rtgbS5TWKtvYBZ53THId40KKfU0a1UYzjtCPlge0Xxk/WwCCL2es9AOrtSeUa7QMtqG7biPBpeXM8ycbXvwIN3VM0wS9cpx3M4SXU2iVsN4DIejqgkIY65mDC/xGY71BFJ1H5SfUYOByCeT/3CiG4lqmek99g1VeZnvxs46/yT6oKISS1NFojTCKqLbSXqwa3R15RrTbw6S9RfwzdjVpYjsWrkbWwvzha1HXuo6nCo7A5g==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2020 00:25:25.9555 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 85bdb782-49d2-41bb-5d2d-08d7ee2f4f6d
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR0201MB3539
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_172530_042878_21124065 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.237.41 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
Cc: jollys@xilinx.com, rajanv@xilinx.com,
 Amit Sunil Dhamne <amit.sunil.dhamne@xilinx.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds support for custom type flags passed from
firmware. It also update  fraction clock check from custom type
flags since new firmware pass CLK_FRAC flag as a part of custom flags
instead of clkflags as CLK_FRAC is not common clock framework flag.

This patch series maintains backward compatibility with older version
of firmware.
v2:
 -PATCH[2/2] Correct BIT index of CLK_FRAC in custom_type_flag
Resend v2:
 -We have tried to ping Stephen several times over email. Link:
  https://lore.kernel.org/lkml/70D64AAE-668B-4699-8BDB-41CFC755C373@xilinx.com/
  and also we tried to pinged him over IRC this week without no reaction
  that's why we are sending that patches again


Rajan Vaja (1):
  drivers: clk: zynqmp: Add support for custom type flags

Tejas Patel (1):
  drivers: clk: zynqmp: Update fraction clock check from custom type
    flags

 drivers/clk/zynqmp/clk-zynqmp.h | 1 +
 drivers/clk/zynqmp/clkc.c       | 4 ++++
 drivers/clk/zynqmp/divider.c    | 6 ++++--
 3 files changed, 9 insertions(+), 2 deletions(-)

--
2.7.4

This email and any attachments are intended for the sole use of the named recipient(s) and contain(s) confidential information that may be proprietary, privileged or copyrighted under applicable law. If you are not the intended recipient, do not read, copy, or forward this email message or any attachments. Delete this email message and any attachments immediately.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
