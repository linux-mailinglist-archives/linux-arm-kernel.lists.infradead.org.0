Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB84142730
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 10:24:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kp/6OM3D6o/ZRQJLnnnU2qJQiTWtvfdmFvM6HOPCQgc=; b=BHCwx4sSn+W1Q3
	nc16gswTK1rgArVLyECSaEaflUP3sz9/HOsVe0vKjQp4driC559eHPq4DKlUbrNajy70z6uaLcMuD
	zjkEoC4UDLHl/Q3nfM7szjzeJxUa/wUlmSJYnjtwDAdVwqUPnc4bN/nZMSjuZREnqil9Yx7vA4smj
	kykbiRKu6SynSzicNPdGbGt6UBhqIU20y+WOTnA7ZH2YRyG9Cw0OTermJ0rLx+USDcKqBC8vyR/bp
	RSaazipp4x2+3x+6nDD6d3HEIAid7nB0CsW8OVpWlGd2BRruod4D2Nk0KfBkJM2fJ2c/RZ9qkycGl
	pbmuBghdvXMHjMaq/U0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itTIH-0007sd-Ux; Mon, 20 Jan 2020 09:24:25 +0000
Received: from mail-eopbgr40068.outbound.protection.outlook.com ([40.107.4.68]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itTI6-0007rq-Eb
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 09:24:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0C9Tr+VmDaAnCWoBTsjUnaDRMYlg37Uyp42M4a+qvgY=;
 b=QQiBqAcViTU4RrNj9GP/GbNiHGH14Sbxyh7eE1sJ2oekzgSyKVaqwNPc9f+zt4uWzvfv49GqpSluGzNMjT7BQmlA9UFO3Iu+FArmYm1dvMZUnSWvOuFUbGWdtMgii28wzgyJ8/eQlS6qKdoP/Xvo+sGxcExHbFbfiDL5X2p69YE=
Received: from AM6PR08CA0012.eurprd08.prod.outlook.com (2603:10a6:20b:b2::24)
 by AM0PR08MB3697.eurprd08.prod.outlook.com (2603:10a6:208:103::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.20; Mon, 20 Jan
 2020 09:24:11 +0000
Received: from DB5EUR03FT064.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::202) by AM6PR08CA0012.outlook.office365.com
 (2603:10a6:20b:b2::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.19 via Frontend
 Transport; Mon, 20 Jan 2020 09:24:11 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT064.mail.protection.outlook.com (10.152.21.199) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.23 via Frontend Transport; Mon, 20 Jan 2020 09:24:10 +0000
Received: ("Tessian outbound ca1df68f3668:v40");
 Mon, 20 Jan 2020 09:24:10 +0000
X-CR-MTA-TID: 64aa7808
Received: from 5aa5e84a034d.3
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 93C60254-5A93-493C-8609-9B1233AF2E5F.1; 
 Mon, 20 Jan 2020 09:24:02 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 5aa5e84a034d.3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 20 Jan 2020 09:24:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iImLOxPToXUREWc28FomELN2kwiAKtrrgLxxzuX0X7hmBmzJP4Q04tMTv4SXhcgxl2bFChRujEpWIKpdgCKbuMVOY8ZBjpx6XEWUfNGomX4eWV2CHdv0Hixs0SELlbreVcCbxcEofpstHdOGiCK7j4vb0MAWbVYKjDoea10Rr2kLzOGB9FU4fSwCMyfmpFmJCpnYXrouDQ4aCfynZZr/hRY9ARAbzn+p7CP2tD0zD/c8Ns8kKm4+NGK5piiOdfkRkxFhIt0C8J2hQT1+oiA0jRqMkZhul90Tx2amEHJbIqS5zugUn2EAcWfLBTAivWKrGzSW0J/QmBttJgM2/TALxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bm3K4BQWQToR4ylWjhFxoGciAyj7ub4X3dSfePLZEws=;
 b=PD/Vr0/2t48UmC3k3ygYPRMbaG+EVkn+RWgnZ1Pn6vQLTEv3wFNzghIc29QRsVzb+/iWUwewYJPy71Lq0NcIUlYvC7ilDUMOto8CrUG31cgvJ8sWLvg+ISPr0W1QJ2sEC7F6jAcSIRZts1gc3n3+ebxZCQfcMLWpgtGt87ujcpXof4jcFg4vJH91T7ACOZu9dXjsKPO/VY4dV1VRvYNRGLwkaWn2tBc297+sZKhD6DneSerEzbPkukNmV84bO1u0fDhEXzqp9w5ugA+5WE6UgZhEqkwgRslXTJXj4pt+IgRY81UUpDVh4mA3IsQlW7OSMWVRTQHk0lbTYGoXuA/szQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bm3K4BQWQToR4ylWjhFxoGciAyj7ub4X3dSfePLZEws=;
 b=GpJHzBSEXrfVCemM/cbsKyUSY8sSKJFXdg0UppHUjeykkKDRtk+QK6s70a+Gv5XODYHTuvx1sj69JmRTFiifdCyfTCj9xNS2HLKsNGklKtQaUkwUpFT4nfUWksb4GT6p7lZdUbTt1vOnY+t2RRdJUn1zA+fIS6vg+2jzFwQCvLQ=
Received: from VE1PR08MB4749.eurprd08.prod.outlook.com (10.255.27.21) by
 VE1PR08MB5023.eurprd08.prod.outlook.com (20.179.30.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.24; Mon, 20 Jan 2020 09:24:00 +0000
Received: from VE1PR08MB4749.eurprd08.prod.outlook.com
 ([fe80::3c6d:13d1:34b0:65ce]) by VE1PR08MB4749.eurprd08.prod.outlook.com
 ([fe80::3c6d:13d1:34b0:65ce%7]) with mapi id 15.20.2644.024; Mon, 20 Jan 2020
 09:24:00 +0000
From: Steven Miao <Steven.Miao@arm.com>
To: Support-Software <support-software@arm.com>, Tao Zeng
 <prime.zeng@hisilicon.com>
Subject: RE: Questions about /proc/cpuinfo for arch-ARM  - CAS-149046-Y1H3T8
Thread-Topic: Questions about /proc/cpuinfo for arch-ARM  - CAS-149046-Y1H3T8
Thread-Index: AXh/4mQl+0BVuzW5bg/qDoXVz3JWfrqfIBaAgAABnDA=
Date: Mon, 20 Jan 2020 09:24:00 +0000
Message-ID: <VE1PR08MB4749DEED78C7EABF519650B7F0320@VE1PR08MB4749.eurprd08.prod.outlook.com>
References: <FFCDED37A161475FA3F5B19E21DECA0D1D5CF72567E6@SUPPORT-SOFTWARE.ARM.COM>
 <VE1PR08MB47490C13405F61B3599D1314F0320@VE1PR08MB4749.eurprd08.prod.outlook.com>
In-Reply-To: <VE1PR08MB47490C13405F61B3599D1314F0320@VE1PR08MB4749.eurprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: dfbe8b0a-04bb-4f4d-89ff-dbc10d35f76f.0
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steven.Miao@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 14e549a1-68c6-4e85-9a4b-08d79d8a8214
X-MS-TrafficTypeDiagnostic: VE1PR08MB5023:|VE1PR08MB5023:|AM0PR08MB3697:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB369724BB171130F97EE09BFAF0320@AM0PR08MB3697.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:7691;OLM:9508;
x-forefront-prvs: 0288CD37D9
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(346002)(376002)(366004)(396003)(189003)(199004)(52536014)(2906002)(81156014)(81166006)(966005)(8936002)(71200400001)(186003)(8676002)(9686003)(26005)(86362001)(2940100002)(55236004)(55016002)(54906003)(33656002)(4326008)(110136005)(53546011)(66556008)(66446008)(7696005)(66946007)(5660300002)(316002)(64756008)(66476007)(76116006)(6506007)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR08MB5023;
 H:VE1PR08MB4749.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: BtnAZD4Wb7l0KcihUmf67S0utelTCKJ8AXikV+A92bqWDM+V8NIAQBw72dm02lyhZZuWQlLbE7xNGWsRQQe+gVW4voS2rvwMrVEJJIdCjMEgPFz6HBEW2vL11EVGfnH2hADpeD9CC68PcBZ4bTW54900ITZanuR+vBTZ/BV0BrBloeE8Iabmr0M8gox2E6+STjwS55u40OJPu3vY1mO50KnnTyzjqHSe6p6t6uKqiztE1Wrw51FMyrHmO6eUsUn9NaW47LfNKRcwz/A+33b1EUBxCKQXcIzwJRUJtUX9Yn7g6KaFWV1uTfKQM9LpojU+gFkpXKipcXBDp9NaLv8eNnqKNzUVZ0MVIhQ/FJ0zzwjciLc5YRBNtRFZyeHCdF88xdJUtLahIonITzhuL6dxTreHPhBug/X1MvH4ug0IH/6MwLTXAA+Hb1G3Mmzo1fOWXu3arLVAlgG2vIqyD+3ZQPv0EiFBm6k3iDOQXWOhGSPnW0sPxBOqhQId9Yxe9xFd3TTuRdok5gGSGCl84vJhhg==
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB5023
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steven.Miao@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT064.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(396003)(136003)(189003)(199004)(8676002)(5660300002)(186003)(52536014)(110136005)(26005)(966005)(8936002)(81156014)(316002)(81166006)(2940100002)(54906003)(6506007)(4326008)(33656002)(356004)(70586007)(26826003)(70206006)(2906002)(55016002)(478600001)(9686003)(336012)(7696005)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB3697;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 44c1ea70-db90-4cfa-c723-08d79d8a7c20
X-Forefront-PRVS: 0288CD37D9
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yWOtreI3JzuPMovP8O/cO1o8kEAv6wgEcUSZS+9sIhQiqyFNoQC7EBQpMYQhv33ThAQ0UJexuhmTtRKVUkBvyEQGc2nNTf7Sf9T8231YMFnoQBW7k7d+SE28ajGV+AOkfmJHXPoTtGJuiofwN2ucCX+kSiQck79HZmlxn17BmNqyi2npJhF5rAGOzu6YlLolAPObemtkkPuR6u/xC5CUTu0w9TJTe6S8oBF8kl4dKIOz+7CKJ7jQt33+JApXU4sZOI03F3uAIujdjZRnSwl+pl2Fbex0fAw7aTkYaUirLZQj1tW2WvhHy/dZIEDUdgSDW3B/yfJaRK9qytvC8mNmkljI2tmeMHR3K3K4yMC944lA4NB/ZoHMWpDfMVK9aqbHi7nemVEjwq94tedMcHL2AwQWvJhdddUG8E0YQhglfhsPn/wyMqaN3eyWPtbrSbhu0BD//bJybQaiuXkz5VRrs9C/K3cobcbdj4CJkBot7NkX43hkPA0NYlFx8dQPpTk3/XOOPtk7+wHkJfGugAKvng==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2020 09:24:10.8999 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 14e549a1-68c6-4e85-9a4b-08d79d8a8214
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB3697
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_012414_494280_97D1D03B 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Robin Murphy <Robin.Murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CC arm mailing list. Someone know the whole history may have a better answer.

Thanks,
Steven

From: Support-Software <mailto:support-software@arm.com>
Sent: Monday, January 20, 2020 5:17 PM
To: Tao Zeng <mailto:prime.zeng@hisilicon.com>
Cc: Mark Rutland <mailto:Mark.Rutland@arm.com>
Subject: Re: Questions about /proc/cpuinfo for arch-ARM - CAS-149046-Y1H3T8

From Steven Miao - Arm Partner Enablement Group
Please quote case reference number https://support.developer.arm.com/case-details/?id=f9beb263-333b-ea11-a813-000d3ab4f2f3 in any further emails to us on this subject.

Hi Tao,
>1. Since /proc/cpuinfo is treated as ABI, so where can I find the specification? Or is there any docs
>to describe the details? Or it is just some applications who have already token it?
 I think it is just de-facto ABI legacy application are relying on, there's no such specification.
>You know that, in x86, /proc/cpuinfo provide really good user experience, what we want to do is >providing the same or even better user experience.
We should add new stuff to /sys/, don't add new things to /proc. On x86 these strings are acquired from the CPU itself, via CPUID instructions, which means that it works for future CPUs. For ARM systems, we have no consistent way of acquiring a model name from a CPU itself. If users who want to decode MIDRs are going to have to use userspace tools.
Changing current cpuinfo:
- it breaks existing applications
- it is unmaintainable in the long run
- we can already get cpu information by dmidecode, lscpu, lshw...

Some discussion about this topic in mailing list:
https://patchwork.kernel.org/patch/10524949/
https://lkml.org/lkml/2019/12/6/485
http://lists.infradead.org/pipermail/linux-arm-kernel/2014-July/273022.html

Kind regards
Steven Miao
Arm Partner Enablement Group

For more support information, documentation, downloads and other useful resources see: https://developer.arm.com/support/

-----Original Message-----



From: Tao Zeng
Received: 20 Jan 2020 03:17 AM
Hi:

As discussed in the following mailing thread:
https://lore.kernel.org/patchwork/cover/834876/
I think the most important conclusion here is :
"The /proc/cpuinfo is already widely used and it's an in fact arch-specific ABI."

And I also agree mark's idea, but I still have got my questions here:
1. Since /proc/cpuinfo is treated as ABI, so where can I find the specification? Or is there any docs
to describe the details? Or it is just some applications who have already token it?

2. My idea here:
(1) If this is really an ABI, maybe we need to standardizing it in some way, and let more and more
people know about it other than asking "why not like X86?" again and again.
(2) If this is just used by some apps because of the historical reason, maybe we can help to improve
the apps?
(Some ideas like providing two kinds of /proc/cpuinfo, One is for server and the other is to keep the
 current /proc/cpuinfo, and controlled by kernel configs?)

You know that, in x86, /proc/cpuinfo provide really good user experience, what we want to do is providing
the same or even better user experience.
And I am not arguing what's more reasonable here, I just want to discuss for better solution.

Thanks.

Regards
Zengtao
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
