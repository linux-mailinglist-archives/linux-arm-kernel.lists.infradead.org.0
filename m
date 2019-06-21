Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B53BA4ECAA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:57:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wop8YEG/K5dJlo3g/+jQo+gVlC3ZqTJuZOdK5RhSW1U=; b=JlwYAHTfU+hGg0
	/AO5Zi4Z8/Lz92A6RMO6Ww2jTNSIgCn4XytFbVnzea1nXd0EPwDMdtgnOzJYXjZon5UJ4bG3mVsNs
	xQFfw8AVuUX/nwvYtYclEB2DAMKQ+A1h+SN/TKHJYCZQYW9SddyonWs7QA01VB6oA2KktjqtSYPdy
	caQaLiutayA0zlvKA8KLKjXXQw2jBnOyaRa6Vf4FYuv4CR2a3NomKkfM/fV3xqci1m+nYf8+rsFPz
	fO+whZglVn+zkdrgb1mIQrLhj3HOgItjjmmt/S7pdImHweTTr5EdE5r8u7s7F30ItIecxVes1Qogn
	0N4f0mmEoCUunK1das7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLv8-0005EA-5i; Fri, 21 Jun 2019 15:57:46 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heLuu-0005DP-Q6
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:57:34 +0000
Received: from LHREML713-CAH.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id 14549C23308867A67A7A;
 Fri, 21 Jun 2019 16:57:25 +0100 (IST)
Received: from LHREML524-MBS.china.huawei.com ([169.254.2.112]) by
 LHREML713-CAH.china.huawei.com ([10.201.108.36]) with mapi id 14.03.0415.000; 
 Fri, 21 Jun 2019 16:57:15 +0100
From: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>
To: James Morse <james.morse@arm.com>
Subject: MPAM branch verification (was RE: [RFC PATCH 2/2] ACPI / PPTT:
 cacheinfo: Label caches based on fw_token)
Thread-Topic: MPAM branch verification (was RE: [RFC PATCH 2/2] ACPI / PPTT:
 cacheinfo: Label caches based on fw_token)
Thread-Index: AdUoR6JBXCmGfD+rTvOGseVrKJ7QIA==
Date: Fri, 21 Jun 2019 15:57:14 +0000
Message-ID: <5FC3163CFD30C246ABAA99954A238FA83F2B38FD@lhreml524-mbs.china.huawei.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.202.227.237]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_085732_999598_21EBB5E7 
X-CRM114-Status: GOOD (  17.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Tomasz Nowicki <Tomasz.Nowicki@cavium.com>,
 Jeffrey Hugo <jhugo@codeaurora.org>,
 "Guohanjun \(Hanjun Guo\)" <guohanjun@huawei.com>,
 Linuxarm <linuxarm@huawei.com>, Jeremy Linton <jeremy.linton@arm.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "wangxiongfeng \(C\)" <wangxiongfeng2@huawei.com>,
 Richard Ruigrok <rruigrok@qti.qualcomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

> -----Original Message-----
> From: James Morse [mailto:james.morse@arm.com]
> Sent: 19 June 2019 14:31
> To: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>
> Cc: linux-acpi@vger.kernel.org; Vijaya Kumar K <vkilari@codeaurora.org>;
> Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>; Jeffrey Hugo
> <jhugo@codeaurora.org>; Sudeep Holla <sudeep.holla@arm.com>; Jeremy
> Linton <jeremy.linton@arm.com>; Tomasz Nowicki
> <Tomasz.Nowicki@cavium.com>; Richard Ruigrok
> <rruigrok@qti.qualcomm.com>; Guohanjun (Hanjun Guo)
> <guohanjun@huawei.com>; wangxiongfeng (C)
> <wangxiongfeng2@huawei.com>; linux-arm-kernel@lists.infradead.org;
> Linuxarm <linuxarm@huawei.com>
> Subject: Re: [RFC PATCH 2/2] ACPI / PPTT: cacheinfo: Label caches based on
> fw_token
> 
> Hi Shameer,
> 
[...] 
> > I was just trying out the latest public MPAM branch available here[1]
> 
> Great!
> 
> 
> > and noted that
> > on our HiSilicon platform all the L3 cache were labeled with the same Id.
> Debugging> revealed that the above leaf node check was removed in this
> branch[2] which makes
> > the min_physid calculation going wrong.
> 
> Thanks for debugging this,
> 
> > Just wondering is there any particular reason
> > for removing the check or the branch is not carrying the latest patch?
> 
> Nope, that's a bug.
> 
> Jeremy Linton's review feedback[0] was that that PROCESSOR_ID_VALID flag
> can't be relied
> on. It looks like I over-zealously removed the whole if(), and this doesn't cause a
> problem with my pptt so I didn't notice.
> 
> I've fixed it locally, I've also pushed a fix to those branches, but it will get folded
> in
> next time I push a branch.

Thanks for that.

Apart from the above, I have come across few other issues as well and had some
temporary fixes to the branch here[0]. This is encountered while trying to get the
resctrl fs mounted and attempted a cqm test run using resctrl_tests tool. 

The fixes may not be proper ones, but I think it will give you an idea. Please take a
look and let me know your thoughts.

Thanks,
Shameer

[0] https://github.com/hisilicon/kernel-dev.git  branch: private-dbg-mpam-5.2-rc1

> 
> Thanks!
> 
> James
> 
> [0] lore.kernel.org/r/a68abfd2-1e28-d9e7-919a-8b3133db4d20@arm.com
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
