Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D391B1E74
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 07:58:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iQRCvyK1R06JLgP2xTMYQOOCCWyyWIcezw5UdRl3j6o=; b=Qz3AirU4HpdGDx
	Vc7/cjM/Ho3drjuiQobC6JFNI8QYxkDj4WFkL3yEhkFM7GrJYC6sDgiqhQyEXovMzAR9LTHf9kWXM
	c4pBIhK/ldaYfhgAsAtqDj4GHO1BHbbKBgdIE3QWdC6EfqttPlFKwAhGuZJc7kaqXAMBs6aq4FjCc
	gIHBEw2Fp8vTvCU9PTGJK7b4irPOYm3GWSEfjb6vpvJYRoDZuvWInThegg6xlcYcYLgQMQxTe/gJJ
	Lmq/zUGAjrnmj1G1K7oXc+RLUIUo2C/USEUAQZN0FcYvqU+LHJRk/tgcUXQTlHs5xjiE5NUQIxHb/
	EIMyw9v9JBjSaPGNuAtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQlvA-00064v-JP; Tue, 21 Apr 2020 05:58:12 +0000
Received: from mail-eopbgr750053.outbound.protection.outlook.com
 ([40.107.75.53] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQlur-0005wO-Kq
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 05:57:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NNvpZOC1HxQi0FMFCkIEq+266dIOvpKoz41+eIJEeYfBUuyZJTyH5yfY8qQskAG2/OT4lWcTKrixnY4dMNGvqi1qX1cqLoo05g9ZkPVRZl8+K8iD6A01tV8FsUJmtgGcDiWfhERJPIEIqociGOhbCfOzee7wFPRkL39RAgBftOCdG1KIAap38FO63Tp4WcI06B0L1ltdF5yowfMZkOwI3SGzR3TBqabNy2ZmHw4CiZC8ptb0pCaVvpiU518LG4Toc08hgV1fMejZhZtFcfWgvAu2tYx9aGHxXy0GHiGTGG48wNkU+FNXpUa8ebvsUxGN0V/cbdLUS8Dcd5XzC2ExbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tC4QBiyJXoPYgI0bXnsGCuS0cM6oMMurXi7CO9D/1GU=;
 b=dlpAMr5rhV+3gZpCXcKFWw8DZCXneNXz5TpPgPJDHcZfGsRE2O4a4phtlyuMNriEZSmr88kUz3G4m8+8C1v6iJ5K7nJ5FJBgpm1vPC8StjDWQWmE6T6PehfYqObEHXqhXcP6VV7y5yuyqZtpb6TEKxD8ayLc1WXMRYZzjAk8A+AoF/Pg5ZpAl5qbqVM/X0Ens9UKrexmSwkmj2L1MrYYDehsmsTBAdnGRXixr/BIE6lI7MuEYy4EtLbMc8odGtiollpROwviO78wu8ffPPTNosDDWmzkKvtxOedd6XzsS0enAmFfoxr3teg/853Bz8nWLAjJvTmydKYf73W0nerTew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=wizery.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tC4QBiyJXoPYgI0bXnsGCuS0cM6oMMurXi7CO9D/1GU=;
 b=QbBWvQqL/iy3cGv8sbSfvATcnWZeLHvEyDW2sT4QGwS6yEIIG+HfWgFxlV55VFKnCZNeiPNvAjar9YyDxMYzb5d3ucK+XWQ2p3EkN4ihS2StW/9SPx2K+EIqVR8zp5Jx4yYkQofNUYJxdEKAx55KSkgfq9sHIcD8afgosm4Id6c=
Received: from SN4PR0501CA0111.namprd05.prod.outlook.com
 (2603:10b6:803:42::28) by DM6PR02MB5708.namprd02.prod.outlook.com
 (2603:10b6:5:7c::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Tue, 21 Apr
 2020 05:57:51 +0000
Received: from SN1NAM02FT048.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:42:cafe::3e) by SN4PR0501CA0111.outlook.office365.com
 (2603:10b6:803:42::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.9 via Frontend
 Transport; Tue, 21 Apr 2020 05:57:51 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; wizery.com; dkim=none (message not signed)
 header.d=none;wizery.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT048.mail.protection.outlook.com (10.152.72.202) with Microsoft SMTP
 Server id 15.20.2921.25 via Frontend Transport; Tue, 21 Apr 2020 05:57:50
 +0000
Received: from [149.199.38.66] (port=51031 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jQltq-0007Te-D6; Mon, 20 Apr 2020 22:56:50 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jQluo-0008UU-GM; Mon, 20 Apr 2020 22:57:50 -0700
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03L5vmM9016606; 
 Mon, 20 Apr 2020 22:57:48 -0700
Received: from [172.30.17.109] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1jQlul-0008TK-PE; Mon, 20 Apr 2020 22:57:47 -0700
Subject: Re: [PATCH v3 2/5] firmware: xilinx: Add shutdown/wakeup APIs
To: Ben Levinsky <ben.levinsky@xilinx.com>, ohad@wizery.com,
 bjorn.andersson@linaro.org, michal.simek@xilinx.com, jollys@xilinx.com,
 rajan.vaja@xilinx.com, robh+dt@kernel.org, mark.rutland@arm.com
References: <1587421629-914-1-git-send-email-ben.levinsky@xilinx.com>
 <1587421629-914-3-git-send-email-ben.levinsky@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <f1638adf-1c5b-22bd-e2cc-8264435b99fd@xilinx.com>
Date: Tue, 21 Apr 2020 07:57:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1587421629-914-3-git-send-email-ben.levinsky@xilinx.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(396003)(376002)(46966005)(44832011)(356005)(9786002)(2616005)(47076004)(70206006)(70586007)(186003)(82740400003)(426003)(6666004)(2906002)(336012)(4326008)(316002)(5660300002)(26005)(36756003)(81156014)(31696002)(81166007)(8676002)(31686004)(478600001)(8936002);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 63c5a33d-c1d7-4774-574d-08d7e5b8ecf1
X-MS-TrafficTypeDiagnostic: DM6PR02MB5708:
X-Microsoft-Antispam-PRVS: <DM6PR02MB5708EA892A310E7792AE2434C6D50@DM6PR02MB5708.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 038002787A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: px0D4V6fPP0anNsZOY9BJhFGUcbQ/bZGJa56BMjv5KnqdEaQ89vMdem7pQW/96wCCaZ3jWSAzlk4DEIX09V8ccB+MUAj8ndQ98Z7NANwY+C1AiXnAiurqV77Anh6xl46X0JRQK7MUa6U4S3k3y8XW++yajJxplpgkyAEVGNeytJGMsjOUlAgoHrA+xo3Fey7YQSjoQ8fsP3Iej534qUJkEwus9B2kQPXs09CUYreN2fJzJuLLmczzVxje5J9qOK/vnzpB8AVXMMa6f/T666AdK/l6a+igtm4go1CN3LBWEs6wT69GMrZ8PuU4xqCgJeRSOx17ipj16tMiwqdc35Lmm8lBj2Vefo8xXqFD8aZatEtMhHuTVlaEHOXDfpPwL1gIFnMDS2zunZGaRGQ3W4T1a6GgMR+WlcEIFuUEZEoikTTbu77GGSzqPhb71Xa0gtIHe3mmVZU4hpm1//CR9+k69pjdygx8MQJqLBI+5RBEH2apSH6kLPRPJTpE0no6OtludQ0YrxfePnYzC2jLC9PDg==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2020 05:57:50.8077 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 63c5a33d-c1d7-4774-574d-08d7e5b8ecf1
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5708
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_225753_707523_E9A96691 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.53 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.75.53 listed in wl.mailspike.net]
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
> Add shutdown/wakeup a resource eemi operations to shutdown
> or bringup a resource.
> 
> Signed-off-by: Ben Levinsky <ben.levinsky@xilinx.com>
> ---
> changes since v2:
> - add xilinx-related platform mgmt fn's instead of wrapping around
> 	function pointer in xilinx eemi ops struct
> 
> ---
>  drivers/firmware/xilinx/zynqmp.c     | 35 +++++++++++++++++++++++++++++++++++
>  include/linux/firmware/xlnx-zynqmp.h | 20 ++++++++++++++++++++
>  2 files changed, 55 insertions(+)
> 
> diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
> index bfaf29a..b0d140f 100644
> --- a/drivers/firmware/xilinx/zynqmp.c
> +++ b/drivers/firmware/xilinx/zynqmp.c
> @@ -845,6 +845,41 @@ int zynqmp_pm_release_node(const u32 node)
>  EXPORT_SYMBOL_GPL(zynqmp_pm_release_node);
>  
>  /**
> + * zynqmp_pm_force_powerdown - PM call to request for another PU or subsystem to
> + *             be powered down forcefully
> + * @target:    Node ID of the targeted PU or subsystem
> + * @ack:   Flag to specify whether acknowledge is requested
> + *
> + * Return: Returns status, either success or error+reason

This looks weird - two "Return" words doesn't look right.

> + */
> +int zynqmp_pm_force_powerdown(const u32 target,
> +                  const enum zynqmp_pm_request_ack ack)

This should be aligned - run checkpatch --strict. And fix it globally.

> +{
> +   return zynqmp_pm_invoke_fn(PM_FORCE_POWERDOWN, target, ack, 0, 0, NULL);

Also no spaces at the start of line is reported here.


Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
