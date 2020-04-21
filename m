Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A5E1B1E5A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 07:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6f0nigVdfHAgvDu5uae/UHq5aj+KfOYUXfqDZjRhS8w=; b=PRsyWuNvyljbmX
	kdGn7fNFwYyl2Im6WObb/76DV8eziwu+wlxh/9z8ncq+KH2FK5zkEuQxkHoQjsEwMibaV/XnomQxB
	H97r1esYBLf819P/72Onnyavw7OxCalCSJjci4v6cEYWJWkJwSII5LK9Pd+Wg2kIA6YaNq1Mjl3QQ
	feg6QUa2KQs3us3BjCwnMQOzWyxyECBoPL+LpjeBppDBM4CycUy+mruV79FriVMrAjxCNwub2twxk
	/hQ8T4HvUBRm0Cgyca52/rYSaUfBGjNwv5buV/6kkxe91LOczHXW8fDswHv5nG672GOHHwaHDPYpP
	gJohtYkWf/zvuzgso2Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQlnc-0001SI-8X; Tue, 21 Apr 2020 05:50:24 +0000
Received: from mail-cys01nam02on061a.outbound.protection.outlook.com
 ([2a01:111:f400:fe45::61a]
 helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQlnR-0001R1-2f
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 05:50:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aavr3PIgtDVwAv3e2v16DL5OtIw/PBYJGnlA1F909G9hUQYvQC3aVxFlxuy2jNWHKCCMCFo9V1n+/lX7sUJGwwBvF8708qYY9PnOe/aMhD2Xfu/RUEQ7140C2qu9AO1DdpmRPxTSsz5bj77qoF/UgjGi3r0oRoa/mbNMXGBj8TZ3VyNcc3KzOdGcHls2l7cR+EKzo6rI1r/xh6FHohad1aKVtDLZlKzxQtnWOIzL5UTkjMrLp2N1ocGUvpl9VXBq3sK8qD0wnKQzrpFj1hLXa+IWfAmf2c7kVFFTUNFD1IycTATydV+g5plC2psQzd/imCaIK4sEsIj2LFgErDFcng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DeGzDoYIgl6pGtOWkf6R9UgUgjo1DscocAF//6bs+/I=;
 b=l4l1sCufddJFo+LV5nU/zBg0r/8l1HblcYB6hNOGZ+GtRP2pC0n58OQHoE/jFdOuG+3vjGr7031yrXIxW4QxER3AsCsPJumhuBU4QeztTbtRZWqMvvzbCI4y5NlNXhTxHHDRTx3M34wzXcdG4x2u5w6yll8qva8KvIfJsaoFkks43Id3WSx7+zhq7KBWpBcn+eBCW0IQ8DePp1WVAW7ZgpPNl3l6UZR8VAkNaBFFUZkoVNCwM2K/hllNXlUoMfaZt7iEVXXFyBxWbeOqURUUXlB8BgpqoXMRxHkjkirCmMkcquX3UDbCfVbTrcz2G6Vs1bOaIwYULQXV5E7HF731EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DeGzDoYIgl6pGtOWkf6R9UgUgjo1DscocAF//6bs+/I=;
 b=WBKwMrSqGTck84yRO+D2W3sqju2V3gF3QvwihEg3QA2JeJRPb4le5MTur5TloZVpGq2fQmdpwgShWACbrTJZSEHFsGaEOvTpza6uKi9Ur9VR9BC5TXD3Y5LQcIHdbRdkpvFY+qMr8SDfSudz/72soaB/sQo5ETmcUeuDlXoi6tg=
Received: from BL0PR0102CA0024.prod.exchangelabs.com (2603:10b6:207:18::37) by
 DM5PR02MB3670.namprd02.prod.outlook.com (2603:10b6:4:b5::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.29; Tue, 21 Apr 2020 05:50:09 +0000
Received: from BL2NAM02FT004.eop-nam02.prod.protection.outlook.com
 (2603:10b6:207:18:cafe::3e) by BL0PR0102CA0024.outlook.office365.com
 (2603:10b6:207:18::37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25 via Frontend
 Transport; Tue, 21 Apr 2020 05:50:09 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT004.mail.protection.outlook.com (10.152.76.168) with Microsoft SMTP
 Server id 15.20.2921.25 via Frontend Transport; Tue, 21 Apr 2020 05:50:09
 +0000
Received: from [149.199.38.66] (port=36988 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jQlmO-0007MR-QX; Mon, 20 Apr 2020 22:49:08 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jQlnM-0005sa-SE; Mon, 20 Apr 2020 22:50:08 -0700
Received: from [172.30.17.109] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1jQlnG-0005KY-4I; Mon, 20 Apr 2020 22:50:02 -0700
Subject: Re: [PATCH v3 1/5] firmware: xilinx: Add ZynqMP firmware ioctl enums
 for RPU configuration.
To: Ben Levinsky <ben.levinsky@xilinx.com>, ohad@wizery.com,
 bjorn.andersson@linaro.org, michal.simek@xilinx.com, jollys@xilinx.com,
 rajan.vaja@xilinx.com, robh+dt@kernel.org, mark.rutland@arm.com
References: <1587421629-914-1-git-send-email-ben.levinsky@xilinx.com>
 <1587421629-914-2-git-send-email-ben.levinsky@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <981c3bec-5d38-ad63-d4e8-9004f7436b02@xilinx.com>
Date: Tue, 21 Apr 2020 07:49:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1587421629-914-2-git-send-email-ben.levinsky@xilinx.com>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(346002)(39860400002)(136003)(396003)(46966005)(966005)(36756003)(8676002)(478600001)(81156014)(81166007)(31696002)(8936002)(31686004)(9786002)(70206006)(70586007)(26005)(356005)(47076004)(44832011)(2616005)(336012)(4326008)(316002)(2906002)(5660300002)(82740400003)(6666004)(186003)(426003);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 99bc3d2a-a44e-4eae-abce-08d7e5b7d9e9
X-MS-TrafficTypeDiagnostic: DM5PR02MB3670:
X-Microsoft-Antispam-PRVS: <DM5PR02MB367097710DA4223D808FBF7CC6D50@DM5PR02MB3670.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2803;
X-Forefront-PRVS: 038002787A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: taG1yMnZFaL9b8S6Qo/G8SkvkwxrUDhT486ELeNlHn84bAUnBCjHFJBzy+XWP1DpKvgaJCJPUNklKbuJCxY+LlsNvLlwwjrmp75rsdSRU4h5XzLfbiQjXrUHrBgCBIIvbw7EAJkZMzU0cXCatkrEQsyMqdqeeeMKZE7au0zvcgRw1vcbPf16NPQR8cr/9X5/Nnxg/K4ccgh4CCgyEdPv07TpZ03FA/Jc1ByJRAgh427f8oxIAkCsTi0Ohd1+KZqPc+dY9SvxxTPf0SGeLxWKtGGF7zYm6gFaRd9J6H+1Nlrb6MzIlwMbXXiKZRKcMbdCx1Cu4bYzdu+wRGisC7urhGY+w60scf+irg/oJqfb0stNrO6zOF2S/dKU5NeCejUQ5NpnN3h+pUTTE9Otq5ECcVwhwLbrb6Y+bEakM56h8J8+Ic3LEQoDFaHZDNePMf3mL8lKjmHHLMpwJIuChcsrShVHTlXaAfT7/IcAmLAp1mWZR7SiOJJIttRJUVz9tdqx275VQFAOF6q+g5SOwpVIAwYMlwV23BfeCZoIXjjZolp3qr/+c4xpZvz83M3Vaw46fK5Ss223GI8MI6KYdqPfhg==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2020 05:50:09.3840 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 99bc3d2a-a44e-4eae-abce-08d7e5b7d9e9
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB3670
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_225013_139573_A346EA49 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe45:0:0:0:61a listed in]
 [list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21. 04. 20 0:27, Ben Levinsky wrote:
> Add ZynqMP firmware ioctl enums for RPU configuration.
> 
> Signed-off-by: Ben Levinsky <ben.levinsky@xilinx.com>
> ---
>  include/linux/firmware/xlnx-zynqmp.h | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
> index 5968df8..074ad71 100644
> --- a/include/linux/firmware/xlnx-zynqmp.h
> +++ b/include/linux/firmware/xlnx-zynqmp.h
> @@ -104,6 +104,10 @@ enum pm_ret_status {
>  };
>  
>  enum pm_ioctl_id {
> +	IOCTL_GET_RPU_OPER_MODE = 0,
> +	IOCTL_SET_RPU_OPER_MODE,
> +	IOCTL_RPU_BOOT_ADDR_CONFIG,
> +	IOCTL_TCM_COMB_CONFIG,
>  	IOCTL_SD_DLL_RESET = 6,
>  	IOCTL_SET_SD_TAPDELAY,
>  	IOCTL_SET_PLL_FRAC_MODE,
> @@ -129,6 +133,21 @@ enum pm_query_id {
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


Greg has been asking to assign values to all enums.

Take a look at this thread.
https://lore.kernel.org/linux-arm-kernel/20200318125003.GA2727094@kroah.com/

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
