Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14973176601
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 22:32:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oj2ch+y6F4XkIe9NkVA1o7m4jyqz7MNu8AUs5529N2U=; b=DgUEA1SkPbBTig
	qNYxjoGWLXhY2tx51daVKvJaBS66SgYzqNn0DbcQBYd7whmlv6WCVDSWFGvrAK7MyojNiSmmkE0Y2
	JsHMhE7XQQxadw6Vu3wZ+OHTcuSkXa1CxbTFbSj0w2OULpx6FvZyv/GXbIi1UvFjJpON/TDYMVftv
	aoYPBPytmgF2WXqPUFPa9cHIDy1IoX0BgTruqZzLx39dJ+1HZ+pbk2+FK0OzeSbxccoRP43XieNjT
	rGc7XdDDA8yXlwZrgNjPsFxmbtpowyxIFgcdWXWr/HsM7U0Ueb7av9AY28uGmn1s1OEmy7OnwUfis
	qPC8NGHdBzzRjEkqluPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8sfJ-0006Yt-RF; Mon, 02 Mar 2020 21:31:53 +0000
Received: from mail-dm6nam12on2062.outbound.protection.outlook.com
 ([40.107.243.62] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8sei-0006Az-41
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 21:31:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BjkirfE0Xa5lYrCRoOb5jBuet90bhF4FdEuV/JE8c8AQ+hJf37kXzx0bjTqHxn0gDgEACIE/rm0xVnHFMFLbQduzjy+rw5nJd0IfbEbW3Aqjo47bcgCPacOQ/Bmm7womeZBNoSVPPdnAM2bbX3EJqEedoblZf71TkZ1GTVYjFeTcbU1hC9asL7IE4DXb8Isxl84jaFZHN3dA8xtl7E/yjt0v5HJtBN4orGE1E4jsOzwKSAxnJqiJfkQRAAuTQG1GO8P1brWilVD103/VqXRIWRKkrws4GpjwqDk3x7uXzKzEeXH7lbWRzn+FpHXG68wyKWnkjkb7vnUupXes1FVVPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6HrgVz3/y0ySSDq7JQZ7fcwCoDpoGXyO9ayyNroquOA=;
 b=JUu9fpQwhOp0XslKNlYxj9Psq69u48/dd72pOzwVJnb/31hFFHgvXuRnQlrSLX+dRoqTV+1Lp0XGGY1dSstP4LzeckygLh0H9+Eae5EXfu4pabAd1sgII8OBFZLj2QSMtN0d1F11YyLtFCrndnxEwF44SYSctpESFrR7LO1sUffjktxdE4uJ58xEdUYDk21XHp6MXKfnr8R8MULTTIQK8f9e+dgEGf/ZvCNz2NC8F2WphRig0c2AQJ+p6V79o1t6JOjsTbO4BZ2cPvj5yIwK3VYSO4stHvp+M4HqlniK7g0X91i7QAANdKeANxBJmwfoD/XmYo3OqH/aMeNsE7x8bA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6HrgVz3/y0ySSDq7JQZ7fcwCoDpoGXyO9ayyNroquOA=;
 b=qrV0tdp1y0DRF7lb2jJNODuZPOK6jMK4vXSACY3P1MAblawJKhY3auNkPwqfLq9Fhw1Uxx+p3aWg8QA/WMjur6iR3/J8nSnji1mX8Qfezk4hmx7/t2YwW1CiCb1g9Q8wtOc4tIOcg5NayvHRJg0+U+PW1aX354tylOSJQqjy/aU=
Received: from BL0PR02CA0056.namprd02.prod.outlook.com (2603:10b6:207:3d::33)
 by DM5PR02MB2540.namprd02.prod.outlook.com (2603:10b6:3:48::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.19; Mon, 2 Mar 2020 21:31:12 +0000
Received: from BL2NAM02FT061.eop-nam02.prod.protection.outlook.com
 (2603:10b6:207:3d:cafe::b8) by BL0PR02CA0056.outlook.office365.com
 (2603:10b6:207:3d::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14 via Frontend
 Transport; Mon, 2 Mar 2020 21:31:11 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT061.mail.protection.outlook.com (10.152.77.7) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2772.15
 via Frontend Transport; Mon, 2 Mar 2020 21:31:11 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j8seb-0001v9-FZ; Mon, 02 Mar 2020 13:31:09 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j8seW-0005hD-CT; Mon, 02 Mar 2020 13:31:04 -0800
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 022LUxLn007040; 
 Mon, 2 Mar 2020 13:31:00 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j8seR-0005dg-Nn; Mon, 02 Mar 2020 13:30:59 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: olof@lixom.net, mturquette@baylibre.com, sboyd@codeaurora.org,
 michal.simek@xilinx.com, arm@kernel.org, linux-clk@vger.kernel.org
Subject: [PATCH 0/2] drivers: clk: zynqmp: Update fraction clock check from
 custom type flags
Date: Mon,  2 Mar 2020 13:30:41 -0800
Message-Id: <1583184643-19191-1-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(136003)(396003)(189003)(199004)(8936002)(6666004)(7696005)(356004)(478600001)(15650500001)(186003)(2906002)(26005)(107886003)(316002)(5660300002)(9786002)(426003)(2616005)(36756003)(4744005)(336012)(44832011)(81156014)(81166006)(70206006)(8676002)(4326008)(70586007)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR02MB2540; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6ca3614d-4609-4ef8-8f2e-08d7bef10765
X-MS-TrafficTypeDiagnostic: DM5PR02MB2540:
X-Microsoft-Antispam-PRVS: <DM5PR02MB2540D9F0C1EB6227E0529C0AB8E70@DM5PR02MB2540.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-Forefront-PRVS: 033054F29A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AsplRS0lzGjbOL9eAEFqe9zJpDjkrk9Ez1ynPZhbdWavffdnhI939Bpt2poSRKqCnT+uYc+PzS8T+yAiZiB4iIiQQm/yVNVNuQ59OoF+fyFlNb83zNtdl8RcGFWYsqtGgZ8J9qHrFa1FIwOtHpGNw3RUHNK+xacviNrw3dURch2nrJ5G/ImLVEj3POIuLxRtRN3+MDAO0QKtJsasNEIhcZQyvibJjYvpmczk2/tfW3SuokLaS/dC3Hb5Jr1TqAhJsaOENFbmc8pBy1PQogHb7Y3anLVMd9I+Eh9TN/nr+Z8l+loRq6BKIY7sHwplfQec3dodiuse0FHbygdzyRuOsT6D/8mepJPbDxn3XxOM+AXh7fIQlEl5nGcvQpgsTIvrQzLl6lcTzqMzCDfvhKSa/fTSfyOCMkG4c/0jlpSe8iso7uGfM81VhzwsIKmcxA7H8H4csM+6EUYMGtqCWCmMzPb+zmv0p73IGIHNvspvwSA6SuYcWNGwrI8I9GXBmXQh
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2020 21:31:11.4935 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ca3614d-4609-4ef8-8f2e-08d7bef10765
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB2540
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_133116_161539_C3716514 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.62 listed in list.dnswl.org]
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
Cc: Jolly Shah <jolly.shah@xilinx.com>, rajanv@xilinx.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
