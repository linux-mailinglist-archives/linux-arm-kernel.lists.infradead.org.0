Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A7E1A3B8B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 22:48:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+fdhIC+W8dMs+9KFineZa70GpyVRG6I1CS+69dTEy0g=; b=LyClz+kvb/deqWEpVbo8AERoT
	2PorQk+mwLQLNbfBE5mSjH96cidJA66Ro33sfBJ31DxyFQfNom+T3FT0ObLWbnu71POwHLbzbz5Is
	7yQEgDuefrlQ3d2+zaALgMIzZ9kFnA5Rksn8US3l10i3MpNjECt67n1xicN1oNsrag+hR2XhPWkTR
	3IslvSk7ximyKEoFLJamkjwooNwR6qtps3ZRryyVTQHJVhG6Na/TV6cwZ7NQi7bPLBhBaJYcdEHXT
	n2/JwtrT83a4Gnrju5TAQSmC5qEGPtth2+372VOv1Ib8uqE4woIeX/GXGc4x5cW/plEzmTUak68jH
	WI1oGukWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMe6K-0003EW-Ox; Thu, 09 Apr 2020 20:48:40 +0000
Received: from mail-mw2nam10on2045.outbound.protection.outlook.com
 ([40.107.94.45] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMe6C-0003Dx-RW
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 20:48:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kcw1bCkXE6HCjPhyNSVRnDwE6Jv9/daWsIjnuAHq2K4HhKZqbnX3p5M8cI1jIUAZqS/Y7eS1Fk/c8haRbOZlpI0Az7bBxEJgyo4eAIyCcUb3e/8mLN0D554Y+4hQk9FznzsBIU4GH4LTWROl4xreKAFlBXNmuxG48Ro8NqvIl/kfyvNRPR3vgsn+Ak0HQCWOIDGKkoBLYYIQm+LopgNrqFUHxdu26dfU57Z5aolHhfRm/p1I+ekV754lG5+tsCB76B8+Dj7CZUMHwSmCVfoH2oHh4WgkJIa9wJglGWSAcJRYM98EGiHqZXvBF6wNfGrIDBC0owRdM2sv8sIqr3gUcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+XsqQYcGZmxaBqGAZamo7n/bd7sRmpBNPCua8oCGoFc=;
 b=Bx9eLGfJrBOPz9AwoZRxNVPe19v7KuDcIQ9R6ktL0B5HK/dxzbMR1RADBfOor8vIZ1RLtqbXUCS8WgbUSs06oLoJzby7ide0AdAJMT8JJSypFuWH3I0zezYCbkYDjQYQp4k0Lf7CvPov94IzADiqGp6CxS7uZy98swi04gkWxD9Rn+/Mmt8732WoPUwmvjHjq9ncIcg2Gpe9wf5Yz5VHq88Sra8jB3vzeIUUkcOHS0cQSYprBwncfH3VsLue8yFGylty5RblyRFiXqgNnpzgomsP5nagdVqUK7TNkxAmO5ZBMyEbCKMbbJKoKsB2Q+OYpftgQ6iPiGjBMCS5Mn2+OQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lixom.net smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+XsqQYcGZmxaBqGAZamo7n/bd7sRmpBNPCua8oCGoFc=;
 b=o741Zv86INArJ27uggeICwCVmdXcESU2HNDFL2pXIF3584Abko9+sGjeL4ahrO1p9CgtKEczkTrm9ezNtzYPEQjJaM6OvIlVl6SpGaCveNnAaCtm0rtdr953oEO7nGBZNjqkDHXX9CtPRVOXyxCuoaQphFZ5lqMOxBv0/eys/NQ=
Received: from SN6PR05CA0033.namprd05.prod.outlook.com (2603:10b6:805:de::46)
 by DM6PR02MB6425.namprd02.prod.outlook.com (2603:10b6:5:1fc::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17; Thu, 9 Apr
 2020 20:48:29 +0000
Received: from SN1NAM02FT037.eop-nam02.prod.protection.outlook.com
 (2603:10b6:805:de:cafe::23) by SN6PR05CA0033.outlook.office365.com
 (2603:10b6:805:de::46) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.6 via Frontend
 Transport; Thu, 9 Apr 2020 20:48:29 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lixom.net; dkim=none (message not signed)
 header.d=none;lixom.net; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT037.mail.protection.outlook.com (10.152.72.89) with Microsoft SMTP
 Server id 15.20.2900.15 via Frontend Transport; Thu, 9 Apr 2020 20:48:28
 +0000
Received: from [149.199.38.66] (port=41476 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMe5h-0000yK-Ug; Thu, 09 Apr 2020 13:48:01 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMe68-0008MZ-JY; Thu, 09 Apr 2020 13:48:28 -0700
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 039KmOhv023227; 
 Thu, 9 Apr 2020 13:48:24 -0700
Received: from [10.23.122.17] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jollys@xilinx.com>)
 id 1jMe63-0008Il-7m; Thu, 09 Apr 2020 13:48:24 -0700
Subject: Re: [PATCH v2 0/2] drivers: clk: zynqmp: Update fraction clock check
 from custom type flags
To: Jolly Shah <jolly.shah@xilinx.com>, olof@lixom.net,
 mturquette@baylibre.com, sboyd@kernel.org, michal.simek@xilinx.com,
 arm@kernel.org, linux-clk@vger.kernel.org
References: <1584048699-24186-1-git-send-email-jolly.shah@xilinx.com>
From: Jolly Shah <jolly.shah@xilinx.com>
Message-ID: <793fb28e-1292-320b-2f03-6c529bba38d8@xilinx.com>
Date: Thu, 9 Apr 2020 13:48:04 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <1584048699-24186-1-git-send-email-jolly.shah@xilinx.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(376002)(39860400002)(46966005)(316002)(2616005)(9786002)(186003)(426003)(53546011)(26005)(478600001)(336012)(15650500001)(31686004)(81156014)(8676002)(36756003)(4326008)(70586007)(70206006)(82740400003)(2906002)(44832011)(81166007)(31696002)(6666004)(356004)(5660300002)(8936002)(47076004);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fe2a4ba0-6f96-43fb-7def-08d7dcc75b8e
X-MS-TrafficTypeDiagnostic: DM6PR02MB6425:
X-Microsoft-Antispam-PRVS: <DM6PR02MB64254E4218B0D8E109D4945FB8C10@DM6PR02MB6425.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 0368E78B5B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: f5du9zNfB0cDfUrrUBZ4gJDDucEqnstVDTHuUs/QIdEH77mNiwa0dm2ZkyXw06WaGKCnXHagQtaPAuPYLXAWHVUs7ch9IuZ7Kjvy/Acf2N1wl42eaG5oeTSlUebaqvMTRzHAW1dkrn2UfTWwrs7TooA4r11Q3wlwsEY4J47wcBUDZrsWMraFQYG8PIwx5EzUicb16vuAqZvu78c+CjH6i3oBW5lQryjwPdU+1K5qDEcr9XeXDiPj8vj7ZhMEwHnUqUHvu50hhV9p02CT/gw94eCJRCJRk6tAWG3boEduzrxoM7MP6a0ne9OjBDXMExHiZcXgo8+3ikiZTQhwqpQZehpeWpt2SF5om7nedmv4T1EhH8w7/2dTlrhDBeexpAez7kJ2d3assT88EFBfczld9TUFDOJR0jBLo33Hg1Ysa2CX/Nya+lmKMV/GAJn/nK6Nsl+7qwBDWzwXpy7whX9kpk0zso3PotAcUd3S7kpz2mx9DSxHo7JauPphqQdti1/uLmJM7JeZop2g9ZQpe6jtPQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2020 20:48:28.8762 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fe2a4ba0-6f96-43fb-7def-08d7dcc75b8e
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB6425
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_134832_889361_4C64C51C 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.94.45 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: rajanv@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephan,

Ping. Please review.

Thanks,
Jolly Shah

 > ------Original Message------
 > From: Jolly Shah <jolly.shah@xilinx.com>
 > Sent:  Thursday, March 12, 2020 2:31PM
 > To: Olof <olof@lixom.net>, Mturquette <mturquette@baylibre.com>, 
Sboyd <sboyd@kernel.org>, Michal Simek <michal.simek@xilinx.com>, Arm 
<arm@kernel.org>, Linux-clk <linux-clk@vger.kernel.org>
 > Cc: Rajan Vaja <rajanv@xilinx.com>, 
Linux-arm-kernel@lists.infradead.org 
<linux-arm-kernel@lists.infradead.org>, Linux-kernel@vger.kernel.org 
<linux-kernel@vger.kernel.org>, Jolly Shah <jolly.shah@xilinx.com>
 > Subject: [PATCH v2 0/2] drivers: clk: zynqmp: Update fraction clock 
check from custom type flags
 >
> This patch series adds support for custom type flags passed from
> firmware. It also update  fraction clock check from custom type
> flags since new firmware pass CLK_FRAC flag as a part of custom flags
> instead of clkflags as CLK_FRAC is not common clock framework flag.
> 
> This patch series maintains backward compatibility with older version
> of firmware.
> v2:
>   -PATCH[2/2] Correct BIT index of CLK_FRAC in custom_type_flag
> 
> Rajan Vaja (1):
>    drivers: clk: zynqmp: Add support for custom type flags
> 
> Tejas Patel (1):
>    drivers: clk: zynqmp: Update fraction clock check from custom type
>      flags
> 
>   drivers/clk/zynqmp/clk-zynqmp.h | 1 +
>   drivers/clk/zynqmp/clkc.c       | 4 ++++
>   drivers/clk/zynqmp/divider.c    | 6 ++++--
>   3 files changed, 9 insertions(+), 2 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
