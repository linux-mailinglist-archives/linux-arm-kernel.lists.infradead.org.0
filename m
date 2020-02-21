Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A012B167AE4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 11:36:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+3Ah6E8PRtLp+1td7xHZw7hYn2KAJb40ff3ixX0aTzM=; b=caKoqeL+UryNrF
	Man2RSBfUwrwFtQZuSGAlguBZcsm63sZ+Wv5MITPogG/m3qTJ76wSp8HRp4zz84EmNNYtVA2m9vwS
	itjBVmNH3Y2tqi2PmKL5/CX//oekfGMTJ7G/q/ocQAuN9Qf9fP0ls+oD0Ux9W1UYOqSDBM6H5YnK9
	E2V4wnjkSI/9/VtvgpcVyI0sTVpkVpCv6JmumZmtZSjHhyJmecZpHPbC5VbIhAFSujMc6lkSJCpli
	xf/HRQugIA2hfK4A+7083kyHCH2G+iRPg+xZHFB237/SyPb4BXH3iMvrAGNT08NyP4mlt/1p8XrF5
	+aOIrPsXFT45bgx6sbMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j55fx-0005Y9-Nn; Fri, 21 Feb 2020 10:36:53 +0000
Received: from mail-co1nam11on2060.outbound.protection.outlook.com
 ([40.107.220.60] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j55fo-0005Xl-UZ
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 10:36:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VauOJZqAndPAFwFrG/XXhpjSJdTOjeKZgiYA18Q5xUvpJAjqP4IeHonDuH5dHNeRstyiR7UlzTVdWYxrb0ZDDulJsVCQiVGy8a71gFF0HBTWVZ8gQiaMnjXqmZLutWzmRNoRG/AQ8HRvr/wqsrNhzPNOuvDfUeA2PPOPILjlgIK3HbAF2dIScGhq/UWj5m4r7KyvjEQo32TEEKa7dCSd8/VoxYfkHfwES9Co2ZuGGmmTHrFbdpLWYZijLfXgzjDnkSystzOH28FDEZWwVOSkBpJeG4ilbex6tntTZpOWoULntPGriVb1VRwVI7OukQOpOnMLfyY9zB6sei1fpBDg6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7P1gtDIygeHTio6EXoIpqxdzjLUcJL8kLXQYtcoHh1k=;
 b=G8MtpOmLRnLLmmnErTf7dQ5/JOSrJuhc5tsXvbHBr4D5g2IJMomW3rGnDz1eLD+aA9x0DnyPlkSuhzRGRGt3V+9hG/3b93koWn71nIZSl8XAhkOy0pvfHSaxMkaJSZmuDuYEqMQkHUB3dLr2ZIuMqTclaX9VPpr+7ga82tGr6eGU6yckkpWyRfK01cEugKWziBtAMY39V2So7xP/k+x+qcIYP6ghJrmCw/Js1Kh8kRP1Vqjue0QwkMJM9lt9LypOltE/bpCJp4Qzr1GXJzhN03RF+kL8QgPylkXPtG9ZuHA2RfebSCLGQyY9R25OymEfBlZEUBJVSC/8u9QbtjXmmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7P1gtDIygeHTio6EXoIpqxdzjLUcJL8kLXQYtcoHh1k=;
 b=rTL95+mKlFkMT/6wTw0dGsSIJ2Etzk/9S/DDc0gfApKjS5G+4IPUJAwtCGv1AzlHmMW/rutz1TQGjvwRhBEfU5jbiqQr1nYI82BczKc+dwo4bzpdUiMY21HhwFREeQ/ZXZvtFNCyesGW7mTRwZjMzcqgIdg1TI7bFUdG4gwwC0Y=
Received: from MWHPR02CA0006.namprd02.prod.outlook.com (2603:10b6:300:4b::16)
 by DM6PR02MB6140.namprd02.prod.outlook.com (2603:10b6:5:1f7::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.23; Fri, 21 Feb
 2020 10:36:41 +0000
Received: from CY1NAM02FT023.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::203) by MWHPR02CA0006.outlook.office365.com
 (2603:10b6:300:4b::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.17 via Frontend
 Transport; Fri, 21 Feb 2020 10:36:41 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT023.mail.protection.outlook.com (10.152.74.237) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2750.18
 via Frontend Transport; Fri, 21 Feb 2020 10:36:40 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1j55fk-0000G9-G6; Fri, 21 Feb 2020 02:36:40 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1j55ff-0002XX-DC; Fri, 21 Feb 2020 02:36:35 -0800
Received: from xsj-pvapsmtp01 (maildrop.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 01LAaRn4010451; 
 Fri, 21 Feb 2020 02:36:27 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1j55fX-0002Sp-6W; Fri, 21 Feb 2020 02:36:27 -0800
Subject: Re: [PATCH 0/3] irqchip: xilinx: Switch to generic domain handler
To: Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, git@xilinx.com, Marc Zyngier <maz@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>
References: <cover.1581496793.git.michal.simek@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <71c08d9a-b990-9736-b5aa-1f7396f63c17@xilinx.com>
Date: Fri, 21 Feb 2020 11:36:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <cover.1581496793.git.michal.simek@xilinx.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(376002)(39860400002)(136003)(199004)(189003)(36756003)(9786002)(44832011)(356004)(426003)(31686004)(26005)(478600001)(2616005)(186003)(6666004)(31696002)(8676002)(4326008)(54906003)(8936002)(336012)(316002)(5660300002)(70206006)(70586007)(2906002)(110136005)(81166006)(81156014)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB6140; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bc579d33-5d6b-4eb2-6fbf-08d7b6b9f022
X-MS-TrafficTypeDiagnostic: DM6PR02MB6140:
X-LD-Processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
X-Microsoft-Antispam-PRVS: <DM6PR02MB6140A038B97F2075DC207F3BC6120@DM6PR02MB6140.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0320B28BE1
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: l3VP+LqQmrPLhl3HebeAf1CkiSe2ID/IcUged/WOEoH7ignAfcfrqpXWSkD3Lnc2J0VsiSZo5lTpqqLI/+gRRH6jjjqvXoDSxgBwV1oplFTTUBEd/GoHRvkL/5B8bJhuoBpn1XRQwmlTWXUsQ+NS/pQ9/SzXaCDP4+VDD0WlIZOUcx5D9J+NOrph0LVLQv3ywkiMDwuM9xqXpr7TRZ3mBKva4rYZCIL4P1Ms4Sm+ifVkrSPrDqFQJBOxC/xlDHI6DTDav0EAUaKS6cj6Vr8w/A/qy74Swf3+4rpXwPgRTVCuUVlkrC6Ymc55tzksw6PKXgV58GhuBOQan6N0tbjlHHDsWuWjabKCWfxK4ghpK9slQoKaMfqjvoClDN4Wd4DbE7FRPMOt1kyTswHIpuIuFNNY4oW+AvcbdkgLs2ml633xLf2d2jPYQGJm7YEOf0NN/AKkimQR58+XT9pPdQ1hqWwi7cKbiqHAPGVx32AddOC968KONBiUSmJ118w8/KJObSEzqc1Ozijk0mjU98xAvsfLj7dcCT8x1rNuZSk/3ruiVadHXEKxMd8XSLyLtDh1
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2020 10:36:40.8927 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bc579d33-5d6b-4eb2-6fbf-08d7b6b9f022
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB6140
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_023644_987958_2895669B 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.60 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.60 listed in wl.mailspike.net]
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
Cc: Stefan Asserhall <stefan.asserhall@xilinx.com>,
 Jason Cooper <jason@lakedaemon.net>, Mubin Sayyed <mubinusm@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12. 02. 20 9:39, Michal Simek wrote:
> Hi,
> 
> this series is based on cascade mode patch sent by Mubin
> (https://lkml.org/lkml/2020/2/11/888 - v3 series).
> 
> The first patch is just fixing error patch. The second and the third are
> converting microblaze do_IRQ() to generic IRQ handler with appropriate
> changes in xilinx intc driver. I have done it in two steps to be visible
> how it was done.
> 
> The last patch removes concurrent_irq global variable which wasn't wired
> anywhere but it stores number of concurrent IRQs handled by one call. There
> is option to get it back if needed but I haven't seen it in other archs
> that's why I have removed it too.
> 
> Thanks,
> Michal
> 
> 
> Michal Simek (3):
>   irqchip: xilinx: Fill error code when irq domain registration fails
>   irqchip: xilinx: Enable generic irq multi handler
>   irqchip: xilinx: Use handle_domain_irq()
> 
>  arch/microblaze/Kconfig           |  2 ++
>  arch/microblaze/include/asm/irq.h |  3 ---
>  arch/microblaze/kernel/irq.c      | 21 +------------------
>  drivers/irqchip/irq-xilinx-intc.c | 35 ++++++++++++++++++-------------
>  4 files changed, 24 insertions(+), 37 deletions(-)
> 

Thomas/Marc: Can you please take a look at this series?

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
