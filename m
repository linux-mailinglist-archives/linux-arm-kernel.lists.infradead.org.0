Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C8310692D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 10:47:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7kPMAWL21RIqznAPYtem/iawkEzV7yxWWHA6Yh/YGhs=; b=uge/L6PllQhogC
	XAhzoajF10xag+4NuaOp3pHwqqinrzvZu6YvDERJjk3Ss50udJL9n25IE6rYscQCH07aeyLIaZEvL
	tUbFayaQ0irJSCeZB0FAYLqaU7sUMF18PvNFYaD/3ckbFO+dNUoiKJ6Q06Uq6bL08NXYM6SIhABQG
	G60ikRV2ZOoUBruxEPiuYVSVbKc0ryBd+99h3kzEe+HEpqemcKhE1BR8DXEGz3rUamWtnzKkyWapd
	TljERhaAzUIRpyfQo7lhHYMdoqsyi42OSP59NL6lGcl6SgIoJ73liZi/imNmw3Km3OFYfYFACBBY9
	1xMxH3sJjiSwYan5y2mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5XE-0002Cb-LM; Fri, 22 Nov 2019 09:47:28 +0000
Received: from mail-eopbgr720070.outbound.protection.outlook.com
 ([40.107.72.70] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5VU-0000vQ-Tf
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 09:45:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gFKuovtPZlP/f81ASrq/5OkjQb/rBeY00Cjl9UkZx5lP2AdZVEVCmZUa9JXcX4g/qz76gLBDH6HO620js5mUbFWqMawqZDQCSvxHREnY2xF18MycJx8HA6uexi1rcGgbNxSwOM5MKHxhyUrK6x5GgWevw2XRbPynLWXRcTgsTq05Uc+hphAR1M2sFKYL+kn0oXkiz5ztkmktvU98y3BbZg/CFdVRR67kWkpIiDudxRZwgXkmg2TFT6Opv20F8CM7k2MCW+6tlP7oNDtTqjKwJjo/SlNVA3Wjgn3szgTxpf1wNd9xVytFmJ+V5N0nOZT00ckIN6NKydSF40Oskn2EVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ey4Ej2hTzmEmKvVsIfcXFMBEAjs6vkI2lJYYHWL0KY=;
 b=S0zIxpA/fhKyA4tYEPoKCfqVwGBhnEqJ8iKI72G8y3oLJ3yPL+AtudgEA+5NDefzh4Es5wHV8BeGSW9VaoBAzilBbQQ5v5MijFAu4/IeNuH56NL/Z2Mxh2Mz48i82T8yy982PYAUYco+yhUnkZ1N4rnz4sJwjMvR+fiRkeewa1WF8cRV1RytRHh3oCsuAHTZRE/BznWD2As1DlejZcyxWQhN2VkfgOYVP6QeI3MpKfliD5VfyS/k71Jq0r0o0mH+z55yKCm0hVD8R3k1S+2prkzN2tDXlZonvxx12rxnn+CFICi2i7UlcZBUvE1Y0UjWvlnyPj46hiWok4+RBZ8yFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ey4Ej2hTzmEmKvVsIfcXFMBEAjs6vkI2lJYYHWL0KY=;
 b=NdP6VJ5vEPVQ9G4c47wkJy5jpG51dyh0o3mS6uTynW0WyYG10+dY6ckELgtt7J4nLSv3/JJWqejNwE/UIyFK2XVrAVkayIgGUv4LCVnJeRqM6HdQeB1DoIGgl+daKtmXr2s8RCJ5GpIKQ9YtFvGGYL1RhHAzFJLAVuGzWf8by4Q=
Received: from MN2PR02CA0030.namprd02.prod.outlook.com (2603:10b6:208:fc::43)
 by BYAPR02MB5335.namprd02.prod.outlook.com (2603:10b6:a03:61::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.30; Fri, 22 Nov
 2019 09:45:35 +0000
Received: from SN1NAM02FT049.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::205) by MN2PR02CA0030.outlook.office365.com
 (2603:10b6:208:fc::43) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.19 via Frontend
 Transport; Fri, 22 Nov 2019 09:45:35 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT049.mail.protection.outlook.com (10.152.72.166) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Fri, 22 Nov 2019 09:45:34 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iY5VO-0008SM-FT; Fri, 22 Nov 2019 01:45:34 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iY5VJ-0002pC-DS; Fri, 22 Nov 2019 01:45:29 -0800
Received: from xsj-pvapsmtp01 (mailhub.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xAM9jLfu003473; 
 Fri, 22 Nov 2019 01:45:21 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iY5VB-0002ob-OO; Fri, 22 Nov 2019 01:45:21 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, michal.simek@xilinx.com, jolly.shah@xilinx.com,
 m.tretter@pengutronix.de, gustavo@embeddedor.com,
 dan.carpenter@oracle.com, tejas.patel@xilinx.com,
 nava.manne@xilinx.com, mdf@kernel.org
Subject: [PATCH v2 5/6] clk: zynqmp: Fix divider calculation
Date: Fri, 22 Nov 2019 01:43:33 -0800
Message-Id: <1574415814-19797-6-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574415814-19797-1-git-send-email-rajan.vaja@xilinx.com>
References: <1573564580-9006-1-git-send-email-rajan.vaja@xilinx.com>
 <1574415814-19797-1-git-send-email-rajan.vaja@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(396003)(376002)(39860400002)(189003)(199004)(44832011)(70206006)(70586007)(446003)(356004)(6666004)(47776003)(106002)(316002)(51416003)(107886003)(16586007)(36756003)(81166006)(36386004)(9786002)(81156014)(7696005)(7416002)(4326008)(76176011)(48376002)(8676002)(50466002)(186003)(426003)(478600001)(8936002)(336012)(2906002)(50226002)(26005)(11346002)(2616005)(5660300002)(305945005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5335; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4cc89da8-e211-4eb8-29cb-08d76f30b913
X-MS-TrafficTypeDiagnostic: BYAPR02MB5335:
X-Microsoft-Antispam-PRVS: <BYAPR02MB533572A79681AF5B087BDB85B7490@BYAPR02MB5335.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-Forefront-PRVS: 02296943FF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 495oJHQJ6HRrOGmsd9BWdHN8xeEIWXZiqYW3tiCvSeKD1BmYWgywTfuCtD2rrlTngN3m3GY8mY3TpIgO2QRi+RcHkXpgMeiVpnTAmrFmTXUM5clAFntWTEq+g9avtN24phogIB0PMv90KBC6shVrYTyxEOJV/T7schKnxpdYrumyjtlNIohkuwxrLbuP8xmoRBdIlBrhFKaKl+cqMspYddFSCOFdqiQuoMa/rqPZay26yGAcTBtfiKBb24ZDNkLNGn44IhajgwcLqOKEHfIElx14UY4shv5dlr7/8+8izKbkuJQGtJp1yKbCQWAaV0rNeUXFJj/va98phsHxCL+q0ASGPJFXEW2t6uWItOtVZBa+rdIsLqaPQB/vrhJxAlGDj2BshauL8qi4bnrzwKp0EMah7Tx80TmOMttDC/9osyDWyk6o6tMfikZTwJYfRdXE
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2019 09:45:34.8897 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cc89da8-e211-4eb8-29cb-08d76f30b913
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5335
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_014540_968955_7315567B 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.72.70 listed in list.dnswl.org]
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

zynqmp_clk_divider_round_rate() returns actual divider value
after calculating from parent rate and desired rate, even though
that rate is not supported by single divider of hardware. It is
also possible that such divisor value can be achieved through 2
different dividers. As, Linux tries to set such divisor value(out
of range) in single divider set divider is getting failed.

Fix the same by computing best possible combination of two
divisors which provides more accurate clock rate.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
---
 drivers/clk/zynqmp/divider.c | 46 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
index aea52cd..e0d49cc 100644
--- a/drivers/clk/zynqmp/divider.c
+++ b/drivers/clk/zynqmp/divider.c
@@ -89,6 +89,42 @@ static unsigned long zynqmp_clk_divider_recalc_rate(struct clk_hw *hw,
 	return DIV_ROUND_UP_ULL(parent_rate, value);
 }
 
+static void zynqmp_get_divider2_val(struct clk_hw *hw,
+				    unsigned long rate,
+				    unsigned long parent_rate,
+				    struct zynqmp_clk_divider *divider,
+				    int *bestdiv)
+{
+	int div1;
+	int div2;
+	long error = LONG_MAX;
+	struct clk_hw *parent_hw = clk_hw_get_parent(hw);
+	struct zynqmp_clk_divider *pdivider = to_zynqmp_clk_divider(parent_hw);
+
+	if (!pdivider)
+		return;
+
+	*bestdiv = 1;
+	for (div1 = 1; div1 <= pdivider->max_div;) {
+		for (div2 = 1; div2 <= divider->max_div;) {
+			long new_error = ((parent_rate / div1) / div2) - rate;
+
+			if (abs(new_error) < abs(error)) {
+				*bestdiv = div2;
+				error = new_error;
+			}
+			if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
+				div2 = div2 << 1;
+			else
+				div2++;
+		}
+		if (pdivider->flags & CLK_DIVIDER_POWER_OF_TWO)
+			div1 = div1 << 1;
+		else
+			div1++;
+	}
+}
+
 /**
  * zynqmp_clk_divider_round_rate() - Round rate of divider clock
  * @hw:			handle between common and hardware-specific interfaces
@@ -126,6 +162,16 @@ static long zynqmp_clk_divider_round_rate(struct clk_hw *hw,
 
 	bestdiv = zynqmp_divider_get_val(*prate, rate);
 
+	/*
+	 * In case of two divisors, compute best divider values and return
+	 * divider2 value based on compute value. div1 will  be automatically
+	 * set to optimum based on required total divider value.
+	 */
+	if (div_type == TYPE_DIV2 &&
+	    (clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT)) {
+		zynqmp_get_divider2_val(hw, rate, *prate, divider, &bestdiv);
+	}
+
 	if ((clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT) && divider->is_frac)
 		bestdiv = rate % *prate ? 1 : bestdiv;
 	*prate = rate * bestdiv;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
