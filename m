Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F04B1829CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 08:32:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GX1COCbLaRsUIMsU6DRRBwiTs0DMORfKDlG/ykqpeXY=; b=msDE02d+IwSPuM
	NXHOFhqf+hMIJCkcat7w7HFog4Yyd+3LP+9k4sncFXOXoifP/A9zy3YV9Xvn3Loh8IQNuPtvjZZHF
	h4gkpOEURfC+e6IUwf3j0N5la/kYyZcSTKpMYyIzp78j5c7kq/LbDG0j5EjyEuJCOZ3yPgon1pBBj
	6fQkCGKyiFl54VgUUBXrVX5luwq7wHP2F5WnG4NxGVoU9mZTsqA1D3D6/u2j+vNIqYGdg46SSX/bV
	qAosmao8CIPhiYkiarDfb7yhu7YU0OKm+sLzRms3uESLqfLoAHjLvXaNysWJGDA0QGdVP565GFKcq
	/RHeAbaNMlzpueSsRnnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCIKX-0001ob-9a; Thu, 12 Mar 2020 07:32:33 +0000
Received: from mail-mw2nam12on2083.outbound.protection.outlook.com
 ([40.107.244.83] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCIKN-0001nj-FC
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 07:32:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yxb0r/bBgrJpqzin2Amp9Byd8aLI7AzMpYri41wm7VaSQlDvow1zqjQxHRjM8Wkd1eEAvn3nvWLHQuGh6gsX9my0Ix/s03iua+XfX7x8KXqYnaXOuilxKB0pAysAhL6cKDAbW8pPd9VjYdl6Q71EG+2AbQOZ25MyG7yLKHroUp1ukNcTsHKCcBEjrKXZFV0YzeXj/aVjS2yobFHGinLHo94lU7Sh++i+5+xBq77UlzPZeyhlFkOuYEcJJ2O/fs88paLq0w/bdB+iL/pOPaC+GBo7dkrOviYdgjpRiczhTpvEyoXlzSp/OcJkXIJUucK2m/uYvfr+bI6kkQfhQMaVkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ILKe4tO3bnfssvWnx/3cUr+LFaZe92AjLpSYHCCSs5w=;
 b=liv76c1C4BaIQSSZ8J1KERLOJk2ywBhrKFj9VN3plngsGkTi34jq9eaSKAHvnWPoGGtmKxbkkxCqDjHy5BUxRoLFD57RHkiUGZY+7U96iPjqRcaj9ATG76HrnMsls+VY5npnBiHDDIB4G31/LBIQGUmtPVdaGjkIoeeAnSHG2OTsfdcZq8ztTBxRh0wgaIjYoBIVodqqaVj8entpSL3kZlKApa6PtOyc3WOZE7GuQANbLsQJqvgUj/OFj1/cccjlCBLhLtzGcv5OZlYuKXaSed5HhzDCsBn9trAx+Cq7p3EYIcM/JzaGpLocEIyIWOgOkyYCQ0W5utcNl7LBHnQTow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ILKe4tO3bnfssvWnx/3cUr+LFaZe92AjLpSYHCCSs5w=;
 b=AwuxN5z7vslCRCVx/pwHv4UxsV1D7vDrVDFxEC1+9cwMm0ZhsZoP0K9ep8TF3BtgNEOILSvrQypExpK+r45Aa0M945khcJsAf7rUdiPHfxF9nE50pXHCuolP5czoffdCNYe9B0/fh5K2q57ejU07FYnP5OZAZyspBgK/1S7PB2E=
Received: from DM6PR08CA0018.namprd08.prod.outlook.com (2603:10b6:5:80::31) by
 DM6PR02MB4410.namprd02.prod.outlook.com (2603:10b6:5:1e::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Thu, 12 Mar 2020 07:32:20 +0000
Received: from CY1NAM02FT020.eop-nam02.prod.protection.outlook.com
 (2603:10b6:5:80:cafe::9f) by DM6PR08CA0018.outlook.office365.com
 (2603:10b6:5:80::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.16 via Frontend
 Transport; Thu, 12 Mar 2020 07:32:19 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT020.mail.protection.outlook.com (10.152.75.191) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2814.13
 via Frontend Transport; Thu, 12 Mar 2020 07:32:19 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jCIKJ-0008Ln-A1; Thu, 12 Mar 2020 00:32:19 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jCIKE-0003Fh-78; Thu, 12 Mar 2020 00:32:14 -0700
Received: from [172.30.17.108] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1jCIK4-0003DC-JB; Thu, 12 Mar 2020 00:32:04 -0700
Subject: Re: [PATCH 1/5] firmware: xilinx: Add ZynqMP firmware ioctl enums for
 RPU configuration.
To: Ben Levinsky <ben.levinsky@xilinx.com>, ohad@wizery.com,
 bjorn.andersson@linaro.org, michal.simek@xilinx.com, jollys@xilinx.com,
 rajan.vaja@xilinx.com, robh+dt@kernel.org, mark.rutland@arm.com
References: <1582566751-13118-1-git-send-email-ben.levinsky@xilinx.com>
 <1582566751-13118-2-git-send-email-ben.levinsky@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <4d95f021-c3cc-3238-665d-8d5825c6a123@xilinx.com>
Date: Thu, 12 Mar 2020 08:32:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1582566751-13118-2-git-send-email-ben.levinsky@xilinx.com>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(346002)(376002)(396003)(199004)(356004)(426003)(478600001)(9786002)(8676002)(31686004)(36756003)(81166006)(8936002)(4326008)(70586007)(6666004)(81156014)(70206006)(186003)(31696002)(316002)(2616005)(26005)(336012)(5660300002)(44832011)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4410; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d8a0345e-4862-4ac9-afde-08d7c6577f6c
X-MS-TrafficTypeDiagnostic: DM6PR02MB4410:
X-Microsoft-Antispam-PRVS: <DM6PR02MB44103B4529EEA8FAD9606DC3C6FD0@DM6PR02MB4410.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:525;
X-Forefront-PRVS: 0340850FCD
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: juEt3ycHiV2q6n/SKCuAIGDPZhhPglb7da2gee+MzGlhTt6drCevMJblJKmkiyLczOCBD8yPCh12e8IPpCyt5dkV+M6a0FAp0yQbBMaWKXXEj0lJ8248fnSrfFqGm4nAeKWLBQC9LPw167XP1bb8IeLJehG29JrFJnMfRS/ngHeTcOXSW0wQmNY0ZFVOvGQUk/3som5T5jLGIQAJneHiOpdCe9u3rT8vytDw+5lZv8ouXzYndqwV5hxjXCpciwlQUPrAZNkx4bwGz+b6z514NmJiGIc6xc8HuJEkn8MawFWg1ED0Iz3IetIRQiJ3qoJlxnCHoO2imB/XpHf87VN1GsDwN5D5+5evhn+xNfHBXTRN/2220OgjArCKcrpLlixyZp5jGW1GBQY/EbxCELfSssO7MZ6vqj/hiDh071uSiUqLkopoLmIG3MvlLzeSDiZy
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 07:32:19.7187 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d8a0345e-4862-4ac9-afde-08d7c6577f6c
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4410
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_003223_517434_7E9356DA 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.83 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24. 02. 20 18:52, Ben Levinsky wrote:
> Add ZynqMP firmware ioctl enums for RPU configuration.
> 
> Signed-off-by: Ben Levinsky <ben.levinsky@xilinx.com>
> ---
>  drivers/firmware/xilinx/zynqmp.c     |  4 ++++
>  include/linux/firmware/xlnx-zynqmp.h | 19 +++++++++++++++++++
>  2 files changed, 23 insertions(+)
> 
> diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
> index ecc339d..20e4574 100644
> --- a/drivers/firmware/xilinx/zynqmp.c
> +++ b/drivers/firmware/xilinx/zynqmp.c
> @@ -512,6 +512,10 @@ static int zynqmp_pm_clock_getparent(u32 clock_id, u32 *parent_id)
>  static inline int zynqmp_is_valid_ioctl(u32 ioctl_id)
>  {
>  	switch (ioctl_id) {
> +	case IOCTL_GET_RPU_OPER_MODE:
> +	case IOCTL_SET_RPU_OPER_MODE:
> +	case IOCTL_RPU_BOOT_ADDR_CONFIG:
> +	case IOCTL_TCM_COMB_CONFIG:
>  	case IOCTL_SET_PLL_FRAC_MODE:
>  	case IOCTL_GET_PLL_FRAC_MODE:
>  	case IOCTL_SET_PLL_FRAC_DATA:
> diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
> index 2cd12eb..b8ca118 100644
> --- a/include/linux/firmware/xlnx-zynqmp.h
> +++ b/include/linux/firmware/xlnx-zynqmp.h
> @@ -100,6 +100,10 @@ enum pm_ret_status {
>  };
>  
>  enum pm_ioctl_id {
> +	IOCTL_GET_RPU_OPER_MODE = 0,
> +	IOCTL_SET_RPU_OPER_MODE,
> +	IOCTL_RPU_BOOT_ADDR_CONFIG,
> +	IOCTL_TCM_COMB_CONFIG,
>  	IOCTL_SET_SD_TAPDELAY = 7,
>  	IOCTL_SET_PLL_FRAC_MODE,
>  	IOCTL_GET_PLL_FRAC_MODE,
> @@ -118,6 +122,21 @@ enum pm_query_id {
>  	PM_QID_CLOCK_GET_MAX_DIVISOR,
>  };
>  
> +enum rpu_oper_mode {
> +	PM_RPU_MODE_LOCKSTEP,
> +	PM_RPU_MODE_SPLIT,
> +};
> +
> +enum rpu_boot_mem {
> +	PM_RPU_BOOTMEM_LOVEC,
> +	PM_RPU_BOOTMEM_HIVEC,
> +};
> +
> +enum rpu_tcm_comb {
> +	PM_RPU_TCM_SPLIT,
> +	PM_RPU_TCM_COMB,
> +};
> +
>  enum zynqmp_pm_reset_action {
>  	PM_RESET_ACTION_RELEASE,
>  	PM_RESET_ACTION_ASSERT,
> 

This is fine.

M

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
