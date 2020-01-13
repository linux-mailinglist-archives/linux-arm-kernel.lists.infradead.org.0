Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A4D138FE4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 12:16:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L6m/nn/yE1YmZjoP87oY4qN1Z2ja/8v5ZE0CZQqiIUk=; b=ML1K9JsNPPEZZ7lVMehrrfblr
	MwD1Twh3HiWoO/duYkX8KCBulcC8P6qqxll1A4JfWPNF6nl3o2ovSNABGzN1d/QV/VlSYTefCDq5G
	jQvQF6pRy7UKDSkx3VBxdD13biBCp5xUnkXtyHdk354G0CG2ihM7q8QB+0mZT2bWmof6A+mbTwApL
	AfEf2WDqGv1OBYzAIh6Ei6zUeXTCQ3SWZZ2BJhJ3XAJyJGUau4LY2LnDnZDacOvoo6w/MA8eGRznY
	mfM6FeuABzdn4hiBoMV1z1tx3K2dYpOdmmN2wAbnfZjvtNbiCL6eaA/kTN7IeNw1VuCRHDDmOpQ7m
	Lfw3+udZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqxi2-0004Mi-I2; Mon, 13 Jan 2020 11:16:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqxhs-0004La-El
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 11:16:30 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E34BD207E0;
 Mon, 13 Jan 2020 11:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578914188;
 bh=oQgIRZE3Ca1zvjHWdut6CuVqEaxiZSV5sbQvWLbrvag=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=e3TcvGj31AwlkiLT/c2UDThap+MfQ1EwwdLbheey2cC7to/q4SOcYLDkg406rEFf0
 LXe9K5ORlRbmcMY05oDtY9CrSsLFr2i4qGS1k3/8tFudNQUDC1T087p4NcCBMYiguz
 L0ETEtO7VrTs+z8DDuIoxk2Czw4BqJLM9CJopX2A=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1iqxhq-0002vN-8G; Mon, 13 Jan 2020 11:16:26 +0000
MIME-Version: 1.0
Date: Mon, 13 Jan 2020 11:16:26 +0000
From: Marc Zyngier <maz@kernel.org>
To: Jianyong Wu <Jianyong.Wu@arm.com>
Subject: Re: [RFC PATCH v9 6/8] psci: Add hvc call service for ptp_kvm.
In-Reply-To: <HE1PR0801MB167693BFB769ACEEA8A6B007F4350@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20191210034026.45229-1-jianyong.wu@arm.com>
 <20191210034026.45229-7-jianyong.wu@arm.com>
 <7383dc06897bba253f174cd21a19b5c0@kernel.org>
 <HE1PR0801MB1676AB738138AB24E2158AD4F4390@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <099a26ffef5d554b88a5e33d7f2a6e3a@kernel.org>
 <HE1PR0801MB16765B507D9B5A1A7827078BF4380@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <ca80d88f5e00937fca7ee80be8f5c962@kernel.org>
 <HE1PR0801MB167693BFB769ACEEA8A6B007F4350@HE1PR0801MB1676.eurprd08.prod.outlook.com>
Message-ID: <22ba1283a7b82f018c1fdf85414e5bfe@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: Jianyong.Wu@arm.com, netdev@vger.kernel.org,
 yangbo.lu@nxp.com, john.stultz@linaro.org, tglx@linutronix.de,
 pbonzini@redhat.com, sean.j.christopherson@intel.com, richardcochran@gmail.com,
 Mark.Rutland@arm.com, will@kernel.org, Suzuki.Poulose@arm.com,
 Steven.Price@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, Steve.Capper@arm.com, Kaly.Xin@arm.com, Justin.He@arm.com,
 nd@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_031628_537958_BC2459A7 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Justin He <Justin.He@arm.com>,
 kvm@vger.kernel.org, Suzuki Poulose <Suzuki.Poulose@arm.com>,
 netdev@vger.kernel.org, richardcochran@gmail.com,
 Steve Capper <Steve.Capper@arm.com>, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, Steven Price <Steven.Price@arm.com>,
 Kaly Xin <Kaly.Xin@arm.com>, john.stultz@linaro.org, yangbo.lu@nxp.com,
 pbonzini@redhat.com, tglx@linutronix.de, nd <nd@arm.com>, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jianyong,

On 2020-01-13 10:30, Jianyong Wu wrote:
> Hi Marc,
> 
>> -----Original Message-----
>> From: Marc Zyngier <maz@kernel.org>
>> Sent: Friday, January 10, 2020 6:56 PM
>> NV breaks that assumtion, because the guest hypervisor is using the 
>> physical
>> counter. Also, let's not forget that the hypercall isn't Linux 
>> specific.
>> I can write my own non-Linux guest and still use this hypercall. 
>> Nothing in
>> there says that I can't use the physical counter if I want to.
>> 
>> So somehow, you need to convey the the hypervisor the notion of 
>> *which*
>> counter the guest uses.
>> 
>> Does it make sense? Or am I missing something?
>> 
> I know what you say. Let me try to solve this problem.
> 	Step 0, summary out all the conditions we should process, which will
> sever as branch condition.(now only normal virt and nested virt, I
> think)

No. You shouldn't think of the various use cases, but of which time
references a guest can use. You don't need nested virt to use the 
physical
counter, for example.

> 	Step 1, figure out the set of reference counter value used by guest
> in all condition.

That should be for the guest to tell you when it calls into the PV 
service.

> 	Step 2, determine which reference counter value will be used by guest
> in a certain condition in hypercall.
> In step 1, can we give the set only 2 elements that one is physical
> counter the other is virtual counter?

I don't think returning the two values is useful. Just return what the
guest asks for.

> For step 2, I have no idea for that now. can you give me some hint 
> about it?

Just expand your SMC call to take a parameter indicating the reference
counter, and return the sampled (or computed) value corresponding to
that counter.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
