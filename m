Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5905116FCF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 16:03:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+and45XFFtpVGrZ5+u69lJAYEj/84QcTufZAWkbo7Qg=; b=oy+PLJi1Byi5MK
	DPTdu0JSsHTScUKdTPRTaBMFVi/Fy7qdadKDxlZgmF2YXt+cIayrx3jDkIFr3G6mIqXkCYeG7uVLt
	i0Wf3Tw6BhQVKMZYv5LXFiNFKPd4ZS+ljJhHHboEdkw9OgtrDEBAw1ZDGy6Flmp1cAWj8PFJEyP7H
	N4Aa76hZzirpP6JLi/2Na7TuJWWPPFs47YdqrFx/5zj65l+YKl/GCjBOJnyhYlelz1iE5ey1nkc/5
	fKh814OTwYQ5xHzSY7QSIYRrn1ToEODVZMXHhMa0UaLNfv2cCds8SNhb2vKY4enmvnW/JiRAVD6OY
	GGpDIUkHxcgjRdGj8fYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieKZD-0005IQ-4Z; Mon, 09 Dec 2019 15:03:19 +0000
Received: from mail-co1nam11on2060.outbound.protection.outlook.com
 ([40.107.220.60] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieKZ6-0005Hs-BY
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 15:03:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gFB3hcVaAGIUbxUMObw/Loe7Or7jx+zzHXu2MnzS4JwEVDWxVKyWhteEd81A1X7Xq0gY7P5KHiG8dBDr5RAdxsMtZH6oypAWF7giJffiz3oVk+8owUR/sOqgJw8qDQqJuJOd3dUlJtNH4969oJwjmgXY3foivP2YEBhq+wYINCaJJz4AgwNsvlYkGZpEWRmCOyo30vWo4B61rwKatxGfyvn5SOgfvlvDhsfh+gL7/6U/41c3kwcMoz71HzHcSufQrD0BIWmddsbfq7cfR3NPLbWaxXQ15luRFyAHf0/TxpOlTaFYS4sNVHy4kJMWGxet8nh/bwaNdRiCt4tpeHeonw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DktADPHNdKbivPRd1Ij5JPxIOd5MKDhmodedl4y8O+g=;
 b=YQvIVoSSfBKgO5t8AVrdl0f5RIWbVlimTBeOX1OYjRCUBXjCiS4FhGlZU9CmRUrB5rGkPh/ckwEVPt6o5buy3G79lBEs73OhAz0JaPp/u4MH9RZCKZuBVSzEEm3HhcfUqEk/mLGTTHehsPARpZ/3Q0Ugm2aQmT/IXpQU+h9jGTSng+aBpE8o1LO6kPkefZLPG6J9J84nq4A/UWHzbhlvk8riN/x8I467h6qhxkXdaFk/rWQ7Q1kTG8HFjzJSSD/zARFB/2t2Di/AAsuLgh8WCOXnCy4dGStrgaQwLYIAsdPecaWOxtWeYgSMBFmm/fMUy0Lfe34gLdK8z08SEN4sFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=nongnu.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DktADPHNdKbivPRd1Ij5JPxIOd5MKDhmodedl4y8O+g=;
 b=XR4UYR3WY9/IoxDC4Cb1fMfRkLz4uoj1/psue1891JwA8GwKxQEp+Cm1MjqP+RoCi5SIizj8JeIdqmois89GkvwDEFfRxhajpTNrG+taC/shbpFe4OgVIy9NUZmwzbhKG55MFpX/HJRnLxseqPqL9lsMacUc7BDRnaXwiScRqjA=
Received: from CY4PR02CA0009.namprd02.prod.outlook.com (2603:10b6:903:18::19)
 by BN7PR02MB5233.namprd02.prod.outlook.com (2603:10b6:408:25::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2516.13; Mon, 9 Dec
 2019 15:03:09 +0000
Received: from BL2NAM02FT013.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::204) by CY4PR02CA0009.outlook.office365.com
 (2603:10b6:903:18::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2516.12 via Frontend
 Transport; Mon, 9 Dec 2019 15:03:08 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; nongnu.org; dkim=none (message not signed)
 header.d=none;nongnu.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT013.mail.protection.outlook.com (10.152.77.19) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2495.26
 via Frontend Transport; Mon, 9 Dec 2019 15:03:08 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ieKZ1-0007xe-Q8; Mon, 09 Dec 2019 07:03:07 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ieKYw-0006Ik-MU; Mon, 09 Dec 2019 07:03:02 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1ieKYv-0006Hp-8i; Mon, 09 Dec 2019 07:03:01 -0800
Subject: Re: [PATCH 1/5] arm64: zynqmp: Add firmware DT node
To: Guenter Roeck <linux@roeck-us.net>,
 "Edgar E. Iglesias" <edgar.iglesias@xilinx.com>
References: <20191018160735.15658-1-m.tretter@pengutronix.de>
 <20191018160735.15658-2-m.tretter@pengutronix.de>
 <20191208223814.GA21260@roeck-us.net>
 <dbba2a25-cbf7-60f4-99f7-056512e28d00@xilinx.com>
 <4821742f-2d60-b722-b954-263de975bf2e@roeck-us.net>
 <20191209074840.GP32392@toto>
 <d2e63acb-c076-7bfb-c492-0355ec106cbf@roeck-us.net>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <fa36a9e9-9e44-d1ff-cfdc-22d0484318ff@xilinx.com>
Date: Mon, 9 Dec 2019 16:02:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <d2e63acb-c076-7bfb-c492-0355ec106cbf@roeck-us.net>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(39860400002)(136003)(376002)(189003)(199004)(70206006)(2616005)(9786002)(81156014)(31696002)(4326008)(36756003)(70586007)(44832011)(5660300002)(229853002)(6636002)(31686004)(230700001)(53546011)(478600001)(8936002)(305945005)(336012)(26005)(356004)(8676002)(6666004)(54906003)(110136005)(316002)(186003)(81166006)(426003)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR02MB5233; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 76127af6-71f5-4b80-a4a5-08d77cb8e6df
X-MS-TrafficTypeDiagnostic: BN7PR02MB5233:
X-Microsoft-Antispam-PRVS: <BN7PR02MB523349D866F89A8EEF87D36BC6580@BN7PR02MB5233.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 02462830BE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8jC1l0FuAK6gV7mZiVHHeEiP4D50WWmiRH7MViIAOVB8fiqDBtrkNJIL3CZQh8XGS8ve8l7yiKNf4/Xf580pVgowz+Nsx7udYnz161a3FJIUROwThm9jo1+HNwf9Wyt0ROV4dDLNmEiLxIt3R5g5t55Dqb3wbP+v/BtO7qTAKG3rr2A7hCi0qTjhAYgPd2zR5Gc/pk7xj+56UAlS8wvrrVoM/fbB+yUlKImrQxC8aMOk9HveSToE1VO1JXV825rsr19owB8ZWdrIGV3921DQ3dlLYmpMv1GVyTA96uBvhiCwncs+WgUhB7RCM36nyPJXIVPZ+430iQFTVwk7OZd8ZCq7OAT1DMZTVDM8Yipm/oSWfnclNmiH5p/JcrqSJF0JSXolUnbL4lSYBzmWIVMEB+hGkfhXgBN5TCx7/LuNCwf60qbKPsTjCmsgb2SVM0Mu
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2019 15:03:08.3716 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 76127af6-71f5-4b80-a4a5-08d77cb8e6df
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR02MB5233
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_070312_399289_BD448DE4 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.60 listed in list.dnswl.org]
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
 Michal Simek <michal.simek@xilinx.com>,
 Michael Tretter <m.tretter@pengutronix.de>, Edgar Iglesias <edgari@xilinx.com>,
 robh+dt@kernel.org, Rajan Vaja <rajanv@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09. 12. 19 15:32, Guenter Roeck wrote:
> On 12/8/19 11:48 PM, Edgar E. Iglesias wrote:
>> On Sun, Dec 08, 2019 at 11:19:33PM -0800, Guenter Roeck wrote:
>>> On 12/8/19 10:42 PM, Michal Simek wrote:
>>>> Hi, +Edgar
>>>>
>>>>
>>>> On 08. 12. 19 23:38, Guenter Roeck wrote:
>>>>> On Fri, Oct 18, 2019 at 06:07:31PM +0200, Michael Tretter wrote:
>>>>>> From: Rajan Vaja <rajan.vaja@xilinx.com>
>>>>>>
>>>>>> Add firmware DT node in ZynqMP device tree. This node
>>>>>> uses bindings as per new firmware interface driver.
>>>>>>
>>>>>> Signed-off-by: Rajan Vaja <rajanv@xilinx.com>
>>>>>> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
>>>>>> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
>>>>>
>>>>> With this patch applied in the mainline kernel, the qemu xlnx-zcu102
>>>>> emulation crashes (see below). Any idea what it might take to get
>>>>> qemu back to working ?
>>>>
>>>> Driver talks through ATF to PMU unit(microblaze). I don't think A53+MB
>>>> concept is working with mainline qemu. But crash is too hard. It should
>>
>> Yes, QEMU doesn't support the Cortex-A53s along with the PMU MicroBlaze.
>>
>> My workaround when using upstream QEMU is a modified DT without the
>> PMU firmware
>> and with fixed-clock nodes.
>>
> 
> I can't do that for my boot tests. Normally I would just disable
> ZYNQMP_FIRMWARE,
> but that is hard enabled with ARCH_ZYNQMP. I'll have to drop those tests,
> unfortunately, if the firmware driver is considered mandatory.

We can make it optional.
Rajan: please send a patch for it.

M


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
