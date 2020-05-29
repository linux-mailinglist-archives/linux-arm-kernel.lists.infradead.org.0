Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0011E77E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 10:09:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y4PyqIScbgWRGsInBpeDr1YXUe4+69DA1UFcO+FyW8c=; b=UtDrmLLCOFUApV
	A8IDZAijYhrXTJU9XD6ORVyF0nzpjrfjtZWs/lL9UVv1F20hX+Ru1CYJLy3EGxFp6BQfZ9Kcm9+Xh
	omt6pGtP3Fpa00MINJN6SNvxQPShXmVNskRNA0KBbOqx8CTuq68kN1LHJRrbAB6Nm2XVIqH47OXUd
	hw2kpPNrtpB92dgnd5beIycGk1GljzUDYdl9SdC9qIz0ToikJ4p9JzY3yNQ0ZLhSrJrEwVK83k+Zg
	l0fB+tEyOYrhD4uONApmnAHJHaZhqOOInbcQhSrvd2Xuopvv7ZEJBC/lgnLN23naMvZ9H3Kh7lf49
	0Xdz9aSguCpm7htmz3yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jea58-0005g7-6p; Fri, 29 May 2020 08:09:34 +0000
Received: from mail-eopbgr680061.outbound.protection.outlook.com
 ([40.107.68.61] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jea4y-0005fi-EP
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 08:09:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=je5ulaOA1SZR2Qt7Ed5JSsl1cU8yRvCQ5YUUN41XCI1LlUJbJX7tFtw6WMsZ0OlXseMtjO+v6whuC/qndMM6Vg01JdMBafKoc/jEn+bhuqt8nTThRbLUp2zQSeWUaLGBpGjyWIYKrgPImNaCAL3YV9EAk+iiy1lEVceMdLh/XLL6Aux1U3Y4EqfbmgsCO0IJElNv7gTiStcvUmtPhpOGBsxH/Y6RrPVLPYseOUOjkz3npcjrHpbOK/b6p9N11mPCVplWEer/xbjFF6vnAl9Y7gIf157DgrkPNqfgkfO4hbONgwJTD5akvjYy3VQYLJn7v8VsgoqoGBJtD9HXJoUQmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZSqTSO+2O5AOxlI6moB2Ieua0s23ZI67j2RKtCupJ28=;
 b=B5BIr6HItsMYIU+mMZ71VedB9yg+MgQmmtjBUqWcSgPeSyxgK7R5D96q6SDA4+rwZ8SH2gsztvgb6B1obFRqlqYoHR56uQRSLzLwWYLSFBSKWxCBurMgnGIO2lUy0kgFLRSuMepkJQKtdt8SmcojHaN7qJjPKHG23FHLpymGK/9NX5G/auD63d/tkPNiYR6piLpTZSNKe3JVQBTXITTjaOj/1wBLbErTjzz2YSZdxjpoQUKgj410dOw1zkYm7uumkEFNLznF68/rJm6vVUu71M3gCEb6wgMaNu8D0fctTx8C9i1+reprF8G8+obHAmKvcQTsl7zQkKA8FF24BsfSFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=arndb.de smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZSqTSO+2O5AOxlI6moB2Ieua0s23ZI67j2RKtCupJ28=;
 b=idlWh8/V2kGsNgEr6o654L2JAtY3CI51ktolO/rtAJbM5NMfN2q2mYGrHZwH/2ox43tpC8YvZ/asWvRbqZfk1uO+wMzJtiYQivlCLQKz8P7DUH4b9YcF3N/qELxHxxBCgb6swtfHh6EKn0fHC3RSDw5dpDs6ZNkna7p6n9OpzJg=
Received: from SN4PR0201CA0035.namprd02.prod.outlook.com
 (2603:10b6:803:2e::21) by DM5PR02MB2345.namprd02.prod.outlook.com
 (2603:10b6:3:52::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Fri, 29 May
 2020 08:09:21 +0000
Received: from SN1NAM02FT063.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:2e:cafe::6b) by SN4PR0201CA0035.outlook.office365.com
 (2603:10b6:803:2e::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19 via Frontend
 Transport; Fri, 29 May 2020 08:09:21 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT063.mail.protection.outlook.com (10.152.72.213) with Microsoft SMTP
 Server id 15.20.3045.21 via Frontend Transport; Fri, 29 May 2020 08:09:21
 +0000
Received: from [149.199.38.66] (port=33139 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jea4I-0007bp-98; Fri, 29 May 2020 01:08:42 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jea4v-0003Ly-10; Fri, 29 May 2020 01:09:21 -0700
Received: from xsj-pvapsmtp01 (mail.xilinx.com [149.199.38.66] (may be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 04T89GGk000426; 
 Fri, 29 May 2020 01:09:16 -0700
Received: from [172.30.17.109] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1jea4p-0003JS-Qq; Fri, 29 May 2020 01:09:16 -0700
Subject: Re: [PATCH] clk: versatile: Fix kconfig dependency on
 COMMON_CLK_VERSATILE
To: Arnd Bergmann <arnd@arndb.de>, Rob Herring <robh@kernel.org>
References: <20200527181307.2482167-1-robh@kernel.org>
 <CAK8P3a27RkBkt5mnBeVJ-67MnJi29Dc+jYL2Q8JskaZ1W_XrKg@mail.gmail.com>
 <CAL_JsqJ83UJ0Roy_NJBLXuvhPG2zBDod8ZgSGrEtpKSnYPtowQ@mail.gmail.com>
 <CAK8P3a2S-8fvyiKTk+o876r1XMV6C=HipiRutSWSe0P2rdL4Xg@mail.gmail.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <65db9ced-c579-4373-4b94-910f3a8bec99@xilinx.com>
Date: Fri, 29 May 2020 10:09:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a2S-8fvyiKTk+o876r1XMV6C=HipiRutSWSe0P2rdL4Xg@mail.gmail.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(136003)(396003)(346002)(46966005)(26005)(47076004)(478600001)(70206006)(70586007)(8936002)(83380400001)(8676002)(4326008)(9786002)(107886003)(2906002)(82310400002)(31696002)(81166007)(44832011)(5660300002)(356005)(186003)(316002)(6666004)(336012)(31686004)(2616005)(53546011)(426003)(82740400003)(36756003)(110136005)(54906003)(341764005)(42866002)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2ceee02c-98df-4960-4028-08d803a797c0
X-MS-TrafficTypeDiagnostic: DM5PR02MB2345:
X-Microsoft-Antispam-PRVS: <DM5PR02MB2345DCC588C8EEA51FCE16BFC68F0@DM5PR02MB2345.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 04180B6720
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xMJouu4hjJUgB+xA8kQiVgAw/7mdX1np8DppBu+RSVOtWbBGlPEKbBki5v41tCkF5GWO5TABiur7WN60y3Vz8ofx7jQQ9obzDiJ0jaCFB1np8ae/8YEpCKSwg9nBX6i+zG3eF91QLHORWBh9TZLnn3yMxMpuLRrwefWXJgdOvI+tKsOQa71zoHMYnhraSb+8QoilqLLSKMO9hegLA3qSsj1TXl0rtIiSjGnHV/rvdiWQKWTOv4eiSczcPJZyrmvosbGwjvjneXOWTuo//G5k3qajv4bWZn0as3P7a6zFaQlbCddgioZXDQtJKrpxoLImBniMTXEnu1lW+Q5d3SlH4WIFDuStdDygFitEb3q3dTDTaV75YzdN7KSHz9eXZDXVEoECmyrYJ5tYWok5NlPrT59/GC+DAJiAPHaUNsBiyJLnrZDKFuqAf8dk3MXSt0oV1YT7QSzDevbtVX9XI3aqaiyCP3HDUv8aJgeaoWWF8PE=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2020 08:09:21.3171 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ceee02c-98df-4960-4028-08d803a797c0
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB2345
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_010924_487631_1F2E9AE9 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.68.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.68.61 listed in wl.mailspike.net]
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
Cc: Anders Roxell <anders.roxell@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-clk <linux-clk@vger.kernel.org>,
 SoC Team <soc@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29. 05. 20 9:38, Arnd Bergmann wrote:
> On Thu, May 28, 2020 at 11:29 PM Rob Herring <robh@kernel.org> wrote:
>> On Thu, May 28, 2020 at 5:57 AM Arnd Bergmann <arnd@arndb.de> wrote:
>>>
>>> On Wed, May 27, 2020 at 8:13 PM Rob Herring <robh@kernel.org> wrote:
>>>> diff --git a/drivers/clk/versatile/Kconfig b/drivers/clk/versatile/Kconfig
>>>> index a0ed412e8396..8c1b0e8e8d32 100644
>>>> --- a/drivers/clk/versatile/Kconfig
>>>> +++ b/drivers/clk/versatile/Kconfig
>>>> @@ -1,11 +1,8 @@
>>>>  # SPDX-License-Identifier: GPL-2.0-only
>>>>
>>>> -menuconfig COMMON_CLK_VERSATILE
>>>> -       bool "Clock driver for ARM Reference designs" if COMPILE_TEST
>>>> -       default y if ARCH_INTEGRATOR || ARCH_REALVIEW || \
>>>> -               ARCH_VERSATILE || ARCH_VEXPRESS
>>>> -
>>>> -if COMMON_CLK_VERSATILE
>>>> +menu "Clock driver for ARM Reference designs"
>>>> +       depends on ARCH_INTEGRATOR || ARCH_REALVIEW || \
>>>> +               ARCH_VERSATILE || ARCH_VEXPRESS || COMPILE_TEST
>>>>
>>>
>>> I've applied this version now but added ARCH_ZYNQ as an additional
>>> dependency to work around one of the warnings we got earlier.
>>
>> That's just spreading a copy-n-paste error. Why don't you apply the
>> Zynq patch I referenced if Michal never did?
> 
> Sorry I completely missed the reference from your previous email.
> I've applied that patch on top now, reverting the change I did in the
> process.
> 
> I had noticed that the Zynq Kconfig seemed rather odd, by my interpretation
> was that it had been added intentionally in order to use an existing clk
> controller driver for configurable logic on Zynq that was not part of the
> main DT file. As Michal already confirmed that it was just a mistake, I
> agree it should be removed.

Sorry I didn't sent PR yet but I have your ICST patch in next branch.
Arnd has applied it already that's why won't be sending PR just for this.

Thanks,
Michal


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
