Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D843A1E89DE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 23:21:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qWfxtwxzQlLafpMpZdocKQ7NPqmnUrGPFLj2jtL8/Nc=; b=paXr4ZNTet6beFSqaq3OVQWk3
	3u0zjOUewDRf2PP0+TYv2+pEwNZ5FCBHuiEdzw8WMcTC2SwIP9qG2+lPO0WsWEtp9bc1Fkyc059/F
	oA7yDYtTi9Ynt+wzwVecMe7JEbAJ/mJDVaLP3nYD2Jnb87cApDGFvh4R57SWFB5uAMZnrUplB+TxQ
	R+KIW8OZzIB+khqpMiV5+0ZrvGs/QIAO1X4uI6QIbre+HKFdCT+tS2NNxv3qN6rhfvvk23pCcrzsi
	/+fc8n2LWGqFbUJT9ME+v50HHgjumTMbIdt1ieGi47pG+PPWurr7RPU8ygC0pdBvzG8xR1P8EbGGV
	j80GGO99A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jemRR-0001g5-UH; Fri, 29 May 2020 21:21:25 +0000
Received: from mail-bn8nam11on2078.outbound.protection.outlook.com
 ([40.107.236.78] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jemRH-0001ez-9m
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 21:21:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j2plQyIoozcLQtahqCn0OC+F6N9YGzWTUpzU5/x8wdx1xTSIgYLs0VTgK3mv9FcqEa+7iz7IZNzMzdPK+AKXA4qJeIfgMkf/agM+GdBpiZCrN7grjc2qqO9Xx+3fhl87ixoCWWuOLdTFEiWSAuqeajnP00yWnmikslo/WDZAsSFLBCaxdDPvqLWJbWdCtAZ23xO2kYEs2O1fSORECjdoJr+9XS9jZHmI08LMp9wG5BeN6AWQ1We+YH4rRK+7B9uJy/qKn/dsW0tS08OEhWeJe17qs7+CLHC2v5x4RZXmkB3Vc1FH4IaL46hzl18pdfcfRnuo9ltqkIp4ac3UjHCnYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kAv0O7pIqyJc0rZaiMS393OUZWJX+JYnzmvHi8+2FGM=;
 b=b7RtUvSy9PLnVZxoyJk7y5qiyt2tdTdeKJQzxN1bNVVOFxywY24fkH704FEMLWjyMC2vmJxTm/SrX/XTY8XF09+r+xpS9qKHEFuycWax3w5DnNWf3YRuntXG2vBFPAO/dSMq0g80Oc/QBRYigMH/DJq2OXPuyQbrXho0Kk7ybwX5kuIEZvK2w6tDYIdrgeza1IlRfVIP2c4v/M5LzlopCYR2bN6txdO8g6s51FgAUNyR/GPKr5lfXtS8s4fnwXMDGr5pImA3zrDvJk+LsGIwI8ftHxAUjFP6P4AjjDZXUo3htsuJ5bxqjJ9IKttXbKJNw7YB/DFCXhwan4wK18KTxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kAv0O7pIqyJc0rZaiMS393OUZWJX+JYnzmvHi8+2FGM=;
 b=OWszzkIrUfOoCQinvz4qwp/RdDzIh86Sp+Zk7DNx/8kfThC305W18L3riaWnpBNWrglW1NZ8ZCIEDU3MewRZPQ3eITe+zuaPyXHfi1fMhYjAiadUdFCEhgwhLorVL26ivpXZQJnI76vHdml5tsAeEtb6GvwV+vmrKaMqGRj7EoA=
Received: from SN4PR0201CA0028.namprd02.prod.outlook.com
 (2603:10b6:803:2e::14) by BN6PR02MB2196.namprd02.prod.outlook.com
 (2603:10b6:404:34::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21; Fri, 29 May
 2020 21:21:08 +0000
Received: from SN1NAM02FT012.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:2e:cafe::65) by SN4PR0201CA0028.outlook.office365.com
 (2603:10b6:803:2e::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19 via Frontend
 Transport; Fri, 29 May 2020 21:21:08 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT012.mail.protection.outlook.com (10.152.72.95) with Microsoft SMTP
 Server id 15.20.3045.17 via Frontend Transport; Fri, 29 May 2020 21:21:07
 +0000
Received: from [149.199.38.66] (port=57015 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jemQW-0007Wc-4s; Fri, 29 May 2020 14:20:28 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jemR9-0008DD-KO; Fri, 29 May 2020 14:21:07 -0700
Received: from xsj-pvapsmtp01 (mail.xilinx.com [149.199.38.66] (may be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 04TLKuCp019086; 
 Fri, 29 May 2020 14:20:56 -0700
Received: from [10.23.122.231] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jollys@xilinx.com>)
 id 1jemQy-00089k-63; Fri, 29 May 2020 14:20:56 -0700
Subject: Re: [PATCH v2 2/2] drivers: clk: zynqmp: Update fraction clock check
 from custom type flags
To: Stephen Boyd <sboyd@kernel.org>, Jolly Shah <jolly.shah@xilinx.com>,
 arm@kernel.org, linux-clk@vger.kernel.org, michal.simek@xilinx.com,
 mturquette@baylibre.com, olof@lixom.net
References: <1584048699-24186-1-git-send-email-jolly.shah@xilinx.com>
 <1584048699-24186-3-git-send-email-jolly.shah@xilinx.com>
 <159054169658.88029.371843532116000844@swboyd.mtv.corp.google.com>
 <2c8cd31a-46ba-ec6a-67a7-f3d9abe561ff@xilinx.com>
 <159070755756.69627.18401650656284023600@swboyd.mtv.corp.google.com>
From: Jolly Shah <jolly.shah@xilinx.com>
Message-ID: <725e9477-647f-83b7-7fdf-7cdb7ae74586@xilinx.com>
Date: Fri, 29 May 2020 14:20:55 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <159070755756.69627.18401650656284023600@swboyd.mtv.corp.google.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(346002)(136003)(376002)(39860400002)(396003)(46966005)(5660300002)(478600001)(26005)(31686004)(4326008)(82740400003)(36756003)(107886003)(54906003)(2906002)(53546011)(336012)(426003)(47076004)(82310400002)(356005)(44832011)(8676002)(8936002)(81166007)(316002)(110136005)(70586007)(2616005)(83380400001)(9786002)(31696002)(15650500001)(186003)(70206006)(42866002)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7e236307-d780-4db1-9398-08d8041633e5
X-MS-TrafficTypeDiagnostic: BN6PR02MB2196:
X-Microsoft-Antispam-PRVS: <BN6PR02MB2196DCF584CC8FA6D84154F3B88F0@BN6PR02MB2196.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 04180B6720
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EeLsH3oq2qKyJjHX7V5XBPQAUTl6A7g/yZWEKFlMtxBoPt6mi3JXvsz8PNCQ0DBfkTpJka8dYY/XBY4HvtpiNY1pm1WWqZ+rOrhgKeUeJ5d9l5sDJJZlQwcUtlgYGTdmHTQ9bpm3FYWfR/XsptskjGYB7G9PX22dqp7k3kNZ48VJ3GR5FUWnUDElKPD5eGg7Jz781LUrEhgZp1oOOpf2ErdakLQi0DcTbQElAmS/YSaelqezi1QwxNGlqy8y6Cb7BztRooLjcnAJD3s6rHuQtMGshlUbgKvA7khgWjQOFCrXaRx9p6tKro9HMKQOcl1POFTffkkXtK/hFc+iE5a+p9nn40i0ZVFUuuj+3GoDpYBoL3lEKKe675mGBOPSS+Vpx4ePS5DXXxF5exTTFSDrNM5zgHdMUH7Fqmb0mkU6pbbl0eeaMyX4pDHmWCU7JCQaM5mMfk213VC9P90jMtHhhw==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2020 21:21:07.9260 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e236307-d780-4db1-9398-08d8041633e5
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB2196
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_142115_343724_5FE4311A 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.236.78 listed in wl.mailspike.net]
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 rajanv@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephan,

 > ------Original Message------
 > From: Stephen Boyd <sboyd@kernel.org>
 > Sent:  Thursday, May 28, 2020 4:12PM
 > To: Jolly Shah <jolly.shah@xilinx.com>, Arm <arm@kernel.org>, 
Linux-clk <linux-clk@vger.kernel.org>, Michal Simek 
<michal.simek@xilinx.com>, Mturquette <mturquette@baylibre.com>, Olof 
<olof@lixom.net>
 > Cc: Rajan Vaja <rajanv@xilinx.com>, 
Linux-arm-kernel@lists.infradead.org 
<linux-arm-kernel@lists.infradead.org>, Linux-kernel@vger.kernel.org 
<linux-kernel@vger.kernel.org>, Tejas Patel <tejas.patel@xilinx.com>, 
Rajan Vaja <rajan.vaja@xilinx.com>
 > Subject: Re: [PATCH v2 2/2] drivers: clk: zynqmp: Update fraction 
clock check from custom type flags
 >
> Quoting Jolly Shah (2020-05-28 10:44:01)
>> Hi Stephan,
>>
>> Thanks for the review.
>>
>>   > ------Original Message------
>>   > From: Stephen Boyd <sboyd@kernel.org>
>>   > Sent:  Tuesday, May 26, 2020 6:08PM
>>   > To: Jolly Shah <jolly.shah@xilinx.com>, Arm <arm@kernel.org>,
>> Linux-clk <linux-clk@vger.kernel.org>, Michal Simek
>> <michal.simek@xilinx.com>, Mturquette <mturquette@baylibre.com>, Olof
>> <olof@lixom.net>
>>   > Cc: Rajan Vaja <rajanv@xilinx.com>,
>> Linux-arm-kernel@lists.infradead.org
>> <linux-arm-kernel@lists.infradead.org>, Linux-kernel@vger.kernel.org
>> <linux-kernel@vger.kernel.org>, Tejas Patel <tejas.patel@xilinx.com>,
>> Rajan Vaja <rajan.vaja@xilinx.com>, Jolly Shah <jolly.shah@xilinx.com>
>>   > Subject: Re: [PATCH v2 2/2] drivers: clk: zynqmp: Update fraction
>> clock check from custom type flags
>>   >
>>> Quoting Jolly Shah (2020-03-12 14:31:39)
>>>> From: Tejas Patel <tejas.patel@xilinx.com>
>>>>
>>>> Older firmware version sets BIT(13) in clkflag to mark a
>>>> divider as fractional divider. Updated firmware version sets BIT(4)
>>>> in type flags to mark a divider as fractional divider since
>>>> BIT(13) is defined as CLK_DUTY_CYCLE_PARENT in the common clk
>>>> framework flags.
>>>>
>>>> To support both old and new firmware version, consider BIT(13) from
>>>> clkflag and BIT(4) from type_flag to check if divider is fractional
>>>> or not.
>>>>
>>>> To maintain compatibility BIT(13) of clkflag in firmware will not be
>>>> used in future for any purpose and will be marked as unused.
>>>
>>> Why are we mixing the firmware flags with the ccf flags? They shouldn't
>>> be the same. The firmware should have its own 'flag numberspace' that is
>>> distinct from the common clk framework's 'flag numberspace'. Please fix
>>> the code.
>>>
>>
>> Yes firmware flags are using separate numberspace now. Firmware
>> maintains CCF and firmware specific flags separately but earlier
>> CLK_FRAC was mistakenly defined in ccf flagspace and hence handled here
>> for backward compatibility. Driver takes care of not registering same
>> with CCF. Let me know if I misunderstood.
> 
> Why is the firmware maintaining CCF specific flags? The firmware
> shouldn't know about the CCF flag numbering at all. We can change the
> numbers that the CCF flags are assigned to randomly and that shouldn't
> mean that the firmware needs to change. Maybe I should apply this patch?

Got it. Will fix it.

Thanks,
Jolly Shah


> 
> ---8<----
> diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
> index bd1ee9039558..c1f36bca85b0 100644
> --- a/include/linux/clk-provider.h
> +++ b/include/linux/clk-provider.h
> @@ -16,22 +16,22 @@
>    *
>    * Please update clk_flags[] in drivers/clk/clk.c when making changes here!
>    */
> -#define CLK_SET_RATE_GATE	BIT(0) /* must be gated across rate change */
> -#define CLK_SET_PARENT_GATE	BIT(1) /* must be gated across re-parent */
> -#define CLK_SET_RATE_PARENT	BIT(2) /* propagate rate change up one level */
> -#define CLK_IGNORE_UNUSED	BIT(3) /* do not gate even if unused */
> +#define CLK_SET_RATE_GATE	BIT(13) /* must be gated across rate change */
> +#define CLK_SET_PARENT_GATE	BIT(2) /* must be gated across re-parent */
> +#define CLK_SET_RATE_PARENT	BIT(3) /* propagate rate change up one level */
> +#define CLK_IGNORE_UNUSED	BIT(4) /* do not gate even if unused */
>   				/* unused */
>   				/* unused */
> -#define CLK_GET_RATE_NOCACHE	BIT(6) /* do not use the cached clk rate */
> -#define CLK_SET_RATE_NO_REPARENT BIT(7) /* don't re-parent on rate change */
> -#define CLK_GET_ACCURACY_NOCACHE BIT(8) /* do not use the cached clk accuracy */
> -#define CLK_RECALC_NEW_RATES	BIT(9) /* recalc rates after notifications */
> -#define CLK_SET_RATE_UNGATE	BIT(10) /* clock needs to run to set rate */
> -#define CLK_IS_CRITICAL		BIT(11) /* do not gate, ever */
> +#define CLK_GET_RATE_NOCACHE	BIT(5) /* do not use the cached clk rate */
> +#define CLK_SET_RATE_NO_REPARENT BIT(6) /* don't re-parent on rate change */
> +#define CLK_GET_ACCURACY_NOCACHE BIT(7) /* do not use the cached clk accuracy */
> +#define CLK_RECALC_NEW_RATES	BIT(8) /* recalc rates after notifications */
> +#define CLK_SET_RATE_UNGATE	BIT(9) /* clock needs to run to set rate */
> +#define CLK_IS_CRITICAL		BIT(10) /* do not gate, ever */
>   /* parents need enable during gate/ungate, set rate and re-parent */
> -#define CLK_OPS_PARENT_ENABLE	BIT(12)
> +#define CLK_OPS_PARENT_ENABLE	BIT(11)
>   /* duty cycle call may be forwarded to the parent clock */
> -#define CLK_DUTY_CYCLE_PARENT	BIT(13)
> +#define CLK_DUTY_CYCLE_PARENT	BIT(12)
>   
>   struct clk;
>   struct clk_hw;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
