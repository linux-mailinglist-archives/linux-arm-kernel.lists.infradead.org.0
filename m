Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBE1ADC88
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 17:56:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8+zpCTrpi6QMB+w/hs/bMgd7UkmWOFVX27J94o4WKyw=; b=G34u3JCdggwOPs
	LNwcrd3fC8WG+6aA0tvs959g7IShXOnP0r2yJIZeMh9ny1ifamZiMD7G9idUW/NIpBh9HCANVmmd0
	1RhmWQMpBPXRus+KlwM379KGpPtSGlUzc+ZZQu2vMcI9IBjYhgPfwuFmypU7ZqAdX0GytXj8pT48j
	dksuwdMhj6SUHlGPQaTDusIHZ2vhUjGWQWlAebF/mHwzN2s3ro9L0h1wLI57hseYwtr6/P1v+8miB
	Yx0Au406ht3rkmqhbPuE/KBIryMuAWxCk+NDgUOoAedUaA8c59XtuOOHXY1x17um3Lqd2R7c0mbLr
	omvEuLbnVuEl/5cuXSyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7M21-0007H6-Og; Mon, 09 Sep 2019 15:56:45 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7M1r-0007GM-Hc
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 15:56:37 +0000
Received: by mail-ot1-x342.google.com with SMTP id g19so12887235otg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 08:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kQKpAgCR0aWCUsHchRbJumhQq4BDu43empvLhB4T6fI=;
 b=IjGuVdyhihsn0b2oYLNf4y7K69+X5aGEmAFSdm+1q0Kll52046kdiPV2LPXnxRzqTk
 foFxeVH98++bVgffBOr5uA0D8e72l42msAAIgxqS250eBsUVorYHMEiCb5QbU7KhvetI
 CIoYbFPIZVSUAdWVOSO4QJKBdRNBCOMG37mqOCKwdYP7ujjVSP2XNi/wftjSqM46UKsF
 PcHNNrEbbA2V+dozh6tkDwaB3/vc2yK1mFnvw5MQAmJf14oKrmatelLOZFDK/ihq5ilB
 w5cI5ClKRiFHrc+O95zu9WVvBymSNNT/jZaMHVC6dNkeDRahg6RN0fM7/nd7UOxdpTVH
 hj5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kQKpAgCR0aWCUsHchRbJumhQq4BDu43empvLhB4T6fI=;
 b=bonRK6qLzHfl7M4fw7vb/UWUpAgKlAQWI+RsrAIgxX/jRQtXQqcji9y94q3dvh6uF+
 tvmqzWXg7GLncXksCp+4IqSj9pCpDiYyU8RdytGgKwhH7/dkosNuJjlk/IyNUItQ7WPD
 Cq/aS2nvbZW4CZAkidnG7NkWp86q+wEfSGtMc3XrmxwTMfbuN+b0fs30i4OY1FXMcWx3
 54P8SUjJBr3Q+6f4TPQ5kttFH13+P1qjAd7lNZutgZDkkHzOVG9xupUHznFvyRJhltgX
 kDlRBArQxPPkMsdM5xq9k4rXylC9avVsfRpYafuV7UhMycxQ7w8+XMS/odevOtVZa3ac
 igfA==
X-Gm-Message-State: APjAAAVHfewcOJzN/CTOBQH0LpLD2dnMtuUVmywL6hmzuUdSz9xe5gsY
 HrYvwbruo+nkiNNZjJZtWB4vuxBrJ/Dy8OU7Cct0HQ==
X-Google-Smtp-Source: APXvYqzbc9c18AQCh76zKydtjHclhprX3nwiBJCVCBrHjfBy36NDDmORyT9T+dl4742NmvQzsZpn5WqNHStM991/rRg=
X-Received: by 2002:a9d:5e11:: with SMTP id d17mr20660650oti.135.1568044594249; 
 Mon, 09 Sep 2019 08:56:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190909121337.27287-1-christoffer.dall@arm.com>
 <20190909121337.27287-3-christoffer.dall@arm.com>
 <CAFEAcA8WcQNJV27q5WJ-SMhOyjFZyh1Pz7H7duK6zW1wiAvqKQ@mail.gmail.com>
 <20190909151631.GA26449@lvm>
In-Reply-To: <20190909151631.GA26449@lvm>
From: Peter Maydell <peter.maydell@linaro.org>
Date: Mon, 9 Sep 2019 16:56:23 +0100
Message-ID: <CAFEAcA-F3YLEQgKAvfbyGGYdzs_wYPz+QMuxk4qZd_oeU-_PBA@mail.gmail.com>
Subject: Re: [PATCH 2/2] KVM: arm/arm64: Allow user injection of external data
 aborts
To: Christoffer Dall <christoffer.dall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_085635_599234_7AF4065C 
X-CRM114-Status: GOOD (  25.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: =?UTF-8?Q?Daniel_P=2E_Berrang=C3=A9?= <berrange@redhat.com>,
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

On Mon, 9 Sep 2019 at 16:16, Christoffer Dall <christoffer.dall@arm.com> wrote:
>
> On Mon, Sep 09, 2019 at 01:32:46PM +0100, Peter Maydell wrote:
> > This API seems to be missing support for userspace to specify
> > whether the ESR_ELx for the guest should have the EA bit set
> > (and more generally other syndrome/fault status bits). I think
> > if we have an API for "KVM_EXIT_MMIO but the access failed"
> > then it should either (a) be architecture agnostic, since
> > pretty much any architecture might have a concept of "access
> > gave some bus-error-type failure" and it would be nice if userspace
> > didn't have to special case them all in arch-specific code,
> > or (b) have the same flexibility for specifying exactly what
> > kind of fault as the architecture does. This sort of seems to
> > fall between two stools. (My ideal for KVM_EXIT_MMIO faults
> > would be a generic API which included space for optional
> > arch-specific info, which for Arm would pretty much just be
> > the EA bit.)
>
> I'm not sure I understand exactly what would be improved by making this
> either more architecture speific or more architecture generic.  The
> EA bit will always be set, that's why the field is called
> 'ext_dabt_pending'.

ESR_EL1.EA doesn't mean "this is an external abort". It means
"given that this is an external abort as indicated by ESR_EL1.DFSC,
specify the external abort type". Traditionally this is 0 for
an AXI bus Decode error ("interconnect says there's nothing there")
and 1 for a Slave error ("there's something there but it told us
to go away"), though architecturally it's specified as impdef
because not everybody uses AXI. In QEMU we track the difference
between these two things and for TCG will raise external aborts
with the correct EA bit value.

> I thought as per the previous discussion, that we were specifically
> trying to avoid userspace emulating the exception in detail, so I
> designed this to provide the minimal effort API for userspace.
>
> Since we already have an architecture specific ioctl, kvm_vcpu_events, I
> don't think we're painting ourselves into a corner by using that.  Is a
> natural consequence of what you're saying not that we should try to make
> that whole call architecture generic?
>
> Unless we already have specific examples of how other architectures
> would want to use something like this, and given the impact of this
> patch, I'm not sure it's worth trying to speculate about that.

In QEMU, use of a generic API would look something like
this in kvm-all.c:

        case KVM_EXIT_MMIO:
            DPRINTF("handle_mmio\n");
            /* Called outside BQL */
            MemTxResult res;

            res = address_space_rw(&address_space_memory,
                                   run->mmio.phys_addr, attrs,
                                   run->mmio.data,
                                   run->mmio.len,
                                   run->mmio.is_write);
            if (res != MEMTX_OK) {
                /* tell the kernel the access failed, eg
                 * by updating the kvm_run struct to say so
                 */
            } else {
                /* access passed, we have updated the kvm_run
                 * struct's mmio subfield, proceed as usual
                 */
            }
            ret = 0;
            break;

[this is exactly the current QEMU code except that today
we throw away the 'res' that tells us if the transaction
succeeded because we have no way to report it to KVM and
effectively always RAZ/WI the access.]

This is nice because you don't need anything here that has to do
"bail out to architecture specific handling of anything",
you just say "nope, the access failed", and let the kernel handle
that however the CPU would handle it. It just immediately works
for all architectures on the userspace side (assuming the kernel
defaults to not actually trying to report an abort to the guest
if nobody's implemented that on the kernel side, which is exactly
what happens today where there's no way to report the error for
any architecture).
The downside is that you lose the ability to be more specific about
architecture-specific fine distinctions like decode errors vs slave
errors, though.

Or you could have an arm-specific API that does care about
fine details like the EA bit (and maybe also other ESR_ELx
fields); that has the downside that userspace needs to
make the handling of error returns from "handle this MMIO
access" architecture specific, but you get architecture-specific
benefits as a result. (Preferably the architecture-specific
APIs should at least be basically the same, eg same ioctl
or same bit of the kvm_run struct being updated with some parts
being arch-specific data, rather than 3 different mechanisms.)

Having an API that is architecture specific but doesn't actually
let you define any of the architecture-specific aspects of
what the abort might imply seems like the worst of both worlds.
If all we can say is "this aborted" then we might as well have
the API be generic.

thanks
-- PMM

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
