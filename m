Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6254853B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 16:24:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NCODdTqCalwhHy4FIze+WxIRmtT7K+RlrvuviS+elc8=; b=UPkJjbBKLNrKfU
	nK/4dYTsCcWI3KrB2Kf4nPgVaAgcNugghSKrA17HiH9nMqy3h7jafq32q3jWYkYBYw1YsxxVwmdGm
	1+ZKwvorl505WYo1dSCQVYB4KWHuMxGddFnZA/Det4vRxuBBSEHlM90GHhx7QSdY62rNvIugi2HSg
	zpGyPiXQdUGZqhJKAuGJSlQDZfYIa0mbBZVcZiufQNcu+yObR/1o2dHBh4flazz68a2BUdgqlbwZC
	rCFwafIGkG4GPGNyCtPjpGU9ghYrqe+AXC0bxXolNLE8lJBCynD5g1KxshYL9TInkgncYYjcRJDNF
	Dg7t7MGQ0p9t61Z3vJBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcsYN-0007YT-PG; Mon, 17 Jun 2019 14:24:12 +0000
Received: from mail-eopbgr720055.outbound.protection.outlook.com
 ([40.107.72.55] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcsY4-0007Y7-46
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 14:23:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VXVXNWBZ+kUI0I2EXpULlpUKKmhAYPL+rVP2bkBoOa8=;
 b=DR3xqvzlJpzi+URp/baIIUj7wZT48rMtCu0swSlK1p1nVZw119Efesmvzr98TY0KGhuP86J94IJqSraFfp1aXsDf2qxYYq062+g0gdBIWHRM6CMNp6HT+E0Xqv3sxerS6kkuyYt89erHV5KYoTuyowEuq2SiBvPTHX7EcbGrQbo=
Received: from BYAPR02CA0034.namprd02.prod.outlook.com (2603:10b6:a02:ee::47)
 by BL0PR02MB4931.namprd02.prod.outlook.com (2603:10b6:208:53::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1987.13; Mon, 17 Jun
 2019 14:23:48 +0000
Received: from SN1NAM02FT030.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::209) by BYAPR02CA0034.outlook.office365.com
 (2603:10b6:a02:ee::47) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1987.13 via Frontend
 Transport; Mon, 17 Jun 2019 14:23:47 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
 SN1NAM02FT030.mail.protection.outlook.com (10.152.72.114) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1987.11
 via Frontend Transport; Mon, 17 Jun 2019 14:23:47 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:37307
 helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1hcsXy-0008N1-MY; Mon, 17 Jun 2019 07:23:46 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1hcsXt-0005St-In; Mon, 17 Jun 2019 07:23:41 -0700
Received: from xsj-pvapsmtp01 (xsj-pvapsmtp01.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x5HENWla025701; 
 Mon, 17 Jun 2019 07:23:32 -0700
Received: from [172.30.17.116] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1hcsXk-0005QG-8q; Mon, 17 Jun 2019 07:23:32 -0700
Subject: Re: [PATCH 3/3] mmc: sdhci-of-arasan: Add support for ZynqMP Platform
 Tap Delays Setup
To: Ulf Hansson <ulf.hansson@linaro.org>,
 Michal Simek <michal.simek@xilinx.com>
References: <1560247011-26369-1-git-send-email-manish.narani@xilinx.com>
 <1560247011-26369-4-git-send-email-manish.narani@xilinx.com>
 <CAPDyKFrJwpwUUX_q2kcR9QY_fv9Lgos+ixPmU6JMeJVqJAiFpg@mail.gmail.com>
 <5feac3fb-bef3-b7d1-57d6-81e115e1f555@xilinx.com>
 <CAPDyKFp_ZvSjFp2FGonzGsnc9xPyZ7qOCaRnX1SimBxLpfz9-Q@mail.gmail.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <948514a0-e310-75fd-e8a8-6ef8bb14e41f@xilinx.com>
Date: Mon, 17 Jun 2019 16:23:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAPDyKFp_ZvSjFp2FGonzGsnc9xPyZ7qOCaRnX1SimBxLpfz9-Q@mail.gmail.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(346002)(376002)(39860400002)(396003)(136003)(2980300002)(51444003)(199004)(189003)(70206006)(47776003)(26005)(65956001)(186003)(65806001)(31696002)(76176011)(31686004)(14444005)(476003)(2616005)(63266004)(36386004)(446003)(77096007)(426003)(229853002)(2486003)(64126003)(336012)(5660300002)(52146003)(23676004)(478600001)(8676002)(54906003)(58126008)(316002)(81166006)(81156014)(110136005)(4326008)(356004)(6666004)(106002)(305945005)(486006)(70586007)(8936002)(36756003)(230700001)(9786002)(126002)(2906002)(44832011)(65826007)(11346002)(6246003)(50466002)(5001870100001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB4931; H:xsj-pvapsmtpgw02; FPR:;
 SPF:Pass; LANG:en; PTR:xapps1.xilinx.com,unknown-60-100.xilinx.com; A:1; MX:1;
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7d887526-c2c1-4309-70dc-08d6f32f6951
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:BL0PR02MB4931; 
X-MS-TrafficTypeDiagnostic: BL0PR02MB4931:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <BL0PR02MB4931A157E511205F3DF30823C6EB0@BL0PR02MB4931.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 0071BFA85B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: pSUZ84+1bbAWzoKxD4x1GUkOjt5gh42MxzVUuBFcH8qkXY6xxhnuY3ZMHhW3fIv7RngDV/WUE8V9QSDR//7/f2J+H9/poKq+wr8B+T6zVP0oaaEurdCcX+3GCvWAXvfnzrHnu/UHaGu+3CQ2Xfz+TIr47pRSNYku5EX4ah/WDbOS3Ra/0RLFJsl9xEr2bVDip1dqDtOWgM1bV3QXVJhFFJP09v5v2Y24LxybwiKFkIwsA+LKX6RPOtoOCREZEy1RZjXqKB3HiBdaK8o9W+mR1jLWj6RC696KxsEJ2lF6vCvAytPmq0SCJ/9AlrbH8oYn9rwNpI7/6NWhIf9WNeC7BID7aCPR330sr+yLAzMFben79YnyUFAyfwFw2cfOBT3/FhqzX9TbN2KCwMQJLSWm8ENs+iz4FOhgv+osLgrONMI=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2019 14:23:47.1157 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d887526-c2c1-4309-70dc-08d6f32f6951
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.100];
 Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB4931
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_072352_172143_9D49356A 
X-CRM114-Status: GOOD (  33.14  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.72.55 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 rajan.vaja@xilinx.com, nava.manne@xilinx.com,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Olof Johansson <olof@lixom.net>, Rob Herring <robh+dt@kernel.org>,
 Manish Narani <manish.narani@xilinx.com>, jolly.shah@xilinx.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17. 06. 19 14:21, Ulf Hansson wrote:
> On Mon, 17 Jun 2019 at 13:28, Michal Simek <michal.simek@xilinx.com> wrote:
>>
>> Hi,
>>
>> On 17. 06. 19 13:15, Ulf Hansson wrote:
>>> On Tue, 11 Jun 2019 at 11:57, Manish Narani <manish.narani@xilinx.com> wrote:
>>>>
>>>> Apart from taps set by auto tuning, ZynqMP platform has feature to set
>>>> the tap values manually. Add support to read tap delay values from
>>>> DT and set the same in HW via ZynqMP SoC framework. Reading Tap
>>>> Delays from DT is optional, if the property is not available in DT the
>>>> driver will use the pre-defined Tap Delay Values.
>>>>
>>>> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
>>>> ---
>>>>  drivers/mmc/host/sdhci-of-arasan.c | 173 ++++++++++++++++++++++++++++++++++++-
>>>>  1 file changed, 172 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
>>>> index b12abf9..7af6cec 100644
>>>> --- a/drivers/mmc/host/sdhci-of-arasan.c
>>>> +++ b/drivers/mmc/host/sdhci-of-arasan.c
>>>> @@ -22,6 +22,7 @@
>>>>  #include <linux/phy/phy.h>
>>>>  #include <linux/regmap.h>
>>>>  #include <linux/of.h>
>>>> +#include <linux/firmware/xlnx-zynqmp.h>
>>>>
>>>>  #include "cqhci.h"
>>>>  #include "sdhci-pltfm.h"
>>>> @@ -32,6 +33,10 @@
>>>>
>>>>  #define PHY_CLK_TOO_SLOW_HZ            400000
>>>>
>>>> +/* Default settings for ZynqMP Tap Delays */
>>>> +#define ZYNQMP_ITAP_DELAYS {0, 0x15, 0x15, 0, 0x15, 0, 0, 0x3D, 0x12, 0, 0}
>>>> +#define ZYNQMP_OTAP_DELAYS {0, 0x5, 0x6, 0, 0x5, 0x3, 0x3, 0x4, 0x6, 0x3, 0}
>>>> +
>>>>  /*
>>>>   * On some SoCs the syscon area has a feature where the upper 16-bits of
>>>>   * each 32-bit register act as a write mask for the lower 16-bits.  This allows
>>>> @@ -81,6 +86,7 @@ struct sdhci_arasan_soc_ctl_map {
>>>>   * @sdcardclk:         Pointer to normal 'struct clock' for sdcardclk_hw.
>>>>   * @soc_ctl_base:      Pointer to regmap for syscon for soc_ctl registers.
>>>>   * @soc_ctl_map:       Map to get offsets into soc_ctl registers.
>>>> + * @of_data:           Platform specific runtime data storage pointer
>>>>   */
>>>>  struct sdhci_arasan_data {
>>>>         struct sdhci_host *host;
>>>> @@ -101,6 +107,15 @@ struct sdhci_arasan_data {
>>>>  /* Controller immediately reports SDHCI_CLOCK_INT_STABLE after enabling the
>>>>   * internal clock even when the clock isn't stable */
>>>>  #define SDHCI_ARASAN_QUIRK_CLOCK_UNSTABLE BIT(1)
>>>> +
>>>> +       void *of_data;
>>>> +};
>>>> +
>>>> +struct sdhci_arasan_zynqmp_data {
>>>> +       void (*set_tap_delay)(struct sdhci_host *host);
>>>> +       const struct zynqmp_eemi_ops *eemi_ops;
>>>> +       u8 tapdly[MMC_TIMING_MMC_HS400 + 1][2]; /* [0] for input delay, */
>>>> +                                               /* [1] for output delay */
>>>>  };
>>>
>>> Please use two different structs, one for the clock provider data and
>>> one for the mmc variant/platform data. This makes the code more
>>> readable.
>>
>> Origin version before sending that out was using two fields.
>> +       u32 itapdly[MMC_TIMING_MMC_HS400 + 1];
>> +       u32 otapdly[MMC_TIMING_MMC_HS400 + 1];
>>
>> I did asked for putting it together to two dimensional array for
>> improving readability of this code. The reason was that you need to take
>> care about input/output together.
>> One thing I was also suggesting was to use instead of 2 just enum values
>> to specify IN=0/OUT/MAX to improve readability of this.
>> Do you think that using enum should be enough?
> 
> Not sure I understand what you suggest here, sorry. I have no problem
> with the enums.
> 
> The important point I am trying to make here, is that we should split
> the clock provider data and the mmc variant data, simply because those
> doesn't really belong to each each other.
> 
> Something like this:
> 
> struct sdhci_arasan_zynqmp_data {
>          bool tap_delays;
>          u8 tapdly[MMC_TIMING_MMC_HS400 + 1][2]; /* [0] for input
> delay, [1] for output delay */
>          + other variant specific data one may want to put here
> }
> 
> These are just regular mmc OF data that are parsed as any other
> property of the mmc device.
> 
> The "const struct zynqmp_eemi_ops *eemi_ops; should then be moved into
> a clock provider specific struct, which is assigned when calling
> sdhci_arasan_register_sdclk. I understand that all the clock data is
> folded into struct sdhci_arasan_data today, but I think that should be
> moved into a "sub-struct" for the clock specifics.
> 
> Moreover, when registering the clock, we should convert from using
> devm_clk_register() into devm_clk_hw_register() as the first one is
> now deprecated.

Ok. I got your point.


>>
>>
>>> In regards to the mmc data part, I suggest to drop the
>>> ->set_tap_delay() callback, but rather use a boolean flag to indicate
>>> whether clock phases needs to be changed for the variant. Potentially
>>> that could even be skipped and instead call clk_set_phase()
>>> unconditionally, as the clock core deals fine with clock providers
>>> that doesn't support the ->set_phase() callback.
>>
>> In connection to another version of this driver for latest Xilinx chip
>> it would be better to keep set_tap_delay callback in the driver. The
>> reason is that new chip/ip is capable to setup tap delays directly
>> without asking firmware to do it. That's why for versal IP there is a
>> need to call different setup_tap_delay function.
> 
> The ->set_tap_delay() callback is for ZyncMp pointing to
> sdhci_arasan_zynqmp_set_tap_delay(). This function calls the
> clk_set_phase() API.
> 
> What does ->set_tap_delay() do for the latest version?

There is different set of default tap delays which should be programmed
and it is done just via writing to registers which are the part of
controller address space.

>>
>>>
>>> [...]
>>>
>>> Otherwise this looks good to me!
>>>
>>> When it comes to patch1, I need an ack from Michal to pick it up.
>>
>> I am waiting till Rob ack dt binding and then I wanted to talk to you if
>> you want to take it with 1/3 or if you want me to take all of them via
>> my tree.
>> In previous releases I was taking them via my tree because there were
>> several subsystem changing firmware interface. In this cycle there are
>> just small changes to firmware interface that's why taking it via your
>> tree shouldn't be a problem too.
> 
> Okay, then let's target this via my mmc tree this time.

okay. Not a problem.

Thanks,
Michal


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
