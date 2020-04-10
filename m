Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8DD1A4394
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 10:35:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EbkJTWUPJVdrKkyPEbXfKRKS9jhSOzicl6v2RoOxtVg=; b=LuHmCtz3SZzvEy
	nsTvrmXtE0i+SOFJSKxZTjpNlDqk72qCTB9FICC+8Tm3vwumEaLu4asBF1+ooAFZWLNWL+AG2FaHA
	wtyfSgrKunr+dn0+i2fGQgtMIcRniIC0Dre2iq5hLN44tyTRy3YMhVwAol93aeZlsYHnLKD0vXrNP
	65BtUhe2jPHoDzt8TPn/L43c0sdMMPOrI2xzFSbKYIXfIC7DkNXWOcWNY2NvnrlOZ88x39ZdSzmgW
	AXp5aLEkiiX/uOLjAz66NJsHVATojyVPgj+66KhaT4Jb77A14fzzH1COvmrKqzqVvRB0xttBYVgWr
	T3YhQrIToHkLfWuIBCaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMp8b-000196-51; Fri, 10 Apr 2020 08:35:45 +0000
Received: from mail-bn8nam11on2066.outbound.protection.outlook.com
 ([40.107.236.66] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMp8S-00018Y-GQ
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 08:35:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O4R7/E36YT/BPC7zHudUyWdlMtoAi4x2ucUiL6CD1Ir2XO+xsHUxbEV4ggsyZc6+zySSp89YW2VJgZFBDy1uYwKPD1YYazdSODJSc5QnRkbcPYE30RYRUVBzydPxLlPygBC0k30lu4GKjsSPZB4E9rONbl+UOof0HhinQOP9kIkxi0cPAaqy0/kDhoT0+dKrTmhvuaEihLTS/bAIepxmgiAxmmEfGnKBMcgUI+2MG49/MSUglChDXBiKpWChbPGGzLnhKcwNQrOics1gJxmv3E6eOFuMSD80v2gnXgltaxhKCAJBX+6S976tVRid/AOltEYod5/SoazPnHh03WX1Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GMLw1rY46Div6ct6EoqWd87MdBeI321WyxjyrggU60Q=;
 b=aF0IeOsHHVQ5y7h7AEGtAAIwkbZXED0xDRCl+OBE/KiiSwAkfUjcRw77k1ZU5lXblkvA8cCefS4v4KPmkp9W6MMnsgRkw5pVKbpbQYNuI1Ew+H6XUqRlHDp0Ck28yuk7RaL6QEaTdAwR4tZVIlqyfPR13FAn9hqdWvNvBUgAy5DY7MsbkV1TZFXC9426v5V1gPMZpQ2mDRoylW/hZF7Vbn7bXj3gzGTVu16TBF1OhU9PNqbL5ug4hOs+toq2Ikj+nI3ZLR6k1Kiv+ejLOXCKMGAtJ0+ptxMkvCuDVCe4cFR/ThkCgQ9iv1RkLppASmmEo1lsWcMXC3WGR0vAmQTHQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GMLw1rY46Div6ct6EoqWd87MdBeI321WyxjyrggU60Q=;
 b=ry34SqGHPH/tzzI0zOFxUyQDYXSIJiCDy/MwjjgLlrlJ/lD1VTnWk6PUS2yngDYVuLE4n3MlIwdi8NaVPLrVvAMhWbjHfsNcXgpIVhEVAHC/FGlj/P1ZPKvCJNqaFTOvjboOSeFFlSzB9N2l/Xhiq4GIKmLGw5ub6apb8cH+POA=
Received: from SN4PR0401CA0018.namprd04.prod.outlook.com
 (2603:10b6:803:21::28) by BL0PR02MB6532.namprd02.prod.outlook.com
 (2603:10b6:208:1c9::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Fri, 10 Apr
 2020 08:35:31 +0000
Received: from SN1NAM02FT028.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:21:cafe::5d) by SN4PR0401CA0018.outlook.office365.com
 (2603:10b6:803:21::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17 via Frontend
 Transport; Fri, 10 Apr 2020 08:35:31 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT028.mail.protection.outlook.com (10.152.72.105) with Microsoft SMTP
 Server id 15.20.2900.15 via Frontend Transport; Fri, 10 Apr 2020 08:35:31
 +0000
Received: from [149.199.38.66] (port=48220 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jMp7v-0007nR-5z; Fri, 10 Apr 2020 01:35:03 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jMp8N-0000un-91; Fri, 10 Apr 2020 01:35:31 -0700
Received: from xsj-pvapsmtp01 (xsj-pvapsmtp01.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03A8ZLRk006010; 
 Fri, 10 Apr 2020 01:35:21 -0700
Received: from [172.30.17.109] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1jMp8D-0000sI-54; Fri, 10 Apr 2020 01:35:21 -0700
Subject: Re: [PATCH] ARM: zynq: Don't select CONFIG_ICST
To: Rob Herring <robh@kernel.org>, Michal Simek <michal.simek@xilinx.com>
References: <20200409221829.29421-1-robh@kernel.org>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <642d4c6a-46c2-d9dd-923e-f34473ced17b@xilinx.com>
Date: Fri, 10 Apr 2020 10:35:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200409221829.29421-1-robh@kernel.org>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(39860400002)(346002)(136003)(396003)(46966005)(4326008)(81156014)(2616005)(70586007)(44832011)(70206006)(186003)(478600001)(5660300002)(8936002)(31696002)(2906002)(8676002)(9786002)(47076004)(31686004)(110136005)(356005)(4744005)(316002)(26005)(81166007)(426003)(82740400003)(336012)(36756003)(341764005);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 159b89a3-d2b5-4403-6cb4-08d7dd2a2174
X-MS-TrafficTypeDiagnostic: BL0PR02MB6532:
X-Microsoft-Antispam-PRVS: <BL0PR02MB6532C8C841D426A7C3247C73C6DE0@BL0PR02MB6532.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 0369E8196C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9oYQdLPD3cmNaXeZxNuSSQ/+42ITFD1/xu4DspMtocamDRhokSFsBySvvvayNuFGTAs5yQMqlN1Sdx6smiF78WKLU6a02XFQU65T7fzoSKDusWKRQSwPl1pERC74cxX3TzgIajnHkxCnWSif9CNOYZjHLGsFEdUGr1rMfo95D6B8VpNuPw25yOSR4hICAmEBXQg0cDLJqjyQG8uYUerI2pQ4iGHL3UlQvZHTUQAAe207iAGxATPFW+EhVRPe+Gn2K8/a0Evkd6Fj+PuYDMPUnETE7RLdK98pG8CfwncJ344XHYiqSM+iEdCx9WADpXpK4RFAqNx8bMek0w0qkmDJJ4PIYMrBtRj7iVegzqpIrdOZLrTORR9bAkitCV0dXkmPix55DH0dujG5fgJTtPh55tgakeGxh0yWTbhxJRUd9Y9jgTo/bsEOxEHHM9t17KH7nzjv9l+KSXYjzpdl1mlylgCrm1dhqcn5SB6247lEqH0Sw/l/EXAs1oHhzpOlE57puilHLZxBtSjQTjYh2XoQxpXnOxOg6DCe2wvMXqvbjKk=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2020 08:35:31.5807 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 159b89a3-d2b5-4403-6cb4-08d7dd2a2174
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB6532
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_013536_597510_4568DB71 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.236.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10. 04. 20 0:18, Rob Herring wrote:
> CONFIG_ICST is for ARM Ltd reference platforms and isn't used by Zynq
> platform, so remove selecting it. It appears to be a copy-n-paste error.
> 
> Cc: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  arch/arm/mach-zynq/Kconfig | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
> index 1ca633e3d024..43fb941dcd07 100644
> --- a/arch/arm/mach-zynq/Kconfig
> +++ b/arch/arm/mach-zynq/Kconfig
> @@ -10,7 +10,6 @@ config ARCH_ZYNQ
>  	select CADENCE_TTC_TIMER
>  	select HAVE_ARM_SCU if SMP
>  	select HAVE_ARM_TWD if SMP
> -	select ICST
>  	select MFD_SYSCON
>  	select PINCTRL
>  	select PINCTRL_ZYNQ
> 

It is c&p error.

Will apply when rc1 is out.

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
