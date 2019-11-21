Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3AB104E67
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 09:51:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JmrXKAa6mu7B8VOx3RP6qEmYyAkDsAQfQJmT8hss9gg=; b=RG/P0wiPhgvLz3
	uFOYu5rXzK7UpJTHoy07zZvddW5dLmqp0UZMCkmfGMdBolqyffU2+pihzHsGAFktVEISOlDI3q1LX
	KK6EibiCW6KLsU9PjBn+RlsEmJfsAqIV7JFbKssXOhgkT+0W0ZDn944ONZ4g2nwuK/GCesBexkWmn
	mvMpgNA32URIz63bq89Db/p9foCoUMawBBpJ1ppTTb1s2MYFqDAYJn1SIyWpwJTWlIyLiq4LbhW+g
	PsH1D9GwWevr9RkJvTWBjLSRA9ljYkdPOnmqiy/GSi6gTlbIeONph1+qrBj62ujoFZ4b5tzpqtX9T
	LiQONNSJv36f/D2X1CAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXiBj-0001wd-Cr; Thu, 21 Nov 2019 08:51:43 +0000
Received: from mail-eopbgr820073.outbound.protection.outlook.com
 ([40.107.82.73] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXiBb-0001vy-5F
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 08:51:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A45XKdV2vGQZfub5AYt2Cq2X3FSul7YY7TMBuW6+RIX8T3YY69KNldcv5w/oGheCD0LO40ycU5JG47iqun0iV6byD7AWAHORMOl+MexsZ4VhpX+dmfcVdMnodKL7vVBNBGlzb4ZLjwdRxq/Sy906zcwYJMCzDIDHCn4W05/fel6QV4G1UgwxOtGwaAUuacpsmx9wxJwFiQ1+LUlwb3U4PgxLKcJ+E3cjGPmplxYRKBvfotYNxZJikI+YyJ2gHgNSAyg6wcjxMU0/Uc3Eal9jfJmR3Axh2wW2GXarjRbeRHK5y5xxv4T5chCdN6JksGU7JNMaNY0hznNbKcc+odh8lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5sLCylKuOmTMReEJM2wAHvvjmwKIBvEEUlAchFZSH1g=;
 b=TZkn37YK/vVvx1dGdQx3lQ37NSxYYrI/4P9m2JZkLio2vp+gj1uG8VP3ABf8j1E03TOmsINLilHHbKFLBkiSjNr/zsYGs0Y+oZ33V2X0nVskU/8LO1fOZg4A7Wipt/AWa0qcp916aPnJDQ8j2M37njHDId3TA5LgxS2SNSgdC/RC6+xPLX54dejAmX3kvwtHS4bq4y6MeuNUwB3FpY8OT7RbMs8zxy5yKnmjI21JNo5A8Ab9fjOcHZgVqjxf2dUTeraxupjiWznF9qjPVEiYyofHd8ospVlm/BkY4vk/HCWh9tkQY86TdwLUGP7v8Eh4HXbQrfB9/l16Y/4lDkCB7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=arm.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5sLCylKuOmTMReEJM2wAHvvjmwKIBvEEUlAchFZSH1g=;
 b=LTy6RpNqI7p89KMLQEB2Vxcb5bOfFnFm3fEjqvjossePoPitmeXJPVPt4wE3zJsPGc6qQbb3k5LDvoBOSLVPARPcYPa6SLbWjXiWpQ3EJD5/T/Qw02ikKLRstAEvZ/a+iUzx5utX5ikyuN0xyC+qK1CnBhQr3jHG7kH0VKURNnk=
Received: from CY4PR02CA0024.namprd02.prod.outlook.com (2603:10b6:903:18::34)
 by BN7PR02MB5076.namprd02.prod.outlook.com (2603:10b6:408:26::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.16; Thu, 21 Nov
 2019 08:51:32 +0000
Received: from CY1NAM02FT059.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::209) by CY4PR02CA0024.outlook.office365.com
 (2603:10b6:903:18::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.16 via Frontend
 Transport; Thu, 21 Nov 2019 08:51:32 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT059.mail.protection.outlook.com (10.152.74.211) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Thu, 21 Nov 2019 08:51:31 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iXiBX-0005AH-BR; Thu, 21 Nov 2019 00:51:31 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iXiBS-0002FW-7j; Thu, 21 Nov 2019 00:51:26 -0800
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iXiBJ-0002Er-HV; Thu, 21 Nov 2019 00:51:17 -0800
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id BD4D8121387; Thu, 21 Nov 2019 14:21:16 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, michal.simek@xilinx.com,
 liviu.dudau@arm.com, treding@nvidia.com, chanho.min@lge.com,
 matthias.bgg@gmail.com, rrichter@cavium.com, manish.narani@xilinx.com
Subject: [PATCH v4] arm64: zynqmp: Add ZynqMP SDHCI compatible string
Date: Thu, 21 Nov 2019 14:21:14 +0530
Message-Id: <1574326274-121890-1-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(39860400002)(396003)(376002)(189003)(199004)(70586007)(2906002)(70206006)(107886003)(8676002)(6306002)(8936002)(81166006)(81156014)(6266002)(47776003)(50226002)(16586007)(426003)(48376002)(42186006)(316002)(7416002)(50466002)(36756003)(336012)(103686004)(186003)(26005)(356004)(106002)(478600001)(44832011)(4326008)(36386004)(14444005)(966005)(51416003)(5660300002)(305945005)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR02MB5076; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: be057bf1-4bbf-400f-cd11-08d76e60019f
X-MS-TrafficTypeDiagnostic: BN7PR02MB5076:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <BN7PR02MB5076AF916225EAF5CF49E7CEC14E0@BN7PR02MB5076.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-Forefront-PRVS: 0228DDDDD7
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wPz1sziEbwBZYK6jJuZ2QZAdT81szlGCo0FKti5zW467UqzOCWrUrQbM5mvO1Haj49QvFR41qaf7nbCjyXctc/UcqtPPE2UDy+EVAP+gLhxbPwBR99WfRVi7yyFkJn82hc9xo3y29O2F11zgfGHSIXNYspcprwY0dRmseZb+cFpGXDg7PM+/P5wD9IIupvqO1zoYloycCq2k78bV4GkkFnQv9l10lOGpMNRZRFm8QKlgPAfJAtgCBD89zc6plpDUP3kekfb9rGNACOHWkl8n360W+2rUeTVNDHw7q7gUvui5r4UVixqdCoJyhhnddhfnjOqnUsFA7GWZYinDRi/Dr40nJSM6jmsWxuRQzVZJJbgAdpr2Kv5XtFDqwQZeA0ZXN/rwDuMsmGK5kh3mxjM7wS06kLta/TAdCNU56+nISNZf77BGXK0FMCsTtpyGaeFCupTkQr4P9OfXN/LvvCwzUCY4jyKVC41Jl8dfyyQHYyE=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2019 08:51:31.8099 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: be057bf1-4bbf-400f-cd11-08d76e60019f
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR02MB5076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_005135_203686_5C6843B2 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.73 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the new compatible string for ZynqMP SD Host Controller for its use
in the Arasan SDHCI driver for some of the ZynqMP specific operations.
Add required properties for the same.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
This patch depends on the below series of patches:
https://lkml.org/lkml/2019/11/20/366

Changes in v2:
	- Added clock-names for SD card clocks for getting clocks in the driver

Changes in v3:
	- Reverted "Added clock-names for SD card clocks for getting clocks in the driver"

Changes in v4:
	- Removed extra compatible property from v3
---
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 9aa67340a4d8..de09ebe608e1 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -493,21 +493,25 @@
 		};
 
 		sdhci0: mmc@ff160000 {
-			compatible = "arasan,sdhci-8.9a";
+			compatible = "xlnx,zynqmp-8.9a", "arasan,sdhci-8.9a";
 			status = "disabled";
 			interrupt-parent = <&gic>;
 			interrupts = <0 48 4>;
 			reg = <0x0 0xff160000 0x0 0x1000>;
 			clock-names = "clk_xin", "clk_ahb";
+			#clock-cells = <1>;
+			clock-output-names = "clk_out_sd0", "clk_in_sd0";
 		};
 
 		sdhci1: mmc@ff170000 {
-			compatible = "arasan,sdhci-8.9a";
+			compatible = "xlnx,zynqmp-8.9a", "arasan,sdhci-8.9a";
 			status = "disabled";
 			interrupt-parent = <&gic>;
 			interrupts = <0 49 4>;
 			reg = <0x0 0xff170000 0x0 0x1000>;
 			clock-names = "clk_xin", "clk_ahb";
+			#clock-cells = <1>;
+			clock-output-names = "clk_out_sd1", "clk_in_sd1";
 		};
 
 		smmu: smmu@fd800000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
