Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8ED782BE4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 08:42:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4hEiR4GOGagFlHgmAbuaXwrG3XVmt6dggLjW7VIC1lI=; b=NNjcRu/FYUORbd
	KV8sXEmJe0H14GWLr5AFXKta/FHBhBZnyBT1F7bANy8XgMmU2BZ37QZzZZqWLLZFsHj83ewVugcWb
	4dYDg9LxtUpKEEoEjOGPi5c3e0KDAKkxw1TuKdniTrQfFgvz3X0YnjHOWMZzfFjfgbvKJWhzHuA+3
	tXEIetVm9b0vabcYEDtuNfd431i3HQMuKRjb+aYcC1eyJACvobEU0aCOL7V4VDLKR2Ro6lJ0DicMH
	7ZSzclDP4irtA43ZOM0EIs7b8KmIjbce9Ay0pYYOH3dHMd/NdcBYOmp9EH2gArK9l+zLFOB4ODxz6
	qbtstvnvzU+TpZ8zF8vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hutAx-0000LO-EU; Tue, 06 Aug 2019 06:42:27 +0000
Received: from mail-eopbgr740088.outbound.protection.outlook.com
 ([40.107.74.88] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hutAo-0000Kn-0B
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 06:42:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=imxjP8QeKObU58aXh42o/3zvSMmFb+L85iIhf9T8lsL4+YmVwNibXs38ZBm1ogeSnABDONF/tD/cAEvkXrUjP6SOiajLDrSVaGABmhNE4nbM5DNbriyvrMrObbgx8ZnJEJAGhRx8mndCP8hjnnbNg+TFnjdGtD4N6rgiYFsDS2UT75Aum6wdnkGgNwno6H5CTKWjGLsSmRnWq5xcMhjlIwgTGeGaJNnEFCnrbUIBzxw2NlozPlMgv0AMocgJ85C/WUmocUalBpYadULfCpOmHOWyf9hHBbKE/D6/Z8kfULi1VGxsCqG+wTRQHQdWLz4zfdW30b70JxJ3dHB/cp2LEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oBVFzkQux9StHvtBPGGyfCTeegW05glwDdyJXE+6aP0=;
 b=iMlCK6St9y3r4jpj8bX9jGHb3JinoD8Eu9wCsc6nSGStN+txCKY7fH4p3lMVGXcCiVTi3O3bUjon+k5WDfYnBqaZ8c3BYH/q17K9V5DgBVY8+cpqac4nC+Cv+4KEXJF7xG4sS8WmvqS5uNsuCbu7PM8dV+l1jTqbTLFbkHcsTVVsIVLSEeuSHPWI51TLHOM8UNW/f5n5x/y/h/ZfglNTvSY8FthJf+VMwTG2E9/0NWJkAY5avDcrBLmZr1bY/dvWgWnS6oDw/J03W5i++gLaqPIPgkH0lqn4r4W3FUIyZWtRC0cIC5c1uo9nCKytSaeby0HrJVkAXq1kMkNd7yd0/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=gmail.com
 smtp.mailfrom=xilinx.com;dmarc=bestguesspass action=none
 header.from=xilinx.com;dkim=none (message not signed);arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oBVFzkQux9StHvtBPGGyfCTeegW05glwDdyJXE+6aP0=;
 b=cOsIMBiXuozn2BNWljl7EVemTQDBjhKLpswzAc0qEvHoqchFya/B+k0IzAaIq+8rW0bNujHjxwbJZK/IsrWxQewi5AlxLRKU9ytnVRlEBl0m00+FHnOsrJT4iSupFYNvm7427YE4hUkLUIgEAg1T3COCBDboC26bJR4uMLqXWOU=
Received: from DM6PR02CA0046.namprd02.prod.outlook.com (2603:10b6:5:177::23)
 by MW2PR02MB3690.namprd02.prod.outlook.com (2603:10b6:907:2::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2136.17; Tue, 6 Aug
 2019 06:42:15 +0000
Received: from CY1NAM02FT032.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::201) by DM6PR02CA0046.outlook.office365.com
 (2603:10b6:5:177::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2157.14 via Frontend
 Transport; Tue, 6 Aug 2019 06:42:15 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT032.mail.protection.outlook.com (10.152.75.184) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2136.14
 via Frontend Transport; Tue, 6 Aug 2019 06:42:14 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1hutAj-0003he-UG; Mon, 05 Aug 2019 23:42:13 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1hutAe-0008Pd-RD; Mon, 05 Aug 2019 23:42:08 -0700
Received: from xsj-pvapsmtp01 (xsj-mail.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x766fwm9009290; 
 Mon, 5 Aug 2019 23:41:58 -0700
Received: from [172.30.17.116] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1hutAT-0008HL-Pv; Mon, 05 Aug 2019 23:41:57 -0700
Subject: Re: [PATCH 2/2] ARM: zynq: Use memcpy_toio instead of memcpy on smp
 bring-up
To: Luis Araneda <luaraneda@gmail.com>, linux@armlinux.org.uk,
 michal.simek@xilinx.com
References: <20190806030718.29048-1-luaraneda@gmail.com>
 <20190806030718.29048-3-luaraneda@gmail.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <194fe121-151d-0b64-b83e-e4d82c02efa7@xilinx.com>
Date: Tue, 6 Aug 2019 08:41:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190806030718.29048-3-luaraneda@gmail.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(39860400002)(136003)(2980300002)(189003)(199004)(36386004)(14444005)(50466002)(11346002)(446003)(426003)(336012)(52146003)(2486003)(23676004)(65956001)(2616005)(229853002)(65806001)(486006)(4326008)(2906002)(478600001)(47776003)(186003)(26005)(81166006)(81156014)(9786002)(36756003)(70206006)(70586007)(65826007)(31686004)(31696002)(76176011)(8936002)(64126003)(305945005)(5660300002)(44832011)(8676002)(476003)(63266004)(6246003)(126002)(106002)(316002)(356004)(58126008)(230700001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MW2PR02MB3690; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b06e1766-e689-4ee1-635b-08d71a3937e3
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:MW2PR02MB3690; 
X-MS-TrafficTypeDiagnostic: MW2PR02MB3690:
X-Microsoft-Antispam-PRVS: <MW2PR02MB3690CC5ACC9698CFC3C4F848C6D50@MW2PR02MB3690.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0121F24F22
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: B8CAZgIvMXWMKMfLsPfOuQdNtGyi/8H+FSuJZ/heXJ6qGa4pvw2emrVdQnN7KcBQJzUUwYNyUy7c2ak3el1prO9tZUbwOzEbBk8V74prDgxKHYAkIVZQ2w3mGrl222kyULcOLzNJ+ubSywbsPsum5kkc153lkdZ6MXJmVEQ6OJlxISfAlIUH41il8j9AHAVkCYJTP72JcFNsfWFLjvUZ52+gkXjj06f83JB2jbWgQO8z13e2+A932jYIw44AJHa4st0/oUv8HSyOrE//LtgAdM+IKGNIuFZMJBR7shNG6xIMsfXX1EKUAXYVmDmSe2AVFR6rNPBCEM9oE6TE4ZNgVEecyYvKHiaPZFDrfft/60E9DmDVNB4DcYSUJ69AZNolccxEjx9fF7cz0/j+559iJdlHqLAJR9UEWFXWtfIZxXY=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Aug 2019 06:42:14.6199 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b06e1766-e689-4ee1-635b-08d71a3937e3
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR02MB3690
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_234218_043776_34696559 
X-CRM114-Status: GOOD (  19.80  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.88 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06. 08. 19 5:07, Luis Araneda wrote:
> This fixes a kernel panic (read overflow) on memcpy when
> FORTIFY_SOURCE is enabled.
> 
> The computed size of memcpy args are:
> - p_size (dst): 4294967295 = (size_t) -1
> - q_size (src): 1
> - size (len): 8
> 
> Additionally, the memory is marked as __iomem, so one of
> the memcpy_* functions should be used for read/write
> 
> Signed-off-by: Luis Araneda <luaraneda@gmail.com>
> ---
>  arch/arm/mach-zynq/platsmp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-zynq/platsmp.c b/arch/arm/mach-zynq/platsmp.c
> index 38728badabd4..a10085be9073 100644
> --- a/arch/arm/mach-zynq/platsmp.c
> +++ b/arch/arm/mach-zynq/platsmp.c
> @@ -57,7 +57,7 @@ int zynq_cpun_start(u32 address, int cpu)
>  			* 0x4: Jump by mov instruction
>  			* 0x8: Jumping address
>  			*/
> -			memcpy((__force void *)zero, &zynq_secondary_trampoline,
> +			memcpy_toio(zero, &zynq_secondary_trampoline,
>  							trampoline_size);
>  			writel(address, zero + trampoline_size);
>  

I would consider this one as stable material. Please also add there link
to the patch which this patch fixes.

M




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
