Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9F317C937
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 00:56:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0m2Bh7eaFTgFPvHkeVD64LM3ITxJTX8in8E5zA6QPn4=; b=p/ZsrO7PcGid0mxR9xrxORLPm
	SvEBkTb42hREJQVvt90bhOUgWS6RxalAsC1XC7rHajHJxO64VMapUzHYTXjYEvv/rlIYarn8433Pg
	F0ptsY2xEoh2J6aPxdtsbcynV5L/edpo9YrmaNRobPP+ZoFukqCy9FjxwkB1t6AOr/+jawItBvzIX
	t3ctQuoUViptye5zHPmweylm5ucmUb5/K67BhHEoKjxopCHsU30O1kDIymjtKWfQtCDrNSQ1B2xYM
	MlW1yQ5sD6Ha/H5REVo7uibX7Dyg/Oh6RWZAD9dvvKxMeRZVRlM9HzrZ5m23/nciw6Sf8NXQfGUlQ
	vJqaJk06g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAMp8-00069F-SF; Fri, 06 Mar 2020 23:56:10 +0000
Received: from mail-dm6nam12on2085.outbound.protection.outlook.com
 ([40.107.243.85] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMp1-00068r-SE
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 23:56:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HKYFgqMt6V/+aO+TennyHjGdhe2mS/J5Id45TSscA05a6LtD94dPbeuBdpqpZl9vMYsWnUYUmQCuTrSYIxDli8lDgQVQrd6QmMQ4AJFmjYfU2cNUVzDZGVjk65MvATXWV8se7z0+70dr3J1O9hUUAwfLkGEafrmn/0osMo1s9tQxntxIR3k0kQYlPBObOQY1PIrMHaEQ/zjciS4FSkewRy3YnG6UKa8wYLye7MN07Gw66QOrKiRXXPzT0SiJLscTUIjntteLg3LKMusloV2Z12b6JyOkn4Htsh4MMfW3z2WOwiMKI3710OrqxYDXL5jtmGsB4mco1ksNJtTT0ZyMsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OQW6/te7yKqNqsJenJZqetPDlfW1IPRmRJPzWV7ciRI=;
 b=AznNSZws+gS3A0ISzUqoJgkX26pUERi90x7z9hBbilCVmpE61I6ocsTZXDgkglKqxbMeiYYYKHyw9HPmB+LVtybI1Kyi3AuKQnxbpJLqipXdqzmmAyfy7f3jWdr/2n3Ng6z88xw9REL2ozeyKAwBSP+UKUPrz8ZleaX1jGuEUms2H1EEDMGQtzJXyTeGRptrNSJxxxBZWh+g484r3HIZNnZfJxj77Voy1yWyA9yq2Jc9NOx+XVuT+YvRDqw5hLP8pI8EiXwNeLqrF4dBh5Nmy+JJg7pbEed5WEwTdfamRmspFvfBFuQq8Ui/Ue61mVCw/ofsA07N4knno+VSpe1WRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linuxfoundation.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OQW6/te7yKqNqsJenJZqetPDlfW1IPRmRJPzWV7ciRI=;
 b=a5aN65hco6bcoacg2z4JQh18sTKOurR35/U9W0wA/APmHRyubC4HVRE3YhNhM/dPChN6YL+pxL0I9TE7DOV0vGIdKBSgttnMhQHbi+ViH7ZJDRNFY+FMmdvXvIudykvjYZgM7cL7s4iPvECenS1RWRjMOp/PFf0NQEXqRcJmfrc=
Received: from MN2PR01CA0031.prod.exchangelabs.com (2603:10b6:208:10c::44) by
 MN2PR02MB6413.namprd02.prod.outlook.com (2603:10b6:208:1b6::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Fri, 6 Mar
 2020 23:56:01 +0000
Received: from BL2NAM02FT036.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:10c:cafe::77) by MN2PR01CA0031.outlook.office365.com
 (2603:10b6:208:10c::44) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17 via Frontend
 Transport; Fri, 6 Mar 2020 23:56:01 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT036.mail.protection.outlook.com (10.152.77.154) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2793.11
 via Frontend Transport; Fri, 6 Mar 2020 23:56:01 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMoy-0003gm-MG; Fri, 06 Mar 2020 15:56:00 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMot-0004i4-In; Fri, 06 Mar 2020 15:55:55 -0800
Received: from xsj-pvapsmtp01 (smtp3.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 026NtkYS004488; 
 Fri, 6 Mar 2020 15:55:46 -0800
Received: from [172.19.0.52] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jollys@xilinx.com>)
 id 1jAMok-0004hI-LN; Fri, 06 Mar 2020 15:55:46 -0800
Subject: Re: [PATCH v2 1/4] firmware: xilinx: Add sysfs interface
To: "'Greg KH'" <gregkh@linuxfoundation.org>,
 Jolly Shah <jolly.shah@xilinx.com>
References: <20200124060339.GB2906795@kroah.com>
 <2D4B924A-D10C-4A90-A8E6-507BF6C30654@xilinx.com>
 <20200128062814.GA2097606@kroah.com>
 <4EF659A1-2844-46B9-9ED6-5A6A20401D9D@xilinx.com>
 <20200131061038.GA2180358@kroah.com>
 <BYAPR02MB40559D6B62C4532C0EAD0281B7070@BYAPR02MB4055.namprd02.prod.outlook.com>
 <20200131093646.GA2271937@kroah.com>
 <3ef20e9d-052f-665c-7fc8-69a1f8bc9bd2@xilinx.com>
 <20200214171005.GB4034785@kroah.com>
 <c2914eae-bf95-ad51-79a4-07f199f37e27@xilinx.com>
 <20200215005235.GA32359@kroah.com>
From: Jolly Shah <jolly.shah@xilinx.com>
Message-ID: <23a785fd-3874-b71a-c0f5-d117a9058abf@xilinx.com>
Date: Fri, 6 Mar 2020 15:55:46 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200215005235.GA32359@kroah.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(396003)(376002)(39860400002)(199004)(189003)(186003)(26005)(426003)(2616005)(2906002)(336012)(44832011)(316002)(8936002)(36756003)(110136005)(54906003)(478600001)(81166006)(356004)(81156014)(7416002)(31696002)(4326008)(70586007)(5660300002)(31686004)(9786002)(70206006)(53546011)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6413; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 856af57d-6139-42b2-cf5e-08d7c229ec9a
X-MS-TrafficTypeDiagnostic: MN2PR02MB6413:
X-Microsoft-Antispam-PRVS: <MN2PR02MB641311F76B63931B3711CF78B8E30@MN2PR02MB6413.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0334223192
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: M9SXiN86G5eQ7lJwHrv83wxolBNYnWRmodGtNmR+uDXCJqri7/TaKgJcottV7HUsmk/Kx5KaN0sbaYF/2lD80fTCl9E+V+ar4ozmJ4IaINLbxq7jjkWlx3GF7Fj4B2dKDhgkptW1cXf3bTtjSRegQh2iYLT9A400CXGUWZJSkJfw9+vKMeIcltZ1LD2Pg49mHJ57GjEMOxwzpY5Z6HkHDbKYDS0u0fIqRhCZzsRhSusLQThHqgVzUhvhhvv15DinxAtlSdwiRHQwWDn9tkAIJCWXU9uawn+xLOahyDFr+7Ns8QBocNLmFWt/aGb8SOCt/LYFJkOeUe8Ay3itw+zAbztU3pOtzuaWnFmtKzcTrTjMN44/l0V9ZwXZPppyu8w7WpsSSvACIhCJ7JdmyEIQyfYLUeF50oPODNSZ0Zzul2tyrnKck3pu9reO7UmZYYwp
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2020 23:56:01.2438 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 856af57d-6139-42b2-cf5e-08d7c229ec9a
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6413
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_155603_911659_75991991 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.85 listed in list.dnswl.org]
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
Cc: "keescook@chromium.org" <keescook@chromium.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "matt@codeblueprint.co.uk" <matt@codeblueprint.co.uk>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rajan Vaja <RAJANV@xilinx.com>, Michal Simek <michals@xilinx.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,

 > ------Original Message------
 > From: 'Greg Kh' <gregkh@linuxfoundation.org>
 > Sent:  Friday, February 14, 2020 4:52PM
 > To: Jolly Shah <jolly.shah@xilinx.com>
 > Cc: Rajan Vaja <RAJANV@xilinx.com>, Ard.biesheuvel@linaro.org 
<ard.biesheuvel@linaro.org>, Mingo@kernel.org <mingo@kernel.org>, 
Matt@codeblueprint.co.uk <matt@codeblueprint.co.uk>, 
Sudeep.holla@arm.com <sudeep.holla@arm.com>, Hkallweit1@gmail.com 
<hkallweit1@gmail.com>, Keescook@chromium.org <keescook@chromium.org>, 
Dmitry.torokhov@gmail.com <dmitry.torokhov@gmail.com>, Michal Simek 
<michals@xilinx.com>, Linux-arm-kernel@lists.infradead.org 
<linux-arm-kernel@lists.infradead.org>, Linux-kernel@vger.kernel.org 
<linux-kernel@vger.kernel.org>
 > Subject: Re: [PATCH v2 1/4] firmware: xilinx: Add sysfs interface
 >
> On Fri, Feb 14, 2020 at 04:37:16PM -0800, Jolly Shah wrote:
>>> Just make the direct call to the firmware driver, no need to muck around
>>> with tables of function pointers.  In fact, with the spectre changes,
>>> you just made things slower than needed, and you can get back a bunch of
>>> throughput by removing that whole middle layer.
>>>
>>
>> arm,scpi is doing the same way and we thought this approach will be more
>> acceptable than direct function calls but happy to change as suggested.
> 
> Just because one random tiny thing does it the wrong way does not mean
> to focus on that design pattern and ignore the thousands of other
> apis/interfaces in the kernel that do not do it that way :)
> 
>>> So go do that first please, before adding any new stuff.
>>>
>>> Now for the ioctl, yeah, that's not a "normal" pattern either.  But
>>> right now you only have 2 "different" ioctls that you call.  So why not
>>> just turn those 2 into real function calls as well that then makes the
>>> "ioctl" call to the hardware?  That makes things a lot more obvious on
>>> the kernel driver side exactly what is going on.
>>>
>>
>> Sure as i understand firmware driver will provide real function calls to be
>> used by user drivers and underneath it will call ioctl for desired
>> operation. Please correct if I misunderstood.
> 
> You do not misunderstand.

Submitted v3 with required changes. Please review.

Thanks,
Jolly Shah

> 
> thanks,
> 
> greg k-h
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
