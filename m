Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C367D78C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 16:37:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zbkxDIOAOl7JynzdLGoWq1M9vJbn/Bs85Nlxx/lT+A4=; b=YZa9PZkM6QpyLf
	cOCquHOBBjbe/A6PTxl8XdCGBSDc9Js+Nv43n8WIFDLLh68mXMULQYs9bptCTvvv7PxetR3zhk6k9
	JeE4JycXTUYMCVGqGI/tPn48+OSkzKPqnW+TiGoDT/ZlSSnbkLWhbUUv5/ROsjnL1zC/f8jl4+S7I
	bOaSnbDbp9ENv7jYRZ7zb0wEbTXrbHDfsiABvEoPD0htDZxFrOO39lSGBrBpCK0VvFS7/F1o6J9Ug
	KSXU1dOekngincOEzOrgc5DX2kWLlartk1zNeWZcfrxV8NY4j/alYp/a4pLd9clGxXWoO7P9CuAWi
	DzjFYRW069rkPlVmQBFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKNww-0004hL-HQ; Tue, 15 Oct 2019 14:37:22 +0000
Received: from mail-eopbgr770055.outbound.protection.outlook.com
 ([40.107.77.55] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKNwn-0004gO-RE
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 14:37:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=etWl/WIFTpZZnNGO/da7tZ3LjVjcP20J9sclVAtJI25dtwdTFoHtTuAr79eK4dB5Fyr1epP222W2CElT7hk8nnv61psfPfI5/dRKnE8qNE81+ouUTQWr/3oOo8fzy1gBDHY1xBil2h2d1Nw7qVAt4FJuNyqvy02MUMle6IZplrLKgW2HuUWYxmMJ0jwuwX6h2AyAIC1fkj6/FM5q+9eYOC0DtANLaeGdOkIR7Nu6tp1gDBy36qzR1WRhjg3clduWUoouC0oVBEDtntoVT6Ef44IsHIUvogwcXRXH/shCzfOgutAVKuPxEUSu6iSF2i1HdXJBQHwsrWweDOtRa9d0uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zuvBu2FEKPwRrPWYEZo1dAM/E6K1lFR5hb7zZT3YlCg=;
 b=dT7w9qU9oea3Pg32adt9r7JmF6rf3xdnFb8rfcP38orQKqD1AqGVGu6fvJMyKpuE327USTSmSqDeVRO8vL/dgs0/+DtcogEZT72PM8Z2cDJ6yr6vpq8TXHt7pAJZBc0uSPKMsCnSGPG0fxjyloj3BbtIo60p7OqYu3rl5PotPSsK5mkf5fHkPsAF5/pkTT1G7Fkbm5/EeaPcni8nTFd06dlJ45oJ7J9MklGp9n24D61YdYqe/M+WSZwvd4MRBzshWvboVtTB2JzFGPTlBa0eB2fM+gKNUMfUY3psoBPgs0BXYkhJDTFFmn25MUpwuN3QmAmOmVmScoVTtmt8JuOtxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linux-m68k.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zuvBu2FEKPwRrPWYEZo1dAM/E6K1lFR5hb7zZT3YlCg=;
 b=sDw34uGuhfgfbm87SaswzBuNMCjgpbFJznTVej5LmKp7B7jfQZqrNXJk1xZ9h6h2i5V3V/ht8abwtMiVFwXaQkR5J5EbjKKdRl4FFW/aFmBC8aE4UPc0inzr9ld9YMfT+mg2EuyP9jG4iOnjpjYX6hCGA1tQ1oEXCnrmnGkV90M=
Received: from MWHPR02CA0036.namprd02.prod.outlook.com (2603:10b6:301:60::25)
 by MWHPR02MB2734.namprd02.prod.outlook.com (2603:10b6:300:10b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.18; Tue, 15 Oct
 2019 14:37:09 +0000
Received: from SN1NAM02FT007.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::204) by MWHPR02CA0036.outlook.office365.com
 (2603:10b6:301:60::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16 via Frontend
 Transport; Tue, 15 Oct 2019 14:37:08 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linux-m68k.org; dkim=none (message not signed)
 header.d=none;linux-m68k.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT007.mail.protection.outlook.com (10.152.72.88) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2347.16
 via Frontend Transport; Tue, 15 Oct 2019 14:37:08 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iKNwi-0006BP-2q; Tue, 15 Oct 2019 07:37:08 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iKNwc-0008Mm-Vh; Tue, 15 Oct 2019 07:37:03 -0700
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x9FEaxtH011496; 
 Tue, 15 Oct 2019 07:36:59 -0700
Received: from [172.30.17.123] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1iKNwZ-0008LE-EK; Tue, 15 Oct 2019 07:36:59 -0700
Subject: Re: [PATCH] serial: core: Use cons->index for preferred console
 registration
To: Geert Uytterhoeven <geert@linux-m68k.org>, Michal Simek <monstr@monstr.eu>
References: <4a877f1c7189a7c45b59a6ebfc3de607e8758949.1567434470.git.michal.simek@xilinx.com>
 <CAMuHMdWY2VsY-CyAxSvpm1XYicAWqU7NORSQofQ+T195DwyLUg@mail.gmail.com>
 <7284590f-2b74-1b47-2d61-783ad8d5f46f@monstr.eu>
 <CAMuHMdWZYALZB1bP5Mtoq4Nj5iubzdWBf1vRY9Mh5QvjCDhBgA@mail.gmail.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <622f4c5e-e3ed-3f91-254d-78d905de79c9@xilinx.com>
Date: Tue, 15 Oct 2019 16:36:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdWZYALZB1bP5Mtoq4Nj5iubzdWBf1vRY9Mh5QvjCDhBgA@mail.gmail.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(136003)(396003)(346002)(189003)(199004)(9786002)(336012)(230700001)(31696002)(11346002)(446003)(8936002)(36386004)(5660300002)(50466002)(229853002)(478600001)(356004)(6666004)(186003)(23676004)(8676002)(106002)(70206006)(36756003)(2906002)(2486003)(26005)(65956001)(4326008)(70586007)(14444005)(31686004)(76176011)(81166006)(44832011)(126002)(47776003)(476003)(65806001)(6246003)(486006)(305945005)(426003)(2616005)(81156014)(53546011)(316002)(110136005)(54906003)(58126008)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR02MB2734; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f891033b-fea0-48ab-5966-08d7517d2860
X-MS-TrafficTypeDiagnostic: MWHPR02MB2734:
X-LD-Processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
X-Microsoft-Antispam-PRVS: <MWHPR02MB2734D4DFD08DE1A87DDDC699C6930@MWHPR02MB2734.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 01917B1794
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: e50BbnGs/24ha5olcnfhAncKaoT5LTBtBgBWH5WsAk+CBvEy4QGnoPlNAxyNxkUzfS5WfU7Oaqpj67wpvLQtmRSLvycYVwFjttMnEdbX5zmVQCn9RpW7CXbQ5oaJPYjDcADHKRw9W3XtG5l+7JZgt1edbYuXDBOzEj84DgXddMeKoGWo2RMJBgYfxZYLpfKP9BwJL7WKU+MhFC9laQzVD6yoZDr705bu25em6PT6lsZxee75eHHEvHmp0tkKZ8kAwQEgvCMxC+3z0x1cKxws+zQUHXbvYalWSePCTysQnMBIbq1Akj5prpJKUyjuQhtq5mvCGQrYamSvD9jRVfLNRuOzwIZOV16D51I3UDclmv8gDIufcQjg8v+D0hDoEnadE4uUMi81oGtsXqfihSFtOlw/JXEfsdRyDRS2gLPpK5o=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2019 14:37:08.4889 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f891033b-fea0-48ab-5966-08d7517d2860
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB2734
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_073713_884465_CD4508FA 
X-CRM114-Status: GOOD (  22.06  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.55 listed in list.dnswl.org]
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michal Simek <michal.simek@xilinx.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15. 10. 19 11:51, Geert Uytterhoeven wrote:
> Hi Michal,
> 
> On Tue, Oct 15, 2019 at 11:22 AM Michal Simek <monstr@monstr.eu> wrote:
>> On 15. 10. 19 11:19, Geert Uytterhoeven wrote:
>>> On Mon, Sep 2, 2019 at 4:29 PM Michal Simek <michal.simek@xilinx.com> wrote:
>>>> The reason for this patch is xilinx_uartps driver which create one dynamic
>>>> instance per IP with unique major and minor combinations. drv->nr is in
>>>> this case all the time setup to 1. That means that uport->line is all the
>>>> time setup to 0 and drv->tty_driver->name_base is doing shift in name to
>>>> for example ttyPS3.
>>>>
>>>> register_console() is looping over console_cmdline array and looking for
>>>> proper name/index combination which is in our case ttyPS/3.
>>>> That's why every instance of driver needs to be registered with proper
>>>> combination of name/number (ttyPS/3). Using uport->line is doing
>>>> registration with ttyPS/0 which is wrong that's why proper console index
>>>> should be used which is in cons->index field.
>>>>
>>>> Also it is visible that recording console should be done based on
>>>> information about console not about the port but in most cases numbers are
>>>> the same and xilinx_uartps is only one exception now.
>>>>
>>>> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
>>>
>>> This is now commit 91daae03188e0dd1 ("serial: core: Use cons->index
>>> for preferred console registration") in tty-next.
>>>
>>> This has been bisected to break the serial console on (at least)
>>> r8a7791/koelsch and r8a7795/h3-salvator-xs.
>>>
>>> The line "printk: console [ttySC0] enabled" is no longer printed.
>>> The system continues booting without any serial console output, and the
>>> login prompt never appears on the serial console.
>>>
>>> Reverting this commit fixes the issue.
>>
>> Sorry for trouble with this patch. Can you please point me to dts files
>> for these boards and also what's the value you have in uport->line and
> 
> arch/arm/boot/dts/r8a7791-koelsch.dts
> arch/arm64/boot/dts/renesas/r8a7795-salvator-xs.dts
> 
>> uport->cons->index?
> 
> On r8a7791/koelsch:
> 
>     Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
>     platform serial8250: uport->line = 0, uport->cons->index = -1
>     platform serial8250: uport->line = 1, uport->cons->index = -1
>     platform serial8250: uport->line = 2, uport->cons->index = -1
>     platform serial8250: uport->line = 3, uport->cons->index = -1
>     SuperH (H)SCI(F) driver initialized
>   * sh-sci e6e60000.serial: uport->line = 0, uport->cons->index = -1
>   * e6e60000.serial: ttySC0 at MMIO 0xe6e60000 (irq = 79, base_baud =
> 0) is a scif
>     printk: console [ttySC0] enabled
>     sh-sci e6e68000.serial: uport->line = 1, uport->cons->index = 0
>     e6e68000.serial: ttySC1 at MMIO 0xe6e68000 (irq = 80, base_baud =
> 0) is a scif
> 
> On r8a7795/salvator-xs:
> 
>     sh-sci e6550000.serial: uport->line = 1, uport->cons->index = -1
>     e6550000.serial: ttySC1 at MMIO 0xe6550000 (irq = 34, base_baud =
> 0) is a hscif
>   * sh-sci e6e88000.serial: uport->line = 0, uport->cons->index = -1
>   * e6e88000.serial: ttySC0 at MMIO 0xe6e88000 (irq = 120, base_baud =
> 0) is a scif
>     printk: console [ttySC0] enabled
> 
> Actual serial consoles marked with *.
> 
> There are no 8250 serial ports in the system, shmobile_defconfig just includes
> driver support for it.

ok. I will take a look at why it is not initialized in this case. Do you
have any qemu available for these boards?

Greg: Please revert this patch I will investigate why it is failing.

Thanks,
Michal


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
