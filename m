Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 324331B0DB6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 16:03:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VTQLG48+6RfTqlKM9kz2F7ZxcSJIkXJfMvTFNR3vxPc=; b=H1pYwF3vGVkoVDAxD8SelpHEu
	gOmaKVGIig28QCMilTDNAgKHl49Hu3LvXsMNSKVw8Yjs1RtSyI2zKIfHPUmr110j6WdTIyrFwvp1Y
	kTa7wJq3bX25kNxl/m6TaahOHI2OwMS7+ZhntBp8VPvci+dDs2qo2eorXc1g81Qpz1BLzizqPY+oQ
	IwtvUA2ZQ53DHa5UT9FpZ7iHqnUjSWWKtASakSQnQQ84G03APdhB5neWemuaWrvSCIfZPJkfBmIkP
	M6eohv2d28+8hRzMQs22Bhh8d8GLGN4KQFxH0OTyZh24Q4irMguER5WVpM5p/mcb3mB+8ZOeB2fSP
	lq2lxKt5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQX1I-00082b-8a; Mon, 20 Apr 2020 14:03:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQX18-00081e-0L
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 14:03:23 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 918E420722;
 Mon, 20 Apr 2020 14:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587391401;
 bh=GPT20fEi2/FOGz+OkWS9srVMj+Rsxisj5E5BJqEY3UU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bQ8HBwamtxiv7Lhgcap7xcBV4Jlc9CX5VQNZlpTf0yVkbH9kEl5RE8gBvInvva93g
 L4UulNBvuMdIJR8930Fx1dR/9O25nYqJSi1DKOPDBZoVX9F47jjaSRSr2uWm8H/mMg
 Nsa/xcz6YHHICI8JzH58nRHy4kE+RfdMsNOcJ3ME=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jQX15-004ttw-TP; Mon, 20 Apr 2020 15:03:20 +0100
MIME-Version: 1.0
Date: Mon, 20 Apr 2020 15:03:19 +0100
From: Marc Zyngier <maz@kernel.org>
To: "Zengtao (B)" <prime.zeng@hisilicon.com>
Subject: Re: [PATCH v2 00/94] KVM: arm64: ARMv8.3/8.4 Nested Virtualization
 support
In-Reply-To: <678F3D1BB717D949B966B68EAEB446ED3A545C71@dggemm526-mbx.china.huawei.com>
References: <MN2PR18MB26869A6CA4E67558324F655CC5C70@MN2PR18MB2686.namprd18.prod.outlook.com>
 <06d08f904f003160a48eac3c5ab3c7ff@kernel.org>
 <678F3D1BB717D949B966B68EAEB446ED342E29B9@dggemm526-mbx.china.huawei.com>
 <86r1wus7df.wl-maz@kernel.org>
 <678F3D1BB717D949B966B68EAEB446ED3A535FCF@DGGEMM506-MBX.china.huawei.com>
 <3e84aaf8b757bc5a7685a291e54c232b@kernel.org> <20200417160602.26706917@why>
 <678F3D1BB717D949B966B68EAEB446ED3A545C71@dggemm526-mbx.china.huawei.com>
Message-ID: <dd1283e9b31fd01ac5c9f434aa00d34e@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: prime.zeng@hisilicon.com, gcherian@marvell.com,
 Dave.Martin@arm.com, alexandru.elisei@arm.com, andre.przywara@arm.com,
 christoffer.dall@arm.com, james.morse@arm.com, jintack@cs.columbia.edu,
 julien.thierry.kdev@gmail.com, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 suzuki.poulose@arm.com, areddy3@marvell.com, gkulkarni@marvell.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_070322_089044_60801A1B 
X-CRM114-Status: GOOD (  20.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kvmarm@lists.cs.columbia.edu, Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 kvm@vger.kernel.org, suzuki.poulose@arm.com, andre.przywara@arm.com,
 christoffer.dall@arm.com, jintack@cs.columbia.edu,
 George Cherian <gcherian@marvell.com>, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, Anil Kumar Reddy H <areddy3@marvell.com>,
 alexandru.elisei@arm.com, Dave.Martin@arm.com, julien.thierry.kdev@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-18 03:49, Zengtao (B) wrote:
> -----Original Message-----
>> From: Marc Zyngier [mailto:maz@kernel.org]
>> Sent: Friday, April 17, 2020 11:06 PM
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
>> On Thu, 16 Apr 2020 19:22:21 +0100
>> Marc Zyngier <maz@kernel.org> wrote:
>> 
>> > Hi Zengtao,
>> >
>> > On 2020-04-16 02:38, Zengtao (B) wrote:
>> > > Hi Marc:
>> > >
>> > > Got it.
>> > > Really a bit patch set :)
>> >
>> > Well, yeah... ;-)
>> >
>> > >
>> > > BTW, I have done a basic kvm unit test
>> > > git://git.kernel.org/pub/scm/virt/kvm/kvm-unit-tests.git
>> > > And I find that after apply the patch KVM: arm64: VNCR-ize ELR_EL1,
>> > > The psci test failed for some reason, I can't understand why, this
>> > > is only the test result.(find the patch by git bisect + kvm test)
>> >
>> > That it is that mechanical, we should be able to quickly nail that one.
>> >
>> > > My platform: Hisilicon D06 board.
>> > > Linux kernel: Linux 5.6-rc6 + nv patches(some rebases)
>> > > Could you help to take a look?
>> >
>> > I'll have a look tomorrow. I'm in the middle of refactoring the series
>> > for 5.7, and things have changed quite a bit. Hopefully this isn't a VHE
>> > vs non-VHE issue.
>> 
>> So I've repeatedly tried with the current state of the NV patches[1],
>> on both an ARMv8.0 system (Seattle) and an ARMv8.2 pile of putrid junk
>> (vim3l). PSCI is pretty happy, although I can only test with at most 8
>> vcpus (GICv2 gets in the way).
>> 
>> Can you please:
>> 
>> - post the detailed error by running the PSCI unit test on its own
> I tried to trace the error, and I found in kernel function 
> kvm_mpidr_to_vcpu,
> casually, mpidr returns zero and we can't get the expected vcpu, and 
> psci
>  test failed due to this.

Can you post the exact error message from the unit test?

> And as I mentioned in my last before, the psci error is introduced by 
> the
>  patch KVM: arm64: VNCR-ize ELR_EL1.(Only test result)
> Maybe you have to try tens of times to reproduce. :)
> Deep into the patch itself, I don't find any connection between the 
> patch
> and the issue.

Me neither, and I haven't managed to reproduce your issue.

>> - test with the current state of the patches
> I test with your nv-5.7-rc1-WIP branch and latest kvm_unit_test, the
> error still exist.

How many vcpus do you create with this PSCI test?

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
