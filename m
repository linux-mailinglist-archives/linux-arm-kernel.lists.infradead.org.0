Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BDC815F1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 11:53:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kFBw2kyMjlhHyuQWnLqxA3J8pEYtodR3zYqORY3f0s0=; b=ioiO7jB1jdVMvB
	tQbL0jBfcXQePXkDb6U7zylJqnYJEQw9L8SD6TjNKIK5vB/nPz4Kr4y9KqsH/WHaRyeh6/8MHC7Xu
	nDmi2SrmWi2gwkQ2fPJEqfW1fWoIA5ND7kqRCeBfHtPm6e6NbBC58GDqqAH0SVx7vTTclQzRLOfG9
	SUOhCao+IazarYVj4NOu7gl6aLHFPKD/jT1vU41k2+LndpJbb4khkbtQnJ1eF/LyBbgCBeyJYAeEg
	jDCru+2lHB2R5O5YYM9cdvXsYeKNjzxA32wwNtHw/NVsBhsiUbJshe0BroqkwVR4kuCwToekEhD0Q
	rOfWihZ8zdpeB1U22kCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZgW-0000FF-N7; Mon, 05 Aug 2019 09:53:44 +0000
Received: from mail-eopbgr680056.outbound.protection.outlook.com
 ([40.107.68.56] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZgI-0000Ek-PX
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 09:53:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jQ7ffWNkM2hU7YmJR6BnXKg1LQGoxHkUQrwQoCV2mpHhd7P2kLwTvuhYs6qYGUBe+6LZjwqSijzrNeJ+5cM9FZSiWn2LUeCEH7eq63WjQA/wCDKSVh/MJZDM4CD5KnMZb2ldCY0+ErE2FryvQ6UGzfLMUfJRI3OuDV/zy8mDs/AGceacHUnsmoAwjF9FGUjQheQBoeDKNKMjnPD9JFfAr84Z9XUoY0/d/2Cead9I8dtqdffTEP/b2CGh9bxDZB3mZ6hZxF1bbvqYr97OnxvBEqtxyH1XUjsC3c5FncJdV0nnyqg6G3hf/CHKMJijxFOpsIs8LyzdnrDXJ8eSCIi9ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BtgKKevRoUcjrHoYvgJbrMktjiVazt6Xzqi5K9+wTs4=;
 b=MsZ7x6uVo9vkB5YVhHtfXiQcrwq2OemUwFTvAnEU+jswnfF3G5sXWraA4yZZ/eXTXn3PAUUzc+A86WiTUyMpUXXOjD3jpfh48KH7YelMpzEqZiVMk8SxwOPqYGLM9Bd55R5bYSNMITu2mIm1l5+FR8DR98FxP1qxGiO321NMgFlXPmwNJb+CtjWliAPkXlk+ARUyelTjcCgyIXFQa0AS9Uj+eY7h3sopSVOH7QJGtNsSREt3a4yn99Gp+Ul1C3/73rSybU+OCULxG/rCWbcc5rfQT9hZnussmAT2VSNYiIrIPCrr8oDvzLleQjJTFe0TxyWsIEfLcPQNGIZTwFiG0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=xilinx.com;dmarc=bestguesspass action=none
 header.from=xilinx.com;dkim=none (message not signed);arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BtgKKevRoUcjrHoYvgJbrMktjiVazt6Xzqi5K9+wTs4=;
 b=jeNImiVQrxnIi8BMFn8ADikQOvWTdJ9LHt9NQ8V77p64o25I9gN1Ap6mUMJniQJ/d9cTS7V1hw2JwsqXv4Sxhnm5RdNkL3UpJFlwQ6PZ+NOtiDE0yI6+6jUGHnpPkscdvbMM6+UweSZ7x1vbtrXV9KEKEpc9+Z2wpBMOwFygqbw=
Received: from SN4PR0201CA0056.namprd02.prod.outlook.com
 (2603:10b6:803:20::18) by MW2PR02MB3692.namprd02.prod.outlook.com
 (2603:10b6:907:2::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2136.15; Mon, 5 Aug
 2019 09:53:27 +0000
Received: from CY1NAM02FT047.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::207) by SN4PR0201CA0056.outlook.office365.com
 (2603:10b6:803:20::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2136.14 via Frontend
 Transport; Mon, 5 Aug 2019 09:53:26 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT047.mail.protection.outlook.com (10.152.74.177) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2136.14
 via Frontend Transport; Mon, 5 Aug 2019 09:53:26 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1huZgD-0008Dv-Oi; Mon, 05 Aug 2019 02:53:25 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1huZg8-0007nH-LP; Mon, 05 Aug 2019 02:53:20 -0700
Received: from [172.30.17.116] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1huZg0-0007mN-6C; Mon, 05 Aug 2019 02:53:12 -0700
Subject: Re: [RFC PATCH] ARM: zynq: Use memcpy_toio instead of memcpy on smp
 bring-up
To: Luis Araneda <luaraneda@gmail.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20190730044326.1805-1-luaraneda@gmail.com>
 <20190730104746.GA1330@shell.armlinux.org.uk>
 <CAHbBuxoMBiq23Rkt7-jm42O4ePY=23ZsgNEVf3UJKQ2Dg+3fbg@mail.gmail.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <26427757-9ed1-36fa-3e4d-7357703ec548@xilinx.com>
Date: Mon, 5 Aug 2019 11:53:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAHbBuxoMBiq23Rkt7-jm42O4ePY=23ZsgNEVf3UJKQ2Dg+3fbg@mail.gmail.com>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(136003)(346002)(396003)(2980300002)(189003)(199004)(64126003)(478600001)(6246003)(230700001)(52146003)(76176011)(23676004)(65806001)(65956001)(58126008)(65826007)(44832011)(81156014)(110136005)(31696002)(81166006)(36756003)(2486003)(486006)(126002)(476003)(8676002)(336012)(47776003)(229853002)(4326008)(5660300002)(186003)(14444005)(36386004)(8936002)(70206006)(305945005)(2906002)(63266004)(316002)(70586007)(2616005)(53546011)(50466002)(9786002)(11346002)(106002)(31686004)(446003)(54906003)(426003)(26005)(356004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MW2PR02MB3692; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e265e6a2-6f96-4bc0-9923-08d7198ac30e
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:MW2PR02MB3692; 
X-MS-TrafficTypeDiagnostic: MW2PR02MB3692:
X-Microsoft-Antispam-PRVS: <MW2PR02MB3692A5A315AB3BE02E3B78DCC6DA0@MW2PR02MB3692.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2043;
X-Forefront-PRVS: 01208B1E18
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 8rZ5pM/xL/b5i0qLv2ipbYBN+6crorWtS+xIB+RWdZjp2uRUfh/Hmle22FB7kjrk2XmIghYk1iOzb9tgY7NyTnxyKD6w3ZoYbd+uKehoBKxKpEeupQbZna+/SX08e+usAErOB2hYb7eJ6eDtQ72xV2eWQ2pmeX9YRofA2y8kK+v+F5rKYc7RdN2ZBZavZNLVFU2brtCZAlMZEq3xSFQk7j8bYcqAcnotbcJZ6ZvBibp81E8qwjiUnrct0zmLAyDgxnUfU0/bo//wHf+1sgYanGyXPeNyMhJ8Hh71iByhowLmaKuDn8dbciYqqRgulEo8Kg66EACXAOJDWlHqUHFMous+aq9zD+v64LNWTK5ZHiwASGayV7kKtaqJ7set1hy6AfcAr+sFwL0Qby7awjn1joQiPBx87Pqx5lrFpMc/zNY=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2019 09:53:26.2517 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e265e6a2-6f96-4bc0-9923-08d7198ac30e
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR02MB3692
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_025330_825114_1B97B3EF 
X-CRM114-Status: GOOD (  21.60  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Michal Simek <michal.simek@xilinx.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 31. 07. 19 6:12, Luis Araneda wrote:
> Hi Russell,
> 
> Thanks for reviewing.
> 
> On Tue, Jul 30, 2019 at 6:47 AM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
>>
>> On Tue, Jul 30, 2019 at 12:43:26AM -0400, Luis Araneda wrote:
>>> This fixes a kernel panic (read overflow) on memcpy when
>>> FORTIFY_SOURCE is enabled.
> [...]
>>
>> I'm not convinced that this is correct.  It looks like
>> zynq_secondary_trampoline could be either ARM or Thumb code - there is
>> no .arm directive before it.  If it's ARM code, then this is fine.  If
>> Thumb code, then zynq_secondary_trampoline will be offset by one, and
>> we will miss copying the first byte of code.
> 
> You're right, I tested what happens if the zynq_secondary_trampoline
> is ARM or Thumb by editing the file where it's defined, headsmp.S
> 
> When the .arm directive is used, the CPU is brought-up correctly,
> but if I use .thumb, I get the following message (no panic):
>> CPU1: failed to come online
> 
> This seems unrelated to solving the panic, as the message
> even appears with memcpy and FORTIFY_SOURCE disabled.
> 
> I could add the .arm directive to headsmp.S
> Is that your expected solution?
> Should that change be on a separate commit?
> 
> I'd like to know Michal's opinion, as he wrote the code.
> 

There are two things together. Thanks Russel to pointing to it.
1. How to support SMP in thumb2 mode?
Adding .arm mode to headsmp.S which ensure that cpu starts in proper
mode and correct code size is copied.
And also point to secondary_startup_arm in zynq_boot_secondary to switch
cpu from arm to thumb mode.

2. And the second is this patch to fix FORTIFY_SOURCE.

Feel free to create the first patch too or I will do it myself.

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
