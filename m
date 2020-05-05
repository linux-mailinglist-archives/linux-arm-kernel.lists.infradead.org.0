Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B241C4ED7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 09:15:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AhMOeJi8n3xet+yK5eSA/3EbOngU8+vEo1LHGb0Sg9g=; b=cvXBc3cr46O5XO
	m6v0qEV/5iq9FVLds7bNKDYzZpoRRSp8xNDh7FrTqrMV8rAd0PRefae3RSpM+10HTdnEyk+7lUfrU
	ylPylxQBJ/wAzDRU193HqDFuqD3rbsH2E7oE4NYbZ/WbG47K1TDW7Eh9B9CGvPa8z378ltZ1S61s3
	qwU2OkPo/Gv4jOiezuG8QsIg/4CLYLpKIe+7lxAsLOmptzdz83GbUMzo71xKuY6iSYXDdKSCfKfEr
	1KSECXxB3Hy3boYHv5osr+oO9XKdEQ/+rFNMdzVPPqz1T1vq5/K/R/n0g2zu/eUlsBAghIensEecC
	tN/LfBw3JHscyAP0/T0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVrnR-0006jV-6b; Tue, 05 May 2020 07:15:17 +0000
Received: from mail-eopbgr760058.outbound.protection.outlook.com
 ([40.107.76.58] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVrnD-0005qz-39
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 07:15:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LGunRXVqcCldCAg7E+t/qmfUKV5Uebn0/AOWq+y3+HEXyIxjNqNRQkiBX1/m/wbJ3szyPyop/K+Et3pHTB+UGCwSE9N4kLZ1WlmZbJ6sEB24bRb7CtPGZZjojoCNru7siwJWoUsp0b1+VGmlSLEXp28UB8/KrMFpreL4sblp6vcFaDQCaCY3jmPZ0pxC6i3OMrtxKvpAOO+s/NQfcblZcv9xwCAG9clIT8TitFDRwvzasB0fakutOOud9akHZT9KHPl47cjDyeYUmL9GcSmav6gZP1C/ul4vkhHvcZFV1L5pDaEDivB57RoJeEf2NOBxq7qletVgEDoiNdEzwiZwDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xDfNJ2srGE5TenUbU3W3uEHwrjBXbC6ENMK5xmyZH8g=;
 b=ZpOpBHn/4cBP7Nw6FPKGSWifja30EejTjmmtLl3Hb36Gcve3dKe+lyzwN7J22VlVZZIOtOTbidFifz3pXLkoR5pBPRajgnqOQqDO7iqASQOGqU0VEWOK/7sntEAKAOe5YDBPCU4zh9GXrvx5XDiiKOAiciCEjJk+zuR+SC2Vk9zg5FrZU0UPxqNZTOPnrkwdZ0kELelbWzYmawsm4YyHb1zD8HmQXaXFEVGZfeY+5JUbQ533/+pihBRQyq9EJAHWoWoakZSENq6pAuvJRPg0sU8yQtjZd32cJwzSciYsgVena4d1NclAz25+RYSRY9y4AknLKMCYbpSemQrFs664jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=gmail.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xDfNJ2srGE5TenUbU3W3uEHwrjBXbC6ENMK5xmyZH8g=;
 b=KJV0/Bk/lfk5Fz9e1R/f75N74lQpj1ooBmwqAmpYq//5X7Jwn33ILSa0maOrirJlvp3FTFRDsFbdjF2UR9lUZTdqosm7f+N0C8v669aEjgZWWk0irvG+omEnivi4xOfStZFVfh0U9HohXndIypZLGLRWoIZK6WBIuC0+f9Q281U=
Received: from MN2PR02CA0002.namprd02.prod.outlook.com (2603:10b6:208:fc::15)
 by SN6PR02MB4094.namprd02.prod.outlook.com (2603:10b6:805:39::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.29; Tue, 5 May
 2020 07:14:53 +0000
Received: from BL2NAM02FT005.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:fc:cafe::26) by MN2PR02CA0002.outlook.office365.com
 (2603:10b6:208:fc::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20 via Frontend
 Transport; Tue, 5 May 2020 07:14:53 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT005.mail.protection.outlook.com (10.152.76.252) with Microsoft SMTP
 Server id 15.20.2958.27 via Frontend Transport; Tue, 5 May 2020 07:14:52
 +0000
Received: from [149.199.38.66] (port=54796 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jVrmv-0007a8-TN; Tue, 05 May 2020 00:14:45 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jVrn2-0001cI-Gr; Tue, 05 May 2020 00:14:52 -0700
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 0457EjUK024881; 
 Tue, 5 May 2020 00:14:45 -0700
Received: from [172.30.17.109] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1jVrmu-0001bc-QE; Tue, 05 May 2020 00:14:45 -0700
Subject: Re: [PATCH] firmware: xilinx: Export zynqmp_pm_fpga_{get_status, load}
To: Nathan Chancellor <natechancellor@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20200502025958.2714249-1-natechancellor@gmail.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <7233c16b-1b00-b453-3c08-5b5b85432461@xilinx.com>
Date: Tue, 5 May 2020 09:14:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200502025958.2714249-1-natechancellor@gmail.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(136003)(396003)(346002)(376002)(39860400002)(46966005)(33430700001)(44832011)(82310400002)(9786002)(2906002)(186003)(478600001)(26005)(356005)(31696002)(5660300002)(81166007)(2616005)(8936002)(110136005)(316002)(8676002)(82740400003)(36756003)(47076004)(31686004)(4326008)(426003)(70586007)(33440700001)(70206006)(336012)(6666004);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a6c6d1e8-01c4-40ed-9c68-08d7f0c401b7
X-MS-TrafficTypeDiagnostic: SN6PR02MB4094:
X-Microsoft-Antispam-PRVS: <SN6PR02MB4094DAB93D81BB12D5B1E1F0C6A70@SN6PR02MB4094.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:1247;
X-Forefront-PRVS: 0394259C80
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZnmI2D8wl+uW39RZDOLIBU16xza53JMxHoHafAlfQGIixte85GX6sz5MpKyCqbcBXM8/wFL4groCPGslVirpSO3Wi3NSPmUPO3gQwEeOJ8JqOTTDjRsHvKAPMk/QKT/riJPAw54rMAS2S0311iiUnJPdBGPB0sL7BKwLz99o0ioZwPtVxPkR3CCeoCrGIyVg+BTXfOMl37XP6NM6SDKg/e1D1vVUiDbf/6esCe/Tb39PQBDikI3kTuxm62lpeEUIlcSl6gf+doLgWOq93pce/O224Wu3WihD+0qH2+pRPTgmCjW/ZHqe1ScHiYc7rSlM2GjCfEvsAbx8fPmLm9yqLwqgGBHCyhHOuqNzfj1HHXfUH5Ku3c07SCo4yHx7/7wxECrf1E70CBJMUQIdTv0i+HvDknqTy3JJiWUKUdV4a9a4LKubvFE99P09uOJ+RgkqrLDE4iXxYWEALew/SziO7Q0JecmEhH5tH0+2oncQDpLWtcbbMwXAVuR23nIZKqj47vl2EXJm7udZVEeFalaqPpLNAMBSWhu7VCIlDV0rEsGaqN6kLSv7ncWS8T/CmajeMhncDM7FOtDqUJGeuBL9bg==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2020 07:14:52.9211 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a6c6d1e8-01c4-40ed-9c68-08d7f0c401b7
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_001503_227868_C02A1CCF 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.58 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.76.58 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02. 05. 20 4:59, Nathan Chancellor wrote:
> When building arm64 allmodconfig:
> 
> ERROR: modpost: "zynqmp_pm_fpga_load" [drivers/fpga/zynqmp-fpga.ko] undefined!
> ERROR: modpost: "zynqmp_pm_fpga_get_status" [drivers/fpga/zynqmp-fpga.ko] undefined!
> 
> These functions were added to drivers/fpga/zynqmp-fpga.c but not
> exported so the module build breaks. Export them so that they can be
> used in modules properly.
> 
> Fixes: 4db8180ffe7c ("firmware: xilinx: Remove eemi ops for fpga related APIs")
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/firmware/xilinx/zynqmp.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
> index bfaf29a58eac..8095fa84d5d7 100644
> --- a/drivers/firmware/xilinx/zynqmp.c
> +++ b/drivers/firmware/xilinx/zynqmp.c
> @@ -755,6 +755,7 @@ int zynqmp_pm_fpga_load(const u64 address, const u32 size, const u32 flags)
>  	return zynqmp_pm_invoke_fn(PM_FPGA_LOAD, lower_32_bits(address),
>  				   upper_32_bits(address), size, flags, NULL);
>  }
> +EXPORT_SYMBOL_GPL(zynqmp_pm_fpga_load);
>  
>  /**
>   * zynqmp_pm_fpga_get_status - Read value from PCAP status register
> @@ -778,6 +779,7 @@ int zynqmp_pm_fpga_get_status(u32 *value)
>  
>  	return ret;
>  }
> +EXPORT_SYMBOL_GPL(zynqmp_pm_fpga_get_status);
>  
>  /**
>   * zynqmp_pm_init_finalize() - PM call to inform firmware that the caller
> 
> base-commit: fb9d670f57e3f6478602328bbbf71138be06ca4f
> 

Acked-by: Michal Simek <michal.simek@xilinx.com>

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
