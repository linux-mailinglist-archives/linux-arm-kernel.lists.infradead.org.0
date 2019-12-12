Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E0211D070
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 16:04:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kXfOYiKkjiAJhbFIVG6zHm1JjDOEDTGDTiCIrciK/UQ=; b=j1MzVVUP9pDqVn
	YlC7XBOUnGnd4WXPtH5hLBziNq5dbH8ydisl38SXAycZOmw2TcIXQNvwsqchnBYhb17CaAGUJP+9u
	J35dapX3EbnJCjOip1Mzc7nDugNh8v0mx/cKqSEoUyNXyO7p6QwB9Q8TpvVSxhTjkxjcbhdlZiUsq
	HFkYxijPjkPFOx3uwKE9naHKIb9DDZDwUE+ozoeIqDz9nL7/lSK75SyoUNt/ESx/mr994pUEl3Xs7
	LyyOLGUZnhTJp1GtRW/LJoo5KFmcY1mk/sJjDDou2VLVLycN9D3XMD+R5w0dRuB1Hfs7wTqPksXvS
	wOtAirkuX7HAi/dxv/8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifQ0P-0000VZ-Se; Thu, 12 Dec 2019 15:03:53 +0000
Received: from mail-mw2nam10on2066.outbound.protection.outlook.com
 ([40.107.94.66] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifQ0C-0000Uz-F4
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 15:03:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IExOKWh8WVqn1vAlf+cxhdqlE0ergSMStnHJ+LwdVed5ypQghBzjlRdfXw00xmBIVsqQ/QLnh8YKPKZvR9jLzOo+zK2MOycMF99tVWcnQvhDuGI9Y7/s5qgoYYPmRD2sFZWABLMTep7Ka0kqjSYtC9c1NfB3zA+nvt7Ds36Ypq1a9p/h3o8qxgAr4w2N0BpuZOcGg65BuVX/zAJqi/DGO72jiJDAXyGg9UWTZbMZeEv0PuYkmH22SiGB2qNH4VyIde5gzUQ2nDy2Ivvt3G/gcwdOKkJMs8pNLSa4HytXfcTaKAXMXU71uDXumoVwt7zYyv4iMIivu43Py/JQJdF9EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gvVrog+wMb1sRP+Fa+HMIDvcHtPSER5O7VDicflThd8=;
 b=Uuf+z0lUTre5urbcHlpZn0fzEBbVDBwfbw7mF/2WkuN7Pj5aKNppnlUlTAQj/i8p4sux0NNCxF5ybWFbe1pBXy2kExn7JjGtM4+hnSfz9mZ4ke426ZG2AD69EkAOV4xjrukSOf6m+ZTCglrqxTX4I8vZcI8K+kEsmqrFBnfHJYYLsS5gZsK11Kadba7TH/NvgoKE3zNpYm0XsPLZplodpDjw/IxXSuKoxgZoGdfoVdBRqWVxZHFQYh6BWlN41NoT2L603K+KLq/tn+u2U3uK9vu7/qupnqdku9WfZYcvTOJl2hdnn0mGxCPy9hY5QxaYO5gDnQDhrk4A5QjHYSzvpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gvVrog+wMb1sRP+Fa+HMIDvcHtPSER5O7VDicflThd8=;
 b=VOAsVCjy6xYthZkGX1HxKD0tGcOgxE2g2PqDFpJOPHK9Rc2EcxWK5GApjoGYEs4K2MKXPvmx9452DPrwiJVzIt92xMH8XuqMw0hvMgr1q1qBDFVbhayzgortZbLh20AIe4vQJj2Zl8ho8h5xAFUNHyW22pqZERBX2pww7TZW0n8=
Received: from BL0PR02CA0031.namprd02.prod.outlook.com (2603:10b6:207:3c::44)
 by BN8PR02MB5793.namprd02.prod.outlook.com (2603:10b6:408:bb::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.18; Thu, 12 Dec
 2019 14:48:16 +0000
Received: from BL2NAM02FT038.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::208) by BL0PR02CA0031.outlook.office365.com
 (2603:10b6:207:3c::44) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.15 via Frontend
 Transport; Thu, 12 Dec 2019 14:48:16 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT038.mail.protection.outlook.com (10.152.77.25) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2538.14
 via Frontend Transport; Thu, 12 Dec 2019 14:48:16 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ifPlH-000857-FV; Thu, 12 Dec 2019 06:48:15 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ifPlC-0001oh-Dx; Thu, 12 Dec 2019 06:48:10 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xBCEm5fF027749; 
 Thu, 12 Dec 2019 06:48:05 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1ifPl7-0001nx-KY; Thu, 12 Dec 2019 06:48:05 -0800
Subject: Re: [PATCH] drivers: firmware: xilinx: Add support for feature check
To: Rajan Vaja <rajan.vaja@xilinx.com>, michal.simek@xilinx.com,
 jolly.shah@xilinx.com, nava.manne@xilinx.com, ravi.patel@xilinx.com,
 tejas.patel@xilinx.com
References: <1573547755-4779-1-git-send-email-rajan.vaja@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <ab4c85ad-5574-b287-ca5c-b41c21707917@xilinx.com>
Date: Thu, 12 Dec 2019 15:48:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1573547755-4779-1-git-send-email-rajan.vaja@xilinx.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(199004)(189003)(2906002)(498600001)(70206006)(36756003)(70586007)(356004)(6666004)(2616005)(31686004)(186003)(9786002)(4326008)(6636002)(5660300002)(8676002)(336012)(426003)(44832011)(31696002)(81156014)(81166006)(26005)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN8PR02MB5793; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8accfcd1-4e45-41b4-8bf2-08d77f125246
X-MS-TrafficTypeDiagnostic: BN8PR02MB5793:
X-Microsoft-Antispam-PRVS: <BN8PR02MB5793108BF0D8911BF28EA452C6550@BN8PR02MB5793.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0249EFCB0B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4JYoJTe99+ge+Y7r6/V+I6Sx2QUnwvD8VpgFIfFB/2v5uhX0ygkS+fKHzlFWctX/+OE5HDScvJKGxzG8SPIVkZWbbf4JNoLSFqxSxx4+MLodrXEoo2TqIXtxnY1qOaKjsKyFwz8fb2OMoI9fC+83O7lrWvT+ygZhP6WgBvNtuiT17CSPUH/VRo1zr75YFXYPaNxDC65NgwLuUadDvCeXmbHIBsSHFcmFhWS4r2VrnFLOBSk1CnBAPcfbh9vkzdQiZS3SJj3XiFs12eJMqs5o4dR480xMfKCrI8bR4/rYuorXamsby7XMOvkxv6d+tS4EaVeMutnHtdc0H9fzU9UF67Z2jeVl+lx4Qws3wo75f11wrC7KVwHnUnQUkOLH849H01kv9Zdq1dDznv7gQTezfiTC+cS6RrRXJZiY+QIW9McL8CZOiRkg0UmhTvahi5J+
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2019 14:48:16.0286 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8accfcd1-4e45-41b4-8bf2-08d77f125246
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR02MB5793
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_070340_510378_A8726112 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.66 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12. 11. 19 9:35, Rajan Vaja wrote:
> From: Ravi Patel <ravi.patel@xilinx.com>
> 
> Query for corresponding feature before calling EEMI API
> from the driver.
> 
> Signed-off-by: Ravi Patel <ravi.patel@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> ---
>  drivers/firmware/xilinx/zynqmp.c     | 43 ++++++++++++++++++++++++++++++++++++
>  include/linux/firmware/xlnx-zynqmp.h |  7 ++++++
>  2 files changed, 50 insertions(+)
> 
> diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
> index 74d9f13..ecc339d 100644
> --- a/drivers/firmware/xilinx/zynqmp.c
> +++ b/drivers/firmware/xilinx/zynqmp.c
> @@ -26,6 +26,9 @@
>  
>  static const struct zynqmp_eemi_ops *eemi_ops_tbl;
>  
> +static bool feature_check_enabled;
> +static u32 zynqmp_pm_features[PM_API_MAX];
> +
>  static const struct mfd_cell firmware_devs[] = {
>  	{
>  		.name = "zynqmp_power_controller",
> @@ -44,6 +47,8 @@ static int zynqmp_pm_ret_code(u32 ret_status)
>  	case XST_PM_SUCCESS:
>  	case XST_PM_DOUBLE_REQ:
>  		return 0;
> +	case XST_PM_NO_FEATURE:
> +		return -ENOTSUPP;
>  	case XST_PM_NO_ACCESS:
>  		return -EACCES;
>  	case XST_PM_ABORT_SUSPEND:
> @@ -129,6 +134,39 @@ static noinline int do_fw_call_hvc(u64 arg0, u64 arg1, u64 arg2,
>  }
>  
>  /**
> + * zynqmp_pm_feature() - Check weather given feature is supported or not
> + * @api_id:		API ID to check
> + *
> + * Return: Returns status, either success or error+reason
> + */
> +static int zynqmp_pm_feature(u32 api_id)
> +{
> +	int ret;
> +	u32 ret_payload[PAYLOAD_ARG_CNT];
> +	u64 smc_arg[2];
> +
> +	if (!feature_check_enabled)
> +		return 0;
> +
> +	/* Return value if feature is already checked */
> +	if (zynqmp_pm_features[api_id] != PM_FEATURE_UNCHECKED)
> +		return zynqmp_pm_features[api_id];
> +
> +	smc_arg[0] = PM_SIP_SVC | PM_FEATURE_CHECK;
> +	smc_arg[1] = api_id;
> +
> +	ret = do_fw_call(smc_arg[0], smc_arg[1], 0, ret_payload);
> +	if (ret) {
> +		zynqmp_pm_features[api_id] = PM_FEATURE_INVALID;
> +		return PM_FEATURE_INVALID;
> +	}
> +
> +	zynqmp_pm_features[api_id] = ret_payload[1];
> +
> +	return zynqmp_pm_features[api_id];
> +}
> +
> +/**
>   * zynqmp_pm_invoke_fn() - Invoke the system-level platform management layer
>   *			   caller function depending on the configuration
>   * @pm_api_id:		Requested PM-API call
> @@ -162,6 +200,9 @@ int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
>  	 */
>  	u64 smc_arg[4];
>  
> +	if (zynqmp_pm_feature(pm_api_id) == PM_FEATURE_INVALID)
> +		return -ENOTSUPP;
> +
>  	smc_arg[0] = PM_SIP_SVC | pm_api_id;
>  	smc_arg[1] = ((u64)arg1 << 32) | arg0;
>  	smc_arg[2] = ((u64)arg3 << 32) | arg2;
> @@ -717,6 +758,8 @@ static int zynqmp_firmware_probe(struct platform_device *pdev)
>  		np = of_find_compatible_node(NULL, NULL, "xlnx,versal");
>  		if (!np)
>  			return 0;
> +
> +		feature_check_enabled = true;
>  	}
>  	of_node_put(np);
>  
> diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
> index 74d710d..f0d4558 100644
> --- a/include/linux/firmware/xlnx-zynqmp.h
> +++ b/include/linux/firmware/xlnx-zynqmp.h
> @@ -48,6 +48,10 @@
>  #define	ZYNQMP_PM_CAPABILITY_WAKEUP	0x4U
>  #define	ZYNQMP_PM_CAPABILITY_UNUSABLE	0x8U
>  
> +/* Feature check status */
> +#define PM_FEATURE_INVALID		-1
> +#define PM_FEATURE_UNCHECKED		0
> +
>  /*
>   * Firmware FPGA Manager flags
>   * XILINX_ZYNQMP_PM_FPGA_FULL:	FPGA full reconfiguration
> @@ -78,11 +82,14 @@ enum pm_api_id {
>  	PM_CLOCK_GETRATE,
>  	PM_CLOCK_SETPARENT,
>  	PM_CLOCK_GETPARENT,
> +	PM_FEATURE_CHECK = 63,
> +	PM_API_MAX,
>  };
>  
>  /* PMU-FW return status codes */
>  enum pm_ret_status {
>  	XST_PM_SUCCESS = 0,
> +	XST_PM_NO_FEATURE = 19,
>  	XST_PM_INTERNAL = 2000,
>  	XST_PM_CONFLICT,
>  	XST_PM_NO_ACCESS,
> 

Applied to zynqmp/soc branch and queue to v5.6.

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
