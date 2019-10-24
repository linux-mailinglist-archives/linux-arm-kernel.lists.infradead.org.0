Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA95E38FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:57:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=boZRPCI9MLVu7iQtlQoQguhDVG5cSSnkg2miYSEmWno=; b=rYDQy/tQl2Yug6
	Zqt2xPWoXcFAj1Q3ULkwl9Wl78nd6wKV8S65CnwhIW8XJ4v8fccgf2a+39P1IvSiUTBAD0LFFvuEy
	q61vn9DFdXOongpWsPuav65QIo7WVwWHMrf+Vjm5EdLFI6+xUI33l3MBNSg5N1P3Q8PHxGKQ2r4Ry
	rCXPAJxc784OkNZBNWehHTCnod2jGxraGgJt3zwhyh7vb522kUSH5qCMK0TVRsgmk4OguHVnCj4It
	exOv2nfISeyZKHx0jRqhxSpZrqO+wZOEjdFQ1cpaBhmwDiF/8GycUWd8XbKCY0l8xDgqMTd4f5OiW
	+mWl+cEgsGe6u4NJCmRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgQB-0000Ta-0n; Thu, 24 Oct 2019 16:57:11 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNgPl-0000QA-RR
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:56:48 +0000
Received: by mail-wr1-x444.google.com with SMTP id z11so3521927wro.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 09:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LWnsh1VnfR4T7qI+mFbdH+FaPSq3tYzKSOhcVJg7pFE=;
 b=TprQQJMSs5c2EL0ZtRmgUgoFteZMc6kk8z8q99t3AMCnEpXsLnu4G28yTZWdF0WKXo
 AsSMBmk/91zBhpayKuZIuJkBlm3dserOh1K+z62dIVoFAeAsKg+rGv1I60HSmN99HsIP
 C01PDZELGOOHq9mtM7LDhTxymhHtAY+UnR7GpQVS3waz9aihcgyQQzIz0k4CzgQ/csQ5
 h7spT8IUuo+YF0ffSlAZS1CXC+VoH3L4/dEqvfZ/rWzaVJuGH4nSNhg/X1NB+xy7ivaZ
 g7jYMBnHFJwaAWbzYFwXIZuzK2WEK+yLAWNeI/qTQCD/bms90CFHP07zBRErDkc2SugI
 kzzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LWnsh1VnfR4T7qI+mFbdH+FaPSq3tYzKSOhcVJg7pFE=;
 b=ZdwexdVG12flxMd3cyb0M+o8s3lO4gECw8Y6wixMAopZD8MrotYKSSkhZPbV/rTiiV
 io1rh686U6fmVeWz/wSI5d43rOV5/b9/dGoSsI0s1ASFCeZeJzb5Pu68VppQ9aAfiiol
 fz+3b7In/uCstyjtiGTHgGyF014U+pHLpQws22SYpwwfxHvTnnsdkk3PB2/tgUb/JUOz
 vrCRjd0SxKIKoRFrPl57JBDsCozTiLOSPJ8eX2OYyfU8GpneFRVhJPF6ktFT9f32HEKB
 /2OQKFiQ+V2C7/oNt+o0Of/rfhRQwrLHCTsB383jNia3+KE95D5iPpS9HW0uIgd2Fjz4
 E1Bw==
X-Gm-Message-State: APjAAAVyCTDewauxqg1PRhZp7EU2kFlT64YpOovOTOeIa9Nqe4uW3wVi
 6NL5EuU2tU9potgPr0CNvyWde34yVdfYSKF037tV2A==
X-Google-Smtp-Source: APXvYqz61t1rsPsZIoz2r/3DSS4dQctwFYskEA1EgxIFmFai2Df9wr1NPInU9NDLzWDpQnQ/tmFt/Js31wfFhnIQmPc=
X-Received: by 2002:adf:92e7:: with SMTP id 94mr5061277wrn.199.1571936202863; 
 Thu, 24 Oct 2019 09:56:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190301192017.39770-1-dianders@chromium.org>
 <CAJ+vNU0Ma5nG9_ThLO4cdO+=ivf7rmXiHZonF0HY0xx6X3R6Hw@mail.gmail.com>
 <5dce2964-8761-e7d0-8963-f0f5cb2feb02@arm.com>
 <CAJ+vNU0Q1-d7YDbAAEMqEcWnniqo6jLdKBbcUTar5=hJ+AC8vQ@mail.gmail.com>
 <1f6f7eb0-e1dc-d5a8-fb38-44c5bd839894@arm.com>
 <CAJ+vNU1Nd2p-ot2Qkj6vD9yD6gcYM-vm+snNWyt0ChgSqe4tBg@mail.gmail.com>
 <5cf9ec03-f6fb-8227-4ec5-62445038f283@arm.com>
 <CAJ+vNU28LrroW-XC4X2g3bdN171j0ieZenhYE1TrEM8yvKi=cQ@mail.gmail.com>
 <cb6392ff-fac6-300b-2e04-b34df8c42f28@arm.com>
 <CAJ+vNU0kDseyqAMKAv+9+aw6wVKjBQcHcGD_8XgCy_KzZTM4Gg@mail.gmail.com>
 <4824ef05-7f57-9aab-cdbd-34b3f857b32b@arm.com>
In-Reply-To: <4824ef05-7f57-9aab-cdbd-34b3f857b32b@arm.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Thu, 24 Oct 2019 09:56:30 -0700
Message-ID: <CAJ+vNU0Ls9RpMwZz+kUu=0nE9eSsz7MBPQGqR_U3u=s+Tq_YGw@mail.gmail.com>
Subject: Re: [PATCH v2] iommu/arm-smmu: Break insecure users by disabling
 bypass by default
To: Robin Murphy <robin.murphy@arm.com>, Jan Glauber <jglauber@cavium.com>, 
 Kulkarni Ganapatrao <Ganapatrao.Kulkarni@cavium.com>,
 Robert Richter <rrichter@cavium.com>, 
 Aleksey Makarov <aleksey.makarov@cavium.com>, "Goutham,
 Sunil" <Sunil.Goutham@cavium.com>, David Daney <ddaney@caviumnetworks.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_095645_950064_D8C344A6 
X-CRM114-Status: GOOD (  30.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: open list <linux-kernel@vger.kernel.org>, linux-arm-msm@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 Douglas Anderson <dianders@chromium.org>, evgreen@chromium.org,
 tfiga@chromium.org, Rob Clark <robdclark@gmail.com>,
 iommu@lists.linux-foundation.org,
 Tirumalesh Chalamarla <tchalamarla@caviumnetworks.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 4, 2019 at 4:27 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2019-10-04 9:37 pm, Tim Harvey wrote:
> > On Fri, Oct 4, 2019 at 11:34 AM Robin Murphy <robin.murphy@arm.com> wrote:
> >>
> >> On 04/10/2019 18:13, Tim Harvey wrote:
> >> [...]
> >>>>> No difference... still need 'arm-smmu.disable_bypass=n' to boot. Are
> >>>>> all four iommu-map props above supposed to be the same? Seems to me
> >>>>> they all point to the same thing which looks wrong.
> >>>>
> >>>> Hmm... :/
> >>>>
> >>>> Those mappings just set Stream ID == PCI RID (strictly each one should
> >>>> only need to cover the bus range assigned to that bridge, but it's not
> >>>> crucial) which is the same thing the driver assumes for the mmu-masters
> >>>> property, so either that's wrong and never could have worked anyway -
> >>>> have you tried VFIO on this platform? - or there are other devices also
> >>>> mastering through the SMMU that aren't described at all. Are you able to
> >>>> capture a boot log? The SMMU faults do encode information about the
> >>>> offending ID, and you can typically correlate their appearance
> >>>> reasonably well with endpoint drivers probing.
> >>>>
> >>>
> >>> Robin,
> >>>
> >>> VFIO is enabled in the kernel but I don't know anything about how to
> >>> test/use it:
> >>> $ grep VFIO .config
> >>> CONFIG_KVM_VFIO=y
> >>> CONFIG_VFIO_IOMMU_TYPE1=y
> >>> CONFIG_VFIO_VIRQFD=y
> >>> CONFIG_VFIO=y
> >>> # CONFIG_VFIO_NOIOMMU is not set
> >>> CONFIG_VFIO_PCI=y
> >>> CONFIG_VFIO_PCI_MMAP=y
> >>> CONFIG_VFIO_PCI_INTX=y
> >>> # CONFIG_VFIO_PLATFORM is not set
> >>> # CONFIG_VFIO_MDEV is not set
> >>
> >> No worries - since it's a networking-focused SoC I figured there was a
> >> chance you might be using DPDK or similar userspace drivers with the NIC
> >> VFs, but I was just casting around for a quick and easy baseline of
> >> whether the SMMU works at all (another way would be using Qemu to run a
> >> VM with one or more PCI devices assigned).
> >>
> >>> I do have a boot console yet I'm not seeing any smmu faults at all.
> >>> Perhaps I've mis-diagnosed the issue completely. To be clear when I
> >>> boot with arm-smmu.disable_bypass=y the serial console appears to not
> >>> accept input in userspace and with arm-smmu.disable_bypass=n I'm fine.
> >>> I'm using a buildroot initramfs rootfs for simplicity. The system
> >>> isn't hung as I originally expected as the LED heartbeat trigger
> >>> continues blinking... I just can't get console to accept input.
> >>
> >> Curiouser and curiouser... I'm inclined to suspect that the interrupt
> >> configuration might also be messed up, such that the SMMU is blocking
> >> traffic and jammed up due to pending faults, but you're not getting the
> >> IRQ delivered to find out. Does this patch help reveal anything?
> >>
> >> http://linux-arm.org/git?p=linux-rm.git;a=commitdiff;h=29ac3648b580920692c9b417b2fc606995826517
> >>
> >> (untested, but it's a direct port of the one I've used for SMMUv3 to
> >> diagnose something similar)
> >
> > This shows:
>
> Yay (ish)!
>
> [ and the tangential challenge would be to find out what the real global
> fault interrupt is, 'cause apparently it's not SPI 68... ]
>
> > arm-smmu 830000000000.smmu0: Unexpected global fault, this could be serious
> > arm-smmu 830000000000.smmu0:     GFSR 0x80000002, GFSYNR0 0x00000002,
> > GFSYNR1 0x00000140, GFSYNR2 0x00000000
>
> If that stream ID were a PCI RID, it would be 01:08.0
>
> > arm-smmu 830000000000.smmu0: Unexpected global fault, this could be serious
> > arm-smmu 830000000000.smmu0:     GFSR 0x80000002, GFSYNR0 0x00000002,
> > GFSYNR1 0x00000010, GFSYNR2 0x00000000
>
> And this guy would be 00:02.0
>
> So it seems that either the stream ID mapping is non-trivial (and
> "mmu-masters" couldn't have worked), or there are secret magic endpoints
> writing to memory during boot. Either way it probably needs some input
> from Cavium/Marvell to get straight. In the meantime, unless just
> disabling and ignoring the SMMU altogether is a viable option, I guess
> we have to resign to this being one of those "non-good" reasons for
> needing global bypass :(
>
> Robin.
>
> (note to self: it would probably be useful if we dump GFAR in these logs
> too. These are all writes, so it's possible they could be MSI attempts
> targeting the ITS rather than DMA as such)

Robin,

Thanks for the help here!

I opened up a support issue with Marvell but have not gotten anything
from them in the 2 weeks since (horrible support since Marvell
acquired them) thus I'm adding in some Marvell/Cavium folk active in
other areas of kernel development as a cry for help as OcteonTX iommu
is completely broken in mainline and I think this is the cause of
mainline stability issues I've seen since the 4.14 kernel.

Marvell/Cavium devs... can you please chime in here regarding iommu
configuration issues for CN80xx/CN81XX OcteonTX?

Thanks,

Tim


Tim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
