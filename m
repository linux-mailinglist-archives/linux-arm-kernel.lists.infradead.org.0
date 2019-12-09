Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BBB11683F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 09:36:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AcHIlbIn5X0O0omqAPJCdCyHEy8sry3qqE9q9Py2J2k=; b=EluLvqoRNzC/wP
	ZbWCOwNFf64LXkUTL3r06L5OmoME15R+PsRpDIevfRh92tpETXrh6MsZ5EhfSv17G8/btiRmGzkvC
	NwD3NNvG2fPPMJz+kZ/PyUz/40an3TYvkI0ONlv+Wl3oUXtaKrGJx7zzaM94XNIiSkU2uVo6O+oUQ
	TFR9QZ4rerAIYinbuxF5VR0TxjomkQ9GMMOaui1i+B909A4+eL1wdVho/m+be8+mVMtoXLHBXZw5w
	W5FCBzcYbfv7KdnRDwV+sIGNFnc/kYxyKqaCeow/yEif7VyLH+fS51F7FK3K/s3/ZUKzl/LPhPGkR
	6yNK/bd55uQiFwXZEP5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieEX0-0007C1-Hu; Mon, 09 Dec 2019 08:36:38 +0000
Received: from mail-bl2nam02on0606.outbound.protection.outlook.com
 ([2a01:111:f400:fe46::606]
 helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieEWt-0007BV-Km
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 08:36:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a59b6I8amWuASTatMcgJ9pMo8jrSv1FGIfaCpEypaT49EkjCUE4YT9Pqc2nWAZ7NzaHQ2RsxjsSHxQaYXlfw+iKww0Y6u/J49JcH3YSCIVRHR09UVW6B1ER8QLnRyMZsN4f6EFu5dngBiAw5FJdKENLg1uBgdWlyDvw3cbW4rpJtGIvv5XSA9MG0ew8xmwQXM7flYJo1qdZjxbK+MORQGBsdaWxk+2q+mhMKVMMEJo7MQVbOfadE6nVXs/5F8mP2A8qYVV35VbaDul72CpL/wb7ue2bKKEn07n9K3oPt3InuckItfIF2bTPLA5N1vi+yvJfmTGL2MoLClCSvSQjoKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JHkth2tTrD5bLjmmMg//ka5MYoxwtzJ9gWpid0RT77E=;
 b=blyhLICKPra/icmMbaRe5kNvQxzrHhCWHVQbgRW/+rvecEfPNK6zzIdBhiCIpkWP0/iXZS/DFAztwHR9tSts0d+/AQ2fWIq4zYFj2h/s8t3wLHxMyXFTiwhMtmbzEB1xWRo9eYdZettdg+CejM8LBkBOFFpIW7pTp1VXNkRZtzSUos61CovcpCHNc6D9O7RuhV5GqSgxMjcYo2rVA5iN+z6YZPBMJerkw5yCFp1FJtCcgKSABRSbH70R3Dw3MpnR8BvlgAqhktxKIHlFb5SzjrJuxztwl2VfBOqeRXEv+UxzC3TEt8BK85f/ygfmaqTIoSdw5HfGng+RTg26eaBCTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=nongnu.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JHkth2tTrD5bLjmmMg//ka5MYoxwtzJ9gWpid0RT77E=;
 b=D5UYfcqN0Qm1hXpS5Ps1OOT+nQRsW4VNNo6xvIBh4mD3lI+bvE8+ripifZd7YZqvm+Ste4a+I+/2AfW8gqWHJFyQtTXKpO+N19EnW0AKT/J2hBLKkftYwcOHjCw9yhHnws+sRg2+QBFvi0YJauDT2iSA5GHALZzwLWCoC4TtczI=
Received: from BL0PR02CA0107.namprd02.prod.outlook.com (2603:10b6:208:51::48)
 by MN2PR02MB6048.namprd02.prod.outlook.com (2603:10b6:208:1bb::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2516.12; Mon, 9 Dec
 2019 08:36:27 +0000
Received: from BL2NAM02FT025.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::206) by BL0PR02CA0107.outlook.office365.com
 (2603:10b6:208:51::48) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2516.12 via Frontend
 Transport; Mon, 9 Dec 2019 08:36:27 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; nongnu.org; dkim=none (message not signed)
 header.d=none;nongnu.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT025.mail.protection.outlook.com (10.152.77.151) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2495.26
 via Frontend Transport; Mon, 9 Dec 2019 08:36:27 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ieEWo-0005He-Em; Mon, 09 Dec 2019 00:36:26 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ieEWj-0003Ig-Bm; Mon, 09 Dec 2019 00:36:21 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1ieEWh-0003I8-Ct; Mon, 09 Dec 2019 00:36:19 -0800
Subject: Re: [PATCH 1/5] arm64: zynqmp: Add firmware DT node
To: Guenter Roeck <linux@roeck-us.net>, Michal Simek
 <michal.simek@xilinx.com>, Michael Tretter <m.tretter@pengutronix.de>,
 Edgar Iglesias <edgari@xilinx.com>
References: <20191018160735.15658-1-m.tretter@pengutronix.de>
 <20191018160735.15658-2-m.tretter@pengutronix.de>
 <20191208223814.GA21260@roeck-us.net>
 <dbba2a25-cbf7-60f4-99f7-056512e28d00@xilinx.com>
 <4821742f-2d60-b722-b954-263de975bf2e@roeck-us.net>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <15965b09-2a53-a318-3007-5b699cb92e47@xilinx.com>
Date: Mon, 9 Dec 2019 09:36:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <4821742f-2d60-b722-b954-263de975bf2e@roeck-us.net>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(396003)(39860400002)(189003)(199004)(426003)(316002)(2906002)(58126008)(36756003)(6636002)(336012)(65956001)(44832011)(8936002)(305945005)(2616005)(9786002)(4326008)(81166006)(31696002)(81156014)(8676002)(31686004)(186003)(53546011)(36386004)(356004)(230700001)(50466002)(70586007)(70206006)(6666004)(966005)(478600001)(54906003)(229853002)(26005)(76176011)(110136005)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6048; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5c06f5b2-42b3-4491-5355-08d77c82e1d1
X-MS-TrafficTypeDiagnostic: MN2PR02MB6048:
X-Microsoft-Antispam-PRVS: <MN2PR02MB60486C7F53B2496FEB4DF2AEC6580@MN2PR02MB6048.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 02462830BE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ng+Q7K7f7836MoaAkWGM1QDLj5MdH+GkCPpdp0G3T82Mggln1CV0tq6Rqg32Ted/nix+TBetC8e3HYkcy6uq3Nk++yCjI2Wzvx+ZoTw3IjPbcSLnEYRHXQHqzBtYo9hTwj2a402yK/rKr0+uAdYjhS0cJrg4vkEY51T0VT8LrKRGg3tEXX7f6/dYWJTRbOztA4fkjS1WmTuPHPRE/JEeekw0MCvxT4//3IXG/FoyM7Gtd7DpvzT8Jz7mlj5CElp4EUglPX2jMTiZA7lAhPFJXS+LEcEcmzYl7FvLWdeVroi6cJQDidlZPOZMsBY0XhnKjWd01f2QXjemB06QkR7xXSeG9CAmsxs6Hohy9ob+m5DQd9Z0IbW+wHWUW4fhjl/vkroRbrNDyZxbEsoiFR6EeWbnBWwPo2l78KRbpMJMm1O0GuLEFBH0Xv4iaXQFmpI/KF8CGxuByrme3T0z5LbTCEH4A44goydHkdDUYdRGGZ0=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2019 08:36:27.0657 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c06f5b2-42b3-4491-5355-08d77c82e1d1
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_003631_683550_BA7E6424 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Rajan Vaja <rajan.vaja@xilinx.com>, qemu-devel@nongnu.org,
 Rajan Vaja <rajanv@xilinx.com>, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09. 12. 19 8:19, Guenter Roeck wrote:
> On 12/8/19 10:42 PM, Michal Simek wrote:
>> Hi, +Edgar
>>
>>
>> On 08. 12. 19 23:38, Guenter Roeck wrote:
>>> On Fri, Oct 18, 2019 at 06:07:31PM +0200, Michael Tretter wrote:
>>>> From: Rajan Vaja <rajan.vaja@xilinx.com>
>>>>
>>>> Add firmware DT node in ZynqMP device tree. This node
>>>> uses bindings as per new firmware interface driver.
>>>>
>>>> Signed-off-by: Rajan Vaja <rajanv@xilinx.com>
>>>> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
>>>> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
>>>
>>> With this patch applied in the mainline kernel, the qemu xlnx-zcu102
>>> emulation crashes (see below). Any idea what it might take to get
>>> qemu back to working ?
>>
>> Driver talks through ATF to PMU unit(microblaze). I don't think A53+MB
>> concept is working with mainline qemu. But crash is too hard. It should
>> be no response from PMU and then this panic.
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/firmware/xilinx/zynqmp.c?h=v5.5-rc1#n728
>>
>>
> 
> Isn't that a bit harsh too ? Normally one would print an error message
> and abort driver instantiation.

Using different DT as Edgar mentioned should work but the question is
how to properly wire it up.
Edgar: What about "simply" generate that DT by qemu model based on what
implementation is available?


> 
> It sounds like you are saying that qemu's xlnx-zcu102 emulation is
> no longer supported and expected to crash the kernel. Is this a
> correct assumption ? If so, I'll drop it from my list of tests.

Let's discuss this first. I definitely appreciate that you run these tests.

Thanks,
Michal


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
