Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCEC1A9312
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 08:17:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=urpi8NjVkNRY/HKyZxGC88ASOroqEqk0CdOxEYtkIFM=; b=o8RT84eu0JjVQA
	i/2HTTZDSKtiYY2HFygoUsQ0L1VS75CBeHfsAXtQhDFrdLOVayJ2xnNjdkm3c7fbNXoniwYTlCKd8
	PsjRczpi5dFwy/ZeC5LNRLwGDs3CMOZOG3k4vUAICgJG7SAFvs3rIUWCoa/AeMySdjHCfxeD08FUO
	VLbFMLC/tPviZPt6M2Q5ejp9gxBJRNg5UhbpEOR79t4LFQYm8V2YmDjDumQuSC33nJvWJ3R0Z1U68
	zeGQN6KVdoIwVe77Yahy8kk0LchCTNNXanMrehMiPmRU1WtFmUB9gOb1zRltPz7pESg8l2u8HmMkN
	4j7Rt/lZUYId6f2EQogQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jObMK-0000ut-CQ; Wed, 15 Apr 2020 06:17:16 +0000
Received: from mail-dm6nam11on2089.outbound.protection.outlook.com
 ([40.107.223.89] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jObMA-0000uS-7h
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 06:17:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K6iQANVetPNKUKr+4X8ewdldDwI4+CVIaUBVfJvi9lvxZWYbvjITVtGzhlykPGPK8o2XlhE/k14XHd9KfT5l49YoY+IhYsafoBbJzktxFwjgOBNoYMHk5/g5Ng+ZMzHbE3BJ4tVguFw8yLstJfZd39EpZroFzeyB5rMds1wv9C6N2rig+QyuPmqCVGBrNybKYuUw3Zi+AsFI6b4e8ogNNw/7yKZxS4FX+vvTco1fTcnbDRsoJP5sR/mczxfO365jJQi7s32PpSk0N5/qkUqlCoDvxf/wsua7fnDG1YEdro1p/EDppjYBG/tVasw73DSkdz72YDlLrSCDGtLrUMjg/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xRJ7Qkztwup3wXuSOwsl8VfmzNqngJuOvSPQVv3jP9I=;
 b=EJNwKRLyekeKLk9wkfOVL9nyk6tPGMndl/iT9YlwiJFIcIXIstbj26pSQAPcEFuP7ZwST44I/HWzWgaTRoP+DxHtKb+Wf/yNja6V0BhPOnOaAJRzhNcDbgQy9hR6HPqJ9quQ9jrA+CwsrBptmMN6lhIJGv/CRaXJGO1Qu4Msxdx7BmS6m64U11tq/g2l11WPxim4aJbi+p/PXaM05YhH58+31b1H+BxJH4HXvhYlGcLfzRYIE+eP30Um9RpjXk98/RCfwRoZ3PgU/u/1YvQtqPgs93J6I4KN4kPBGUn1mGFznM8qS2qKN7X0jvqi6FmUfMZY2znODD88zxYpBbzu7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=arndb.de smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xRJ7Qkztwup3wXuSOwsl8VfmzNqngJuOvSPQVv3jP9I=;
 b=M99Fn/91mnRntEN7A3qsTHp/yKpSg210fpFphrwtm2gdvtRCJq5LMHrkL9sqhTsZZ036NhKZ/nyE95wRAPuVuZTlPTzTEvQAyWX6uMQDX3DXSU6DmU65FsxRr4jGnQQNh+jGqEFkXr9C+KDeLQ3WcVzudZqrtB88GrNYefj7bWE=
Received: from MN2PR13CA0002.namprd13.prod.outlook.com (2603:10b6:208:160::15)
 by BN6PR02MB2275.namprd02.prod.outlook.com (2603:10b6:404:32::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Wed, 15 Apr
 2020 06:17:01 +0000
Received: from BL2NAM02FT004.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:160:cafe::2a) by MN2PR13CA0002.outlook.office365.com
 (2603:10b6:208:160::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.5 via Frontend
 Transport; Wed, 15 Apr 2020 06:17:01 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT004.mail.protection.outlook.com (10.152.76.168) with Microsoft SMTP
 Server id 15.20.2921.25 via Frontend Transport; Wed, 15 Apr 2020 06:17:01
 +0000
Received: from [149.199.38.66] (port=51536 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jObLO-00045R-LA; Tue, 14 Apr 2020 23:16:18 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jObM4-0001D0-VC; Tue, 14 Apr 2020 23:17:01 -0700
Received: from xsj-pvapsmtp01 (mailhub.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03F6GwE8005842; 
 Tue, 14 Apr 2020 23:16:58 -0700
Received: from [172.30.17.109] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1jObM2-0001Ay-CY; Tue, 14 Apr 2020 23:16:58 -0700
Subject: Re: [PATCH] drivers: soc: xilinx: fix firmware driver Kconfig
 dependency
To: Michal Simek <michal.simek@xilinx.com>, Arnd Bergmann <arnd@arndb.de>
References: <20200408155224.2070880-1-arnd@arndb.de>
 <69e8b684-c314-d356-bf3e-e38676d07853@xilinx.com>
 <CAK8P3a3j7BLJZGsNFU2XLsnnBiP0x+qkPVxD0-L9Faq7+m2=BQ@mail.gmail.com>
 <3e1841ff-6116-4cfb-82bb-f1996d6ef514@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <f3511f5a-f402-5253-1f52-735a0bd0b812@xilinx.com>
Date: Wed, 15 Apr 2020 08:16:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <3e1841ff-6116-4cfb-82bb-f1996d6ef514@xilinx.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(136003)(39860400002)(376002)(396003)(46966005)(70206006)(8676002)(36756003)(2616005)(31686004)(336012)(356005)(966005)(6666004)(186003)(81166007)(4326008)(5660300002)(44832011)(426003)(8936002)(2906002)(26005)(82740400003)(70586007)(81156014)(31696002)(53546011)(54906003)(110136005)(47076004)(478600001)(9786002)(316002);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 875266cb-700a-4729-cf4e-08d7e1049c3c
X-MS-TrafficTypeDiagnostic: BN6PR02MB2275:
X-Microsoft-Antispam-PRVS: <BN6PR02MB227513A67113103408FFD543C6DB0@BN6PR02MB2275.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 0374433C81
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wsVHB32ASKNGkiXOar0X7++8jxRoQ2hZUucTGmLVJKQjGgHtywYVr5md2st9G2jaDUi5GqjmB83Up3Y9HgxUfKdyuzDkRMO9Sf+h63MCzywYPrdpdT4ZnzNJfA0vmlO7AQ448W7GpSAibdlFE9OTWszOc4ilM4ToKlPOkCrxTN16vMzWbx4M1Rjd6NyIjoBlk1aE9VucfwT+n06V+PJgKwuyhJIQVnZC4gcTtWv+SxcdJV54mbJ70pjCOor/zbDqWt5WuEzNjXqI0RoPgVe8PpAvpM9Kk55mLnR4GOsWw+kWjEmxd/x9NEXML9tqBVyCGodFWmE8KvBRBu+XUShG+K+Mi6kwI2p14MbFu5l+jQsA1xExj06jkT6aRFiq57e+Q0cPp/zGCasDQ7Bms41VBaq1+A5G1f1D/hmDJf15oBb2PUBu2WTGl7vqUryod/w4tREiLIv9jegk7ba0fAh7lbbBmoUPdIL44L/NeXYqrB0IoxrBjmsE5Oisb/YbS5DTiqiZUT5kXRNo7usQXedkCkeEH+8lp/9fTyzitt+DOIgtKiQCF6UfBo4V+qf9273JeaWnjstNLxVbuXJEzxsWeg==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2020 06:17:01.3494 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 875266cb-700a-4729-cf4e-08d7e1049c3c
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB2275
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_231706_281026_F3AC3824 
X-CRM114-Status: GOOD (  20.53  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.223.89 listed in list.dnswl.org]
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 arm-soc <arm@kernel.org>, Jolly Shah <jolly.shah@xilinx.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09. 04. 20 12:43, Michal Simek wrote:
> On 09. 04. 20 11:09, Arnd Bergmann wrote:
>> On Thu, Apr 9, 2020 at 8:37 AM Michal Simek <michal.simek@xilinx.com> wrote:
>>>
>>> On 08. 04. 20 17:52, Arnd Bergmann wrote:
>>>> The firmware driver is optional, but the power driver depends on it,
>>>> which needs to be reflected in Kconfig to avoid link errors:
>>>>
>>>> aarch64-linux-ld: drivers/soc/xilinx/zynqmp_power.o: in function `zynqmp_pm_isr':
>>>> zynqmp_power.c:(.text+0x284): undefined reference to `zynqmp_pm_invoke_fn'
>>>>
>>>> The firmware driver can probably be allowed for compile-testing as
>>>> well, so it's best to drop the dependency on the ZYNQ platform
>>>> here and allow building as long as the firmware code is built-in.
>>>>
>>>> Fixes: ab272643d723 ("drivers: soc: xilinx: Add ZynqMP PM driver")
>>>> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>>>> ---
>>>>  drivers/soc/xilinx/Kconfig | 4 ++--
>>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/soc/xilinx/Kconfig b/drivers/soc/xilinx/Kconfig
>>>> index 223f1f9d0922..646512d7276f 100644
>>>> --- a/drivers/soc/xilinx/Kconfig
>>>> +++ b/drivers/soc/xilinx/Kconfig
>>>> @@ -19,7 +19,7 @@ config XILINX_VCU
>>>>
>>>>  config ZYNQMP_POWER
>>>>       bool "Enable Xilinx Zynq MPSoC Power Management driver"
>>>> -     depends on PM && ARCH_ZYNQMP
>>>> +     depends on PM && ZYNQMP_FIRMWARE
>>>>       default y
>>>>       select MAILBOX
>>>>       select ZYNQMP_IPI_MBOX
>>>> @@ -35,7 +35,7 @@ config ZYNQMP_POWER
>>>>  config ZYNQMP_PM_DOMAINS
>>>>       bool "Enable Zynq MPSoC generic PM domains"
>>>>       default y
>>>> -     depends on PM && ARCH_ZYNQMP && ZYNQMP_FIRMWARE
>>>> +     depends on PM && ZYNQMP_FIRMWARE
>>>>       select PM_GENERIC_DOMAINS
>>>>       help
>>>>         Say yes to enable device power management through PM domains
>>>>
>>>
>>> The same issue is likely with others drivers dependencies too which
>>> depends on ARCH_ZYNQMP.
>>>
>>> It means all drivers which includes "linux/firmware/xlnx-zynqmp.h" and
>>> call zynqmp_pm_get_eemi_ops() should depend on ZYNQMP_FIRMWARE instead
>>> of ARCH_ZYNQMP.
>>
>> The only one I see that has a hard dependency on ARCH_ZYNQMP
>> without allowing compile-testing at the moment is drivers/edac/synopsys_edac.c
>> but that doesn't use the firmware interface.
>>
>> What I see in the header are declarations for exported functions:
>>
>> int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
>>                         u32 arg2, u32 arg3, u32 *ret_payload);
>> #if IS_REACHABLE(CONFIG_ZYNQMP_FIRMWARE)
>> const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void);
>> #else
>> static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
>> {
>>         return ERR_PTR(-ENODEV);
>> }
>> #endif
>>
>> The second one already allows compile-testing by turning into an
>> inline stub, but zynqmp_pm_invoke_fn() does not, and this is the
>> one causing the problem here.
>>
>> I still think my patch is a good fix for that issue, but if you want to
>> handle both interfaces the same way, we can also do that, either
>> removing the stub and using a proper dependency, or using
>> the same stub trick for both.
> 
> I have really not a problem with your fix above because the patch which
> was applied has started to remove dependencies on ARCH_ZYNQMP. It
> shouldn't be there because the same interface is used for new Xilinx
> Versal device.
> 
> That header has been reworked by patches from here.
> (last one) http://lkml.kernel.org/r/20200318115452.GA2491827@kroah.com
> that's why changes has to go on the top of it.
> 
> Anyway feel free to take it directly or I will take it and send you pull
> request. But will also look at other dependencies to make sure that they
> are correct.
> 
> Acked-by: Michal Simek <michal.simek@xilinx.com>

Applied to zynqmp/soc.

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
