Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 676031AB596
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 03:39:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2YE1QNlrlRPFo619WD0uqmy/sRqme+pSIIkSu6ZUO8U=; b=n/zrcIxun/0OLw
	QRP0/Zk1ReHtCiVWinb6kVu35KAnfLwwOrOSVcDhpoeKSuP4GuesQruUBX2PlwY8+++aOWpQ+kctS
	PeYfsITrO3SIdDs+Xaqelha4Ln6GfD7mch+ly8z3/Ya+b6cqHF1VzOuXvJlrBCPMLovMtg3WO8/lM
	652EdzwwjEnaSSMQroc2qGzfiEhk3kqCROG66zu3YOEXO8pLWK9yApioUzg/TyR1oGbGeXO4MxCn2
	tk6kshpVfgqyviXqSp17xIjoCg9kFrvY4tQUSFOCXxit1u45YQSXR7InRrzutuoYMO36L0tGNAabq
	iUHQoFKsMNXOZV/qvEsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOtUq-0003WS-Hl; Thu, 16 Apr 2020 01:39:16 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOtUb-0003Vb-2F
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 01:39:03 +0000
Received: from DGGEMM406-HUB.china.huawei.com (unknown [172.30.72.54])
 by Forcepoint Email with ESMTP id 079307B60A37B2BB8BEE;
 Thu, 16 Apr 2020 09:38:48 +0800 (CST)
Received: from DGGEMM421-HUB.china.huawei.com (10.1.198.38) by
 DGGEMM406-HUB.china.huawei.com (10.3.20.214) with Microsoft SMTP Server (TLS)
 id 14.3.487.0; Thu, 16 Apr 2020 09:38:47 +0800
Received: from DGGEMM506-MBX.china.huawei.com ([169.254.3.76]) by
 dggemm421-hub.china.huawei.com ([10.1.198.38]) with mapi id 14.03.0487.000;
 Thu, 16 Apr 2020 09:38:46 +0800
From: "Zengtao (B)" <prime.zeng@hisilicon.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH v2 00/94] KVM: arm64: ARMv8.3/8.4 Nested Virtualization
 support
Thread-Topic: [PATCH v2 00/94] KVM: arm64: ARMv8.3/8.4 Nested Virtualization
 support
Thread-Index: AdYJhvrCKEKaxySRQua1lfr4U9NN2v//iESA//MqKcCAGX9aAP/4ImVg
Date: Thu, 16 Apr 2020 01:38:45 +0000
Message-ID: <678F3D1BB717D949B966B68EAEB446ED3A535FCF@DGGEMM506-MBX.china.huawei.com>
References: <MN2PR18MB26869A6CA4E67558324F655CC5C70@MN2PR18MB2686.namprd18.prod.outlook.com>
 <06d08f904f003160a48eac3c5ab3c7ff@kernel.org>
 <678F3D1BB717D949B966B68EAEB446ED342E29B9@dggemm526-mbx.china.huawei.com>
 <86r1wus7df.wl-maz@kernel.org>
In-Reply-To: <86r1wus7df.wl-maz@kernel.org>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.74.221.187]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_183901_285669_8591FAAB 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.187 listed in list.dnswl.org]
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
Cc: "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "christoffer.dall@arm.com" <christoffer.dall@arm.com>,
 "jintack@cs.columbia.edu" <jintack@cs.columbia.edu>,
 George Cherian <gcherian@marvell.com>,
 "james.morse@arm.com" <james.morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Anil Kumar Reddy H <areddy3@marvell.com>,
 "alexandru.elisei@arm.com" <alexandru.elisei@arm.com>,
 "Dave.Martin@arm.com" <Dave.Martin@arm.com>,
 "julien.thierry.kdev@gmail.com" <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc:

Got it.
Really a bit patch set :)

BTW, I have done a basic kvm unit test
git://git.kernel.org/pub/scm/virt/kvm/kvm-unit-tests.git
And I find that after apply the patch KVM: arm64: VNCR-ize ELR_EL1,
The psci test failed for some reason, I can't understand why, this
is only the test result.(find the patch by git bisect + kvm test)

My platform: Hisilicon D06 board.
Linux kernel: Linux 5.6-rc6 + nv patches(some rebases)
Could you help to take a look?

Thanks 
Zengtao 

> -----Original Message-----
> From: Marc Zyngier [mailto:maz@kernel.org]
> Sent: Saturday, April 11, 2020 5:24 PM
> To: Zengtao (B)
> Cc: George Cherian; Dave.Martin@arm.com; alexandru.elisei@arm.com;
> andre.przywara@arm.com; christoffer.dall@arm.com;
> james.morse@arm.com; jintack@cs.columbia.edu;
> julien.thierry.kdev@gmail.com; kvm@vger.kernel.org;
> kvmarm@lists.cs.columbia.edu; linux-arm-kernel@lists.infradead.org;
> suzuki.poulose@arm.com; Anil Kumar Reddy H; Ganapatrao Kulkarni
> Subject: Re: [PATCH v2 00/94] KVM: arm64: ARMv8.3/8.4 Nested
> Virtualization support
> 
> Hi Zengtao,
> 
> On Sat, 11 Apr 2020 05:10:05 +0100,
> "Zengtao (B)" <prime.zeng@hisilicon.com> wrote:
> >
> > Hi Marc:
> >
> > Since it's a very large patch series, I want to test it on my platform
> >  which don't support nv, and want to make sure if this patch series
> > affects the existed virtualization functions or not.
> >
> > Any suggestion about the test focus?
> 
> Not really. Given that the NV patches affect absolutely every
> architectural parts of KVM/arm64, everything needs careful
> testing. But more than testing, it needs reviewing.
> 
> Thanks,
> 
> 	M.
> 
> --
> Jazz is not dead, it just smells funny.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
