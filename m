Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 500B71A9A54
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:25:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d/mtvBh3II5L9GACamwr0XsTdnB1uI/rk0lGkcs9sY0=; b=a0miQIMLa8f1q6
	NXm//VaK2t2OJnWLUe8BWJ6FNxIPJIxF8LBofdZoMCdDVelMhTIJu4HJYGT7npTTkq7Pf6lIfwZ4J
	E2c3EF7Usz+ulUMn6sR/xta8zek2B1+LWDuWr7IfzWK2xn/bnf3pTYI0WTnhcdeoYSDJrzurDjLjy
	czG1odlnKjmVQRhZDydefjOMdnVohCgKhSHb9E76CKxma5fMBgGXJ9DebyHiTd46z20AT1wI/KFyZ
	mOwFoErviQ6ADNYaEg9g/RyHApZLZSS+P97Aj05kDpVEuP5/9iMMf3LHRIUaZVR6gBbErd2Y8p5go
	NqUpX3NpQl6UgYy/f5Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOfER-00043B-NK; Wed, 15 Apr 2020 10:25:23 +0000
Received: from mail-mw2nam12on2046.outbound.protection.outlook.com
 ([40.107.244.46] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfEA-0003JD-QZ
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:25:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AdOunWCpJ/LF371FP7EnWw3ZyeTbnwQ2V10oo/4YEWypIWm3ukFqJoCWAv6vOGRc1Ucnf02YcUu1e6X782noM49zzN0NlxhKminVf5NusZnOXqsQCCEpsTxnYLj5FZKgd+9bf4UsN8jhmL9bHlzpxxZG0RLsm5NlOa6tLLUvnrFiBRGB1pE1bF07b5yMV5kIsmBkYwdR5zqax3Iw/Z+uIrysItpbXuE0efmj08fh7dO29kuEy47ZvL7U/xvrmqw1kwBleIm2DUj445nvVUJ5tvrOc2n6lKystr39qs2lKCv5kpBV+uddL3Vsw/p9NOFVcVqOFerpN697HQRfN1GLKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ry2gX4wI243Spew8GBjHdN6kWvF2qrKVqDEmaVAf5BA=;
 b=bCsyKaNyqEFQp+uXdGrGlcs0iOb6eb1UGedSoUMvS28cBsdqMaNFP72uWbGjL/xmHK1Dj3EOP7ii38/IEOC6Xxt6gbxQRszz0IAkfQTOKC1pIlUg98mPqDiVfulsFO8U6KtoDoGkMfK7Qpy1cpn6ZTdu7d+Ds7grMxzUnsleYqqICzAM3YCmbwvR6GGdCycTECfwUKouTKwGlYqUGA5wue5Ekp7Y2px+BmoVhY0KEqgDNujYnVljLtyEddLb3kMAvppDb6MXNxlSEiAyQI6TnqjWY81bbMnO2OnNTBl8vaQ8KBch8OmakKyGrddsNZ5L/p/OINt2b02AQy6DHTRLmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=gmail.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ry2gX4wI243Spew8GBjHdN6kWvF2qrKVqDEmaVAf5BA=;
 b=ZhrtLTbXxdw85Bw1cAoZr+VrDVpgolZMoKElx99hzXW3VOplp4cliz1ADf4IECs6wGggmcuxx6teXHcr0fCLfBPmGJcLlHbz/Wrs7emxLWhs9YDs91mxV9wPDYhKR2+7hVC34nD1jBrdnTh8wL14lzaxTBMUjEc8pikQ5yktDWw=
Received: from SN4PR0201CA0021.namprd02.prod.outlook.com
 (2603:10b6:803:2b::31) by SN4PR0201MB3615.namprd02.prod.outlook.com
 (2603:10b6:803:45::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.24; Wed, 15 Apr
 2020 10:25:03 +0000
Received: from SN1NAM02FT021.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:2b:cafe::c7) by SN4PR0201CA0021.outlook.office365.com
 (2603:10b6:803:2b::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.25 via Frontend
 Transport; Wed, 15 Apr 2020 10:25:03 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT021.mail.protection.outlook.com (10.152.72.144) with Microsoft SMTP
 Server id 15.20.2921.25 via Frontend Transport; Wed, 15 Apr 2020 10:25:03
 +0000
Received: from [149.199.38.66] (port=57986 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <nava.manne@xilinx.com>)
 id 1jOfDP-0002ou-Ux; Wed, 15 Apr 2020 03:24:19 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <nava.manne@xilinx.com>)
 id 1jOfE6-0000Qx-NJ; Wed, 15 Apr 2020 03:25:02 -0700
Received: from xsj-pvapsmtp01 (maildrop.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03FAOuln018310; 
 Wed, 15 Apr 2020 03:24:56 -0700
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <nava.manne@xilinx.com>)
 id 1jOfDz-0000Kb-PR; Wed, 15 Apr 2020 03:24:56 -0700
From: Nava kishore Manne <nava.manne@xilinx.com>
To: mdf@kernel.org, michal.simek@xilinx.com, linux-fpga@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 chinnikishore369@gmail.com
Subject: [PATCH 1/2] fpga: doc: Add binding doc for the afi config driver
Date: Wed, 15 Apr 2020 15:54:49 +0530
Message-Id: <1586946290-7280-1-git-send-email-nava.manne@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(376002)(39860400002)(136003)(346002)(46966005)(81156014)(356005)(70206006)(8936002)(8676002)(82740400003)(2906002)(107886003)(70586007)(186003)(426003)(81166007)(6666004)(7696005)(5660300002)(9786002)(36756003)(336012)(2616005)(478600001)(26005)(4326008)(47076004)(316002);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 56f7ca4d-a555-4342-f7b1-08d7e127426e
X-MS-TrafficTypeDiagnostic: SN4PR0201MB3615:
X-Microsoft-Antispam-PRVS: <SN4PR0201MB36150FDC5A13A551311E0FB9C2DB0@SN4PR0201MB3615.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-Forefront-PRVS: 0374433C81
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Nfn7yI1hIEqdKkH4xbfIW6ursuLQrIEyMht+RrrKf464f9ttNQP9Whvz7uWNh8DufyThH4kQJjENzG90OST4i0fz99an8MIeRizyZV9beFFhFqPSXxj3Z+zcdC3lWA1l7wcl/LFmaxvxxsws92a3BIp1uVDZaHlbKzat5mAuzig/bCC3P0fllLT6LF4wGJJgnPRQHvtx6+r0z+6uxkAnBceiDwTBJ8niTAsMWqOA0/2ppgjVkSdtv+t+v5zqd8arp9+wzx0DcYXnJhemlJl1PQXbpIRRwn0TXaTjoVQ+gbeDA8ooEZ0MIBKeSX32DnM60jwDsVf9ugbZ90NVYc4+kz2rcsWhCYAUV2Q3QOn6BJ1YkQtICTM29xVXfkn8xZJe8pTssWEHKqtkQNKSlmP+szMFiP2JJ+oEIiYG1sPMW2iEEMHxr+VWecUSKBAabaaps2v2BhNQThGoN7VHypePTlavkodYatH+tXqo8/PzwfPNVwS975lOkC/Bqg/NoWEq9UwgeCIOWQR4hHfybCOKUA==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2020 10:25:03.0677 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 56f7ca4d-a555-4342-f7b1-08d7e127426e
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR0201MB3615
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_032506_881165_07BD285C 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.46 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.244.46 listed in wl.mailspike.net]
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
Cc: Nava kishore Manne <nava.manne@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the binding document for the afi
config driver.

Signed-off-by: Nava kishore Manne <nava.manne@xilinx.com>
---
 .../devicetree/bindings/fpga/xlnx,zynq-afi-fpga.txt   | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/fpga/xlnx,zynq-afi-fpga.txt

diff --git a/Documentation/devicetree/bindings/fpga/xlnx,zynq-afi-fpga.txt b/Documentation/devicetree/bindings/fpga/xlnx,zynq-afi-fpga.txt
new file mode 100644
index 0000000..e00942c
--- /dev/null
+++ b/Documentation/devicetree/bindings/fpga/xlnx,zynq-afi-fpga.txt
@@ -0,0 +1,19 @@
+Xilinx Zynq AFI interface Manager
+
+The Zynq Processing System core provides access from PL masters to PS
+internal peripherals, and memory through AXI FIFO interface
+(AFI) interfaces.
+
+Required properties:
+-compatible:	Should contain "xlnx,zynq-afi-fpga"
+-reg:	Physical base address and size of the controller's register area.
+-xlnx,afi-buswidth :	Size of the afi bus width.
+			0: 64-bit AXI data width,
+			1: 32-bit AXI data width,
+
+Example:
+afi0: afi0 {
+	compatible = "xlnx,zynq-afi-fpga";
+	reg = <0xf8008000 0x1000>;
+	xlnx,afi-buswidth = <1>;
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
