Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E2B12774B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 09:38:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0sQG0i3T0BvFht0lP5TTiDC7gMcZSrYB5MiVeLl7y8=; b=a6XuQrwIZgIYOi
	U7QfWXhMfFU9IvJvVhz8RS1X15n8owsK4xtyg+0q117GOn+JKQ2IpjJfSV3kXgp3SPhZcGTNXHj8g
	MQ7vl93j0khdyApSIxG3z2dIuHrJXzNgIN0TLAgErW+tGMvfNhcYtCS5ClmG007AZjKaO25xq6E3c
	lnD02YI6zdoCExJCAoczXJaGknOw5nXSk6BMJ3ATjuj0DbKmHXWR+xM+J0W6W+9X7bSGoPIhJ4AW/
	+4ssDbnwRTwitVKi3Y/8FvFrKV4RHI2Aj9X1V+Kl1QJD+3MVLM7Wwu8RSTskNGwauHIfWrejct2O6
	okg0zjG1NYg7ETW7P0xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiDnd-0000jp-K6; Fri, 20 Dec 2019 08:38:17 +0000
Received: from mail-eopbgr700059.outbound.protection.outlook.com
 ([40.107.70.59] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiDnU-0000iP-2B
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 08:38:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oSsigN2HIL1fCcIbf2xexsCr6T9oMf5K8OumU+c8Kz972Tcor+RbyHGQoBCYr3goReVmE2u5hwj/a8mrB5DmevqpK8xU5S/fvILALomOlwfCY9lCuc8kD1uaf/3qYTijb50rW76UGNpCa8+D4IZGViwxN8JPem9bLlnk3HjOq3TG1HKZiGIZDB386dTMBfoE5ccJ6b2Uox1caNRtdS0l3yl4YNf1Gx4rNq8ZpaNPosp7rkZtHFYGAkEGEw5Opb+sVUlICtHK760qHqESanqURY61Elcs6FjjdHscR4DJEX3ZpFHZmZasgNhE+6doFYHEDbT5CeNr8Ke/xF4Fryk+eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pLcQJIC1S+0YSE6e4VtMV6Hwbg3ZflHxhmeLrgqULr0=;
 b=hW4Xiw4TiLrsFFHGdxLPT+fvGo7CK6FPwvdZaLmWD245y1HgV1QB8SiCFppJQn7sppy+MhTM2BFCqkByN1/esclX6qIEHTnyvnG2n8AKPsx7txosWRNrbGvLirUEw3rHr/Nf835CZn6FDdWrs5XM299Ljw465YfIBtXkddMMrI0EEngaJgzNEQBgOrnPY3ICq5SeD1V4lcufeRw55yVwQcUTNXr4EeTcjbPAH1EmCVOd9pBqMobcgF/lRZiLwbxZOsw7ejQzRw8aRqunON7D11QMoV3Z+nB6Apmq9IBvUrWBSlH8zlnZmv8IVT+L8o1jKQ142bw85y1LE6l1XUq63g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pLcQJIC1S+0YSE6e4VtMV6Hwbg3ZflHxhmeLrgqULr0=;
 b=gqgZyfDTB0oEKdQQeP1TDLIikd4AQmwaSbyGr/EqvnbVrRUbyalw1sTHHM3IURMQa1ke9q7PqAYuFd7arvbeQaK40HuZP9LQOROPkdAAJd57rVaCh+8TAoGQpLYti4pbMHX9ul8c1RFA/a6NaYwFJsiRTEwKnZhAoYRHn90F7PU=
Received: from BL0PR02CA0113.namprd02.prod.outlook.com (2603:10b6:208:35::18)
 by MN2PR02MB5790.namprd02.prod.outlook.com (2603:10b6:208:11b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.13; Fri, 20 Dec
 2019 08:38:04 +0000
Received: from BL2NAM02FT042.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::202) by BL0PR02CA0113.outlook.office365.com
 (2603:10b6:208:35::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.13 via Frontend
 Transport; Fri, 20 Dec 2019 08:38:04 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT042.mail.protection.outlook.com (10.152.76.193) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2559.14
 via Frontend Transport; Fri, 20 Dec 2019 08:38:03 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iiDnO-0002PY-Rh; Fri, 20 Dec 2019 00:38:02 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iiDnK-000667-2h; Fri, 20 Dec 2019 00:37:58 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp1.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xBK8blCY025271; 
 Fri, 20 Dec 2019 00:37:47 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1iiDn8-00065H-SM; Fri, 20 Dec 2019 00:37:47 -0800
Subject: Re: [PATCH] clocksource/drivers: Fix memory leaks in
 ttc_setup_clockevent and ttc_setup_clocksource
To: Johan Hovold <johan@kernel.org>,
 Navid Emamdoost <navid.emamdoost@gmail.com>
References: <20191220000923.9924-1-navid.emamdoost@gmail.com>
 <20191220051013.GT22665@localhost>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <3d72fe70-25fb-cdee-ac7d-bc1aa2ae5137@xilinx.com>
Date: Fri, 20 Dec 2019 09:37:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191220051013.GT22665@localhost>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(376002)(136003)(346002)(199004)(189003)(336012)(31686004)(70586007)(8936002)(9786002)(26005)(426003)(186003)(70206006)(5660300002)(4326008)(31696002)(44832011)(54906003)(2616005)(6666004)(356004)(81156014)(8676002)(478600001)(36756003)(110136005)(2906002)(316002)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB5790; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e6d9d3bd-ed15-4516-fdda-08d78527ee05
X-MS-TrafficTypeDiagnostic: MN2PR02MB5790:
X-Microsoft-Antispam-PRVS: <MN2PR02MB579059FB0DFC6194BB9E81C5C62D0@MN2PR02MB5790.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2449;
X-Forefront-PRVS: 025796F161
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y5zTrcnlDfz6f3B3yamrrW11Mbf1sL/ItwNS7LyilJek2mgmryFV0zHjt85RUF3jeevEsvg7kp6tGHE7694QvpV2eGx3o0HDlJluL89stShezwZ8qxjhnfHKCrZHKtXH+NnwqyaBvD0nkFBYz0kuJA0eFt2tFxkQjShBoV1m7rwQMbeaWle7a6Q8xd5OW+p+QjAGLNhq8ZuwjmIRnY8FLR8L+jPe8aqDJyLRPQ9cpMJ0MU9bGZ0psMO4CzSAnZ0wIKgsxMQksxf0qr+1TkeYKHs4fmfqGg1lYUT5UAYV5g9HVvNoPMniuSDMFptyZmQRiKny7y25XDTfxUa6+ogertwF/OL0MuRi3F/Z5c/5O+eqV8GHZ2THcuLEj7052qoVvJ9nKx16kJ7zJGRG0xv+eTA72fzDTiHdCpYaNXVe7Pf9aSRN68M6xDyy4vQ1sL2d
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2019 08:38:03.8072 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e6d9d3bd-ed15-4516-fdda-08d78527ee05
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB5790
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_003808_107650_7A00D42C 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.59 listed in list.dnswl.org]
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
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 emamd001@umn.edu,
 =?UTF-8?Q?S=c3=b6ren_Brinkmann?= <soren.brinkmann@xilinx.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20. 12. 19 6:10, Johan Hovold wrote:
> On Thu, Dec 19, 2019 at 06:09:21PM -0600, Navid Emamdoost wrote:
>> In the implementation of ttc_setup_clockevent() and
>> ttc_setup_clocksource(), the allocated memory for ttccs is leaked when
>> clk_notifier_register() fails. Use goto to direct the execution into error
>> handling path.
> 
> No, that memory was never leaked since that function did not return on
> registration errors before your patch.
> 
>> Fixes: 70504f311d4b ("clocksource/drivers/cadence_ttc: Convert init function to return error")
> 
> Perhaps you meant to fix the actual leak that was added by this commit
> in a different function, ttc_setup_clockevent(), when returning on
> notifier-registration errors?
> 
> Also should the clock be left enabled on errors?
> 
>> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
>> ---
>>  drivers/clocksource/timer-cadence-ttc.c | 22 +++++++++++++---------
>>  1 file changed, 13 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/clocksource/timer-cadence-ttc.c b/drivers/clocksource/timer-cadence-ttc.c
>> index c6d11a1cb238..46d69982ad33 100644
>> --- a/drivers/clocksource/timer-cadence-ttc.c
>> +++ b/drivers/clocksource/timer-cadence-ttc.c
>> @@ -328,10 +328,8 @@ static int __init ttc_setup_clocksource(struct clk *clk, void __iomem *base,
>>  	ttccs->ttc.clk = clk;
>>  
>>  	err = clk_prepare_enable(ttccs->ttc.clk);
>> -	if (err) {
>> -		kfree(ttccs);
>> -		return err;
>> -	}
>> +	if (err)
>> +		goto release_ttcce;
>>  
>>  	ttccs->ttc.freq = clk_get_rate(ttccs->ttc.clk);
>>  
>> @@ -341,8 +339,10 @@ static int __init ttc_setup_clocksource(struct clk *clk, void __iomem *base,
>>  
>>  	err = clk_notifier_register(ttccs->ttc.clk,
>>  				    &ttccs->ttc.clk_rate_change_nb);
>> -	if (err)
>> +	if (err) {
>>  		pr_warn("Unable to register clock notifier.\n");
>> +		goto release_ttcce;
>> +	}
> 

+ this is IMHO v3 version. It means just label it properly and also keep
changes log.

Thanks,
Michal


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
