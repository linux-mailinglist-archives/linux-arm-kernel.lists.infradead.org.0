Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E16AA5E3E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 14:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cw0Xh8b+rX4uxGcEtq+lpvzeUhjLv/koKeiNY69p/ZA=; b=rco+tNuDWknSCc
	0pJcA9J09Iy1h5z0u3m08xOLpCF5EAcIFo8kr3Gr5JqfhHIzeIyxpKwGVRT46kJkfvpWGYKqjmPmY
	cPflL0mCJS2ClgxAMX9B4YtRmOsPlu3EaVW/oSYPSHZJz6udF19QhdqRXGVOzrw6YnSkMLP+Pe9hb
	lawgj9rz1JnlMKkvFVqrVRPIHSeWW03mDiLufU915T9UkXYFh7BYN5BnTNyT1Tk6AcfvW6SFRjthE
	LzqSagBQ57OtSddIM6XUECyhJg/7uXAyU57Q8/1kn0sI0dNPJ445KPgIh//lbstFOx0g/WVoHYFo/
	63hC5DlZLDSWoCUcYEeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hieNC-00044G-8H; Wed, 03 Jul 2019 12:28:30 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hieN0-00043I-80
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 12:28:20 +0000
Received: from LHREML710-CAH.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id 9AA835D2410C32F149EB;
 Wed,  3 Jul 2019 13:28:06 +0100 (IST)
Received: from LHREML524-MBS.china.huawei.com ([169.254.2.154]) by
 LHREML710-CAH.china.huawei.com ([10.201.108.33]) with mapi id 14.03.0415.000; 
 Wed, 3 Jul 2019 13:27:57 +0100
From: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>
To: James Morse <james.morse@arm.com>
Subject: RE: MPAM branch verification (was RE: [RFC PATCH 2/2] ACPI / PPTT:
 cacheinfo: Label caches based on fw_token)
Thread-Topic: MPAM branch verification (was RE: [RFC PATCH 2/2] ACPI / PPTT:
 cacheinfo: Label caches based on fw_token)
Thread-Index: AdUoR6JBXCmGfD+rTvOGseVrKJ7QIACYz8KAAbik43A=
Date: Wed, 3 Jul 2019 12:27:57 +0000
Message-ID: <5FC3163CFD30C246ABAA99954A238FA83F2DBB39@lhreml524-mbs.china.huawei.com>
References: <5FC3163CFD30C246ABAA99954A238FA83F2B38FD@lhreml524-mbs.china.huawei.com>
 <d3341796-d7ce-8b1b-3575-333eda7e6d07@arm.com>
In-Reply-To: <d3341796-d7ce-8b1b-3575-333eda7e6d07@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.45.96.3]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_052818_437466_92F0BD13 
X-CRM114-Status: GOOD (  29.56  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Vijaya Kumar K <vkilari@codeaurora.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Jeffrey Hugo <jhugo@codeaurora.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Linuxarm <linuxarm@huawei.com>, Jeremy Linton <jeremy.linton@arm.com>,
 Tomasz Nowicki <Tomasz.Nowicki@cavium.com>,
 Richard Ruigrok <rruigrok@qti.qualcomm.com>,
 "Guohanjun \(Hanjun Guo\)" <guohanjun@huawei.com>,
 "wangxiongfeng \(C\)" <wangxiongfeng2@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

> -----Original Message-----
> From: linux-arm-kernel [mailto:linux-arm-kernel-bounces@lists.infradead.org]
> On Behalf Of James Morse
> Sent: 24 June 2019 18:36
> To: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>
> Cc: Vijaya Kumar K <vkilari@codeaurora.org>; Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com>; Tomasz Nowicki
> <Tomasz.Nowicki@cavium.com>; Jeffrey Hugo <jhugo@codeaurora.org>;
> Guohanjun (Hanjun Guo) <guohanjun@huawei.com>; Linuxarm
> <linuxarm@huawei.com>; Jeremy Linton <jeremy.linton@arm.com>;
> linux-acpi@vger.kernel.org; linux-arm-kernel@lists.infradead.org; Sudeep Holla
> <sudeep.holla@arm.com>; wangxiongfeng (C)
> <wangxiongfeng2@huawei.com>; Richard Ruigrok
> <rruigrok@qti.qualcomm.com>
> Subject: Re: MPAM branch verification (was RE: [RFC PATCH 2/2] ACPI / PPTT:
> cacheinfo: Label caches based on fw_token)
> 
> Hi Shameer,
> 
> On 21/06/2019 16:57, Shameerali Kolothum Thodi wrote:
> >> -----Original Message-----
> >> From: James Morse [mailto:james.morse@arm.com]
> 
> >> Subject: Re: [RFC PATCH 2/2] ACPI / PPTT: cacheinfo: Label caches based on
> >> fw_token
> 
> >>> and noted that
> >>> on our HiSilicon platform all the L3 cache were labeled with the same Id.
> >> Debugging> revealed that the above leaf node check was removed in this
> >> branch[2] which makes
> >>> the min_physid calculation going wrong.
> 
> >>> Just wondering is there any particular reason
> >>> for removing the check or the branch is not carrying the latest patch?
> >>
> >> Nope, that's a bug.
> >>
> >> Jeremy Linton's review feedback[0] was that that PROCESSOR_ID_VALID
> flag
> >> can't be relied
> >> on. It looks like I over-zealously removed the whole if(), and this doesn't
> cause a
> >> problem with my pptt so I didn't notice.
> >>
> >> I've fixed it locally, I've also pushed a fix to those branches, but it will get
> folded
> >> in
> >> next time I push a branch.
> >
> > Thanks for that.
> >
> > Apart from the above, I have come across few other issues as well and had
> some
> > temporary fixes to the branch here[0]. This is encountered while trying to get
> the
> > resctrl fs mounted and attempted a cqm test run using resctrl_tests tool.
> 
> Thanks! I haven't run that on the model yet as I want it to get the monitors
> working first.
> 
> If you are seeing bugs in that monitor code, beware you're the only person to
> ever run it!

Ya..I guessed so :).

> 
> > The fixes may not be proper ones, but I think it will give you an idea. Please
> take a
> > look and let me know your thoughts.
> 
> {,!} exposed_mon_capable, yup that's a typo.

Ok.

> the evt_list being uninitialised is because that code has never run, as noted in
> the
> KNOWN_ISSUES, (The model doesn't expose have any of the mpam counters...)
> 
> Issues around component->resource mapping will disappear as I've re-written
> all that to
> fix issues around picking the same resource twice.

Ok. Good to know that.

> 
> The domid bitfield not being big enough for the width of the cacheinfo id field
> looks like
> a bug in the existing resctrl code. Could you spin that as a patch against
> mainline?

Yes it could be a bug. But I am not sure about the assumption on x86 platforms with
respect to cache id width. Also any need to consider 32 bit systems at all or not.

> It won't affect any x86 system, but I don't want to 'fix' anything as part of the
> mpam
> support.

Does that mean the cache id width on x86 will never be >14 bits?

> We almost certainly need to compress the cache-id numbers down to {0,1,2} if
> only so we
> haven't filled all the exposed bits on day-1. (so it might not matter for arm64
> either...)

That will be nice if we can compress it like that. I think we can leave the fix for now
and come up with a solution when things gets really going.

Mean time I am trying to probe memory controller as well on our system and it looks
like there are still issues. I will debug and update if it really is a problem. Please
let me know if you have any plans to update the branch so that I can try the latest.

Cheers,
Shameer
 
> 
> Thanks,
> 
> James
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
