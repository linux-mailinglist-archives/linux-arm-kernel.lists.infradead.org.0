Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EBB163EBF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 09:17:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8BXgoi136tk+GU3qcuBSVlpTUdFz85oeEUwfaVRcQnM=; b=M00Ruj8Vwwc1iX
	jc2TlEROfFBL7tJug/SoOng1okYinWu95AH39gua26vlavyEHjzlqUn2UWBVZxtyGyV/ht6zzxq35
	SzxaFFEZMnSRHTJWi6mSG2sYmtnCjzit9T1vksLhnE5grZXk3PQ1FEwkUDj5L1mvNzfQMlRxfvv6s
	erm8orPTNMxXk5HpiojPDXA28qz4OoMMeeL3myZS66O5ajzk54LUOKHDtNoqOIsZYaud5l0KUwRPC
	B1cMO0KSVGFM2y/1alXsxyyAnfmE3u+17QRjxwoFVLu67R1RpQK8cCLEPW1mJfuyt8PflKFzvVP+w
	4VgSB4jXm2s6jRDcqmDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4KYA-00086G-Ox; Wed, 19 Feb 2020 08:17:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4KXw-00082Q-MB
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 08:17:30 +0000
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DBD9E24670
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 08:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582100248;
 bh=CSmzjqgUdYJh/H0r7aUAV5HLPGqDRzjlIDxqrIjax6s=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=WuBm2nJqIEn1hZouWLkFlPZo6p+yzD+dSAgONJgN7qc1QweazrlgZSo7b1d+1sC0I
 sdknTeqTFAO+XZB437SRqOEo/IABZq/rsi78GknbLYBIqJj+KwaCJ6DOHyDm2souy6
 lJZ0RpeURbYsIuKA44EJIAqdRTpvWus7gVflPCzg=
Received: by mail-wr1-f43.google.com with SMTP id w12so27061420wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 00:17:27 -0800 (PST)
X-Gm-Message-State: APjAAAWk39X4bu7YB8cBLxM2uGrRs5XTZzlkhxmA8U5g79RwDeoRc3Ee
 RWdJ5Dx5W9sHQNS5oHdhxd2KR3ued9goy/6PK2Ft0g==
X-Google-Smtp-Source: APXvYqz2b+rzP1X2e3i2Pa89cCSk9OazqjDeki90MREXgKxm1mgR4sBq4slzK5q2h71tBkFrCOJn2lgAeuL/lL1sWI8=
X-Received: by 2002:adf:8564:: with SMTP id 91mr35298229wrh.252.1582100246244; 
 Wed, 19 Feb 2020 00:17:26 -0800 (PST)
MIME-Version: 1.0
References: <20170821192907.8695-3-ard.biesheuvel@linaro.org>
 <1581728065-5862-1-git-send-email-alan.mikhak@sifive.com>
 <CAKv+Gu9W0v9owp85hkAatwCvu-y9z4BZxvbKf92N-s_nnD910Q@mail.gmail.com>
 <867e0o6ssr.wl-maz@kernel.org>
 <CABEDWGxDz6njYYQN879XnGmY2vxOKvbygeg=9nBK54U6WP8_ug@mail.gmail.com>
 <20200219081148.5307e30a@why>
In-Reply-To: <20200219081148.5307e30a@why>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 19 Feb 2020 09:17:15 +0100
X-Gmail-Original-Message-ID: <CAKv+Gu_Vxa_E65=PtH5r3QuR4S2XeN=pB6ZoLF7b0SYniKdTYg@mail.gmail.com>
Message-ID: <CAKv+Gu_Vxa_E65=PtH5r3QuR4S2XeN=pB6ZoLF7b0SYniKdTYg@mail.gmail.com>
Subject: Re: [PATCH 2/3] pci: designware: add separate driver for the MSI part
 of the RC
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_001728_786836_6EEB3AB6 
X-CRM114-Status: GOOD (  34.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Graeme Gregory <graeme.gregory@linaro.org>, Jingoo Han <jingoohan1@gmail.com>,
 Alan Mikhak <alan.mikhak@sifive.com>, linux-pci <linux-pci@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Leif Lindholm <leif@nuviainc.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Feb 2020 at 09:11, Marc Zyngier <maz@kernel.org> wrote:
>
> On Tue, 18 Feb 2020 11:09:10 -0800
> Alan Mikhak <alan.mikhak@sifive.com> wrote:
>
> > On Sat, Feb 15, 2020 at 2:36 AM Marc Zyngier <maz@kernel.org> wrote:
> > >
> > > On Sat, 15 Feb 2020 09:35:56 +0000,
> > > Ard Biesheuvel <ardb@kernel.org> wrote:
> > > >
> > > > (updated some email addresses in cc, including my own)
> > > >
> > > > On Sat, 15 Feb 2020 at 01:54, Alan Mikhak <alan.mikhak@sifive.com> wrote:
> > > > >
> > > > > Hi..
> > > > >
> > > > > What is the right approach for adding MSI support for the generic
> > > > > Linux PCI host driver?
> > > > >
> > > > > I came across this patch which seems to address a similar
> > > > > situation. It seems to have been dropped in v3 of the patchset
> > > > > with the explanation "drop MSI patch [for now], since it
> > > > > turns out we may not need it".
> > > > >
> > > > > [PATCH 2/3] pci: designware: add separate driver for the MSI part of the RC
> > > > > https://lore.kernel.org/linux-pci/20170821192907.8695-3-ard.biesheuvel@linaro.org/
> > > > >
> > > > > [PATCH v2 2/3] pci: designware: add separate driver for the MSI part of the RC
> > > > > https://lore.kernel.org/linux-pci/20170824184321.19432-3-ard.biesheuvel@linaro.org/
> > > > >
> > > > > [PATCH v3 0/2] pci: add support for firmware initialized designware RCs
> > > > > https://lore.kernel.org/linux-pci/20170828180437.2646-1-ard.biesheuvel@linaro.org/
> > > > >
> > > >
> > > > For the platform in question, it turned out that we could use the MSI
> > > > block of the core's GIC interrupt controller directly, which is a much
> > > > better solution.
> > > >
> > > > In general, turning MSIs into wired interrupts is not a great idea,
> > > > since the whole point of MSIs is that they are sufficiently similar to
> > > > other DMA transactions to ensure that the interrupt won't arrive
> > > > before the related memory transactions have completed.
> > > >
> > > > If your interrupt controller does not have this capability, then yes,
> > > > you are stuck with this little widget that decodes an inbound write to
> > > > a magic address and turns it into a wired interrupt.
> > >
> > > I can only second this. It is much better to have a generic block
> > > implementing MSI *in a non multiplexed way*, for multiple reasons:
> > >
> > > - the interrupt vs DMA race that Ard mentions above,
> > >
> > > - MSIs are very often used to describe the state of per-CPU queues. If
> > >   you multiplex MSIs behind a single multiplexing interrupt, it is
> > >   always the same CPU that gets interrupted, and you don't benefit
> > >   from having multiple queues at all.
> > >
> > > Even if you have to implement the support as a bunch of wired
> > > interrupts, there is still a lot of value in keeping a 1:1 mapping
> > > between MSIs and wires.
> > >
> > > Thanks,
> > >
> > >         M.
> > >
> > > --
> > > Jazz is not dead, it just smells funny.
> >
> > Ard and Marc, Thanks for you comments. I will take a look at the code
> > related to MSI block of GIC interrupt controller for some reference.
>
> GICv2m or GICv3 MBI are probably your best bets. Don't get anywhere near
> the GICv3 ITS, there lies madness. ;-)
>

True, but for the record, it is the GICv3 ITS that I used on the
platform in question, allowing me to ignore the pseudo-MSI widget
entirely.

> > I am looking into supporting MSI in a non-multiplexed way when using
> > ECAM and the generic Linux PCI host driver when Linux is booted
> > from U-Boot.
>
> I don't really get the relationship between ECAM and MSIs. They should
> be fairly independent, unless that has to do with the allowing the MSI
> doorbell to be reached from the PCIe endpoint.
>

The idea is that the PCIe RC is programmed by firmware, and exposed to
the OS as generic ECAM. If you have enough iATU registers and enough
free address space, that is perfectly feasible.

The problem is that the generic ECAM binding does not have any
provisions for MSI doorbell widgets that turn inbound writes to a
magic address into a wired interrupt. My patch models this as a
separate device, which allows a generic ECAM DT node to refer to it as
its MSI parent.


> > Specifically, what is the right approach for sharing the physical
> > address of the MSI data block used in Linux with U-Boot?
> >
> > I imagine the Linux driver for MSI interrupt controller allocates
> > some DMA-able memory for use as the MSI data block. The
> > U-Boot PCIe driver would program an inbound ATU region to
> > map mem writes from endpoint devices to that MSI data block
> > before booting Linux.
>
> The "MSI block" is really a piece of HW, not memory. So whatever you
> have to program in the PCIe RC must allow an endpoint to reach that
> device with a 32bit write.
>

Indeed. Either your interrupt controller or your PCIe RC needs to
implement the doorbell, but using the former is by far the preferred
option.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
