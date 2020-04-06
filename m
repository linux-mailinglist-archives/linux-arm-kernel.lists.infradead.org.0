Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2309319FBD2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 19:44:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QYIaFn1U57HSWR7tFf92/XNlxJ6Fts4fMtAhDgCr160=; b=iOSMzRwzqNcErL
	h2Jua/oS4fOzzOZgx5VgaszYfyTy3fhC6ulu8FuS36j2tty7k7LRM/ATB6HJuh15N21B4eHHgDmvT
	AfQqKm9PmBrgHXHXjt/DwKGyDACZnr73M9yVkz3sM9A0apxHPl7T4OQ1ibiJE66iPxuXEEs2juekO
	8QzxmRB0k6hdWawLchVxGnaxSgRVII8bJJSnFMeQYUweyQQppSMSGJNs6gZoy9hokXLa1ifN1WTgK
	G/ZqTy/+Ov3rXjNA5CcZqzKW1alr84GInzMmdzDF8b5oRtonhRsb9j/E4g9Oq1VqbknlcyFWmfuro
	EkAlMtvDz84MXThDtZZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLVmu-0000N8-Tj; Mon, 06 Apr 2020 17:43:56 +0000
Received: from mail-mw2nam10on2050.outbound.protection.outlook.com
 ([40.107.94.50] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLVmn-0000MY-Gr
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 17:43:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fWvqrc0WbvR+saNHV3FxmU625Z6OFV1smbLoUJcv/QuoaoM76D2Gf+OljKz8OJs+EiElw4s9jH22deZsT4SyCpNXDJ+k2BzRzFVjMMk6CPIPFokFDHjTnIIUAkt2rXoC7zl6B6PK/GNC/KMx2sRr3kAQ1sYQgxxVdKbCfZKjuqJpWvScufiCoNGw+kt1rkrrZCghH6PIZxN7i49j2P2M4eOxOD/0WxoB5QFRhckcsq3MEgRq4AiOzMdzIeucdjQqywWfZkrSYjos3dLa/uSEPz/a3HxGEZXwcFw0Rr8V9PKgfW+152wXtj77EHE/wNb2d+a3hwHvwwRAMXrXEOZW4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t7la2qJGrRTTJ84B/rnDVHIfmpYeTc8cZSGQBmczHHU=;
 b=XwAJTp/xFrkNhi9hZ0JpiKsIyW6Lt2LhzPUKIWNCnHmR0LTAZzuIBg9bJZzHStJmwUXpVgjoZ5Ww/PazEuTuWBZ9a4vhy8eURP9jOG+WROvz1B2rfzd1/sPiCEJFkh5VxHcN9QlduhkHXgZJN2LW6r7iBUddgJ9Agi8VpLpfQXxS6jrbA6LJaAzVcAZIG6+WwQyfz0jn5VTUsekkaXviMnrtNu/06Lu18tyZbniwrfOl/ul11RppROokiSOHeYmlZrhq09lNxFuAs4Vny4Um9GxbWtT8hagtTzqsw30JyE1eRptFbT3qjBL0L9AEwSxfe72x2uf9lbBQNzhNFvvHGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t7la2qJGrRTTJ84B/rnDVHIfmpYeTc8cZSGQBmczHHU=;
 b=iPjyvEQfRZF8UaZCXR+TgEPJA2OQdY434/Z9roZmrEb0g1TL1c+la+kUUn9PU3Fnyvk/IeJkWRFiwhSKtUwe6oZ574VqWCQLKTwmlc2HYbkgilH2NXAinWUU4XNJRxKuUMj+Sa/OkLASr7TUW/eANZ0ORXqr0p3WEUuzhoxpayE=
Received: from SN4PR0801CA0015.namprd08.prod.outlook.com
 (2603:10b6:803:29::25) by BN7PR02MB3986.namprd02.prod.outlook.com
 (2603:10b6:406:f0::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.19; Mon, 6 Apr
 2020 17:43:45 +0000
Received: from SN1NAM02FT052.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:29:cafe::73) by SN4PR0801CA0015.outlook.office365.com
 (2603:10b6:803:29::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16 via Frontend
 Transport; Mon, 6 Apr 2020 17:43:44 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT052.mail.protection.outlook.com (10.152.72.146) with Microsoft SMTP
 Server id 15.20.2878.15 via Frontend Transport; Mon, 6 Apr 2020 17:43:44
 +0000
Received: from [149.199.38.66] (port=44341 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <manish.narani@xilinx.com>)
 id 1jLVmQ-0007Zr-Fk; Mon, 06 Apr 2020 10:43:26 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1jLVmi-0001Ne-1G; Mon, 06 Apr 2020 10:43:44 -0700
Received: from xsj-pvapsmtp01 (mailhub.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 036HheHd017224; 
 Mon, 6 Apr 2020 10:43:40 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1jLVme-0001N1-1L; Mon, 06 Apr 2020 10:43:40 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 1F4631211F6; Mon,  6 Apr 2020 23:13:39 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com
Subject: [PATCH v3 0/6] Add support for Xilinx Versal SDHCI in Arasan driver
Date: Mon,  6 Apr 2020 23:13:29 +0530
Message-Id: <1586195015-128992-1-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(396003)(39860400002)(346002)(136003)(46966005)(5660300002)(4326008)(107886003)(26005)(6266002)(6666004)(426003)(356004)(81156014)(186003)(2616005)(44832011)(8936002)(8676002)(36756003)(336012)(47076004)(82740400003)(81166006)(478600001)(70586007)(70206006)(6636002)(2906002)(42186006)(316002);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e1ea59eb-2269-4b6f-7ce2-08d7da520d70
X-MS-TrafficTypeDiagnostic: BN7PR02MB3986:
X-Microsoft-Antispam-PRVS: <BN7PR02MB3986E161E1AA41FD4CCABCB6C1C20@BN7PR02MB3986.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0365C0E14B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3xNgAAF/s2BvcHhoxz65DkSdvEIeGHlTK4AzE0mEmktKXTqM67BAp/NbTDmy6AydGzwSkSZwrgqjIOEJVKFHyUyHMN4Zp3DEaJWBLp83c2xa2tGfGVaYIbku84YIOKgflDT7J+d4IYhN3RR5XYbxm/9E5aJ5aDbqw6d+juebkslXqP6d2g1zQiSDaNIJhsTLKn5a0GFqP2dpxGBtWpAwNad9EpS88UeOcrbyLVt6uXHHP8kNiqQVsSe4gjxYzQGPEDoDM5E8n7zHGtWC7Yb7QtD/WBa6s/Fsj2fjK11O86rPhOXu7ul8xRyhNPBkxHTs97yEbx1MRzQ8oQ1ZY85AAbs/q6e/+5eQppAkXzsLqNDvp20mdRoqWMWCwbyBvwa571hxvfMGfK0rIKbuQMQkTNunL0rd9Y6ZV0kuE1goxakFnj3U0hmQK/OWQy3SqAM0Yicz6h+SgkKDcuMxj+7tz43CvXt14oUqLsewY1IhV8eXd7GSL6NJjCxXasa233h/tDKXts3wHyxBiUFJNWEsPw==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2020 17:43:44.3743 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e1ea59eb-2269-4b6f-7ce2-08d7da520d70
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR02MB3986
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_104349_558621_2F6E5326 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.50 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.94.50 listed in wl.mailspike.net]
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
 linux-kernel@vger.kernel.org, Manish Narani <manish.narani@xilinx.com>,
 git@xilinx.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series includes:
 -> Document the Xilinx Versal SD controller
 -> Add support for Versal SD Tap Delays
 -> Reorganizing the clock operations handling
 -> Resolve kernel-doc warnings

Changes in v2:
	- Addressed review comments given in v1
	- Changed clock operation handling for better modularity.
	- Changed comments to fix kernel-doc warnings

Changes in v3:
	- Addressed review comments from v2
	- Move platform related structure before doing clock related changes
	- Rename sdhci_arasan_data to avoid confusion with another struct name

Manish Narani (6):
  dt-bindings: mmc: arasan: Document 'xlnx,versal-8.9a' controller
  sdhci: arasan: Add support for Versal Tap Delays
  mmc: sdhci-of-arasan: Rename sdhci_arasan_data to avoid confusion
  mmc: sdhci-of-arasan: Rearrange the platform data structs for
    modularity
  mmc: sdhci-of-arasan: Modify clock operations handling
  mmc: sdhci-of-arasan: Fix kernel-doc warnings

 .../devicetree/bindings/mmc/arasan,sdhci.txt       |  15 +
 drivers/mmc/host/sdhci-of-arasan.c                 | 473 +++++++++++++++------
 2 files changed, 361 insertions(+), 127 deletions(-)

-- 
2.1.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
