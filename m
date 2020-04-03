Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B07DF19D476
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 11:55:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rdrmJ+Ex1sUhEUR0D737FCKMO4qt1rV/rUqYmBEafUw=; b=LRm/Jzp3RVuIjH
	xYfQQVgvL2eWDk7pSMYX7j76D5DxJdbYi216CgbEXM4aYgTzP7j3AerscR1vGPp1JgHBs3txRAG4v
	KZcTrZ0A4psvJFryBRsciC3DcSIeCCD9F03L38ptKpqXfHan17+aLaUvefD5jEz01edhAJ14CY868
	hNdz0wHyxMxh4KSLO1TkB6SRvyuwf5B6oZB+iRUg886jWq/LaVK58/WIJjowhuQxMZrf1Tl0t0/Y7
	hNsHjgXmaW+QlCstq8u8g64ZccQJBGiWCFdHTrUwArOxf2WsOxpWS741pO0o0sJtDMPXrdbvSwZhb
	G67096EpTMaFVHoCIvMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKJ2b-0003pO-MR; Fri, 03 Apr 2020 09:55:09 +0000
Received: from mail-dm6nam12on2067.outbound.protection.outlook.com
 ([40.107.243.67] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIzH-0001GP-Em
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 09:51:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bV5jL+Stacgv8bqHquAYmQ64fuRLz6wnQxhYy8br+j5qwxo+Lj8MY280C15sFedi/yD40GxLLMhCDfpMezuhJPQJnJ5cItTUv10PR/pW6g/moMNZ6b8MIJA1zJXaSUZ1q552aDbDYQeHdiPfJM/Epv9PmNLwbWFaLWH9KPne9vjZWpECXkR4SggYXvMGKt2h80LPCyMyLW8fw2qEMm391DhVxsMqB9E9Iu5ozTsWvzs2MWE+fTbR+DAmVZSnmshtAvuCvcIk3L1y0/H6HIucdUYFPgd7euW1cXm9FnoB7lv3Ak5ajDdFgwL0Zn46vVyzKBPcLiBSqmxc3+aVRxfROQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O8CxC9CysvUax91ITEi83DhusciphVmW+/GOmc9TvWE=;
 b=Ec7/YzrFq32f/NFB/LaOC0T+rfzfNBMgwHPSZdd0LjBuhWMIAYpp43TdJ6x+7O3EzAsaylLTDmwVYnhVLVfSywpBKOettFW4ugSXEoMfa51uUlTuu8foner8IfL02Wx4evYmDnfoSOGi2j2WPIMCCCp5pluDWEa1HFfsvHng9rjqh5rtRfV95KXYxZuZO++6FMlc1vZf7tz8mceAk6XxV+6A8G6a4GAm+JquqLv1WZu68sw1G0H93gbHQBSjOAc/Gpv7VxupMbfY5UBATxSlwUpdpppCluzjOc71/fI7Wxqf3PwssrBIihACsK/K61ENOPhOV1jnH4YVZIGi1hD9Cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O8CxC9CysvUax91ITEi83DhusciphVmW+/GOmc9TvWE=;
 b=qaEaPaM55RixSZqMrRaU/bphfnSHi884bZxBrRX3CMUVYqFGuobGsr5QoiUS9So7UE6cAYDy8HczYDS5h1SOfonYIhAFHeNHG67hqpm07XQVL+JYAP0jIzQZS6myTGrK5XTbY+HFu7ATjP0pu3VWBquXLs1chsm5YCEwYeSRX7E=
Received: from CY4PR15CA0020.namprd15.prod.outlook.com (2603:10b6:910:14::30)
 by BN6PR02MB2529.namprd02.prod.outlook.com (2603:10b6:404:57::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15; Fri, 3 Apr
 2020 09:51:40 +0000
Received: from CY1NAM02FT008.eop-nam02.prod.protection.outlook.com
 (2603:10b6:910:14:cafe::9a) by CY4PR15CA0020.outlook.office365.com
 (2603:10b6:910:14::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15 via Frontend
 Transport; Fri, 3 Apr 2020 09:51:40 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT008.mail.protection.outlook.com (10.152.75.59) with Microsoft SMTP
 Server id 15.20.2878.15 via Frontend Transport; Fri, 3 Apr 2020 09:51:39
 +0000
Received: from [149.199.38.66] (port=35329 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jKIz5-0005cn-FB; Fri, 03 Apr 2020 02:51:31 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jKIzD-0004DE-F1; Fri, 03 Apr 2020 02:51:39 -0700
Received: from [172.30.17.108] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1jKIz8-000450-VY; Fri, 03 Apr 2020 02:51:35 -0700
Subject: Re: [PATCH 0/7] serial: uartps: Revert dynamic port allocation
To: Greg KH <gregkh@linuxfoundation.org>,
 Michal Simek <michal.simek@xilinx.com>
References: <cover.1585905873.git.michal.simek@xilinx.com>
 <20200403093216.GA3746303@kroah.com>
 <d9598635-a8ef-eff2-22e8-4fa37f8390b3@xilinx.com>
 <20200403094427.GA3754220@kroah.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <2983dbe2-16e6-4b7b-73a6-49d8c3d70510@xilinx.com>
Date: Fri, 3 Apr 2020 11:51:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200403094427.GA3754220@kroah.com>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(136003)(376002)(396003)(346002)(39860400002)(46966005)(47076004)(44832011)(31686004)(966005)(26005)(186003)(478600001)(81156014)(8936002)(426003)(2616005)(336012)(8676002)(5660300002)(6666004)(81166006)(82740400003)(9786002)(70206006)(70586007)(316002)(110136005)(31696002)(36756003)(356004)(4326008)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b2505e8d-d011-4d54-2839-08d7d7b49b68
X-MS-TrafficTypeDiagnostic: BN6PR02MB2529:
X-LD-Processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
X-Microsoft-Antispam-PRVS: <BN6PR02MB2529BBF402084DE7DA248B71C6C70@BN6PR02MB2529.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 0362BF9FDB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9WlbnwymdSicHLFSRUgkXD23Y7EVSPPtzs0ok0HqXJFJPKrvXxCVQa8xoxdZF2ujwRNefBY6Zn0JAlBZEswv0OUnqomPN03paF1GdJUG+XSVEohm8ipry/E3lKVUWk54KPKcALqmhDVF0pKsF2pAS+EAXQNZgedQ92YdKZ8Fy2ROqTTEA0owGrRzW+g/DQL0+d8aOnxyFJRo1DojD/T+RxstbLpwE+lUwy9BKzrmBCJJZu/Pl7eABAF8KxK+zekSnlu6KzmfQe8hpOHuGnplAL1XD/d98FBrbkhPQUrBGk5C9GCdb1/EyLhlPb/hQPI/dg73F58W/U6hUmDsL1DlAlZ+zeKGhe6WbfAb1k2kB/p6w58r3gEJq2AxXsxMSWEEyB4PugEEvWDwA4Ff7iA6/VcBIDO2YxU+WN9pMnfD68WzQMooJPNtldI/6363x/XWgCWKisbIA5gykV79NfJggHkdH3thFeH4K3n/X4ZCLY9nLdfHC9sK8cJcN5rEsXt68A4Zo6JmAoC8/Ilr3Ud8ABTJb0HkIB+XdX5/q8LNCo6LR2xDIbkgLXOspkvPq1KPrrwa/Pd2q1jZefTB3B4Ryg==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2020 09:51:39.7484 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b2505e8d-d011-4d54-2839-08d7d7b49b68
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB2529
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_025143_520849_E3985985 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: monstr@monstr.eu, johan@kernel.org, linux-kernel@vger.kernel.org,
 git@xilinx.com, linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03. 04. 20 11:44, Greg KH wrote:
> On Fri, Apr 03, 2020 at 11:37:46AM +0200, Michal Simek wrote:
>> On 03. 04. 20 11:32, Greg KH wrote:
>>> On Fri, Apr 03, 2020 at 11:24:29AM +0200, Michal Simek wrote:
>>>> Hi,
>>>>
>>>> there were several changes done in past in uartps drivers which have been
>>>> also done in uartlite driver.
>>>> Here is the thread about it
>>>> https://lore.kernel.org/linux-serial/20191203152738.GF10631@localhost/
>>>>
>>>> This series reverts all patches which enabled dynamic port allocation and
>>>> returning driver to the previous state. There were added some features in
>>>> meantime which are not affected by this series.
>>>
>>> Should this go into 5.7-final as it's causing problems now, and
>>> backported as well?  Or can it wait until 5.8-rc1?
>>
>> These patches have been added to v4.20. It means all version from that
>> are affected.
>>
>> The issue I am aware of is when you setup stdout-path =
>> "serialX:115200n8" where X is not 0.
>>
>> But as was discussed the concept is based on Johan wrong that's why it
>> can be consider as bug fix.
> 
> Ok, I'll queue these up after 5.7-rc1 is out, for inclusion in
> 5.7-final, and cc: for stable, as I agree, they should all be reverted.
> Thanks for doing the work.

Thanks. I am definitely interested to hear more how this could be done
differently because that hardcoded limits are painful.
On FPGAs you can have a lot of uarts for whatever reason and users are
using DT aliases to have consistent naming.
Specifically on Xilinx devices we are using uartps which is ttyPS,
uartlite which is ttyUL, ns16500 which is ttyS and also pl011 which is
ttyAMA.
Only ttyAMA or ttyPS on one chip are possible.

And right now you can't have serial0 alias pointed ttyPS0 and another
serial0 pointed to ttyUL0 or ttyS0. That's why others are shifted and we
can reach that hardcoded NR_UART limit easily.
And this was the reason why I have done these patches in past to remove
any limit from these drivers and if user asks for serial100 alias you
simply get ttyPS100 node.

Johan mentioned any solution use in USB stack but I haven't really had a
time to take a look at it how feasible it is to bring back to all drivers.

Thanks,
Michal



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
