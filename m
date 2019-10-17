Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 780C4DA58D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 08:24:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C6G6DHIBr+wUgIy/M3ILJ/2UbyaelBucrDQ9U7bmFbc=; b=joKWidJk/iCuLa
	LWY01GT743uuc+54a+4L3zG1xwlpq+uknY6Fhjyb/9bFlK4nTfYyba4aHYdbLc0Bo+/BeM0MCZsMG
	KaNOoAdebB6192CnPXUfcN+D4X0M6L+iCi0OtP5cvw4kqMURAbIZO9qw6rpiSgV7uUZQNXdy3y0j8
	gu/3KcIuF2zu6I85rcWd83h8LuZLbiinpxBwgn16ajwEfhQkI6r80Yu/sKyyKmLl1bVydgJMcrrB5
	E6kG1/z6KRpGwDQq/UfksBrvFKcqVxTi7LcipVlT/SgecVziwuw8QpTLHD8pxp0bsVjy05pUrJ2eA
	yYHr/EcJpICGXUavxxPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKzCh-0005Mm-AM; Thu, 17 Oct 2019 06:24:07 +0000
Received: from mail-eopbgr690075.outbound.protection.outlook.com
 ([40.107.69.75] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKzAx-0004G4-2O
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 06:22:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XJN/2xYgH9mJh989qoY0vMP3vFlt/wbd4HKwWEM354c7A1XYKxduyjSv9FWoPr9oSnfm/7xpCvMyDw7+4DOP/2ZueegpjgtM3TVCGRyuXT+yknTloKn2nQlWQds/yLKmdXjp33HATHTkaW8Hj4DwBqPfYj19HDt0NvDe4tXPQpq14G6b58bpkt07gpUS5diUbrY/BQmZRHiHdoriHYItBLCUol7YrqLZ8iqyivCodnKADv7wlx1jPOyskMuJ+MlCBowA0dZNbDd9obRVxwycaOGsXUsA+rz8JRbEaNQaplZUfS4rap6eWviWfekdLQWcxhua+gvXq9jX5I8CBhdVEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dSKpuWFWYg7fUgNHBvrR8U0R3/HCKwCxvjhTf8hP0mE=;
 b=HiaqecI9Lg8/QH+Z5heEH29LLrpoSpgrYuEWVomgEashHrs41S9va9YWI5IHydqT9Iy/ldD9DoqQg4hZzCH2oeJyv/Ou3FS8vhFdtOqeifl3hCEjoAKAHYUYb3A1kip1N0UK8wGhZe5rKGUZOUs0SaHl187S3AEvCptI4PY4oJTBAExvYthK/KoixBj/jcGTqYyeKdUHpjD0SXV71ahBlXWMTrNwaxExNA9fmpV6XYhLE/uqXBC7u4OBsUP1jpIVIAkEBAomO03/tlTajaMyqXNGdpawjvmzvNbs+lgc+nTCHNeDsjFO1kybrY4kqeRxp8JZVzN4q6sQKX63fKasjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=arm.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dSKpuWFWYg7fUgNHBvrR8U0R3/HCKwCxvjhTf8hP0mE=;
 b=NqAT1bJDDZNwfBRjbTOPKAcFmAVGsN8ivJlCImJvddkuqPHmWmZPOwa5fTxK4k+CgOoMoD1rDe78cWF1wQ3OGUjXGD3wIjvqBxPNarRPg9vPgvfv9hLF1AVYJNadxtT1tNrqHswUQaOFj6JL1vyLdme+bgTYvgrLq9FclkvoNBA=
Received: from CY4PR02CA0040.namprd02.prod.outlook.com (2603:10b6:903:117::26)
 by SN6PR02MB4525.namprd02.prod.outlook.com (2603:10b6:805:af::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16; Thu, 17 Oct
 2019 06:22:14 +0000
Received: from CY1NAM02FT005.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::208) by CY4PR02CA0040.outlook.office365.com
 (2603:10b6:903:117::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Thu, 17 Oct 2019 06:22:14 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT005.mail.protection.outlook.com (10.152.74.117) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2367.14
 via Frontend Transport; Thu, 17 Oct 2019 06:22:14 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iKzAr-0004bR-Vx; Wed, 16 Oct 2019 23:22:13 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iKzAm-0003mX-Sx; Wed, 16 Oct 2019 23:22:08 -0700
Received: from [172.23.64.104] (helo=xhdvnc123.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iKzAd-0003fI-91; Wed, 16 Oct 2019 23:21:59 -0700
Received: by xhdvnc123.xilinx.com (Postfix, from userid 16987)
 id 7E44643A9B; Thu, 17 Oct 2019 11:51:58 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com, jolly.shah@xilinx.com,
 rajan.vaja@xilinx.com, nava.manne@xilinx.com, mdf@kernel.org,
 manish.narani@xilinx.com
Subject: [PATCH v3 4/8] dt-bindings: mmc: arasan: Add optional properties for
 Arasan SDHCI
Date: Thu, 17 Oct 2019 11:51:46 +0530
Message-Id: <1571293310-92563-5-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1571293310-92563-1-git-send-email-manish.narani@xilinx.com>
References: <1571293310-92563-1-git-send-email-manish.narani@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(39860400002)(376002)(396003)(199004)(189003)(5660300002)(50466002)(47776003)(70586007)(186003)(36386004)(26005)(336012)(76176011)(51416003)(70206006)(106002)(16586007)(305945005)(2906002)(426003)(107886003)(486006)(6266002)(36756003)(42186006)(476003)(126002)(8676002)(81166006)(316002)(2616005)(81156014)(50226002)(478600001)(6666004)(8936002)(11346002)(356004)(4326008)(446003)(103686004)(44832011)(48376002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4525; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3ed1c626-cd3e-43b5-9de6-08d752ca5a38
X-MS-TrafficTypeDiagnostic: SN6PR02MB4525:
X-Microsoft-Antispam-PRVS: <SN6PR02MB452544123D25CD491565BB4DC16D0@SN6PR02MB4525.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 01930B2BA8
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xaZJSkwCNOIBLAwMcwyHUWalYirDcvRLwv91CFA/meGHRaKfSi8VLf/3KlFf27CpC4mlKKE4agR+BIOmTi7MfGGLYxaXq2Yew5b+KoJkJoZmePQbVla/FoQHvyqp4xQEKkWX91exDfp/TmvZMWGPngalNSDJ8+M5Y0dEJRA4neyFOXHn/RO6ouzhFiQsMKjvVGudpzkt7jGo7xSxsKr5KyPMofu6npCZc0CdJJoZUe9zOqM+oBsZnuAxXuyPnmvFz3qaOgED+w5IcXzE5yrdwFIQO0J/toAAEskWU4HKpGuuSd8xKFw/+BHVgjPwKetvnz7UkYDvT+g0RSz6PtMaoXYnBzKZZnEc8GeFDjegptV/YUO2621bZpuolzivxUV7KbKrJn2iaNh/yu37GWHWOkYWpZjQJFbLDFUbeHPy0w8=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2019 06:22:14.5334 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ed1c626-cd3e-43b5-9de6-08d752ca5a38
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4525
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_232219_147357_6A292C4C 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.75 listed in list.dnswl.org]
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

Add optional propeties for Arasan SDHCI which are used to set clk delays
for different speed modes in the controller.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
 .../devicetree/bindings/mmc/arasan,sdhci.txt      | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
index b51e40b2e0c5..e0369dd7fb18 100644
--- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
+++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
@@ -46,6 +46,21 @@ Optional Properties:
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
