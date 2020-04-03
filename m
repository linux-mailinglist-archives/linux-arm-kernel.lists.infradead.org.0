Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 114D819DAB4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 17:57:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FVS2dOJVybNR8BddCbrPvQ7JVKMrbzxKevVdGhfHq08=; b=I/lt4cekrAw45/
	RnfKrmw0e3hv8lQHhWN2eFgkq+Su7BOv3EnShCda1jFW7SVeNoR7EO3V8ScQTp7e6iRZTi9DLrykM
	GiuwBgqSP086tVboK9raa352OqtQdGk4Eif9a7yT+gujEumpVNW2TWG1m4yQvc4qj0rRlOwTinryH
	gXG0xQMsv3Hrv7LNPEYP9qPgcZUhNB3P1IiJb/om16gKHBo9Da9q8jconpTP0yZGGhv5YBqJijt5o
	0ooh6Ek87D+AwLe54EwjFQvhmDhGS8r6XFt8rTnq3ytNsU9yXPW9p3qHf5bhzU/jRCPmRlDdyNWk6
	hOT0G7QQDHwOoFI5Ob4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKOgt-00012W-Up; Fri, 03 Apr 2020 15:57:07 +0000
Received: from mail-mw2nam10on2070.outbound.protection.outlook.com
 ([40.107.94.70] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKOgn-000120-4H
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 15:57:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q0EEs2ftM4Mlns3gX5WKcbXsL+jGHpMAYnok0SpPpO6PnWIWygKsIww/h7Kcz8vhag3YD7nD1x/GCeXMbLAFSomgw8eDxy5vsnMpvEp98UAYr3bNCiFNVsk/tASvQo4gml/YBQx5m65sdHgO1LrlqdQ1doZD82TrGMmygxOwzird8iO1jGGuHawiEyVv336pL6hpxdA8pCodmMt379DvzO33/opJ+acr5+3kfkfcyAtMwE/pwK93cq/xwyu6bNm9dexmBj67WEIeuyFDNhoHjQ73c40oiWtMMP3MRtnokEJQ5zdquFmJ5rkBfxpYZjHzZRlWV2PeGmSLg/pj5Ljo7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GvyOMuTw77yIJheOplEKwK9UTv++WcbpV8gBsScfTZ8=;
 b=m6aMiUbMED7YhqpmJwp5seq2qmEkVvNlC3IRtaJ8nieSv7nDOl4KP1gao8RddY4BHnLhI1g0Eg0X9wrm/F/kbx6UvfL5vQqytvU07hGj+MyhwH1ji7d6LgqyGpAacEbInpks5mfOM8RbsCHFcYJXd5j5Cd+J/9N7bqI5oFGq+3wUZaUXEL27er+dT5ebMc9ezM6WeTXpjP7UuPfKFOg4ELIDtM9T+wi+jOsu8wWHNAGDmI8LF5pdOfakDsgRXhxpJ8UGt5S/x74BIQO7ZKSu7ZzIuzo9BsGS6Gjr2LRH5oR9nU0nSB3v6P2Rw83rju/dooEbGlFoL9ggwLCiPlFmeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GvyOMuTw77yIJheOplEKwK9UTv++WcbpV8gBsScfTZ8=;
 b=YuszoxdTx8v3SJizMU/HSitfWDAS8ApCjnfPwB7un674BcPixSQv4Tza25bFX5YjTjM403G1xDLthaKUo/OoQXxuNCGAo+/c/snIT2XbqS6z3q9QxmyVj9qBuMR4qMhCjKw92eGco3vZZT5Ldh/vp+aonorgIo30GUp+K7xZ2+8=
Received: from BL0PR02CA0032.namprd02.prod.outlook.com (2603:10b6:207:3c::45)
 by SN6PR02MB4141.namprd02.prod.outlook.com (2603:10b6:805:3a::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20; Fri, 3 Apr
 2020 15:56:57 +0000
Received: from BL2NAM02FT013.eop-nam02.prod.protection.outlook.com
 (2603:10b6:207:3c:cafe::69) by BL0PR02CA0032.outlook.office365.com
 (2603:10b6:207:3c::45) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15 via Frontend
 Transport; Fri, 3 Apr 2020 15:56:57 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT013.mail.protection.outlook.com (10.152.77.19) with Microsoft SMTP
 Server id 15.20.2878.15 via Frontend Transport; Fri, 3 Apr 2020 15:56:57
 +0000
Received: from [149.199.38.66] (port=38686 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jKOga-0000h4-Dd; Fri, 03 Apr 2020 08:56:48 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jKOgj-00009S-4X; Fri, 03 Apr 2020 08:56:57 -0700
Received: from [172.30.17.108] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1jKOge-00008l-AT; Fri, 03 Apr 2020 08:56:52 -0700
Subject: Re: [PATCH 0/7] serial: uartps: Revert dynamic port allocation
To: Maarten Brock <m.brock@vanmierlo.com>,
 Michal Simek <michal.simek@xilinx.com>
References: <cover.1585905873.git.michal.simek@xilinx.com>
 <20200403093216.GA3746303@kroah.com>
 <d9598635-a8ef-eff2-22e8-4fa37f8390b3@xilinx.com>
 <20200403094427.GA3754220@kroah.com>
 <2983dbe2-16e6-4b7b-73a6-49d8c3d70510@xilinx.com>
 <211f564d5594994fc677d3fea4222997@vanmierlo.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <a582c754-8803-0fc9-7ab3-0b79837a74ac@xilinx.com>
Date: Fri, 3 Apr 2020 17:56:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <211f564d5594994fc677d3fea4222997@vanmierlo.com>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(396003)(136003)(46966005)(2616005)(356004)(110136005)(36756003)(8676002)(186003)(5660300002)(81156014)(4326008)(316002)(26005)(31686004)(47076004)(70586007)(6666004)(81166006)(426003)(54906003)(336012)(2906002)(44832011)(82740400003)(8936002)(31696002)(9786002)(478600001)(53546011)(70206006);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 13a582d6-1725-4832-1947-08d7d7e7a36d
X-MS-TrafficTypeDiagnostic: SN6PR02MB4141:
X-LD-Processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
X-Microsoft-Antispam-PRVS: <SN6PR02MB41414C5B4988DCB204A3B3F9C6C70@SN6PR02MB4141.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 0362BF9FDB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nI0qrSHOX+mGqZ3KMZuDyvTR6K2Neb97ZTZdxV8ujD3LtTRTLITYaosEzTfnYiECT0hqHiZgtp0Z6dY18/GPFPCZOnFbUpEmwlAf0tFtZGcjsIpo41SPBYf+YtxhO764kbG4MhZcVn+bmPqHJctfl7xShchmErRi3z46iMhlBdDn5pRZ6W7xU2+edXH0Od598k59GwSSQszb/AbVEe173+41TL3wGMLPG8/r29q/kIGjae9e6iUGkk8ciRv/Z4mEl7SQukesi03HoDbvKJpIElKdpHMW+IeXATzbkErwVNMRBH+VJe9v+SeHHuI5Ppj6bAb2UBA50b6eDjYRz3+b96HCzrn6Piz2BaRul2sznsR+iWMk5ayljSqfWDOoyd3Qnc7bJo0bWRywWZUf5i3SH1IP1KaQYIA8VbH8EJ6NEfB55qv2Df1H4+bb1jqBONAHrbnbqfepNEDxZRHhat5uH6OjGuYz5WWqkMOuepoA2CkQoIJfP2i6omSxP9PIqCio/4l4VAxdtSVp6Mz0EwwQWg==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2020 15:56:57.5217 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 13a582d6-1725-4832-1947-08d7d7e7a36d
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_085701_172265_D1667610 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.94.70 listed in wl.mailspike.net]
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
Cc: monstr@monstr.eu, linux-serial-owner@vger.kernel.org,
 Greg KH <gregkh@linuxfoundation.org>, johan@kernel.org,
 linux-kernel@vger.kernel.org, git@xilinx.com, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03. 04. 20 17:48, Maarten Brock wrote:
> On 2020-04-03 11:51, Michal Simek wrote:
>>
>> Thanks. I am definitely interested to hear more how this could be done
>> differently because that hardcoded limits are painful.
>> On FPGAs you can have a lot of uarts for whatever reason and users are
>> using DT aliases to have consistent naming.
>> Specifically on Xilinx devices we are using uartps which is ttyPS,
>> uartlite which is ttyUL, ns16500 which is ttyS and also pl011 which is
>> ttyAMA.
>> Only ttyAMA or ttyPS on one chip are possible.
>>
>> And right now you can't have serial0 alias pointed ttyPS0 and another
>> serial0 pointed to ttyUL0 or ttyS0. That's why others are shifted and we
>> can reach that hardcoded NR_UART limit easily.
>> And this was the reason why I have done these patches in past to remove
>> any limit from these drivers and if user asks for serial100 alias you
>> simply get ttyPS100 node.
> 
> I would argue that the trouble originates from every uart driver using
> its own naming scheme and thereby creating separate namespaces. If all
> uarts would register as /dev/ttySnn then the serialN alias method would
> work. These non-overlapping namespaces is something the linux kernel
> driver community has allowed to happen.
> 
> If the namespaces are not abandoned and disallowed, then the serialN
> alias method must no longer be used for any driver that does not create
> /dev/ttySnn devices. Every namespace will require its own alias base.
> Or forget about deriving the number from an alias and set the number in
> a property in the device tree node itself. The latter has my preference.

Uartlite and as I see ucc_uart are only two driver which are using
port-number property for this purpose.
And IIRC this property was the part of any spec long time ago.

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
