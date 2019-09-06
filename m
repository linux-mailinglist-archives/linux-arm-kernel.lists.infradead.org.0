Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8050AB97A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 15:41:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l0TdL0qzr7PFswgxjbvbzCdNmKCRULz3cTR36fU1JV8=; b=kvToAKtKI7Yd3WzpD7qoSoWD7
	w9RuWaJ0wUlVc1QnkerDDIVK1dko3pH7eRlbxHyfUVOc9AxALGpOxFU8ipsZZMLi6JnULFuLTOQ5j
	eKTpBeg2Y60SqVEpbCdLsf8gTC5/ypnDwhBj9XpX8hbzzmf53Lt0TI4nh7F1eewlta7jePmIagxaW
	tMpjCAUlXHT41oAeK7dIwj4fbpSypB5BN2hwcUDlkBUsIwVGcNMUPuOh6Go0UBtEyZiAQF5qv4l2j
	FoFq9RM60IOvNWTpDagI1vfqqt4bJp/qCP143jDVf8j0GjXDGkJ9tlmBantMXg4vzwSDZ21iib7KN
	2sHYVrRpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6EUb-0002zj-5m; Fri, 06 Sep 2019 13:41:37 +0000
Received: from smtp-fw-4101.amazon.com ([72.21.198.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6EUU-0002zC-Ta
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 13:41:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1567777290; x=1599313290;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=XMIKAY1xJL7NYmAZNKLAmXbXU9LqB+oBH7gwXT7mxi8=;
 b=HM7+1Sr+zDwdmUIPSDV0hG0nu8jjWkBaY4cw+WdQfgWazhVsV0vVlZUq
 Hj1iGwHIlhF1YcTkDy3TOS5/WvbZ6s7EYIeNynT6JhX7Eu+hejFmr8/S/
 JPE4HS/SpZEDBbiO/G2FXMyeo37lzbbHyYzEXnOcJgo0kDc93B0dywH7+ M=;
X-IronPort-AV: E=Sophos;i="5.64,473,1559520000"; d="scan'208";a="783639180"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-2b-8cc5d68b.us-west-2.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-4101.iad4.amazon.com with ESMTP;
 06 Sep 2019 13:41:26 +0000
Received: from EX13MTAUWC001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2b-8cc5d68b.us-west-2.amazon.com (Postfix) with ESMTPS
 id 5EB25A17B2; Fri,  6 Sep 2019 13:41:25 +0000 (UTC)
Received: from EX13D20UWC001.ant.amazon.com (10.43.162.244) by
 EX13MTAUWC001.ant.amazon.com (10.43.162.135) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 6 Sep 2019 13:41:24 +0000
Received: from 38f9d3867b82.ant.amazon.com (10.43.162.218) by
 EX13D20UWC001.ant.amazon.com (10.43.162.244) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 6 Sep 2019 13:41:22 +0000
Subject: Re: [PATCH 1/1] KVM: inject data abort if instruction cannot be
 decoded
To: Peter Maydell <peter.maydell@linaro.org>, Christoffer Dall
 <christoffer.dall@arm.com>
References: <20190904180736.29009-1-xypron.glpk@gmx.de>
 <86r24vrwyh.wl-maz@kernel.org>
 <CAFEAcA-mc6cLmRGdGNOBR0PC1f_VBjvTdAL6xYtKjApx3NoPgQ@mail.gmail.com>
 <86mufjrup7.wl-maz@kernel.org>
 <CAFEAcA9qkqkOTqSVrhTpt-NkZSNXomSBNiWo_D6Kr=QKYRRf=w@mail.gmail.com>
 <20190905092223.GC4320@e113682-lin.lund.arm.com>
 <4b6662bd-56e4-3c10-3b65-7c90828a22f9@kernel.org>
 <20190906080033.GF4320@e113682-lin.lund.arm.com>
 <a58c5f76-641a-8381-2cf3-e52d139c4236@amazon.com>
 <20190906131252.GG4320@e113682-lin.lund.arm.com>
 <CAFEAcA9vwyhAN8uO8=PpaBkBXb0Of4G0jEij7nMrYcnJjSRVjg@mail.gmail.com>
From: Alexander Graf <graf@amazon.com>
Message-ID: <28c5c021-7cb0-616b-4215-dd75242c16e6@amazon.com>
Date: Fri, 6 Sep 2019 15:41:20 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAFEAcA9vwyhAN8uO8=PpaBkBXb0Of4G0jEij7nMrYcnJjSRVjg@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.43.162.218]
X-ClientProxiedBy: EX13D16UWB004.ant.amazon.com (10.43.161.170) To
 EX13D20UWC001.ant.amazon.com (10.43.162.244)
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_064131_154514_384CE2F0 
X-CRM114-Status: GOOD (  23.06  )
X-Spam-Score: -4.9 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.198.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: =?UTF-8?Q?Daniel_P=2e_Berrang=c3=a9?= <berrange@redhat.com>,
 Marc Zyngier <maz@kernel.org>,
 lkml - Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefan Hajnoczi <stefanha@redhat.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>, kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06.09.19 15:31, Peter Maydell wrote:
> On Fri, 6 Sep 2019 at 14:13, Christoffer Dall <christoffer.dall@arm.com> wrote:
>> I'd prefer leaving it to userspace to worry about, but I thought Peter
>> said that had been problematic historically, which I took at face value,
>> but I could have misunderstood.
>>
>> If QEMU, kvmtool, and whatever the crazy^H cool kids are using in
>> userspace these days are happy emulating the exception, then that's a
>> viable approach.  The main concern I have with that is whether they'll
>> all get it right, and since we already have the code in the kernel to do
>> this, it might make sense to re-use the kernel logic for it.
> 
> Well, for QEMU we've had code that in theory might do this but
> in practice it's never been tested. Essentially the problem is
> that nobody ever wants to inject an exception from userspace
> except in incredibly rare cases like "trying to use h/w breakpoints
> simultaneously inside the VM and also to debug the VM from outside"
> or "we're running on RAS hardware that just told us that the VM's
> RAM was faulty". There's no even vaguely commonly-used usecase
> for it today; and this ABI suggestion adds another "this is in
> practice almost never going to happen" case to the pile. The
> codepath is unreliable in QEMU because (a) it requires getting
> syncing of sysreg values to and from the kernel right -- this is
> about the only situation where userspace wants to modify sysregs
> during execution of the VM, as opposed to just reading them -- and
> (b) we try to reuse the code we already have that does TCG exception
> injection, which might or might not be a design mistake, and

That's probably a design mistake, correct :)

> (c) as noted above it's a never-actually-used untested codepath...

Sounds like an easy thing to resolve using kvm-unit-tests?

> So I think if I were you I wouldn't commit to the kernel ABI until
> somebody had at least written some RFC-quality patches for QEMU and
> tested that they work and the ABI is OK in that sense. (For the
> avoidance of doubt, I'm not volunteering to do that myself.)
> I don't object to the idea in principle, though.
> 
> PS: the other "injecting exceptions to the guest" oddity is that
> if the kernel *does* find the ISV information and returns to userspace
> for it to handle the MMIO, there's no way for userspace to say
> "actually that address is supposed to generate a data abort".

I think we're converging here. My proposal is that "inject a fault" 
should not be something special cased for the "I can't decode the 
instruction" case, but rather that we need a more generic mechanism.

Whether that's a new ioctl, a flag we set on entry or something else is 
an implementation detail I'll be happy to leave for discussion.

The only thing I'd like to avoid seeing is that we create a new user 
space ABI that makes it easy to inject a single, particular exception, 
but not solve all of the other cases while creating extra work to just 
implement instruction decoding in user space.


Alex



Amazon Development Center Germany GmbH
Krausenstr. 38
10117 Berlin
Geschaeftsfuehrung: Christian Schlaeger, Ralf Herbrich
Eingetragen am Amtsgericht Charlottenburg unter HRB 149173 B
Sitz: Berlin
Ust-ID: DE 289 237 879


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
