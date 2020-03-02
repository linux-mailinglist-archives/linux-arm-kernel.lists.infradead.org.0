Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C312F17664C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 22:44:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pRwBtwV8W5aV9wnSXcu7t2iVPeJQF9KoFHiJczCtjy8=; b=rwHrdGBqBAWio4
	+dspyBbw029aCcVpecwu7MFaB8R6AGuCDs5HrlS4xqclQE7Apu9sQ/DjmZ4Rrz/SGmlFhpjhSfhLj
	TAbWMw5bzZ5zR0Qtz5uD+pamSQJLlctxz03AxDELUXnj5LXEUPzakcvc13Yy2uZfMkBKKoWC74p4n
	amNWnjX7/R8wQmtQctfRq3DzIhZ2f3mCJQ3RG4MzHyPl6PfmZlm9w06q48oqKU9MxByOkrsQvMEDF
	zDs0K/RwAVXMJnih3OMv0lWwmj9vTXukfH4RS1OXiBvOJl3/Z7i/9ZX+nyDP2C8/EZH8BcwztOIyM
	yYNuPX0ZXo8dCmIm0B0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8sra-0003Ap-Lw; Mon, 02 Mar 2020 21:44:34 +0000
Received: from mail-co1nam11on2058.outbound.protection.outlook.com
 ([40.107.220.58] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8sqx-0002kM-Fh
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 21:43:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C8SqhFeKNCtGDk/l/ckoGH4XI0ONPQU6XJ57lTwDrhKJ6AFCgEISmPyiFVejMPCPh8Th6syQ8h0wsLF5zkluAfD3597rqZi/f6u68nrkR/UEU5dRmU2vTQxcq3lZ36MtYa+sQyewpM5Cze8+VrCQBzxAqt5afZ3SkoQchpnbQrMvdcKI7YaDVXh6pGKvhSzXRaUfyzFnR7fbWUFSfIiM5nvGH1v+OA80uj5JMD+zrMMP0VTd3K9B27TC+tdInndBPz1l9aA0KF6QBvF2mbE+rm/sIrQs/t9J5frO4X3yQHBHCvvqJhI1xDyMkChNnfTMKR7/tU4MoBY/xL95nJS/YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gqm49iQ2f8b5JNhlyypmPgKznqUkoQ8PeMoIK2kXNy0=;
 b=LBCJOa24FiI2ypP/D9/kj/Pub2k7E6Vwf+YUum8dUdxftukCohirGHtWh8er14ZV0s390w9zhvkRIcE8CEDZ9T4jF7X1Lk/5GAWLY1kcK6UUx62s1Yh00NCn9ep89F3d8q0Gu9pjZVZCyijiyTJhegrc6I177s1Jb6FP+fZZFtfM+L+S+4mXFTD6CX/nPgBlRRtLD4I3TktbW6H7lFsd/4Pk1QYqbmgEaLiN1M6s41Rj9ySBzcOsTHQj7NHanMYgplhTE6ZD5BWGUrVTLjOI84K1o23h7Zkm9gTeFHrdlUfw0/YbvhYXprnIMOAuxlu/kUgjV8E2yoK5Bu7fyub6KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gqm49iQ2f8b5JNhlyypmPgKznqUkoQ8PeMoIK2kXNy0=;
 b=XFbeIFIrTgWNyL21tgQLsC+R0L129UAj+z+o0eLdhJRIXP36hDbidf9S9UdHloZ2bFxhFO0rjUrFZjHoqk5RdyWsr9/JRT/LC4ShLyBdAs0kZncwgPkMs5PjkxWeQB3c70b4qvbGQvRcU1IcHjoDmgvSRMVn7NQJyc7RG6f3+XA=
Received: from SN4PR0401CA0006.namprd04.prod.outlook.com
 (2603:10b6:803:21::16) by BL0PR02MB6498.namprd02.prod.outlook.com
 (2603:10b6:208:1cb::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.18; Mon, 2 Mar
 2020 21:43:53 +0000
Received: from SN1NAM02FT049.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:21:cafe::74) by SN4PR0401CA0006.outlook.office365.com
 (2603:10b6:803:21::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.19 via Frontend
 Transport; Mon, 2 Mar 2020 21:43:52 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT049.mail.protection.outlook.com (10.152.72.166) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2772.15
 via Frontend Transport; Mon, 2 Mar 2020 21:43:52 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j8squ-00020B-6b; Mon, 02 Mar 2020 13:43:52 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j8sqp-00033f-3i; Mon, 02 Mar 2020 13:43:47 -0800
Received: from xsj-pvapsmtp01 (mail.xilinx.com [149.199.38.66] (may be forged))
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 022LhiN3014631; 
 Mon, 2 Mar 2020 13:43:45 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j8sqm-00032V-PI; Mon, 02 Mar 2020 13:43:44 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: olof@lixom.net, mturquette@baylibre.com, sboyd@kernel.org,
 michal.simek@xilinx.com, arm@kernel.org, linux-clk@vger.kernel.org
Subject: [PATCH 3/4] drivers: clk: Fix invalid clock name queries
Date: Mon,  2 Mar 2020 13:43:33 -0800
Message-Id: <1583185414-20106-4-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583185414-20106-1-git-send-email-jolly.shah@xilinx.com>
References: <1583185414-20106-1-git-send-email-jolly.shah@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(396003)(376002)(136003)(199004)(189003)(70206006)(478600001)(2906002)(107886003)(2616005)(70586007)(54906003)(8936002)(426003)(9786002)(336012)(44832011)(7696005)(4326008)(81166006)(81156014)(8676002)(6666004)(36756003)(316002)(26005)(5660300002)(186003)(356004)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB6498; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: aae393b9-5e71-4eac-e992-08d7bef2cd10
X-MS-TrafficTypeDiagnostic: BL0PR02MB6498:
X-Microsoft-Antispam-PRVS: <BL0PR02MB6498886DDD0CCB02D8FF8DCCB8E70@BL0PR02MB6498.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2201;
X-Forefront-PRVS: 033054F29A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8YmCTvE8Fww6orzQXJYojZJZ/GBAAqVuNxSrVWKshHRIVIkthdCO2X6qdO623mfmFKoETdrk7CaV1B4+Caxgrz4gW/FByJWO6z/ldmlWsGb9Ueo7YsrrePxB0tThpjoN2tTvUk8TGM9VPzHwFiu0eL/AHIt8vhbZ5l8tJ+Es+ryWI9uCJJmYhS6PAknRPPMcDSLWSI4xhhgskiaj1ghoa4hGs6dSEvRpxanVRmEzmrU9U9wPqLFs8fbY8cUnwBZs7IolrQGkJqs60g0WnLeMCcakxlDua+kZVPUA8Ak8qzuuqd2/7aq8pxrK7ATeAWvTz6t9ASBTRjqWXzMbsTAC9USARbAaArIBcWqDwWdEvfjR173ZgSRcFjPUm9nHrjbMDIAHDd6DwBYRq0DJhme31QIawO252prQwGG6rKRpyMyx3bwgXrT9axjcnRudBrKJJyNoZlb10P3COrLu2yKr34Jn6xTsk+dVrvJjwxyt+PA3MyfHBiJs8dW0hiD+Zv03
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2020 21:43:52.6223 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: aae393b9-5e71-4eac-e992-08d7bef2cd10
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB6498
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_134355_519873_B5D76681 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.58 listed in list.dnswl.org]
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-kernel@vger.kernel.org, rajanv@xilinx.com,
 Jolly Shah <jolly.shah@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rajan Vaja <rajan.vaja@xilinx.com>

The clock driver makes EEMI call to get the name of invalid clk
when executing versal_get_clock_info() function. This results in
error messages.
Added check for validating clock before saving clock attribute and
calling zynqmp_pm_clock_get_name() in versal_get_clock_info() function.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/clk/zynqmp/clkc.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/clk/zynqmp/clkc.c b/drivers/clk/zynqmp/clkc.c
index 4dd8413..ff2d229 100644
--- a/drivers/clk/zynqmp/clkc.c
+++ b/drivers/clk/zynqmp/clkc.c
@@ -667,6 +667,11 @@ static void zynqmp_get_clock_info(void)
 			continue;
 
 		clock[i].valid = FIELD_GET(CLK_ATTR_VALID, attr.attr[0]);
+		/* skip query for Invalid clock */
+		ret = zynqmp_is_valid_clock(i);
+		if (ret != CLK_ATTR_VALID)
+			continue;
+
 		clock[i].type = FIELD_GET(CLK_ATTR_TYPE, attr.attr[0]) ?
 			CLK_TYPE_EXTERNAL : CLK_TYPE_OUTPUT;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
