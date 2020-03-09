Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA8217DA90
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 09:21:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IjiPycNT3XK5sUtQ58pCab9TZTVSm7ecvw+v4S4d0J8=; b=M2sZvM9wPhrB7/
	ZE1VA7EEEZwOgL+mg2TIcsfQ/UTclNdoC9vXk+MY7JD2apGp4ugX+MRGtR9cuESNkAISBU6ROxkmN
	IB6vrLNGpCtcLQADEmKClUO/Xo3n0n/wYIXIntQEQHhAAyPSCOam7AC+TMAdjqPMfTUsjBYhc/s8b
	2bUM6aBBkkCgUTJvdIWThFkDAjFDSi19XOSjijvzLEusp4i82Bq90JRgeDWl9XmhxTH/brBResBHY
	QQ1ENPDLH+Oomu1By/b+Is0KiLvHv92x7pfs6nkuLkw23k70Pu69Qac8mf3G641nyLVbRwIYyKiGT
	NlWIIu/maVsEpql/h4rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBDfA-0005TQ-Gd; Mon, 09 Mar 2020 08:21:24 +0000
Received: from mail-co1nam11on2083.outbound.protection.outlook.com
 ([40.107.220.83] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBDf1-0005Q0-Ua
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 08:21:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OqGfhKMLfx6f1cmk3WPd/vG5ll02ESdMBZC0ch/JtxxuHgVhMg307+rdHVmZH1jUKJBeWuW92X9QVq2DwPYZLmcXalvww8CnpFsSj7LcrNdnCsXjqg4z9byV2uQnriRzyxeYkwxBuFk5ZHPxLnoCz+/IZ2bR99kkr3Pm2MMVNOwyV1zp/5ikRfMMs1AgR6eLLEqhXfuMWSq2VFYS5gGcE6kZMsQLv0lO1IcBVUp1/sZgGszdAxMsTfFu/y4ao/gjnh//d1gQ76pM+hH5KPzjCr7XgNTQAmTriQZDML53ru6Dpr8WrtX2ausUnXZ6OupOw0JILcwQjZdn8VXaiDEnUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IodeEg0e+BlfDDIswxnSJWotncwcQqxqAPN3QUAaK6w=;
 b=RhtknaqwoVJffLmtChnoq42a6V4zUlTrxH1QcWmgbqRZwQ4EAaLsI/pI4JRDNmRLwcGAl7UyfPh4MjWrSU7KtimSlLdrC9AKR8eFqbRMwRDX3SJMVQIPLiGSmXg0/jGL9dygi+pReTK6G3YmkomD7irYslPiR5/fskplIdOMpJv7A6md9QrE0syRMo3UoSVxoiIr3oKcxDOCKnup9GTZa8tlZmsv5ejBtC7vlw6T6cY7vTsW5IxRj6ZUFxvJXdxy9gdwPKLvOFcHycpcg2c+w86oXfvSGZHS+YZbvJnXMfFHcrEZ2WCiEGm/VtRMsVbd3kCdLiue39ALBuuB0yUUOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IodeEg0e+BlfDDIswxnSJWotncwcQqxqAPN3QUAaK6w=;
 b=nbjAAk/AA+bIqlS9ue0aZLCW9dEFqi93dUpki1NE9KsCfwR0dwncXd8FsHV7PYdwOEXjakbVO2MG5HgXFucLxZHxTFNzYxyllyXybYKN7Ln+vrIDYTG2KYOG32b+rFiw9Bc9I6oJR1+cESO/fcTf9MHev27wp42QIHKKaxwdd4g=
Received: from CY1PR07CA0038.namprd07.prod.outlook.com
 (2a01:111:e400:c60a::48) by CH2PR02MB6278.namprd02.prod.outlook.com
 (2603:10b6:610:9::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.18; Mon, 9 Mar
 2020 08:21:10 +0000
Received: from CY1NAM02FT022.eop-nam02.prod.protection.outlook.com
 (2a01:111:e400:c60a:cafe::ff) by CY1PR07CA0038.outlook.office365.com
 (2a01:111:e400:c60a::48) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15 via Frontend
 Transport; Mon, 9 Mar 2020 08:21:10 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT022.mail.protection.outlook.com (10.152.75.185) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2793.11
 via Frontend Transport; Mon, 9 Mar 2020 08:21:10 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jBDev-0003gY-Pq; Mon, 09 Mar 2020 01:21:09 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jBDeq-0004Zi-MZ; Mon, 09 Mar 2020 01:21:04 -0700
Received: from xsj-pvapsmtp01 (smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 0298L26G012267; 
 Mon, 9 Mar 2020 01:21:02 -0700
Received: from [172.30.17.108] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1jBDen-0004XN-QK; Mon, 09 Mar 2020 01:21:02 -0700
Subject: Re: [PATCH v2 0/2] irqchip: xilinx: Switch to generic domain handler
To: Marc Zyngier <maz@kernel.org>, Michal Simek <michal.simek@xilinx.com>
References: <cover.1582545908.git.michal.simek@xilinx.com>
 <20200308140126.51eeebc4@why> <20200308143239.4428c1ee@why>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <fcc7a874-365d-bdaa-4dce-9e97e7d3a1e6@xilinx.com>
Date: Mon, 9 Mar 2020 09:20:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200308143239.4428c1ee@why>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(396003)(346002)(39850400004)(189003)(199004)(70586007)(70206006)(356004)(6666004)(4326008)(36756003)(2906002)(478600001)(426003)(44832011)(5660300002)(8936002)(81166006)(81156014)(336012)(8676002)(26005)(2616005)(316002)(110136005)(9786002)(186003)(31696002)(31686004)(54906003)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6278; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 15e51b0f-e350-4e68-f1ae-08d7c402d2ed
X-MS-TrafficTypeDiagnostic: CH2PR02MB6278:
X-LD-Processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
X-Microsoft-Antispam-PRVS: <CH2PR02MB6278DCCA2EDE9A77670483EFC6FE0@CH2PR02MB6278.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0337AFFE9A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YMTYC1jpd9P2Yk6gaBcO2j7o6KwZATET/H9qPLcSgSESaRtjvkMCefaLd/axc1fzOR5OaHy1FJ4q1oGSp0n/GgXCWZ6J9j8iio2j+/tYkt7JGhwzg7/O03dKiTFLEgKlWXBrdGKQY6ALsZOx1kbbiR8HdBQE92OvNZh2wNNi3sFB+13TlVPGUu3h7OuHbiq0qbNOTg40VzCkVI/kHPP6Tu8eO8929/qphLAZ6P+lTZV+vHNj4DfyHAyCbrDCW39fw2PvZ/9bFEZf1e6VNDGfUdrvSQS6iOyf0AIECsuV8Oi+TPSGJfNY30HHYDeyMEOvUwkjhWlGDxjY0QqV7aU1TfJ4Tyk9/EkOOPZaYYxyupWPX2rLPkifwNlp4ylfCMQmbjHCuhlP4DPpZ9t1AVULl1z79f9gPNykwcfgW1KMcDvAIq9s4FOCtuiQ5eZxg18J8L5QNdNPl1qYyZdO54oUWeX0NvRhvlcq1Sm0yqsQ8iaepuYYMHQ5XvFacpYLsuTS06ee+EmPJJkraUamKH2HmktDTHo7b1gqwtvbLWn6tErWF7jb2eIYxy1jvnDvZHfr
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2020 08:21:10.2661 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 15e51b0f-e350-4e68-f1ae-08d7c402d2ed
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6278
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_012115_990399_C068D3A3 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.83 listed in list.dnswl.org]
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
Cc: Stefan Asserhall <stefan.asserhall@xilinx.com>, monstr@monstr.eu,
 Jason Cooper <jason@lakedaemon.net>, linux-kernel@vger.kernel.org,
 git@xilinx.com, Thomas Gleixner <tglx@linutronix.de>,
 Mubin Sayyed <mubinusm@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08. 03. 20 15:32, Marc Zyngier wrote:
> On Sun, 8 Mar 2020 14:01:26 +0000
> Marc Zyngier <maz@kernel.org> wrote:
> 
>> On Mon, 24 Feb 2020 13:05:12 +0100
>> Michal Simek <michal.simek@xilinx.com> wrote:
>>
>>> Hi,
>>>
>>> this series is based on cascade mode patch sent by Mubin
>>> (https://lkml.org/lkml/2020/2/11/888 - v3 series).
>>>
>>> The first patch is just fixing error patch. The second is converting microblaze
>>> do_IRQ() to generic IRQ handler with appropriate changes in xilinx intc driver.
>>>
>>> Also removes concurrent_irq global variable which wasn't wired
>>> anywhere but it stores number of concurrent IRQs handled by one call. There
>>> is option to get it back if needed but I haven't seen it in other archs
>>> that's why I have removed it too.  
>>
>> Queued for 5.7.
> 
> Scratch that, this doesn't apply to mainline because of the above
> dependency (and said dependency hasn't been reposted after Thomas'
> review). I've now dropped it. Please resubmit a full series that
> contains all the pre-requisite to be applied on mainline.

I have asked Mubin to send these two patches as series with cascade mode
support.

Thanks,
Michal


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
