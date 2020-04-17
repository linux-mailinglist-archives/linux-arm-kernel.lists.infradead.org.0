Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7536E1AE0A7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 17:11:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5TxU2tK1WkgVvOaQ3FtiUwKg/vZdEVfe44d2YsM/Hr4=; b=EsatZmeDv2dwEu
	hPM9UMvomyKBFXayqewtgqQjNdLAD0lljTAwDahIoIRxdRcU/xaxiWV+20ZlBS3ISWppPYrQQa3cO
	JJBmeNw5cl3Q/pQqYUumWeMlzhVZ9JlXonlVzjN799ZBoNh65T9tLh+GekpcdO9DIcuQOUNHOTUSw
	mC4TGkH6Lfl/xWzW+A6TXoX4WpccKJuRswG2jxSgNZ8H0REp4hXS/6q2iAi4K+AIBkNjEGXF7zX28
	uFO37rB+8wE/lH+QOTuwwkrTpz9V7MUasee/d+TXm1BJUP3d0wkGD1WJ+mKyuIwI8PknY10WXoIcW
	hTju64M3QWJ3GaPFJJHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPSei-0005PU-PF; Fri, 17 Apr 2020 15:11:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPSeT-0005O5-A1
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 15:11:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6A3C230E;
 Fri, 17 Apr 2020 08:11:29 -0700 (PDT)
Received: from [192.168.0.110] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 935F53F73D;
 Fri, 17 Apr 2020 08:11:27 -0700 (PDT)
Subject: Re: [PATCH v2 00/94] KVM: arm64: ARMv8.3/8.4 Nested Virtualization
 support
To: "Zengtao (B)" <prime.zeng@hisilicon.com>, Marc Zyngier <maz@kernel.org>
References: <MN2PR18MB26869A6CA4E67558324F655CC5C70@MN2PR18MB2686.namprd18.prod.outlook.com>
 <06d08f904f003160a48eac3c5ab3c7ff@kernel.org>
 <678F3D1BB717D949B966B68EAEB446ED342E29B9@dggemm526-mbx.china.huawei.com>
 <86r1wus7df.wl-maz@kernel.org>
 <678F3D1BB717D949B966B68EAEB446ED3A535FCF@DGGEMM506-MBX.china.huawei.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <f55386a9-8eaa-944f-453d-9c3c4abee5fb@arm.com>
Date: Fri, 17 Apr 2020 16:11:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <678F3D1BB717D949B966B68EAEB446ED3A535FCF@DGGEMM506-MBX.china.huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_081133_435393_F8EF361C 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "Dave.Martin@arm.com" <Dave.Martin@arm.com>,
 George Cherian <gcherian@marvell.com>,
 "james.morse@arm.com" <james.morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Anil Kumar Reddy H <areddy3@marvell.com>,
 "jintack@cs.columbia.edu" <jintack@cs.columbia.edu>,
 "julien.thierry.kdev@gmail.com" <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 4/16/20 2:38 AM, Zengtao (B) wrote:
> Hi Marc:
>
> Got it.
> Really a bit patch set :)
>
> BTW, I have done a basic kvm unit test
> git://git.kernel.org/pub/scm/virt/kvm/kvm-unit-tests.git
> And I find that after apply the patch KVM: arm64: VNCR-ize ELR_EL1,
> The psci test failed for some reason, I can't understand why, this
> is only the test result.(find the patch by git bisect + kvm test)

Just a heads-up, a couple of fixes to kvm-unit-tests were merged last week, and
among them was one touching the psci code, e14e6ba56f6e ("arm/arm64: psci: Don't
run C code without stack or vectors"). It might be worth checking that you have
it, and if you don't, if applying it fixes the issue.

Thanks,
Alex
>
> My platform: Hisilicon D06 board.
> Linux kernel: Linux 5.6-rc6 + nv patches(some rebases)
> Could you help to take a look?
>
> Thanks 
> Zengtao 
>
>> -----Original Message-----
>> From: Marc Zyngier [mailto:maz@kernel.org]
>> Sent: Saturday, April 11, 2020 5:24 PM
>> To: Zengtao (B)
>> Cc: George Cherian; Dave.Martin@arm.com; alexandru.elisei@arm.com;
>> andre.przywara@arm.com; christoffer.dall@arm.com;
>> james.morse@arm.com; jintack@cs.columbia.edu;
>> julien.thierry.kdev@gmail.com; kvm@vger.kernel.org;
>> kvmarm@lists.cs.columbia.edu; linux-arm-kernel@lists.infradead.org;
>> suzuki.poulose@arm.com; Anil Kumar Reddy H; Ganapatrao Kulkarni
>> Subject: Re: [PATCH v2 00/94] KVM: arm64: ARMv8.3/8.4 Nested
>> Virtualization support
>>
>> Hi Zengtao,
>>
>> On Sat, 11 Apr 2020 05:10:05 +0100,
>> "Zengtao (B)" <prime.zeng@hisilicon.com> wrote:
>>> Hi Marc:
>>>
>>> Since it's a very large patch series, I want to test it on my platform
>>>  which don't support nv, and want to make sure if this patch series
>>> affects the existed virtualization functions or not.
>>>
>>> Any suggestion about the test focus?
>> Not really. Given that the NV patches affect absolutely every
>> architectural parts of KVM/arm64, everything needs careful
>> testing. But more than testing, it needs reviewing.
>>
>> Thanks,
>>
>> 	M.
>>
>> --
>> Jazz is not dead, it just smells funny.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
