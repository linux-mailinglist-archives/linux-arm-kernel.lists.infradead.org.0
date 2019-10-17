Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC2ADA588
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 08:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PHJuqqdsX2yW2TZLn4ocfpeh4+s4GfHd8FJwWnZQD2A=; b=Cm7JjXmm2MrxMf
	0jm6QFzKtNZ68RMpUg3OdvIFVLOL2Ja2PMslP0CMFvpahTakpmlEuAwCVmFLqYf00XpqSphSRWH9z
	UFJi3WJMt1cx0/+i/rtk1pqCqbG0yc7kVBNRIhEjHZVHe4s2FHERU8ag12hZo7aLFYe3BNw925SNI
	bEn3wMECRSVPxNfGGq8EfWyPySUuNEiOhDhnZ1MwCkP8ZjyekMGkmq/Ru01ZJAHHz1ltrQicyHXfG
	wm65iUYjqMdNExQLT9HB7smIxZ8VA3qmQ4P/VfNSZigORutcjUol2moqR6lBuBXJuOkqTTSQOlT3r
	PxYIt8U1Ml5uZHnfpZiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKzBa-0004Tg-W3; Thu, 17 Oct 2019 06:22:59 +0000
Received: from mail-eopbgr760081.outbound.protection.outlook.com
 ([40.107.76.81] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKzAn-0004A1-5t
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 06:22:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FF73MEqWqf+OwN0xDjNe1N4dH6mi7OvBOe6/RJw+nsgeV4AtG1t38VdxLThe48vCiWBuQ5kILhcu2+UU+cYgtkUS1wCobRBa3TISwj7FZJMYlj4/4DMDNtN9Am2v00w/wVfFNM7p4qVOqlJel/gHmxPN793MTHyWaEtNFqBg8TiNIUM5yDXZmlPYD6i4+LOSaU5pY6kxI0oc7xAcqkhT29kRpPCkFkTuKd9U4DrO6TUo+1cyMqkJu+QdDtRaHRjaEbyaAlKkzsnWOkXC3Dmu+aiHLusmp1jYDej7MnoUu7TBEXrylifzRIi50/C87lD2IccRoSR0Y0X/ScXLbenZ2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0eQy9sbl57qj64wcfahgY/DCazAuE05WULs7Rq44dFw=;
 b=PmkbeIlA/0KU5XVF2I8pXsuxi+LxJsb+Xi0XHDKOMW6dq2qZ863vg0TbznRVl62hStRMEQZ5e5QBSjXoLJX2M4KZGTk0Z9yoNnxxYFoHJuZaEZR6WmFRjy6Si2ae/2kDPyY2ETwwP9iDI1ST3wv1nRLh3JzgIFBMotT3ZQGknIKKoLd6c6tfnPorjKmANrLOGhqZb0/X02dBdFjftanXr4tKYVgfa9xmbNg8yt7iNjMLzb3lbcf2S7DQVKf3a+xc7Q9o34YVZrlqybu4prnMZJtrGH9LsbEnpb2cf1NsxNIre/RDHbHYn6jb1nlDIVGTEF8cTReBj3HguXQsdo+/Qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=arm.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0eQy9sbl57qj64wcfahgY/DCazAuE05WULs7Rq44dFw=;
 b=L5wSSPrGXhfz6XPKgSXIvb3x3pJ+H9nDzTff3kgQx13pFqfJbzoTtYa9aIpWqbDqIRVlTdQBO3jDBqohNhtlFUTDTNf2RN/zzEVfH9kai97znasmWw3BgUa56DWjptKjLtc2PnnNIY3bCJ9JfPMLbMf9ktdVUc2qgXyqYEeMuwc=
Received: from SN4PR0201CA0027.namprd02.prod.outlook.com
 (2603:10b6:803:2e::13) by DM5PR02MB2811.namprd02.prod.outlook.com
 (2603:10b6:3:107::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.18; Thu, 17 Oct
 2019 06:22:04 +0000
Received: from CY1NAM02FT043.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::204) by SN4PR0201CA0027.outlook.office365.com
 (2603:10b6:803:2e::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.18 via Frontend
 Transport; Thu, 17 Oct 2019 06:22:04 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT043.mail.protection.outlook.com (10.152.74.182) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2367.14
 via Frontend Transport; Thu, 17 Oct 2019 06:22:04 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iKzAh-0004af-JO; Wed, 16 Oct 2019 23:22:03 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iKzAc-0003f6-GB; Wed, 16 Oct 2019 23:21:58 -0700
Received: from [172.23.64.104] (helo=xhdvnc123.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iKzAa-0003ek-TT; Wed, 16 Oct 2019 23:21:57 -0700
Received: by xhdvnc123.xilinx.com (Postfix, from userid 16987)
 id 246B143A9A; Thu, 17 Oct 2019 11:51:56 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com, jolly.shah@xilinx.com,
 rajan.vaja@xilinx.com, nava.manne@xilinx.com, mdf@kernel.org,
 manish.narani@xilinx.com
Subject: [PATCH v3 1/8] mmc: sdhci-of-arasan: Separate out clk related data to
 another structure
Date: Thu, 17 Oct 2019 11:51:43 +0530
Message-Id: <1571293310-92563-2-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1571293310-92563-1-git-send-email-manish.narani@xilinx.com>
References: <1571293310-92563-1-git-send-email-manish.narani@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(136003)(376002)(396003)(199004)(189003)(4326008)(336012)(51416003)(14444005)(42186006)(11346002)(36756003)(2616005)(476003)(26005)(126002)(186003)(36386004)(426003)(6666004)(316002)(44832011)(16586007)(70586007)(70206006)(47776003)(446003)(356004)(76176011)(5660300002)(48376002)(50226002)(305945005)(8936002)(8676002)(106002)(81166006)(50466002)(81156014)(2906002)(6266002)(486006)(107886003)(478600001)(103686004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR02MB2811; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2fc7384b-9ce1-4f59-b782-08d752ca5426
X-MS-TrafficTypeDiagnostic: DM5PR02MB2811:
X-Microsoft-Antispam-PRVS: <DM5PR02MB28119ED8E3A53158730F8A9EC16D0@DM5PR02MB2811.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-Forefront-PRVS: 01930B2BA8
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +T897kc4huKREUfMhwHSk36fEVwN4eVLRsGXXLgR6AwUErhX182Az5rbchMa2r8moPIpE/pip2V3oVDv13KwiBQOLwDHN9OmPzIc0xvZPOAqtAdK6scLBUNHuLDbN6L1ypQEwd9rMsIwqRTDP0e/BSd7k7WrFtMr+8uHxr5WY/Gn+oPxs7cLaiRbWrVkDi2EzMPYlvxredYBYk72vdq7EPVG3k9JqKwWm4zT16CKD0z6pjP2ovHywdCYqwBMsTpbs0xvWY/GhjlKLDvVzwHbwjwPjv513bKQdVzCTgHYRIHGad51E6fPEIupnIxiJphiZRyhWAJztSmXFORXrBZ1vL348TUIBIBkAocyT8AkCTc6Sdk1OlByFtnHAAQWw58LcIB5EFuel7NcCFtoo5oM3uznTsxR2k/UVTCU0Qlzq1U=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2019 06:22:04.2997 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fc7384b-9ce1-4f59-b782-08d752ca5426
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB2811
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_232209_227557_54BBA873 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.81 listed in list.dnswl.org]
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
 git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To improve the code readability, use two different structs, one for
clock provider data and one for mmc platform data.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
 drivers/mmc/host/sdhci-of-arasan.c | 31 ++++++++++++++++++++----------
 1 file changed, 21 insertions(+), 10 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index 7023cbec4017..701b6cc0f9a3 100644
--- a/drivers/mmc/host/sdhci-of-arasan.c
+++ b/drivers/mmc/host/sdhci-of-arasan.c
@@ -71,14 +71,23 @@ struct sdhci_arasan_soc_ctl_map {
 	bool					hiword_update;
 };
 
+/**
+ * struct sdhci_arasan_clk_data
+ * @sdcardclk_hw:	Struct for the clock we might provide to a PHY.
+ * @sdcardclk:		Pointer to normal 'struct clock' for sdcardclk_hw.
+ */
+struct sdhci_arasan_clk_data {
+	struct clk_hw	sdcardclk_hw;
+	struct clk      *sdcardclk;
+};
+
 /**
  * struct sdhci_arasan_data
  * @host:		Pointer to the main SDHCI host structure.
  * @clk_ahb:		Pointer to the AHB clock
  * @phy:		Pointer to the generic phy
  * @is_phy_on:		True if the PHY is on; false if not.
- * @sdcardclk_hw:	Struct for the clock we might provide to a PHY.
- * @sdcardclk:		Pointer to normal 'struct clock' for sdcardclk_hw.
+ * @clk_data:		Struct for the Arasan Controller Clock Data.
  * @soc_ctl_base:	Pointer to regmap for syscon for soc_ctl registers.
  * @soc_ctl_map:	Map to get offsets into soc_ctl registers.
  */
@@ -89,8 +98,7 @@ struct sdhci_arasan_data {
 	bool		is_phy_on;
 
 	bool		has_cqe;
-	struct clk_hw	sdcardclk_hw;
-	struct clk      *sdcardclk;
+	struct sdhci_arasan_clk_data clk_data;
 
 	struct regmap	*soc_ctl_base;
 	const struct sdhci_arasan_soc_ctl_map *soc_ctl_map;
@@ -520,8 +528,10 @@ static unsigned long sdhci_arasan_sdcardclk_recalc_rate(struct clk_hw *hw,
 						      unsigned long parent_rate)
 
 {
+	struct sdhci_arasan_clk_data *clk_data =
+		container_of(hw, struct sdhci_arasan_clk_data, sdcardclk_hw);
 	struct sdhci_arasan_data *sdhci_arasan =
-		container_of(hw, struct sdhci_arasan_data, sdcardclk_hw);
+		container_of(clk_data, struct sdhci_arasan_data, clk_data);
 	struct sdhci_host *host = sdhci_arasan->host;
 
 	return host->mmc->actual_clock;
@@ -633,6 +643,7 @@ static int sdhci_arasan_register_sdclk(struct sdhci_arasan_data *sdhci_arasan,
 				       struct clk *clk_xin,
 				       struct device *dev)
 {
+	struct sdhci_arasan_clk_data *clk_data = &sdhci_arasan->clk_data;
 	struct device_node *np = dev->of_node;
 	struct clk_init_data sdcardclk_init;
 	const char *parent_clk_name;
@@ -655,13 +666,13 @@ static int sdhci_arasan_register_sdclk(struct sdhci_arasan_data *sdhci_arasan,
 	sdcardclk_init.flags = CLK_GET_RATE_NOCACHE;
 	sdcardclk_init.ops = &arasan_sdcardclk_ops;
 
-	sdhci_arasan->sdcardclk_hw.init = &sdcardclk_init;
-	sdhci_arasan->sdcardclk =
-		devm_clk_register(dev, &sdhci_arasan->sdcardclk_hw);
-	sdhci_arasan->sdcardclk_hw.init = NULL;
+	clk_data->sdcardclk_hw.init = &sdcardclk_init;
+	clk_data->sdcardclk =
+		devm_clk_register(dev, &clk_data->sdcardclk_hw);
+	clk_data->sdcardclk_hw.init = NULL;
 
 	ret = of_clk_add_provider(np, of_clk_src_simple_get,
-				  sdhci_arasan->sdcardclk);
+				  clk_data->sdcardclk);
 	if (ret)
 		dev_err(dev, "Failed to add clock provider\n");
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
