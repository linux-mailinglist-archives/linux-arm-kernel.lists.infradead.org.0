Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB7111FE75
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 07:29:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=98vhqY14J1hwMeiyPQ/UNOYiPpFXyGsXh8FD9Dd3sAA=; b=HTQMyVwDN0XoUW
	8LBCAIDwWBcxzEP3af+LUNkJ4lxBIODLHF1o38ZcKRHYZ6qNgqXJ0/a9JODto79Bac7r05RtKRQWt
	BEPR0w01fPslvZdepnIL/lbSKF0c5U1SL9c3DA5lVxnkoTZ0R7uCfLt4Z8OcuwW4+gYcoqt8OuXAA
	aBExpHfUXJJR9DgAWGwayZ8Vn68DbBGz3mmvqdvQFdWPo9REl3NbxRKEij+2XBWQ9DzGMiJtPqZsj
	9hcuX0E8fnw8IGpzP9G2Q3RlZCwzUyHZgE8EeO8q3XWrntL6J99kZzHgmJMGzUUO1QjV8eplmeDSc
	iC9ihl0SLrF4PbaT4YwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igjsE-0000h1-M9; Mon, 16 Dec 2019 06:28:54 +0000
Received: from mail-bn8nam11on2041.outbound.protection.outlook.com
 ([40.107.236.41] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igjs3-0000ga-Sn
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 06:28:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O/hq5v8TuADHAaDlbPJfJlwtXtosZhVuVbGfELbpK15klH9im/oOluLX86lsArAlHUxaGZcyKDAaKw8FaiFtZ8CRCrrz72JOcQu6WzlxoY2q6dCaXl/LwexbNh5KSX/MvcT5F+sXLMGwiXE/h4MCIuE8EQKDUb0Vd55ONyW4/whBNg+CUq/pdjimlwLk1UAOKfPH217E2F32Yj5CVqZCHJsvkmQ/tO5d1YTDqWyKqTwO14xZRZ3KIQy93WIId12jNmi1BJe4MFfV8g9sJWE0N97aYBYaEtFYhje72Vb2qcjoKBMgvjWmyvZTuAVQJQwdJ+Is2b0kqXwoLmTTbVdN3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ya+21yvykUVqTrYy5Im2aNZwhEU3y6nDuWKOSYVQ0wk=;
 b=Ih/l4A/iUcusJaNu8wiWtlreg/MYxAsOZBWfDPBWBrGhkCWpgPR/DdtWffPRDlJfhEeltLIfVW76sHIJXUgfeGLgPQfFqh5VgYeDinSYqhbAnEH1cz2UvMpffY0u3EaPYPo4dDXZ/Mf9553YrIuns211d0ii3sdfdPF8DV5DTJ0XNfE0AQXwHAlT28FM68o05oF1G6jDQ/oD4VbguqPORW9j+P558bTJBOAGQaP1gA45aj5t2iU1TxqU7fSXpfiTj5M6R35CeSZpsuYfusguBa25+dYwiCLrX4dmpWeLWUpaO+NfBGhaEXXKMS2dKwbu4bjTUKZ97t9+7JctfBHN0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=roeck-us.net smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ya+21yvykUVqTrYy5Im2aNZwhEU3y6nDuWKOSYVQ0wk=;
 b=Qs2ETkPJkiFmgoRlatwaJBvAdNnJwF4vwXdBtHEX1OCZpIb5Wa6P2+6cGJfgjHvLBXQ6QfXj5WO3IgDlJxpybGV+bKfU61AC4SJSQEUeyrZQhT4naqSJSMJcl0xr22AHLW81Uc0gIoqbOKkmAODvNjdu9cOVPA3SIswsLaooysg=
Received: from SN6PR16CA0069.namprd16.prod.outlook.com (2603:10b6:805:ca::46)
 by SN6PR02MB5213.namprd02.prod.outlook.com (2603:10b6:805:70::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.18; Mon, 16 Dec
 2019 06:28:37 +0000
Received: from SN1NAM02FT014.eop-nam02.prod.protection.outlook.com
 (2603:10b6:805:ca:cafe::9a) by SN6PR16CA0069.outlook.office365.com
 (2603:10b6:805:ca::46) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.18 via Frontend
 Transport; Mon, 16 Dec 2019 06:28:36 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; roeck-us.net; dkim=none (message not signed)
 header.d=none;roeck-us.net; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT014.mail.protection.outlook.com (10.152.72.106) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2538.14
 via Frontend Transport; Mon, 16 Dec 2019 06:28:36 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1igjrv-0007Mq-Oz; Sun, 15 Dec 2019 22:28:35 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1igjrq-0000pi-Ka; Sun, 15 Dec 2019 22:28:30 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp1.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xBG6SRhI015266; 
 Sun, 15 Dec 2019 22:28:27 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1igjrn-0000oE-7b; Sun, 15 Dec 2019 22:28:27 -0800
Subject: Re: [PATCH 1/5] arm64: zynqmp: Add firmware DT node
To: Guenter Roeck <linux@roeck-us.net>, Michal Simek <michal.simek@xilinx.com>,
 "Edgar E. Iglesias" <edgar.iglesias@xilinx.com>
References: <20191018160735.15658-1-m.tretter@pengutronix.de>
 <20191018160735.15658-2-m.tretter@pengutronix.de>
 <20191208223814.GA21260@roeck-us.net>
 <dbba2a25-cbf7-60f4-99f7-056512e28d00@xilinx.com>
 <4821742f-2d60-b722-b954-263de975bf2e@roeck-us.net>
 <20191209074840.GP32392@toto>
 <d2e63acb-c076-7bfb-c492-0355ec106cbf@roeck-us.net>
 <fa36a9e9-9e44-d1ff-cfdc-22d0484318ff@xilinx.com>
 <573f0472-9779-c5df-f199-4e0958753fd8@roeck-us.net>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <ba5e00b3-2208-6398-1df4-337978db128b@xilinx.com>
Date: Mon, 16 Dec 2019 07:28:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <573f0472-9779-c5df-f199-4e0958753fd8@roeck-us.net>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(396003)(39860400002)(199004)(189003)(8676002)(81156014)(36756003)(9786002)(31686004)(54906003)(81166006)(8936002)(26005)(31696002)(426003)(70586007)(70206006)(356004)(6666004)(44832011)(4326008)(186003)(53546011)(478600001)(2616005)(2906002)(110136005)(336012)(6636002)(5660300002)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB5213; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 91cd6f35-74b7-4228-295a-08d781f12e77
X-MS-TrafficTypeDiagnostic: SN6PR02MB5213:
X-Microsoft-Antispam-PRVS: <SN6PR02MB52133F83B8D25BAD66F7AA4DC6510@SN6PR02MB5213.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 02530BD3AA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fRDdeDgAawJX2om2/hChdy6+UhbaMNciEYSQGKjlYiffhjJiINjBhPJ9lN9Oa7CbiCbtM4E9VKiVVaKNM7eaIFwVQbP7mzBR30Kqhaorbhz/5Ubiau28PLvbPvR1qkysYAADuqQJ+zUgobk1mUTUkmePNCuF6J4BwtxwAJXtR9DjEI325ZyP/RglVmh8pKuotijgU+mhOGSxIM7m6IguWY3NHRXC2p5Q6kAZsfiBw4pK4eke2z5Z2Jwx8Ktjqi9hfD9aFX8odCwyaiup5JKfYiKxrvg9Y6qzyF9A5KH1Hut6dct+eKWOo7RLeTDnwsEvqPXOZntVs7z2tfpPBNbP8JOyKmNfbX1EvOZd/qzcZ9PAa2+Iy5thpk/vY1Bpn7refe9UXZbOmBuXDsclELz/VjKsnw/P1vgmtRJcPvUssubRunG5dlQIjw40A0ZJOJQ/
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2019 06:28:36.1756 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 91cd6f35-74b7-4228-295a-08d781f12e77
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5213
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_222843_935726_17E038A1 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.41 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Rajan Vaja <rajan.vaja@xilinx.com>, Michael Tretter <m.tretter@pengutronix.de>,
 qemu-devel@nongnu.org, Edgar Iglesias <edgari@xilinx.com>, robh+dt@kernel.org,
 Rajan Vaja <rajanv@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15. 12. 19 6:28, Guenter Roeck wrote:
> On 12/9/19 7:02 AM, Michal Simek wrote:
>> On 09. 12. 19 15:32, Guenter Roeck wrote:
>>> On 12/8/19 11:48 PM, Edgar E. Iglesias wrote:
>>>> On Sun, Dec 08, 2019 at 11:19:33PM -0800, Guenter Roeck wrote:
>>>>> On 12/8/19 10:42 PM, Michal Simek wrote:
>>>>>> Hi, +Edgar
>>>>>>
>>>>>>
>>>>>> On 08. 12. 19 23:38, Guenter Roeck wrote:
>>>>>>> On Fri, Oct 18, 2019 at 06:07:31PM +0200, Michael Tretter wrote:
>>>>>>>> From: Rajan Vaja <rajan.vaja@xilinx.com>
>>>>>>>>
>>>>>>>> Add firmware DT node in ZynqMP device tree. This node
>>>>>>>> uses bindings as per new firmware interface driver.
>>>>>>>>
>>>>>>>> Signed-off-by: Rajan Vaja <rajanv@xilinx.com>
>>>>>>>> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
>>>>>>>> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
>>>>>>>
>>>>>>> With this patch applied in the mainline kernel, the qemu xlnx-zcu102
>>>>>>> emulation crashes (see below). Any idea what it might take to get
>>>>>>> qemu back to working ?
>>>>>>
>>>>>> Driver talks through ATF to PMU unit(microblaze). I don't think
>>>>>> A53+MB
>>>>>> concept is working with mainline qemu. But crash is too hard. It
>>>>>> should
>>>>
>>>> Yes, QEMU doesn't support the Cortex-A53s along with the PMU
>>>> MicroBlaze.
>>>>
>>>> My workaround when using upstream QEMU is a modified DT without the
>>>> PMU firmware
>>>> and with fixed-clock nodes.
>>>>
>>>
>>> I can't do that for my boot tests. Normally I would just disable
>>> ZYNQMP_FIRMWARE,
>>> but that is hard enabled with ARCH_ZYNQMP. I'll have to drop those
>>> tests,
>>> unfortunately, if the firmware driver is considered mandatory.
>>
>> We can make it optional.
>> Rajan: please send a patch for it.
>>
> 
> I'll disable the related boot tests for now. If/when this is fixed, let
> me know,
> and I'll re-enable it.

ok. Sure.

Thanks,
Michal


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
