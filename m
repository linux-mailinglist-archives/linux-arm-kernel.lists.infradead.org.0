Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 877E23C7C0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 11:57:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dfdducsp1RL9QnVutTKj3VAikhfyx6jLgg7HG5IH54E=; b=s6BAI6VqbMGL6w
	jcRIzKhHTVwo05md4PoZbPVZsiDIk6oWP7nS41UaB/IUlQZQGbAyBXoQlPTr18bn5fvUwpU80I7M2
	yXz3ccOBnU9clXVV3adrcLGZCddojjLxywaEik1l4PdDiL+Dp2pHFlxt0xRJgiCxQ4+rJz7LePY2w
	aZ4SyBf3P4D20Hhh1xTjhYkMDDrTj7QFyaq8jcaRdZlBChcLNCb6gVykPydwXKjE9TCQBFljn8anI
	vSeX3m5u2pTZPh4Mmx4Fvej53XLwmo2DLQdv3gHWWY+VgvKuBbGT6k/+XnHWCY8836nZnwCCBs++x
	ZkUs+Ag0CBGaaHR+2odg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadXA-0004q3-Ph; Tue, 11 Jun 2019 09:57:40 +0000
Received: from mail-eopbgr700049.outbound.protection.outlook.com
 ([40.107.70.49] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadWp-0004lA-H4
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 09:57:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hTtUvLgezBpncvgmNvvhZ2jDIxEUisBdVexeKQCK5No=;
 b=qMxBGmBMuQYlVDpzpecIU7Io0nXT7J3qaayarEI7ZZVAXmIjnntrfoPSHIpo//x37Qjr+5EiHYTpd2Yl2iHwR+hJf5PQk3sKvoPEIAIqGShy6PSvw2WKNN/CYKywlddrjdB4aYF1JujY3JdzQWCumtrv4m3DdFd3E4tfPjKX+D0=
Received: from MWHPR02CA0015.namprd02.prod.outlook.com (2603:10b6:300:4b::25)
 by DM6PR02MB4939.namprd02.prod.outlook.com (2603:10b6:5:11::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.15; Tue, 11 Jun
 2019 09:57:15 +0000
Received: from SN1NAM02FT031.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::208) by MWHPR02CA0015.outlook.office365.com
 (2603:10b6:300:4b::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1965.17 via Frontend
 Transport; Tue, 11 Jun 2019 09:57:15 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
 SN1NAM02FT031.mail.protection.outlook.com (10.152.72.116) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1965.12
 via Frontend Transport; Tue, 11 Jun 2019 09:57:14 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:46271
 helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1hadWk-0006st-7C; Tue, 11 Jun 2019 02:57:14 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1hadWf-0002WX-3U; Tue, 11 Jun 2019 02:57:09 -0700
Received: from xsj-pvapsmtp01 (xsj-mail.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x5B9v1NO016659; 
 Tue, 11 Jun 2019 02:57:01 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1hadWX-0002S9-3R; Tue, 11 Jun 2019 02:57:01 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 49D08121745; Tue, 11 Jun 2019 15:27:00 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 michal.simek@xilinx.com, adrian.hunter@intel.com,
 rajan.vaja@xilinx.com, jolly.shah@xilinx.com, nava.manne@xilinx.com,
 manish.narani@xilinx.com, olof@lixom.net
Subject: [PATCH 2/3] dt-bindings: mmc: arasan: Document 'xlnx,
 zynqmp-8.9a' controller
Date: Tue, 11 Jun 2019 15:26:50 +0530
Message-Id: <1560247011-26369-3-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1560247011-26369-1-git-send-email-manish.narani@xilinx.com>
References: <1560247011-26369-1-git-send-email-manish.narani@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(396003)(346002)(376002)(136003)(39860400002)(2980300002)(199004)(189003)(36756003)(70206006)(36386004)(70586007)(5660300002)(16586007)(48376002)(52956003)(106002)(47776003)(316002)(42186006)(51416003)(76176011)(103686004)(2616005)(26005)(486006)(44832011)(336012)(305945005)(476003)(72206003)(11346002)(478600001)(426003)(446003)(4326008)(6266002)(186003)(126002)(50226002)(8936002)(8676002)(81156014)(50466002)(81166006)(6666004)(356004)(63266004)(2906002)(921003)(142933001)(1121003)(5001870100001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4939; H:xsj-pvapsmtpgw02; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-100.xilinx.com,xapps1.xilinx.com; A:1; MX:1;
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 17256e5a-5034-494a-4019-08d6ee532e86
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:DM6PR02MB4939; 
X-MS-TrafficTypeDiagnostic: DM6PR02MB4939:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <DM6PR02MB4939FDF65DB235EB88F1787DC1ED0@DM6PR02MB4939.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 006546F32A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: ogOQk/sUKxGCf/AKlHOMQ450wroaWtKCP2ysr/SdG8HYDNFkEei0wB1Qa4uehsw27fN7mJuNEE+RpCPqfLGy/VKYWm2GVLDibw7GtrDaC3geaVLoWqwOaxQqjGcV5rahSZeXJaiEEVmcoFQpfQvlH2j7bc0Lfm+USUFt825XDGl/Cg/HrySrhYMcsnB5HdQtG2SdiyiBWL0Kc2lacfbu8EgKmBW7lgOuQFR0K69diaJxKDtDV4L7uXX0XcpzHTL8Ww7OIREO7Q+QH9hsPNWuidHwnQVjxuPEnEHes2nHWGx+QVSxDrJY4WhktoQdmRpvrC6s0Cx3pXZ06PfJoGEWwfLHol1MC5WN9BvraeK7pTd0gPH+RF6GBJoJpEWbuXXCQBgFMR4zTIY+3TkeBkpjCPES9u2A9zrvOEhchOoNAww=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2019 09:57:14.6167 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 17256e5a-5034-494a-4019-08d6ee532e86
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.100];
 Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4939
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_025719_580606_9638425F 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.49 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add documentation for 'xlnx,zynqmp-8.9a' SDHCI controller and optional
properties followed by example.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
 .../devicetree/bindings/mmc/arasan,sdhci.txt       | 32 ++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
index 1edbb04..6945b3b 100644
--- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
+++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
@@ -15,6 +15,9 @@ Required Properties:
     - "arasan,sdhci-5.1": generic Arasan SDHCI 5.1 PHY
     - "rockchip,rk3399-sdhci-5.1", "arasan,sdhci-5.1": rk3399 eMMC PHY
       For this device it is strongly suggested to include arasan,soc-ctl-syscon.
+    - "xlnx,zynqmp-8.9a": ZynqMP SDHCI 8.9a PHY
+      For this device it is strongly suggested to include clock-output-names and
+      #clock-cells.
     - "ti,am654-sdhci-5.1", "arasan,sdhci-5.1": TI AM654 MMC PHY
 	Note: This binding has been deprecated and moved to [5].
 
@@ -45,6 +48,24 @@ Optional Properties:
   - xlnx,int-clock-stable-broken: when present, the controller always reports
     that the internal clock is stable even when it is not.
 
+Optional Properties for "xlnx,zynqmp-8.9a":
+  - xlnx,tap-delay-mmc-hsd: Input/Output Tap Delays in degrees for MMC HS.
+  - xlnx,tap-delay-sd-hsd: Input/Output Tap Delays in degrees for SD HS.
+  - xlnx,tap-delay-sdr25: Input/Output Tap Delays in degrees for SDR25.
+  - xlnx,tap-delay-sdr50: Input/Output Tap Delays in degrees for SDR50.
+  - xlnx,tap-delay-sdr104: Input/Output Tap Delays in degrees for SDR104.
+  - xlnx,tap-delay-sd-ddr50: Input/Output Tap Delays in degrees for SD DDR50.
+  - xlnx,tap-delay-mmc-ddr52: Input/Output Tap Delays in degrees for MMC DDR52.
+  - xlnx,tap-delay-mmc-hs200: Input/Output Tap Delays in degrees for MMC HS200.
+
+  Above mentioned are the clock (phase) delays which are to be configured in the
+  controller while switching to particular speed mode. If not specified, driver
+  will configure the default value defined for particular mode in it.
+
+  - xlnx,mio-bank: When specified, this will indicate the MIO bank number in
+    which the command and data lines are configured. If not specified, driver
+    will assume this as 0.
+
 Example:
 	sdhci@e0100000 {
 		compatible = "arasan,sdhci-8.9a";
@@ -80,3 +101,14 @@ Example:
 		phy-names = "phy_arasan";
 		#clock-cells = <0>;
 	};
+
+	sdhci: mmc@ff160000 {
+		compatible = "xlnx,zynqmp-8.9a", "arasan,sdhci-8.9a";
+		interrupt-parent = <&gic>;
+		interrupts = <0 48 4>;
+		reg = <0x0 0xff160000 0x0 0x1000>;
+		clock-names = "clk_xin", "clk_ahb";
+		clock-output-names = "clk_sd0";
+		#clock-cells = <0>;
+		xlnx,tap-delay-sd-hsd = <21>, <6>;
+	};
-- 
2.1.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
