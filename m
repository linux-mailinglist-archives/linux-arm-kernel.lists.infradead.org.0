Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B0517D1B8
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 06:33:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=plDRLeqCb955yOKsV0FUjfPXjnVxFINc+UE9y6yDGv0=; b=NY5ydkeJf76ydq
	2Jgc/+OKM/0sdAAuebWRNXWGsbA8QAqLfXreQjrMH2XXN1BGpmuKhFgq+X2VJHxczoRPYXBVe06Zz
	+8/xQUmxls2yC+RvaLhrOx0IGze42ljolBRQfd8frbH64PFNLwlOjWTWDQlwV5RyfMaVyV9mjsn+L
	eFlvqzu8P06Yhf9w2u2tX6b8n4G4R7NVkSLRLCPxT7spWEsI9xoL+CVJoZRNhjafyBndkZ5Hyb7Zy
	WPNZ9t+Hi13z6S8r84+4zgZAFuFr5J719NCMHvVWevL3syO6uxocuDBxv7dukglgvWlg+N/H8/zoM
	bqkSdYFxBtCpdOn4vpww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAoYx-0008KR-I9; Sun, 08 Mar 2020 05:33:19 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAoYq-0008K4-QE
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 05:33:14 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0285WOaP008199; Sat, 7 Mar 2020 21:32:24 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=axcSiAurOmgpk6xOgVU5CnMXA0eIErwtCYrlNtJt6H0=;
 b=xjb2sFGCLyuhBtKUfSDF+EDCsnYQEU3XFMtQlMA7+rJl4IIL8FBjq/sE+gCz150ZWfmS
 awQQHPR6t5GT908YoPtoYg2wMLIwsnNxx4/2W8BIceKVnNnX3xpUBt4BLZZ/t1WbvBDE
 381kD0F7SPQJnK2nTxa60GeE9Pq3mtjMQCzX2Hjz8iPjAZi34Hkx2unuIUpE8uV7TErB
 EPktM+n5oghJaMo4QpoPq/DJpnklj8Q+5LY3FXycqQe/Hja+y5KM/jA2V2tV0oEUqhi3
 ojop15wKr8B9KKWp3835LmcfwI0rW9DkBXIhPJJAHHlIy3QGjz5XvDttiuAjeCVuzgbv WQ== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0a-0016f401.pphosted.com with ESMTP id 2ym9uwb2mq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sat, 07 Mar 2020 21:32:24 -0800
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Sat, 7 Mar
 2020 21:32:23 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Sat, 7 Mar 2020 21:32:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LiidvnfpI6M1XUbZnDuUfCGZ9sgEN1T7LwQfR0d8RnZ7lun4iPq1d0+RdAgXRdXDp0rBEc5HtAxcMVBgDy0SEJJM3tLGJON9UXnc1xkxAiCMJaxgtbax8F4lgvIx3TECBvGQV2ZRq4OIUVELGCgSOo3W6bnv5dEJjUqDgJRX2dn+FpPA7MQ34Oa7Ewndopbl7pkYdRRuKTZcWZMO7oaz6xACeQ6oGDoijJw0YHiPBZzfIKuH+TfUk9KwBMyjUTnVFiX+y0gfkCGaxavjnAGe9lBNhWjLTxooZSablIZTLhpH8Ow9HwAlCDL5xbj9ZEXpUhPO9I9FByGhOZZvf0QmXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=axcSiAurOmgpk6xOgVU5CnMXA0eIErwtCYrlNtJt6H0=;
 b=CvygJgZGgguKF+5sfIAY2LCJqX4C+01xMqxICAi5scWraRbbAYmKegVMUdjzHBiTKVIaJ5S5+a2U+iUEaNlCTuGPXiFwuz3rBYx+9JCqW0QpoLBceLsBofx1R33Flb/2g3IHwAqyJw6Hhk7jtOt+N5GCHjSvzn0iL8DnEtSxEeGNC6d71hhjiq71BxjqJrxwXDVU7ifjUvhZJ03iI3WdzMzKgBN68EbQKeoKd03W6tDNn+l4yrcMEAfsbqExsYK0MyQki8nqNN/DH3Or5QDEaZAURmeXf07xkbkX7LyUWC9D9pQ7x2LCPGYJe3lps2te8OiDPGPAg0guhlOUTzkziA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=axcSiAurOmgpk6xOgVU5CnMXA0eIErwtCYrlNtJt6H0=;
 b=FiTgfSZ4FXFtYUI3p1fWeWKd5/imAaY5ihxxEE5SfaqRu2IkDhTUoS4cbRmygKnPQ+XKd6NZj29r9Oedif7+m6ZsSaGKGdIpYE5qssMu8ECiYRceNbVzUpYBKA3ppEMzthLrIX/zspXU6WMLaO9T1DGrYpnfrIV1F6hxpQhDJgA=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB2951.namprd18.prod.outlook.com (2603:10b6:a03:10c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17; Sun, 8 Mar
 2020 05:32:20 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23%7]) with mapi id 15.20.2793.013; Sun, 8 Mar 2020
 05:32:19 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>
Subject: Re: [EXT] Re: [PATCH 03/12] task_isolation: userspace hard isolation
 from kernel
Thread-Topic: [EXT] Re: [PATCH 03/12] task_isolation: userspace hard isolation
 from kernel
Thread-Index: AQHV8j73SZ7gA0FMRkuOSCw4mVFsAKg6VJCAgAPczwA=
Date: Sun, 8 Mar 2020 05:32:19 +0000
Message-ID: <92135de5e710c3fddb7256259a759b20460e9052.camel@marvell.com>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <36d84b8dd168a38e6a56549dedc15dd6ebf8c09e.camel@marvell.com>
 <20200305183313.GA29033@lenoir>
In-Reply-To: <20200305183313.GA29033@lenoir>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.233.58.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 253cc83d-d1a9-4c6d-c5c4-08d7c322124c
x-ms-traffictypediagnostic: BYAPR18MB2951:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB2951F7FDB3A9AD62857A0B71BCE10@BYAPR18MB2951.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03361FCC43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(136003)(366004)(39840400004)(189003)(199004)(478600001)(316002)(54906003)(2906002)(71200400001)(81166006)(8936002)(81156014)(8676002)(6506007)(186003)(5660300002)(6916009)(6512007)(26005)(91956017)(66946007)(66556008)(64756008)(66476007)(66446008)(36756003)(86362001)(7416002)(6486002)(76116006)(2616005)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR18MB2951;
 H:BYAPR18MB2535.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SjOGt74X9REYppB6qEEpPHVGIYrh9EqWV42wirpiiJ2i5Rfb+uW3CiTXME7HgImEpXNsHmreXeS+CHCmu9rj9DpcPncwPQ4W4NuOzsBaR0N1HUdqFL80q1hrSMUnNyDvn2268DUJi42sOLg8fPscxFZmPGctz8duhiEb1x+3tu0VPFoNBLzF/25PpF4A3nYszgjAJNi4YzVyEntnw4lqnLDFmomdy/STjVMUyUo1aD2Z+00qSJ8tac3jzWQEqIFGZmbzK2IOUo/WEAd24A/6/k44Jmvu8jvAz4HKFhv/QqSNNMNsrE1kLZllxUgAZKKb2vz49vE24pvAZzIClEC+UswoE4jtr/h9dadlBFT6CHgaZBJxBQ6YImag/zjF7/mfYw6N4CLMABbv9W1aImfZFk6+Y42lyP2/D/QizfPtgxkuXXFIFTBg94LnVPdm3adz
x-ms-exchange-antispam-messagedata: p+99BpVoiiu1zjgKN9iO34+GPQlI2/UwhDadIL/aqJuoxJjJ19amGTisGEjql4XlxURHCBuNOpNMgQR2x4IeY5WLU2rWXCMaa7bZvGtQ+LP+eILPGrWFAJiZ/CVv4oRt/rWUmG1N9a1PIXenFuh/6w==
Content-ID: <128976CACCE956469B6E5F7E2D72E66E@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 253cc83d-d1a9-4c6d-c5c4-08d7c322124c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2020 05:32:19.7191 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 61Bhl4P8mRmKHmG0w2Sh7RQNwx/+LoBndYHSjVEODIUXl7xaqMrQBxl+pZXJrZqKlP9upyY7wVMYJl9KBexCjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2951
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-08_01:2020-03-06,
 2020-03-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_213312_870387_2646DA55 
X-CRM114-Status: GOOD (  29.17  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>, Prasun
 Kapoor <pkapoor@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "will@kernel.org" <will@kernel.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-03-05 at 19:33 +0100, Frederic Weisbecker wrote:
> On Wed, Mar 04, 2020 at 04:07:12PM +0000, Alex Belits wrote:
> > 
> 
> Hi Alew,
> 
> I'm glad this patchset is being resurected.
> Reading that changelog, I like the general idea and the direction.
> The diff is a bit scary though but I'll check the patches in detail
> in the upcoming days.
> 

I made some updates -- added missing code for arm and x86, restored
sign-off lines and updated commit messages.

This is the result of some work that mostly happened on earlier
versions and had to deal with the fact that timers and housekeeping
work often appeared on all CPUs, so some solutions may look like an
overkill. Nevertheless it was very helpful for finding the sources of
unexpected disturbances.

Also originally some of the race conditions and potential delayed work
at the time when a task is entering isolated state were considered
unavoidable. So the part in kernel was focused on correctness of
handling those conditions, while detection and dealing with their
consequences was done in userspace (in libtmc). Now it looks like there
may be much fewer such situations, however I am still not very thrilled
with the idea of complicating the kernel more than we have to.
Especially when it comes to code that is relevant only over few seconds
when the task is starting and entering isolated mode. So I have to
admit that some solutions look like "more EINTR than EINTR", and I
still like them more than making kernel side of entering/exiting
isolation even more complex than it is now.

I may be wrong, and there may be some more elegant solution, however I
don't see it now. Userspace-assisted isolation entering/exiting
procedure worked very well in a system with a huge number of cores,
threads, drivers with unusual features, etc., so at very least we have
some usable reference point.

> > In a number of cases we can tell on a remote cpu that we are
> > going to be interrupting the cpu, e.g. via an IPI or a TLB flush.
> > In that case we generate the diagnostic (and optional stack dump)
> > on the remote core to be able to deliver better diagnostics.
> > If the interrupt is not something caught by Linux (e.g. a
> > hypervisor interrupt) we can also request a reschedule IPI to
> > be sent to the remote core so it can be sure to generate a
> > signal to notify the process.
> 
> I'm wondering if it's wise to run that on a guest at all :-)
> Or we should consider any guest exit to the host as a
> disturbance, we would then need some sort of paravirt
> driver to notify that, etc... That doesn't sound appealing.

Why not? I am not a big fan of virtualization, however people seem to
use it for all kinds of purposes now, and we only have to propagate (or
reject) isolation requests from guest to host (as long as resource and
permissions policy allow that). For KVM it would be literally
replicating guest task isolation state on the host, and as long as CPU
core is isolated, does it really matter if the task was created with
two layers of virtualization instead of one?

For isolation to make sense, it's still code running on a CPU with
fixed address mapping. If this is still the case, virtualization only
determines what can be in that space, not how it behaves. If this is
not the case, and task causes kernel code to run, be it guest or host
kernel, then something is wrong, and isolation is broken. Not very
different from behavior without virtualization.

This would be very bad for early days of virtualization when very
little could be done by a guest without host messing with it. Now, when
pieces of hardware can be (relatively) safely given to the guest
userspace to work on, we can just as well let it run isolated.

> 
> Thanks.

Thanks!

-- 
Alex
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
