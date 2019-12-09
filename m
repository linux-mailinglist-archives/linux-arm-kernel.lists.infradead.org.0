Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4C41167EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 09:04:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hi/VjB0YTwCAhp7uylCA0hT5AfM7vsJ4vLpw5WKID6c=; b=RXNAxttRDJgzNp
	9yxD6SvcVoeEbQcZspofIvl6lD2r1YbOe0BXtEyimzz6f9MP/bUtKZH+mf2TpGA2Oe4wWlbCinyBW
	lTRSmT0RKnASab6IIIvQRNgUkfMiBbUfyn6vFH5JSQE+X6uDYhQbTtLQPZVXq777ACkr1GzoDYuo3
	0VWT/JYljkaqbTYwAzBdjkn7xRuyRGqaf2CVEMugPb7zx4BK/mzov2asa/QnrZMRRupqxaVA+p3YS
	qM7MCF5dnWXbbL7wGqWvZ54n2z0nqS6efRJx96SNWPfwtUmwAbx1GYphb84Q+9EDa2Rnb6CeayAW2
	Idri8BLncKv0fi1BlI1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieE1n-00037w-9r; Mon, 09 Dec 2019 08:04:23 +0000
Received: from mail-mw2nam10on2058.outbound.protection.outlook.com
 ([40.107.94.58] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieE1d-00037X-6q
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 08:04:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I3dyaluwSxepCAHcZgMiI6fYb2PPuQI89wwDte5NVaAOoqSzt8BSm5wxKS9J/rYcr6iDxGquUwZ0A8AlItbJ+yJKv0/CLEXfKymnmpwvRGdlnkmR1qArDOK6cDtsvYL/HF9kYUHSkG8MNWkGRzDtkSEJ7Sn/+lvfiMkbREJslaMJ3FchGTz0/ZjBAQZ1vaE/6hfjWGh4s4P/7ebmKRXQ47j/Z4cl8kzNEz0gO1pkPW4L2a9qSE6GrTapsa9WFHyyA4aysrsAsE/lpzdXQe1OFF1wQC8igQr0i8EYED+5r3C/LWHUY9ULVnIgflu8Goeb5K3ALz4GcSdEwLpAMsbtMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lHpirNoQllot/qAGqgDmO3BbQ2FDjvALdZ+gDs90Qgk=;
 b=Un0R8tAcTytfQANChGaZ7UQohRW2Tj3OSK6BfNO2KWHv9tuX/pTScQF0HNdVbW8QkQFDwt3QMZRhAs1pVaQxOGCE34g8pVHbc2JZ9BuPiqBYl8P9mNvWMvmbJWwcRUE4wOLrpFgnYEN7toLAcQ1LCOGKXx0dYLFFVGr7orUvPLSBFe7tCE6T7jjz0s84MR5RYXLKwhW5CgcAF98FFU/gOQ8/oAquhVsD9tNU4D78TLtCOCdGLsAhnfygUxc4vSrsNVCsATMagEYR8k1R+lBMLDCHu6mZiPLKkROORfe2rGI7xXGrskKFx/3TachdOBmlHResBs32+0YxBOqwtJjjlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=roeck-us.net smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lHpirNoQllot/qAGqgDmO3BbQ2FDjvALdZ+gDs90Qgk=;
 b=ILwltwmyDklb/IThVZdaSu9dB07xEE0kG3AY9//59DYnUCC7mPldRDBqOKLyHVb79JclqLrOrZFOWeSBhJWaOhvn104/L9XBTu7kKi8gvfwEFyjBuw4ixxaJnX2Wu/LLIppqBnVJy0+nimqVOkrd0pGrtNtByFAa4Vv7kMw2W+w=
Received: from MWHPR02CA0002.namprd02.prod.outlook.com (2603:10b6:300:4b::12)
 by BY5PR02MB6517.namprd02.prod.outlook.com (2603:10b6:a03:1dc::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2516.14; Mon, 9 Dec
 2019 08:04:09 +0000
Received: from BL2NAM02FT006.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::203) by MWHPR02CA0002.outlook.office365.com
 (2603:10b6:300:4b::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2516.12 via Frontend
 Transport; Mon, 9 Dec 2019 08:04:08 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; roeck-us.net; dkim=none (message not signed)
 header.d=none;roeck-us.net; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT006.mail.protection.outlook.com (10.152.76.239) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2495.26
 via Frontend Transport; Mon, 9 Dec 2019 08:04:08 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <edgar@xilinx.com>)
 id 1ieE1O-00051f-Pq; Mon, 09 Dec 2019 00:03:58 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <edgar@xilinx.com>)
 id 1ieE1J-0001PT-Me; Mon, 09 Dec 2019 00:03:53 -0800
Received: from [10.71.117.222] (helo=localhost)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <edgar@xilinx.com>)
 id 1ieE1E-0001Mf-5n; Mon, 09 Dec 2019 00:03:48 -0800
Date: Mon, 9 Dec 2019 08:48:40 +0100
From: "Edgar E. Iglesias" <edgar.iglesias@xilinx.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH 1/5] arm64: zynqmp: Add firmware DT node
Message-ID: <20191209074840.GP32392@toto>
References: <20191018160735.15658-1-m.tretter@pengutronix.de>
 <20191018160735.15658-2-m.tretter@pengutronix.de>
 <20191208223814.GA21260@roeck-us.net>
 <dbba2a25-cbf7-60f4-99f7-056512e28d00@xilinx.com>
 <4821742f-2d60-b722-b954-263de975bf2e@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4821742f-2d60-b722-b954-263de975bf2e@roeck-us.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(7916004)(39860400002)(136003)(396003)(376002)(346002)(199004)(189003)(336012)(70206006)(50466002)(70586007)(26005)(36386004)(6916009)(186003)(5660300002)(53546011)(6666004)(426003)(356004)(316002)(76176011)(58126008)(54906003)(966005)(2906002)(478600001)(1076003)(33656002)(76506006)(9686003)(8936002)(8676002)(81156014)(57986006)(4326008)(305945005)(229853002)(33716001)(81166006)(9786002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR02MB6517; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 99d3363b-7ba9-49f0-8e36-08d77c7e5e43
X-MS-TrafficTypeDiagnostic: BY5PR02MB6517:
X-Microsoft-Antispam-PRVS: <BY5PR02MB6517DB46EEB3E02DFCF4F9EEC2580@BY5PR02MB6517.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 02462830BE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NBr13pZoCi8wycUbsH7Yx6ioBJK8vJD+gB3KKvU2z5iweCsGuUIwuvwaucSzYXEwlHwdyyCxI398lXUygfKxTXFV22SaYrt2yPhZ6F3cDxxIxVrd588jx+1IpjMaC6cZVaY8OJh/E0H9RgDhEnUaNA2DA0lCUqk3IRR431XPI5wGHUMQC8ld7DN0UoILwtU14tgq8nkByTjUyes7fBHn4TEJaWtlhiXrVnpPmTWH9plma9JzG1C1uSyVd7Oxmbsfq908hPAJ6okeoDd98p6IQ5LHPKIw9lwozl43Bd2inbfPkGxhgDPkIICrB3iGP1m1YxXU57MbEObLbtOe0jrCLooHm/Y6XZrH78hD/Emm5SZzOcJa4waxY6koI5sVER52lXTsn8YYkZbLWtAbNW0pAkLr17XDlNRo/qCJhnnL0Iv0AjfHvOh3JyZr/iNOK3DT0gKgGjvj4TI4kXWEc1wUk5YkI9Threy1Oe6nSV73HBU=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2019 08:04:08.3692 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 99d3363b-7ba9-49f0-8e36-08d77c7e5e43
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6517
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_000413_251274_8750711B 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.58 listed in list.dnswl.org]
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

On Sun, Dec 08, 2019 at 11:19:33PM -0800, Guenter Roeck wrote:
> On 12/8/19 10:42 PM, Michal Simek wrote:
> > Hi, +Edgar
> > 
> > 
> > On 08. 12. 19 23:38, Guenter Roeck wrote:
> > > On Fri, Oct 18, 2019 at 06:07:31PM +0200, Michael Tretter wrote:
> > > > From: Rajan Vaja <rajan.vaja@xilinx.com>
> > > > 
> > > > Add firmware DT node in ZynqMP device tree. This node
> > > > uses bindings as per new firmware interface driver.
> > > > 
> > > > Signed-off-by: Rajan Vaja <rajanv@xilinx.com>
> > > > Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> > > > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > > 
> > > With this patch applied in the mainline kernel, the qemu xlnx-zcu102
> > > emulation crashes (see below). Any idea what it might take to get
> > > qemu back to working ?
> > 
> > Driver talks through ATF to PMU unit(microblaze). I don't think A53+MB
> > concept is working with mainline qemu. But crash is too hard. It should

Yes, QEMU doesn't support the Cortex-A53s along with the PMU MicroBlaze.

My workaround when using upstream QEMU is a modified DT without the PMU firmware
and with fixed-clock nodes.


> > be no response from PMU and then this panic.
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/firmware/xilinx/zynqmp.c?h=v5.5-rc1#n728
> > 
> 
> Isn't that a bit harsh too ? Normally one would print an error message
> and abort driver instantiation.

I agree, it would be nice if ATF & kernel drivers would somehow handle
this more gracefully.

Cheers,
Edgar


> 
> It sounds like you are saying that qemu's xlnx-zcu102 emulation is
> no longer supported and expected to crash the kernel. Is this a
> correct assumption ? If so, I'll drop it from my list of tests.
> 
> Thanks,
> Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
