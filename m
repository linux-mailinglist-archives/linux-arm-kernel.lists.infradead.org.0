Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D8DE132F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 09:33:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/QyRSzFDDAe8M1hQOvLRE/4F+i3tmhziOXMfnTEtwLM=; b=WXbSukfKegJ6NI
	DnJFhRkrGtyBLv56Z3Kb4QRiM+Cdj+HjIkpkIjFgvHtSnxnJ5zNy2gVSoyxk+m+rfNcEhwh/QAqXM
	CFmB52F849E22YKrYAAWblBbXX/HvLr3B5SVjfIPvlsOuACjiIKSn1gSPrmgvaHSIj9AKXmU03Cyn
	eKM4GXk62Dl+QhDqwzxqXID1dPVsaU4MGk4yAV90/1wVq6FbBSXs02FiyLZZA5Op/51Gr0xp5myRB
	yNBej6/Fohpm3CBkjJbc7gic6P7NS+iRyjgfOVpvKAM7Ha2G9b33rHxHcU5b57wG6piFoKnXBZDL0
	VF3bhRWIYhdHvhb0QriQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNB97-0001Fi-W7; Wed, 23 Oct 2019 07:33:30 +0000
Received: from mail-eopbgr790043.outbound.protection.outlook.com
 ([40.107.79.43] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNB8x-0001F5-2l
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 07:33:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OYrmXOi2qKHG6tKi5mFV/2YqDllPXycJXX/uANmiJer93oKXpbqmBnDSqA26eYwTVvZdwhObDrDe/Ioe4m6ktlk+TzlM1q6j6McVPxFmEhNWHWAQUQITnCBCjUc4cMtNe7PDGWEJMxUFWC0s10FEoaSPTSartFKnWAohT/CKBEr8DYOf0D5cvyYdlpQV/gqsojHb6b61HbSvrPAjdcgG/dKI4FYaIXIpRjLgwgZMMRn5l2gX/ptC0YRXoF7fI63zYZm75xCuBZMszalWPrfpANpnaYhmgnEhWqTyFMrh72tPsScd5Nv4pUv1oe+UOsSnlhKd9oWL4MYCKzSXwsdDQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oa9i28OPa6b3FGokPOQinVF+2vu2Si4xOQwLgxUFSps=;
 b=dTxQr1VsA4BziVzrOv/MKEiZhvllDwWh62hSyunUhqFJW9LTe0vaDfLglXZR/kK7s9FSjxYyko3VIdxkfCi6qrW7Vlviy0j1c5g8cvDOq1o5uIW3aRiNpYQ5wVSFDutfSUZOe5Bbu826a84VX85iKBF26B2kxFEUjcb0t4aHZQUHvu3+uv5U0lluSGdLBZexwLFPHlxzzcj8n00RXElFVrkgzm30BHGfeF2806ikVWQdYW2OU9rbm/Hmvu5qmqrpkeLXsehAGb7hEHbWLufhIWtdG+vGCmvDhRloM82+NBrSX6ReRO3hZWU2EPf/henzXwZF9XBuMNF45Bs3OpJ/Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oa9i28OPa6b3FGokPOQinVF+2vu2Si4xOQwLgxUFSps=;
 b=Kfa7W9AvlPE5I2WIMc57mKTf1rpqWgyUiXX1MMWEeGZfJ+1APZdjBVhulci9hSe4vqh57761fIFBkimipW+9egEs/opUyuHGJ9lWE7jCcAZdsqYirVgX+dx1vZ+Xo+YnyuvxjVhBvdVYJPw47PmDbR7BbD712y/ZiXzFhxjgSYA=
Received: from MWHPR02CA0008.namprd02.prod.outlook.com (2603:10b6:300:4b::18)
 by SN6PR02MB4638.namprd02.prod.outlook.com (2603:10b6:805:b1::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.22; Wed, 23 Oct
 2019 07:33:15 +0000
Received: from CY1NAM02FT017.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::206) by MWHPR02CA0008.outlook.office365.com
 (2603:10b6:300:4b::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2367.21 via Frontend
 Transport; Wed, 23 Oct 2019 07:33:15 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT017.mail.protection.outlook.com (10.152.75.181) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2367.14
 via Frontend Transport; Wed, 23 Oct 2019 07:33:14 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iNB8s-0002QI-Bg; Wed, 23 Oct 2019 00:33:14 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iNB8n-0005yP-1F; Wed, 23 Oct 2019 00:33:09 -0700
Received: from [172.30.17.123] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1iNB8g-0005tu-DK; Wed, 23 Oct 2019 00:33:02 -0700
Subject: Re: [PATCH v2] clocksource/drivers: Fix memory leak in
 ttc_setup_clockevent
To: Navid Emamdoost <navid.emamdoost@gmail.com>, michal.simek@xilinx.com
References: <2a6cdb63-397b-280a-7379-740e8f43ddf6@xilinx.com>
 <20191023043139.31183-1-navid.emamdoost@gmail.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <9939e8bb-4e3d-fddf-3c02-66d55a6796ff@xilinx.com>
Date: Wed, 23 Oct 2019 09:32:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191023043139.31183-1-navid.emamdoost@gmail.com>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(376002)(396003)(199004)(189003)(36756003)(47776003)(44832011)(446003)(476003)(23676004)(76176011)(426003)(2616005)(336012)(5660300002)(11346002)(478600001)(2486003)(486006)(126002)(36386004)(14444005)(186003)(316002)(26005)(106002)(54906003)(2906002)(58126008)(70586007)(4326008)(70206006)(230700001)(65806001)(31686004)(50466002)(8936002)(305945005)(31696002)(6246003)(65956001)(8676002)(81166006)(81156014)(9786002)(229853002)(6666004)(356004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4638; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 85ca847f-cbd3-45d6-c0fd-08d7578b440f
X-MS-TrafficTypeDiagnostic: SN6PR02MB4638:
X-Microsoft-Antispam-PRVS: <SN6PR02MB4638DC22CBB95E49C1F176EAC66B0@SN6PR02MB4638.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-Forefront-PRVS: 019919A9E4
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BPPszqrDnxrGRa98+SY6q3lt5tl0r2N2UkZDqUtfM5Vlw3pJ4ERnT8RhILcgElOwycb9xu3SzqdC+uaxFsyANBznSZU32U2PTEIvV2ojqoRtAsWiqHrPrjFsfhiuY9WamG+qQ7ab3oeTCTcUGXm7Tz7h2w2JFhIuswushXTuSpTZOYHENMKMPc+p51rNIOyxg7JZ3iwR8RxeWF7plpaA0PjQ+Fg69BsTyFvXR0pt8+oyIMuLDXWm+igncGg/yQOG59VLFNt/HCkykX6mhI4pvBwRvMnf2hesKxgN7A3ERZRJdr0f1EyKR4dC+OfDNeVJNumQXfy0v5QImss9+DvfQ4fV6rS295PxwwL8ciXmMmbOgx8a8pNjnRH1lcqphBwZoTeI3yQI0XLFTUo595GOn744UtuPrQG7f3L4dUcKAuo=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2019 07:33:14.8747 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 85ca847f-cbd3-45d6-c0fd-08d7578b440f
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4638
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_003319_124031_C8D3EAB6 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.43 listed in list.dnswl.org]
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
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, emamd001@umn.edu, Markus.Elfring@web.de,
 smccaman@umn.edu, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23. 10. 19 6:31, Navid Emamdoost wrote:
> In the implementation of ttc_setup_clockevent() release the allocated
> memory for ttcce if clk_notifier_register() fails.
> 
> Fixes: 70504f311d4b ("clocksource/drivers/cadence_ttc: Convert init function to return error")
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> ---
> Changes in v2:
> 	- Added goto label for error handling
> 	- Update description and fix typo
> 
>  drivers/clocksource/timer-cadence-ttc.c | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/clocksource/timer-cadence-ttc.c b/drivers/clocksource/timer-cadence-ttc.c
> index 88fe2e9ba9a3..0caacbc67102 100644
> --- a/drivers/clocksource/timer-cadence-ttc.c
> +++ b/drivers/clocksource/timer-cadence-ttc.c
> @@ -411,10 +411,8 @@ static int __init ttc_setup_clockevent(struct clk *clk,
>  	ttcce->ttc.clk = clk;
>  
>  	err = clk_prepare_enable(ttcce->ttc.clk);
> -	if (err) {
> -		kfree(ttcce);
> -		return err;
> -	}
> +	if (err)
> +		goto release_ttcce;
>  
>  	ttcce->ttc.clk_rate_change_nb.notifier_call =
>  		ttc_rate_change_clockevent_cb;
> @@ -424,7 +422,7 @@ static int __init ttc_setup_clockevent(struct clk *clk,
>  				    &ttcce->ttc.clk_rate_change_nb);
>  	if (err) {
>  		pr_warn("Unable to register clock notifier.\n");
> -		return err;
> +		goto release_ttcce;
>  	}
>  
>  	ttcce->ttc.freq = clk_get_rate(ttcce->ttc.clk);
> @@ -453,15 +451,18 @@ static int __init ttc_setup_clockevent(struct clk *clk,
>  
>  	err = request_irq(irq, ttc_clock_event_interrupt,
>  			  IRQF_TIMER, ttcce->ce.name, ttcce);
> -	if (err) {
> -		kfree(ttcce);
> -		return err;
> -	}
> +	if (err)
> +		goto release_ttcce;
>  
>  	clockevents_config_and_register(&ttcce->ce,
>  			ttcce->ttc.freq / PRESCALE, 1, 0xfffe);
>  
>  	return 0;
> +
> +release_ttcce:
> +
> +	kfree(ttcce);
> +	return err;
>  }
>  
>  /**
> 

Acked-by: Michal Simek <michal.simek@xilinx.com>

Thanks,
Michal


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
