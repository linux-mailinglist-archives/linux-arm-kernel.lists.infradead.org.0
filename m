Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1981B1E7B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 07:59:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rsH4oMgHAmEcCkUCAIskReGjC6KddxrxYs/OMPb/Mdg=; b=X+oDAoTZoW5TO/
	ezRPIFnduqI4fnHw+LZ/4Za5Wc571Y/1n/yBJr4ZgbutQyQRLmu/Rjm4nXY7IGdV+L9nVwo9payII
	shBB366IHSATXQMI/yqZ/ZXamDICgmMkpqsYffNC2J1JuhJpdhIUFPcKCP/4FvunDeK/MIkq4FHP9
	as/j7iRjWQGqUCVvR+lm57qoDv0zX/yEYTBacqbJxl8sfY+4fpsepMzdptaD0bbfbm7ceAF1NoCAG
	w9B3GIAVnYV1rvrnZiqDCePFPYMg6Yet543iVAqrahdsFkk/6XWiDevzce5adxCu/BIM2go15uuWC
	l4eUwnMZGDr+H0KwhbPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQlwg-0006mR-Hb; Tue, 21 Apr 2020 05:59:46 +0000
Received: from mail-mw2nam12on2082.outbound.protection.outlook.com
 ([40.107.244.82] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQlwT-0006lI-Md
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 05:59:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CFUWUFzuirOOMhotmg7bleaJBdkS96pUc6JapVjUw7zBJfKnWDPah1sPsPK974LAgY/xMM8MVuCwQwEWCntQpInx57KQTZ9Oxa9WQKTl/OYPzmsgF8jUF8S3MZ9rcrtwMKcGxXiXo55oUCXgSxJwVey2eEXOme7u0aHI8cm6227jPjNhwCdx3qFaUM7Od89V1+iYfVxm2FVlE5X/hx58u/slJzz0LDR+jELcpJ+f2PulxGZFIzcF6nSwaQ91cyOMX70SmVIx7ws/2f9ahAplLbgMaocYKqPxfBljQs3p87DdAiiT2ndzaGbkrzL6fuLkG+JSQ2ELGjSk0ndTgr+DBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nxq8C9rbcMOvCbZTfqn7pkhC2DUEMNA1+on53fPUJ4Q=;
 b=gEDCAysrEw1kkikqxkue7fs1Dc0OK804jDZxlNhU5qhENeoKQq8H8AmUxSOiR0AHqX96gOx1kOb23ta7CoQMkYNsLbq5+O2MqNN3mrhhvY5TxJD6dch6OrA02RZs8K4t+nOIkH8w+mkv/DdQBbTwEJlwLqwxe4Vdm0PaECLmk51y+gN18xUKjm1yYpf/of9XUidReP1teOOvMxPv0kMM9/EvpGux7FpJ6hNUWGXmtBO81ZTcaE49IVbJ3s1BRG7S/CLJK4p7GCXPP2qBv3X6NUwtk51TkZw8fzxrEbc3FO5HvNN1bN2/JiGAnSqWdb5hm3RD5FWGuIS+0BEqIHEe5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=wizery.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nxq8C9rbcMOvCbZTfqn7pkhC2DUEMNA1+on53fPUJ4Q=;
 b=Ogftv+u3ZPZC93cEse+/9McaBFoJTJ3vTm45sCF9qoLd6oqdwzJRspw9IV1DUKpbf7ZC1wM53wdAl/84sKq0FqCS0PImq0iZJWBMd984uM5RzOmBksZ8a1wauVE/Q7dNKaHrSkhOOOFVfH2aFJwjEKDAxwxIBb8XNcaTbb7idiE=
Received: from SN4PR0701CA0005.namprd07.prod.outlook.com
 (2603:10b6:803:28::15) by CH2PR02MB6726.namprd02.prod.outlook.com
 (2603:10b6:610:aa::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Tue, 21 Apr
 2020 05:59:31 +0000
Received: from SN1NAM02FT060.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:28:cafe::39) by SN4PR0701CA0005.outlook.office365.com
 (2603:10b6:803:28::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.26 via Frontend
 Transport; Tue, 21 Apr 2020 05:59:31 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; wizery.com; dkim=none (message not signed)
 header.d=none;wizery.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT060.mail.protection.outlook.com (10.152.72.192) with Microsoft SMTP
 Server id 15.20.2921.25 via Frontend Transport; Tue, 21 Apr 2020 05:59:31
 +0000
Received: from [149.199.38.66] (port=52106 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jQlvS-0007VC-Qp; Mon, 20 Apr 2020 22:58:30 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jQlwQ-0000GU-Tv; Mon, 20 Apr 2020 22:59:30 -0700
Received: from xsj-pvapsmtp01 (xsj-mail.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03L5xKXw025135; 
 Mon, 20 Apr 2020 22:59:20 -0700
Received: from [172.30.17.109] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1jQlwF-0000Df-Ux; Mon, 20 Apr 2020 22:59:20 -0700
Subject: Re: [PATCH v3 3/5] firmware: xilinx: Add RPU configuration APIs
To: Ben Levinsky <ben.levinsky@xilinx.com>, ohad@wizery.com,
 bjorn.andersson@linaro.org, michal.simek@xilinx.com, jollys@xilinx.com,
 rajan.vaja@xilinx.com, robh+dt@kernel.org, mark.rutland@arm.com
References: <1587421629-914-1-git-send-email-ben.levinsky@xilinx.com>
 <1587421629-914-4-git-send-email-ben.levinsky@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <18cf27ff-5175-bff1-d1d8-5ef077d4202a@xilinx.com>
Date: Tue, 21 Apr 2020 07:59:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1587421629-914-4-git-send-email-ben.levinsky@xilinx.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(136003)(376002)(346002)(39860400002)(396003)(46966005)(478600001)(36756003)(9786002)(2906002)(6666004)(316002)(26005)(44832011)(336012)(2616005)(356005)(31686004)(47076004)(5660300002)(186003)(31696002)(426003)(8676002)(82740400003)(70586007)(70206006)(81166007)(8936002)(81156014)(4326008);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 405607d4-4c42-4978-7e6c-08d7e5b928ce
X-MS-TrafficTypeDiagnostic: CH2PR02MB6726:
X-Microsoft-Antispam-PRVS: <CH2PR02MB67261F8C3D90F89BB2F057D0C6D50@CH2PR02MB6726.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2089;
X-Forefront-PRVS: 038002787A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FySPunqTdnVS/fyOvyNRpL0XyNB2tcNldKUwaty3SkYnO4qdE9/cT4lQvw26FHK4XTDq8IYCQ1A9CsWrhLROP7yxEO/2+P2s2fawSsdi0xhR/NMGv1TsT0JBz9XV5d3cevVS/Dl/kj/M5XeJowFZ0dkaWqprYsJd7YnX0v1YeviTqMmvOU3hrkR8soDO6xPvC8oTVE576QT3ms9GeYEAk/rpmE/7HdS9WfN0TGYMfH7+vhwz3BnK1uhJR6TZyWj4nGup3bJGFx9GqN+BlCKevBIMLuCfA81u3d160SE50r2nzMWgB4ySAuV2lkpIyYNmDegKrSBWCWPaHmR67FMtuNgglaBwE3IhfZzolp8jvnGfUbSxsx9Ds+IWgl1Qz4B8FZibOOtgxCZRk5eDv7c4vkzjzyTUqG34izRZD460bLImX6vIZPALD3J6NJ5fUiMjhS726FokGAmaeL6Wv11B4MibxpC/DPDV6IImBoCeGq/o5bzosGE9WvkMmVmvqH4N6xe1M3Vi7+/qMzg7XmGRHg==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2020 05:59:31.2426 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 405607d4-4c42-4978-7e6c-08d7e5b928ce
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6726
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_225933_749756_22DC52D6 
X-CRM114-Status: GOOD (  21.33  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.82 listed in list.dnswl.org]
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
> This patch adds APIs to provide access and a configuration interface
> to the current power state of a sub-system on Zynqmp sub-system.
> 
> Signed-off-by: Ben Levinsky <ben.levinsky@xilinx.com>
> ---
> changes since v2:
> - add xilinx-related platform mgmt fn's instead of wrapping around
> 	function pointer in xilinx eemi ops struct
> ---
>  drivers/firmware/xilinx/zynqmp.c     | 101 +++++++++++++++++++++++++++++++++++
>  include/linux/firmware/xlnx-zynqmp.h |  30 +++++++++++
>  2 files changed, 131 insertions(+)
> 
> diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
> index b0d140f..e0a906e 100644
> --- a/drivers/firmware/xilinx/zynqmp.c
> +++ b/drivers/firmware/xilinx/zynqmp.c
> @@ -845,6 +845,63 @@ int zynqmp_pm_release_node(const u32 node)
>  EXPORT_SYMBOL_GPL(zynqmp_pm_release_node);
>  
>  /**
> + * zynqmp_pm_get_rpu_mode() - Get RPU mode
> + * @node_id:	Node ID of the device
> + * @arg1:	Argument 1 to requested IOCTL call
> + * @arg2:	Argument 2 to requested IOCTL call
> + * @out:	Returned output value
> + *
> + * Return: Returns RPU mode

ditto.

> + */
> +int zynqmp_pm_get_rpu_mode(u32 node_id,
> +			u32 arg1, u32 arg2, u32 *out)
> +{
> +	return zynqmp_pm_invoke_fn(PM_IOCTL, node_id,
> +				IOCTL_GET_RPU_OPER_MODE, 0, 0, out);
> +}
> +EXPORT_SYMBOL_GPL(zynqmp_pm_get_rpu_mode);
> +
> +/**
> + * zynqmp_pm_set_rpu_mode() - Set RPU mode
> + * @node_id:	Node ID of the device
> + * @ioctl_id:	ID of the requested IOCTL
> + * @arg2:	Argument 2 to requested IOCTL call
> + * @out:	Returned output value
> + *
> + * This function is used to set RPU mode.
> + *
> + * Return: Returns status, either success or error+reason
> + */
> +int zynqmp_pm_set_rpu_mode(u32 node_id,
> +			u32 arg1, u32 arg2, u32 *out)
> +{
> +	return zynqmp_pm_invoke_fn(PM_IOCTL, node_id,
> +				IOCTL_SET_RPU_OPER_MODE, 0, 0, out);
> +}
> +EXPORT_SYMBOL_GPL(zynqmp_pm_set_rpu_mode);
> +
> +/**
> + * zynqmp_pm_tcm_comb_config - configure TCM
> + * @node_id:	Node ID of the device
> + * @arg1:	Argument 1 to requested IOCTL call
> + * @arg2:	Argument 2 to requested IOCTL call
> + * @out:	Returned output value
> + *
> + * This function is used to set RPU mode.
> + *
> + * Return: Returns status, either success or error+reason
> + */
> +int zynqmp_pm_set_tcm_config(u32 node_id,
> +			u32 arg1, u32 arg2, u32 *out)
> +{
> +	return zynqmp_pm_invoke_fn(PM_IOCTL, node_id,
> +				IOCTL_TCM_COMB_CONFIG, 0, 0, out);
> +
> +}
> +EXPORT_SYMBOL_GPL(zynqmp_pm_set_tcm_config);
> +
> +

double space here.

> +/**
>   * zynqmp_pm_force_powerdown - PM call to request for another PU or subsystem to
>   *             be powered down forcefully
>   * @target:    Node ID of the targeted PU or subsystem
> @@ -880,6 +937,50 @@ int zynqmp_pm_request_wakeup(const u32 node,
>  EXPORT_SYMBOL_GPL(zynqmp_pm_request_wakeup);
>  
>  /**
> + * zynqmp_pm_get_node_status - PM call to request a node's current power state
> + * @node:      ID of the component or sub-system in question
> + * @status:        Current operating state of the requested node
> + * @requirements:  Current requirements asserted on the node,
> + *         used for slave nodes only.
> + * @usage:     Usage information, used for slave nodes only:
> + *         PM_USAGE_NO_MASTER  - No master is currently using
> + *                       the node
> + *         PM_USAGE_CURRENT_MASTER - Only requesting master is
> + *                       currently using the node
> + *         PM_USAGE_OTHER_MASTER   - Only other masters are
> + *                       currently using the node
> + *         PM_USAGE_BOTH_MASTERS   - Both the current and at least
> + *                       one other master is currently
> + *                       using the node
> + *
> + * Return:     Returns status, either success or error+reason
> + */
> +int zynqmp_pm_get_node_status(const u32 node,
> +			u32 *status, u32 *requirements,
> +			u32 *usage)
> +
> +{
> +   u32 ret_payload[PAYLOAD_ARG_CNT];
> +   int ret;
> +
> +   if (!status)
> +       return -EINVAL;
> +
> +   ret = zynqmp_pm_invoke_fn(PM_GET_NODE_STATUS, node, 0, 0,
> +                 0, ret_payload);
> +   if (ret_payload[0] == XST_PM_SUCCESS) {
> +       *status = ret_payload[1];
> +       if (requirements)
> +           *requirements = ret_payload[2];
> +       if (usage)
> +           *usage = ret_payload[3];
> +   }
> +
> +   return ret;

indentation.

M

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
