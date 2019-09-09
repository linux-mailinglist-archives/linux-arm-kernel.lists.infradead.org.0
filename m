Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2423EADE17
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 19:36:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oAd/xzYt4BQngjmF1lJjPrlwaL9Wa51LEqoBxD/tBtc=; b=G6d+f72L5gyr9e
	stDh+VOB/eeQs2yLmJ+qsgBDtoFSbgGH6jqcNbtWOoBGKpWtTrZhCEGqcS8Va/JkvG8Uk3IYABUG5
	mlVNF+yR0sZEQL+W/21fJQVMlrkTjQCPOF4H3sLeeB3iw1N+UsQtPo6xddF9BvmpkT8KD6Ms0tXgn
	W0ZUhkXN34SCghi8LDlGGmztXXIAVspdrpkjSNO/jn/kUtiK8d9f6TgYHN/ogaYOtvW/ugYIdZkir
	rbHkTp/SoTP0ykEyjRiL7JBq5r5aTrGPSA6Fs+g4aL1dm3hCoExk0NMEECUsZDC92ULMP5rMdJMR0
	K/fmoqXbu06gmVDh+C1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7NaX-00045y-A2; Mon, 09 Sep 2019 17:36:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7NaN-00045Y-Vz
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 17:36:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 66A901000;
 Mon,  9 Sep 2019 10:36:19 -0700 (PDT)
Received: from localhost (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C01DD3F71F;
 Mon,  9 Sep 2019 10:36:18 -0700 (PDT)
Date: Mon, 9 Sep 2019 19:36:16 +0200
From: Christoffer Dall <christoffer.dall@arm.com>
To: Peter Maydell <peter.maydell@linaro.org>
Subject: Re: [PATCH 2/2] KVM: arm/arm64: Allow user injection of external
 data aborts
Message-ID: <20190909173616.GA28908@lvm>
References: <20190909121337.27287-1-christoffer.dall@arm.com>
 <20190909121337.27287-3-christoffer.dall@arm.com>
 <CAFEAcA8WcQNJV27q5WJ-SMhOyjFZyh1Pz7H7duK6zW1wiAvqKQ@mail.gmail.com>
 <20190909151631.GA26449@lvm>
 <CAFEAcA-F3YLEQgKAvfbyGGYdzs_wYPz+QMuxk4qZd_oeU-_PBA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFEAcA-F3YLEQgKAvfbyGGYdzs_wYPz+QMuxk4qZd_oeU-_PBA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_103620_118390_CCA4A2FE 
X-CRM114-Status: GOOD (  36.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Stefan Hajnoczi <stefanha@redhat.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>, Alexander Graf <graf@amazon.com>,
 kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 09, 2019 at 04:56:23PM +0100, Peter Maydell wrote:
> On Mon, 9 Sep 2019 at 16:16, Christoffer Dall <christoffer.dall@arm.com> wrote:
> >
> > On Mon, Sep 09, 2019 at 01:32:46PM +0100, Peter Maydell wrote:
> > > This API seems to be missing support for userspace to specify
> > > whether the ESR_ELx for the guest should have the EA bit set
> > > (and more generally other syndrome/fault status bits). I think
> > > if we have an API for "KVM_EXIT_MMIO but the access failed"
> > > then it should either (a) be architecture agnostic, since
> > > pretty much any architecture might have a concept of "access
> > > gave some bus-error-type failure" and it would be nice if userspace
> > > didn't have to special case them all in arch-specific code,
> > > or (b) have the same flexibility for specifying exactly what
> > > kind of fault as the architecture does. This sort of seems to
> > > fall between two stools. (My ideal for KVM_EXIT_MMIO faults
> > > would be a generic API which included space for optional
> > > arch-specific info, which for Arm would pretty much just be
> > > the EA bit.)
> >
> > I'm not sure I understand exactly what would be improved by making this
> > either more architecture speific or more architecture generic.  The
> > EA bit will always be set, that's why the field is called
> > 'ext_dabt_pending'.
> 
> ESR_EL1.EA doesn't mean "this is an external abort". It means
> "given that this is an external abort as indicated by ESR_EL1.DFSC,
> specify the external abort type". Traditionally this is 0 for
> an AXI bus Decode error ("interconnect says there's nothing there")
> and 1 for a Slave error ("there's something there but it told us
> to go away"), though architecturally it's specified as impdef
> because not everybody uses AXI. In QEMU we track the difference
> between these two things and for TCG will raise external aborts
> with the correct EA bit value.
> 

Ah, I missed that.  I don't think we want to allow userspace to supply
any implementation defined values for the VM, though.

> > I thought as per the previous discussion, that we were specifically
> > trying to avoid userspace emulating the exception in detail, so I
> > designed this to provide the minimal effort API for userspace.
> >
> > Since we already have an architecture specific ioctl, kvm_vcpu_events, I
> > don't think we're painting ourselves into a corner by using that.  Is a
> > natural consequence of what you're saying not that we should try to make
> > that whole call architecture generic?
> >
> > Unless we already have specific examples of how other architectures
> > would want to use something like this, and given the impact of this
> > patch, I'm not sure it's worth trying to speculate about that.
> 
> In QEMU, use of a generic API would look something like
> this in kvm-all.c:
> 
>         case KVM_EXIT_MMIO:
>             DPRINTF("handle_mmio\n");
>             /* Called outside BQL */
>             MemTxResult res;
> 
>             res = address_space_rw(&address_space_memory,
>                                    run->mmio.phys_addr, attrs,
>                                    run->mmio.data,
>                                    run->mmio.len,
>                                    run->mmio.is_write);
>             if (res != MEMTX_OK) {
>                 /* tell the kernel the access failed, eg
>                  * by updating the kvm_run struct to say so
>                  */
>             } else {
>                 /* access passed, we have updated the kvm_run
>                  * struct's mmio subfield, proceed as usual
>                  */
>             }
>             ret = 0;
>             break;
> 
> [this is exactly the current QEMU code except that today
> we throw away the 'res' that tells us if the transaction
> succeeded because we have no way to report it to KVM and
> effectively always RAZ/WI the access.]
> 
> This is nice because you don't need anything here that has to do
> "bail out to architecture specific handling of anything",
> you just say "nope, the access failed", and let the kernel handle
> that however the CPU would handle it. It just immediately works
> for all architectures on the userspace side (assuming the kernel
> defaults to not actually trying to report an abort to the guest
> if nobody's implemented that on the kernel side, which is exactly
> what happens today where there's no way to report the error for
> any architecture).
> The downside is that you lose the ability to be more specific about
> architecture-specific fine distinctions like decode errors vs slave
> errors, though.

I understand that it's convenient to avoid having to write an
architecture hook, but I simply don't know if it makes sense to do this
on other architectures, and while it can be more code to have to write
the architecture hooks in QEMU, it's hardly a strong argument against
using an existing architecture-specific mechanism to inject an event to
a guest.

Note that I looked at using a an appropriate field in the kvm_run
structure, but nothing elegant came to mind.

Do you have a concrete example of how you would like to change the
kvm_run structure?

> 
> Or you could have an arm-specific API that does care about
> fine details like the EA bit (and maybe also other ESR_ELx
> fields); that has the downside that userspace needs to
> make the handling of error returns from "handle this MMIO
> access" architecture specific, but you get architecture-specific
> benefits as a result. (Preferably the architecture-specific
> APIs should at least be basically the same, eg same ioctl
> or same bit of the kvm_run struct being updated with some parts
> being arch-specific data, rather than 3 different mechanisms.)

Are there other bits of the ESR than the EA that you think we should be
able to specify?

Can we decide if we need to allow userspace to provide additional
information or not, and then decide on the mechanism, instead of
conflating the two questions?

I think we should either expose the minimal mechanism to user space, or
just leave it to user space to emulate the whole thing.


Thanks,

    Christoffer

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
