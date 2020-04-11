Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C2D1A4DBF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 06:10:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dFuzK7+LfpRWnnaLWfVGY6qOb+EbmKmb41DEDOx/nU4=; b=gxZvbdkfqMhOxQ
	RRR2/chbACYRn14ALoyrUbZ6fsxSDDloaiV+b8yUXIAvN9O2Cn3QiceNwOjPhhbMyTTwPYtrY/mGx
	hgWtpeKufNpl/VHsI8U1YhUF1/eYSM1O4oOgErLDLmpcUHLPad+qICfR2JUS3DSXBCrximKyboE10
	iFXZfgsVsLsqA1a94NFFJl+xRefykun+zEgpPAFl+ViYPTXVtuYhtLZ66iCzi+iwC+RkUTD037ObR
	T6cKg3LGvC6KyerI5QfCtPCHLkP65YHHEy+GTiS4jSD8IK6kstXL0y3SJxWx0QK7rypIwCqqszKEa
	zx1SMSRdMZ24x7BCRg1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN7TY-0003hE-9O; Sat, 11 Apr 2020 04:10:36 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN7TN-0003g2-GV
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 04:10:28 +0000
Received: from DGGEMM404-HUB.china.huawei.com (unknown [172.30.72.57])
 by Forcepoint Email with ESMTP id BA23A3A4DAD75E537C19;
 Sat, 11 Apr 2020 12:10:07 +0800 (CST)
Received: from DGGEMM526-MBX.china.huawei.com ([169.254.8.54]) by
 DGGEMM404-HUB.china.huawei.com ([10.3.20.212]) with mapi id 14.03.0487.000;
 Sat, 11 Apr 2020 12:10:05 +0800
From: "Zengtao (B)" <prime.zeng@hisilicon.com>
To: Marc Zyngier <maz@kernel.org>, George Cherian <gcherian@marvell.com>
Subject: RE: [PATCH v2 00/94] KVM: arm64: ARMv8.3/8.4 Nested Virtualization
 support
Thread-Topic: [PATCH v2 00/94] KVM: arm64: ARMv8.3/8.4 Nested Virtualization
 support
Thread-Index: AdYJhvrCKEKaxySRQua1lfr4U9NN2v//iESA//MqKcA=
Date: Sat, 11 Apr 2020 04:10:05 +0000
Message-ID: <678F3D1BB717D949B966B68EAEB446ED342E29B9@dggemm526-mbx.china.huawei.com>
References: <MN2PR18MB26869A6CA4E67558324F655CC5C70@MN2PR18MB2686.namprd18.prod.outlook.com>
 <06d08f904f003160a48eac3c5ab3c7ff@kernel.org>
In-Reply-To: <06d08f904f003160a48eac3c5ab3c7ff@kernel.org>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.74.221.187]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_211025_722504_555C507F 
X-CRM114-Status: GOOD (  23.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.187 listed in list.dnswl.org]
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
Cc: "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "christoffer.dall@arm.com" <christoffer.dall@arm.com>,
 "Dave.Martin@arm.com" <Dave.Martin@arm.com>,
 "james.morse@arm.com" <james.morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Anil Kumar Reddy H <areddy3@marvell.com>,
 "alexandru.elisei@arm.com" <alexandru.elisei@arm.com>,
 "jintack@cs.columbia.edu" <jintack@cs.columbia.edu>,
 "julien.thierry.kdev@gmail.com" <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc:

Since it's a very large patch series, I want to test it on my platform
 which don't support nv, and want to make sure if this patch series
affects the existed virtualization functions or not.
 
Any suggestion about the test focus?

Thanks.
> -----Original Message-----
> From: kvm-owner@vger.kernel.org [mailto:kvm-owner@vger.kernel.org]
> On Behalf Of Marc Zyngier
> Sent: Friday, April 03, 2020 4:02 PM
> To: George Cherian
> Cc: Dave.Martin@arm.com; alexandru.elisei@arm.com;
> andre.przywara@arm.com; christoffer.dall@arm.com;
> james.morse@arm.com; jintack@cs.columbia.edu;
> julien.thierry.kdev@gmail.com; kvm@vger.kernel.org;
> kvmarm@lists.cs.columbia.edu; linux-arm-kernel@lists.infradead.org;
> suzuki.poulose@arm.com; Anil Kumar Reddy H; Ganapatrao Kulkarni
> Subject: Re: [PATCH v2 00/94] KVM: arm64: ARMv8.3/8.4 Nested
> Virtualization support
> 
> Hi George,
> 
> On 2020-04-03 08:27, George Cherian wrote:
> > Hi Marc,
> >
> > On 2/11/20 9:48 AM, Marc Zyngier wrote:
> >> This is a major rework of the NV series that I posted over 6 months
> >> ago[1], and a lot has changed since then:
> >>
> >> - Early ARMv8.4-NV support
> >> - ARMv8.4-TTL support in host and guest
> >> - ARMv8.5-GTG support in host and guest
> >> - Lots of comments addressed after the review
> >> - Rebased on v5.6-rc1
> >> - Way too many patches
> >>
> >> In my defence, the whole of the NV code is still smaller that the
> >> 32bit KVM/arm code I'm about to remove, so I feel less bad inflicting
> >> this on everyone! ;-)
> >>
> >> >From a functionality perspective, you can expect a L2 guest to work,
> >> but don't even think of L3, as we only partially emulate the
> >> ARMv8.{3,4}-NV extensions themselves. Same thing for vgic, debug,
> PMU,
> >> as well as anything that would require a Stage-1 PTW. What we want
> to
> >> achieve is that with NV disabled, there is no performance overhead
> and
> >> no regression.
> >>
> >> The series is roughly divided in 5 parts: exception handling, memory
> >> virtualization, interrupts and timers for ARMv8.3, followed by the
> >> ARMv8.4 support. There are of course some dependencies, but you'll
> >> hopefully get the gist of it.
> >>
> >> For the most courageous of you, I've put out a branch[2]. Of course,
> >> you'll need some userspace. Andre maintains a hacked version of
> >> kvmtool[3] that takes a --nested option, allowing the guest to be
> >> started at EL2. You can run the whole stack in the Foundation
> >> model. Don't be in a hurry ;-).
> >>
> > The full series was tested on both Foundation model as well as Marvell
> > ThunderX3
> > Emulation Platform.
> > Basic boot testing done for Guest Hypervisor and Guest Guest.
> >
> > Tested-by:  George Cherian <george.cherian@marvell.com>
> 
> Thanks for having given this a go.
> 
> However, without more details, it is pretty hard to find out what you
> have tested.
> What sort of guest have you booted, with what configuration, what
> workloads did you
> run in the L2 guests and what are the architectural features that TX3
> implements?
> 
> The last point is specially important, as the NV architecture spans two
> major
> revisions of the architecture and affects tons of other extensions that
> are
> themselves optional. Without any detail on that front, I have no idea
> what the
> coverage of your testing is.
> 
> Thanks,
> 
>          M.
> --
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
