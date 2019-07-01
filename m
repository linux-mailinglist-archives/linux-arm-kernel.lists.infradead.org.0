Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 465685B412
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 07:31:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CLL9BWuibsYOUv7WKrUWRo0zaSwIYn3So/uZEjwx+cc=; b=ROLtDFE22KEpNJ
	DHtmqtEkCD5WKKySHqj0oiJ+i36Y79WSux5u2utvhJz/0FURDVo4ESoMHuhA1m56vrJne8u3frw4E
	TzSeFpE6nxmUnnnnBRDZIh3GC3SmMaZAlO3aIXTaUqEyu7Fm9HRt/BuEujf47vl1ufdc85XUHEDsG
	GXO5TdZtqMdgTAjN+lc73si3LZf6iLn1D119xvClYN/Vr9cFzXsFEJHymkw6E/0XtD199TbRj54KQ
	SuvuH8FNZCZ1S7W8wbhZbuKvc4Lxj2dELr5D6cSlPPGnAzgEyvVhh8LGSoME5SDDJWSoRlMCTjqPc
	kQz01OFj3Y3+UnNnL5xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhouX-00085K-AG; Mon, 01 Jul 2019 05:31:29 +0000
Received: from mail-eopbgr790089.outbound.protection.outlook.com
 ([40.107.79.89] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhotH-0007LC-KS; Mon, 01 Jul 2019 05:30:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ie1+wGn0PES2/NEMdUXGVrt+v4AbRb2I3CXm2bJOTvs=;
 b=OjNy+9GK8xHX59kjNnUb2jYUDnR7XGbQtdg0LNlszX1/XqgAu1PCF527+bZJh7p7OBS+fqOYI0KyEUW94hDzVBd2jyLdNT2RGgTSlwRE2RRc0I5fhDti4MuOwA90HD7+/9/Kmbu8r8hjKWm4ARbWvvKLZkLzUxWLGR2SI0+RdT0=
Received: from BL0PR02CA0056.namprd02.prod.outlook.com (2603:10b6:207:3d::33)
 by DM6PR02MB5241.namprd02.prod.outlook.com (2603:10b6:5:48::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2032.20; Mon, 1 Jul
 2019 05:30:07 +0000
Received: from SN1NAM02FT006.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::209) by BL0PR02CA0056.outlook.office365.com
 (2603:10b6:207:3d::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2032.20 via Frontend
 Transport; Mon, 1 Jul 2019 05:30:06 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
 SN1NAM02FT006.mail.protection.outlook.com (10.152.72.68) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2032.15
 via Frontend Transport; Mon, 1 Jul 2019 05:30:06 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:35852
 helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1hhotB-0006Te-M4; Sun, 30 Jun 2019 22:30:05 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1hhot6-0003EO-Ie; Sun, 30 Jun 2019 22:30:00 -0700
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x615Tuah023632; 
 Sun, 30 Jun 2019 22:29:56 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1hhot2-0003Cd-4S; Sun, 30 Jun 2019 22:29:56 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 4D3BC12174A; Mon,  1 Jul 2019 10:59:54 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 heiko@sntech.de, michal.simek@xilinx.com, adrian.hunter@intel.com,
 christoph.muellner@theobroma-systems.com,
 philipp.tomsich@theobroma-systems.com, viresh.kumar@linaro.org,
 scott.branden@broadcom.com, ayaka@soulik.info, kernel@esmil.dk,
 tony.xie@rock-chips.com, rajan.vaja@xilinx.com, jolly.shah@xilinx.com,
 nava.manne@xilinx.com, mdf@kernel.org, manish.narani@xilinx.com,
 olof@lixom.net
Subject: [PATCH v2 07/11] dt-bindings: mmc: arasan: Add optional properties
 for Arasan SDHCI
Date: Mon,  1 Jul 2019 10:59:47 +0530
Message-Id: <1561958991-21935-8-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
References: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(376002)(39860400002)(396003)(2980300002)(199004)(189003)(47776003)(8936002)(76176011)(26005)(336012)(5660300002)(51416003)(36756003)(70586007)(70206006)(186003)(356004)(6666004)(106002)(6266002)(7416002)(42186006)(16586007)(316002)(72206003)(44832011)(478600001)(48376002)(63266004)(36386004)(52956003)(2906002)(50466002)(103686004)(50226002)(305945005)(81166006)(81156014)(8676002)(4326008)(426003)(446003)(11346002)(2616005)(476003)(126002)(486006)(921003)(1121003)(5001870100001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB5241; H:xsj-pvapsmtpgw02; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-100.xilinx.com,xapps1.xilinx.com; A:1; MX:1;
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7612f162-5e4b-46ae-37f9-08d6fde52d36
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:DM6PR02MB5241; 
X-MS-TrafficTypeDiagnostic: DM6PR02MB5241:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <DM6PR02MB52417F19BB9EF1186140D0EAC1F90@DM6PR02MB5241.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 00851CA28B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: iWTgQ5tZmByGckLlXyZ6JXq46iC/ZUxOtCJd6MCUggSaQZ6rALXY6qrhkQdWOi4Mya2F3dpEhhgcFls4E5FmoJ5nEUDPtUAusO1Yfbl7hPPkiUDW0bp4A0n0y4+8Tkp2zW0I8CoBj4QmPnSOSw9Xi9toSesusn04H4fksUTrsHDdz5FFJ9kqLBK5rmiRVCynvvui8akrqmcaGXAGCJwWJwy2Hw2M3qo0ENi4jXcO2j8sADN77zrr68OlyAhn4bb3Z1ohYXhmaefqTx3ffWwuXRj7HGCEiAbUuHmxtlo9WVpuwEPp8yB0FUEMwAV0rs34hdtfk7nyqwxLRcBsigbnJMhz4TnGjasxUapLGvki1URWbWxE35QpYAryU1CRegm1iUEMsNBpHcX747t2wZjb2tbwnz6vEYpvwXGEzZihihg=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2019 05:30:06.0877 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7612f162-5e4b-46ae-37f9-08d6fde52d36
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.100];
 Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5241
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_223011_718952_4C8CE402 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.89 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add optional propeties for Arasan SDHCI which are used to set clk delays
for different speed modes in the controller.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
 Documentation/devicetree/bindings/mmc/arasan,sdhci.txt | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
index 7c79496..7425d52 100644
--- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
+++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
@@ -49,6 +49,21 @@ Optional Properties:
     properly. Test mode can be used to force the controller to function.
   - xlnx,int-clock-stable-broken: when present, the controller always reports
     that the internal clock is stable even when it is not.
+  - clk-phase-legacy: Input/Output Clock Delay pair in degrees for Legacy Mode.
+  - clk-phase-mmc-hs: Input/Output Clock Delay pair degrees for MMC HS.
+  - clk-phase-sd-hs: Input/Output Clock Delay pair in degrees for SD HS.
+  - clk-phase-uhs-sdr12: Input/Output Clock Delay pair in degrees for SDR12.
+  - clk-phase-uhs-sdr25: Input/Output Clock Delay pair in degrees for SDR25.
+  - clk-phase-uhs-sdr50: Input/Output Clock Delay pair in degrees for SDR50.
+  - clk-phase-uhs-sdr104: Input/Output Clock Delay pair in degrees for SDR104.
+  - clk-phase-uhs-ddr50: Input/Output Clock Delay pair in degrees for SD DDR50.
+  - clk-phase-mmc-ddr52: Input/Output Clock Delay pair in degrees for MMC DDR52.
+  - clk-phase-mmc-hs200: Input/Output Clock Delay pair in degrees for MMC HS200.
+  - clk-phase-mmc-hs400: Input/Output Clock Delay pair in degrees for MMC HS400.
+
+  Above mentioned are the clock (phase) delays which are to be configured in the
+  controller while switching to particular speed mode. If not specified, driver
+  will configure the default value defined for particular mode in it.
 
 Example:
 	sdhci@e0100000 {
-- 
2.1.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
