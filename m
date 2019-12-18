Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3345E124975
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 15:25:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fH0KguNnk9nWb9rmWIpVl32CckW4B8xkpzRHLf45F9k=; b=IfOl1W+StFRAgc
	j+Cz2lj8VcfEMwnCcZRoyRR5d0iCrlsefboxnQyST5LkBdPS4BFJezHwxu4t+JjQLqH0Stz7gh5kp
	7e4FX5r3N9wzxS0YfpMB9mQvuucsCofga0Be++6vwDqpy1Fv1snD4XA6tEJbZfKhYROFD0zxYpRhV
	Gc+7VNckQXgOzLogKs50gCXCexkomNq7CKEuzglHdRSXARTHUc2Q+YoZ9tULqdOPOoZ1HfuyzpwBq
	uLzs9XXQHPj5r43R/2hjrxfrDFGfB7VfKdlKSwAnR88rsyy/XDsnFCX8sTRHImDU4N2Gm5GcDSEHD
	uA9GX2dDkCcbDhjMLeBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihaG4-0001Uv-F2; Wed, 18 Dec 2019 14:25:00 +0000
Received: from mail-dm6nam10on2061f.outbound.protection.outlook.com
 ([2a01:111:f400:7e88::61f]
 helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihaFo-0001T2-8U
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 14:24:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DhbfH0toYIhneTdD0SqijUi6A/y7CkEkHxxYoEGX3jXl8A4tO/dnxZ2Mt7ZVBAt5VtDmnRf9BcukMVCTmQH+4YxBVSgyYnS8g1r2r1BckUtKbC8STYJR/LlyS8tvA/pctQlVEdHnmYTygQuNhj8lkWufwk6aVDDh64spk8POC8EqtSkny/0sBF1n6xegMV6BQ3s73MJBkGQ7KTLZyo7beQ1YPrcV6gzRhuLfamjP2fzSrrrcw8rsQEARVu70xRN0X4yzmO8wKwjFqzL9lzI73LwOwU3styz0bc54rTttVDfdxuy1W+uRJewQyIi4C0/7wpnQGRrFzdpkb0lYGKR5EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0d9JgYY2PyaS5Ep1XQ+Eh/5BESJNn5J44iwGC0accXI=;
 b=lsDFmmb+5Vmac2186PSm3LMbkCAI/cnHKF0ibBLH3RnEFO6c46/YcsvyjzuSPGd7NHbC1paYrkG18zhyoRlNKpzY0VHcA7+R0hbU1KzAwQBm5KIFCmCV1naEM3oW25r1RBEj7GcbF5kA3J89UzWNaA0FluX0o8UEmBSpkxJTJOH/GGN898eDaqQWPpVBUo+Fasp7LVmwV/uDOPH3FV2d7N36KT8rF6qxJUA34x/osspwVk9sToxg89bXWw5H+t6KDDi/G10jxrwZ+shmqdiaPj3yCkouUecAtFykbEJnp35iAvPad2GnKATp4F2ahJ2E9eZ/ueGwZPAmuIhaXqspMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0d9JgYY2PyaS5Ep1XQ+Eh/5BESJNn5J44iwGC0accXI=;
 b=qWnNhXn85jtKF2DR646gFZHrmeUdgPwz31vLq+zljN335IQJg2dFVCzPZRDTxRoQrJAyHFC1sHZxsDLH0HwLUHp2Y4xPM83zwXvUMwzeW+fF0gu4+YmnRGWXJAMRZdSQFz74V8IiDuuC8CCIOkRG/OmJe+p9zS1psoJoiDFHQ2A=
Received: from DM6PR14CA0061.namprd14.prod.outlook.com (2603:10b6:5:18f::38)
 by CY4PR02MB3191.namprd02.prod.outlook.com (2603:10b6:910:7c::36) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.19; Wed, 18 Dec
 2019 14:24:39 +0000
Received: from CY1NAM02FT041.eop-nam02.prod.protection.outlook.com
 (2603:10b6:5:18f:cafe::86) by DM6PR14CA0061.outlook.office365.com
 (2603:10b6:5:18f::38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.14 via Frontend
 Transport; Wed, 18 Dec 2019 14:24:39 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT041.mail.protection.outlook.com (10.152.74.156) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2559.14
 via Frontend Transport; Wed, 18 Dec 2019 14:24:38 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ihaFi-0001Da-7G; Wed, 18 Dec 2019 06:24:38 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ihaFc-0005xI-Nm; Wed, 18 Dec 2019 06:24:32 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1ihaFZ-0005w9-Hf; Wed, 18 Dec 2019 06:24:29 -0800
Subject: Re: [PATCH 3/5] firmware: xilinx: Add system shutdown API interface
To: Jolly Shah <jolly.shah@xilinx.com>, ard.biesheuvel@linaro.org,
 mingo@kernel.org, gregkh@linuxfoundation.org, matt@codeblueprint.co.uk,
 sudeep.holla@arm.com, hkallweit1@gmail.com, keescook@chromium.org,
 dmitry.torokhov@gmail.com, michal.simek@xilinx.com
References: <1575502159-11327-1-git-send-email-jolly.shah@xilinx.com>
 <1575502159-11327-4-git-send-email-jolly.shah@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <2270666b-5fd7-950f-9943-39f1ce2f2065@xilinx.com>
Date: Wed, 18 Dec 2019 15:24:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1575502159-11327-4-git-send-email-jolly.shah@xilinx.com>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(199004)(189003)(426003)(5660300002)(31696002)(44832011)(7416002)(2906002)(336012)(4326008)(8676002)(31686004)(36756003)(2616005)(6666004)(81166006)(356004)(498600001)(9786002)(26005)(8936002)(70206006)(81156014)(70586007)(186003)(107886003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR02MB3191; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d3162b1e-093b-4b59-290d-08d783c603ea
X-MS-TrafficTypeDiagnostic: CY4PR02MB3191:
X-Microsoft-Antispam-PRVS: <CY4PR02MB3191BE6CD93E61ACC85CF493C6530@CY4PR02MB3191.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:758;
X-Forefront-PRVS: 0255DF69B9
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qkKYPTJp+VSk081g8bYYBs9nGLqeKNDRjMmxOLirLDUoIkdREgI0u0LxDlEr2DCkQb5ucQswcnNBjJ4bqE/5Ba+pOfPfgsb/zEAhsPbkQHzUEIlY4Rr056jEvErE1hCsuAqE0V1l0A8VDNM3EoBoMavN+CgBELWxTIasdOmLaLgWMp5hFXMcjrqXQtElfOhLRVDmK/xyPSoWNxhT3YnPbbYGWtDkr49gep0YCgYSPQddeHMwc1N55UAlQ1CsIigFHr94fIO1fQqM9Im+TGIt4feWd6hqZe01U6Sr/hn+L5c2tjsCo4kZefx0v8VApStxMFrr4JMcoh+pRKm/K2mPJyHbyhoDXQkdGCj1h/lgWvlCCvJqfrodbg1Ag9ltp/97zyyO83suL0FhqdVCIJn+gYHR3vD4w5J6t62WtRhdGlahnb7F1M6HRv7PDfB4PZJ0ezMYdQ2HsA8nWag1AAA2eaDh5WkocDVZoC4wcI8syTRK3ILElMKf+t01Vd9K2Ihx
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2019 14:24:38.6944 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d3162b1e-093b-4b59-290d-08d783c603ea
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB3191
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_062444_308984_1CF76809 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Rajan Vaja <rajan.vaja@xilinx.com>, rajanv@xilinx.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05. 12. 19 0:29, Jolly Shah wrote:
> From: Rajan Vaja <rajan.vaja@xilinx.com>
> 
> Add system shutdown API interface which asks firmware to
> perform system shutdown/restart.
> 
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
> ---
>  drivers/firmware/xilinx/zynqmp.c     | 14 ++++++++++++++
>  include/linux/firmware/xlnx-zynqmp.h |  4 +++-
>  2 files changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
> index 9836174..8dcf5a4 100644
> --- a/drivers/firmware/xilinx/zynqmp.c
> +++ b/drivers/firmware/xilinx/zynqmp.c
> @@ -690,6 +690,19 @@ static int zynqmp_pm_config_reg_access(u32 register_access_id, u32 address,
>  				   address, mask, value, out);
>  }
>  
> +/**
> + * zynqmp_pm_system_shutdown - PM call to request a system shutdown or restart
> + * @type:	Shutdown or restart? 0 for shutdown, 1 for restart
> + * @subtype:	Specifies which system should be restarted or shut down
> + *
> + * Return:	Returns status, either success or error+reason
> + */
> +static int zynqmp_pm_system_shutdown(const u32 type, const u32 subtype)
> +{
> +	return zynqmp_pm_invoke_fn(PM_SYSTEM_SHUTDOWN, type, subtype,
> +				   0, 0, NULL);
> +}
> +
>  static const struct zynqmp_eemi_ops eemi_ops = {
>  	.get_api_version = zynqmp_pm_get_api_version,
>  	.get_chipid = zynqmp_pm_get_chipid,
> @@ -714,6 +727,7 @@ static const struct zynqmp_eemi_ops eemi_ops = {
>  	.fpga_load = zynqmp_pm_fpga_load,
>  	.fpga_get_status = zynqmp_pm_fpga_get_status,
>  	.register_access = zynqmp_pm_config_reg_access,
> +	.system_shutdown = zynqmp_pm_system_shutdown,
>  };
>  
>  /**
> diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
> index bf6e9db..b96ea5d 100644
> --- a/include/linux/firmware/xlnx-zynqmp.h
> +++ b/include/linux/firmware/xlnx-zynqmp.h
> @@ -61,7 +61,8 @@
>  
>  enum pm_api_id {
>  	PM_GET_API_VERSION = 1,
> -	PM_REQUEST_NODE = 13,
> +	PM_SYSTEM_SHUTDOWN = 12,
> +	PM_REQUEST_NODE,
>  	PM_RELEASE_NODE,
>  	PM_SET_REQUIREMENT,
>  	PM_RESET_ASSERT = 17,
> @@ -322,6 +323,7 @@ struct zynqmp_eemi_ops {
>  			       const enum zynqmp_pm_request_ack ack);
>  	int (*register_access)(u32 register_access_id, u32 address,
>  			       u32 mask, u32 value, u32 *out);
> +	int (*system_shutdown)(const u32 type, const u32 subtype);
>  };
>  
>  int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
> 

This looks good to me.
Acked-by: Michal Simek <michal.simek@xilinx.com>

Thanks,
Michal


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
