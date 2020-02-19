Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E121164FCC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 21:25:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B1FgUV58eil5zRMP4zt3BPFBSs8gqG9aou45MOPNa04=; b=pj1XtjdQlpLwXf
	VtCcHwOPWd9iM+vIp6YegwzW4YcLqwxFWHPs2rKl4SUPULLO+OedYxgC53WN74/cVXtAaL6cEcmj6
	Bp07ZP+ALUQX1CySzKm24GrT+/T6fZhFIjYTPeo2p01WoZKYXOyu7E0OelfNu378sZz6opiI0gKTd
	3lB3s332AUcUNKc1Ou/vVBddone/EtgaOH0zG5dnZaG4DpIS9KSf44Ryjdo8ze+R7wIv9qNkv2S7X
	QSdxXS7N3yxVueWFk6ukbOzrmCRyorpP0OXgVTLb0ZkJLEbvlebxd01tSClJnokaXkXLNRjqginyj
	RbL/WBeSopk+gfEATu/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Vtt-00040b-0d; Wed, 19 Feb 2020 20:24:53 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Vtg-0003o5-0q
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 20:24:42 +0000
Received: by mail-lj1-x243.google.com with SMTP id q8so1783679ljb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 12:24:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AjNq+luC626vZsiRuPi6VGu1LC8KCw/yq1nc0im58SM=;
 b=blXaIirhJ4Rkmd3O/qCBwDL0uB/EBB4pdKJ3DIAAUgs9ukw0IZcEQGOAQx+UnH8FPE
 ng9F56X1U9zMRjRnxcaVcYyY2GtMlJdARUvhWlFIxk3zK31OX4oPN0Tib+wStHYLrV/C
 /RpybVE7itjdGSyJbZ5scSfW5donvZVLui9SNqoyO9JtAzIgDjTsocj1ti3NUrX6fQpm
 wbEszrQ72npVKruZSfkUbsCh0RrvaQB8p8B0jY2E2j7PzgACFuCEvvnQ7K6LVi5V/pyn
 kmuhjGo52kT609hcGac2CvAsN/VhyGduiEy/VhFoBel2fLoYv2h2oIHIidwysIU+kIkW
 eykw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AjNq+luC626vZsiRuPi6VGu1LC8KCw/yq1nc0im58SM=;
 b=C5Y7SefQU5PeYPhScwYtA6z+82AS+5J9YMNqwBOMF/pD2nwWI32CNYZ4WDAVFtMPQI
 7Taa/S/7dHu3NZJAEEKdOGlcJgI3GVB/G/RsUkShgT83D4xz0aV2czNu6DHVtExHqMTD
 p2hrIQ3EdauX9BODyuW17sntTT08CB5yy1ph/hygCFr2yuwd1YeRNb6qHATpWm/SwCb5
 Sow9puWG6PZiuwuwniNGqieVKawZkLiS3AvYxdxXICpL10Q9b1dlzMxgvt54Gvfp0I6w
 Q9K3Px+t7qOcDUs4rOUppF3CeTjalBEg5kGIXDPUI/9lKV/a/kb+EHZLAKB/lXFLmSx5
 6D1w==
X-Gm-Message-State: APjAAAW32r5Egd9ukXsq3+C38gVHx7sHLqQ1Bf+pWwr+fiwrxzG3vW8h
 ozl0pReVnPBGLOvUfkX4DdNEKZtK1xroUJG/UC8JcQ==
X-Google-Smtp-Source: APXvYqxgHXZwrYpIii3KVNAmPG6QvHVjvWv4SWm6MAEXn/50rv4vkJCi3U0P/EINz0+qnRV23HANiDOMjMn73htXwmI=
X-Received: by 2002:a2e:8698:: with SMTP id l24mr16980675lji.94.1582143877350; 
 Wed, 19 Feb 2020 12:24:37 -0800 (PST)
MIME-Version: 1.0
References: <20170821192907.8695-3-ard.biesheuvel@linaro.org>
 <1581728065-5862-1-git-send-email-alan.mikhak@sifive.com>
 <CAKv+Gu9W0v9owp85hkAatwCvu-y9z4BZxvbKf92N-s_nnD910Q@mail.gmail.com>
 <867e0o6ssr.wl-maz@kernel.org>
 <CABEDWGxDz6njYYQN879XnGmY2vxOKvbygeg=9nBK54U6WP8_ug@mail.gmail.com>
 <20200219081148.5307e30a@why>
 <CAKv+Gu_Vxa_E65=PtH5r3QuR4S2XeN=pB6ZoLF7b0SYniKdTYg@mail.gmail.com>
In-Reply-To: <CAKv+Gu_Vxa_E65=PtH5r3QuR4S2XeN=pB6ZoLF7b0SYniKdTYg@mail.gmail.com>
From: Alan Mikhak <alan.mikhak@sifive.com>
Date: Wed, 19 Feb 2020 12:24:25 -0800
Message-ID: <CABEDWGxXrEcnW_HOrAuKGgNkJR5-SjkPWNgOGU1Y_7fTxc7x=w@mail.gmail.com>
Subject: Re: [PATCH 2/3] pci: designware: add separate driver for the MSI part
 of the RC
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_122440_128168_A440F67A 
X-CRM114-Status: GOOD (  40.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Graeme Gregory <graeme.gregory@linaro.org>, Marc Zyngier <maz@kernel.org>,
 linux-pci <linux-pci@vger.kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Leif Lindholm <leif@nuviainc.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 12:17 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Wed, 19 Feb 2020 at 09:11, Marc Zyngier <maz@kernel.org> wrote:
> >
> > On Tue, 18 Feb 2020 11:09:10 -0800
> > Alan Mikhak <alan.mikhak@sifive.com> wrote:
> >
> > > On Sat, Feb 15, 2020 at 2:36 AM Marc Zyngier <maz@kernel.org> wrote:
> > > >
> > > > On Sat, 15 Feb 2020 09:35:56 +0000,
> > > > Ard Biesheuvel <ardb@kernel.org> wrote:
> > > > >
> > > > > (updated some email addresses in cc, including my own)
> > > > >
> > > > > On Sat, 15 Feb 2020 at 01:54, Alan Mikhak <alan.mikhak@sifive.com> wrote:
> > > > > >
> > > > > > Hi..
> > > > > >
> > > > > > What is the right approach for adding MSI support for the generic
> > > > > > Linux PCI host driver?
> > > > > >
> > > > > > I came across this patch which seems to address a similar
> > > > > > situation. It seems to have been dropped in v3 of the patchset
> > > > > > with the explanation "drop MSI patch [for now], since it
> > > > > > turns out we may not need it".
> > > > > >
> > > > > > [PATCH 2/3] pci: designware: add separate driver for the MSI part of the RC
> > > > > > https://lore.kernel.org/linux-pci/20170821192907.8695-3-ard.biesheuvel@linaro.org/
> > > > > >
> > > > > > [PATCH v2 2/3] pci: designware: add separate driver for the MSI part of the RC
> > > > > > https://lore.kernel.org/linux-pci/20170824184321.19432-3-ard.biesheuvel@linaro.org/
> > > > > >
> > > > > > [PATCH v3 0/2] pci: add support for firmware initialized designware RCs
> > > > > > https://lore.kernel.org/linux-pci/20170828180437.2646-1-ard.biesheuvel@linaro.org/
> > > > > >
> > > > >
> > > > > For the platform in question, it turned out that we could use the MSI
> > > > > block of the core's GIC interrupt controller directly, which is a much
> > > > > better solution.
> > > > >
> > > > > In general, turning MSIs into wired interrupts is not a great idea,
> > > > > since the whole point of MSIs is that they are sufficiently similar to
> > > > > other DMA transactions to ensure that the interrupt won't arrive
> > > > > before the related memory transactions have completed.
> > > > >
> > > > > If your interrupt controller does not have this capability, then yes,
> > > > > you are stuck with this little widget that decodes an inbound write to
> > > > > a magic address and turns it into a wired interrupt.
> > > >
> > > > I can only second this. It is much better to have a generic block
> > > > implementing MSI *in a non multiplexed way*, for multiple reasons:
> > > >
> > > > - the interrupt vs DMA race that Ard mentions above,
> > > >
> > > > - MSIs are very often used to describe the state of per-CPU queues. If
> > > >   you multiplex MSIs behind a single multiplexing interrupt, it is
> > > >   always the same CPU that gets interrupted, and you don't benefit
> > > >   from having multiple queues at all.
> > > >
> > > > Even if you have to implement the support as a bunch of wired
> > > > interrupts, there is still a lot of value in keeping a 1:1 mapping
> > > > between MSIs and wires.
> > > >
> > > > Thanks,
> > > >
> > > >         M.
> > > >
> > > > --
> > > > Jazz is not dead, it just smells funny.
> > >
> > > Ard and Marc, Thanks for you comments. I will take a look at the code
> > > related to MSI block of GIC interrupt controller for some reference.
> >
> > GICv2m or GICv3 MBI are probably your best bets. Don't get anywhere near
> > the GICv3 ITS, there lies madness. ;-)
> >
>
> True, but for the record, it is the GICv3 ITS that I used on the
> platform in question, allowing me to ignore the pseudo-MSI widget
> entirely.
>
> > > I am looking into supporting MSI in a non-multiplexed way when using
> > > ECAM and the generic Linux PCI host driver when Linux is booted
> > > from U-Boot.
> >
> > I don't really get the relationship between ECAM and MSIs. They should
> > be fairly independent, unless that has to do with the allowing the MSI
> > doorbell to be reached from the PCIe endpoint.
> >
>
> The idea is that the PCIe RC is programmed by firmware, and exposed to
> the OS as generic ECAM. If you have enough iATU registers and enough
> free address space, that is perfectly feasible.
>
> The problem is that the generic ECAM binding does not have any
> provisions for MSI doorbell widgets that turn inbound writes to a
> magic address into a wired interrupt. My patch models this as a
> separate device, which allows a generic ECAM DT node to refer to it as
> its MSI parent.
>
>
> > > Specifically, what is the right approach for sharing the physical
> > > address of the MSI data block used in Linux with U-Boot?
> > >
> > > I imagine the Linux driver for MSI interrupt controller allocates
> > > some DMA-able memory for use as the MSI data block. The
> > > U-Boot PCIe driver would program an inbound ATU region to
> > > map mem writes from endpoint devices to that MSI data block
> > > before booting Linux.
> >
> > The "MSI block" is really a piece of HW, not memory. So whatever you
> > have to program in the PCIe RC must allow an endpoint to reach that
> > device with a 32bit write.
> >
>
> Indeed. Either your interrupt controller or your PCIe RC needs to
> implement the doorbell, but using the former is by far the preferred
> option.

Ard and Marc, Thank you so much for your insightful comments.

The generic PCI host driver uses ECAM as the access method to
read/write PCI configuration registers but has no support for MSI.
I imagine I could use the MSI widget model from Art's patch to
implement a separate Linux interrupt handler for MSI interrupts.

I'm not sure but the MSI widget seems to multiplex MSI interrupts
to one wired interrupt since its MSI doorbell is a u32 value. The widget
also has code for programming the address of the doorbell into
Designware PCIe IP registers.

I imagine I would separate the lines of code that programs the
PCIe IP MSI registers and move that non-generic PCIe code from
Linux to U-Boot "firmware". The MSI interrupt handler would
then become more of a generic PCI MSI interrupt handler.

The "MSI block" I refer to is a page of memory that I see being
allocated and mapped for dma access from endpoint devices
in the Designware PCI host driver function dw_pcie_msi_init().
The physical address of this MSI data block is programmed into
Designware PCIe IP MSI registers by Designware host driver.
I believe this is the target memory where endpoint MSI write
requests would be targeted to. I imagine an inbound ATU region
maps the bus transaction to a physical address within this MSI
data block to support non-multiplexed MSI interrupt handling.

Whether the doorbell is a u32 value or a block of memory,
the chicken or the egg dilemma I have is how to share the
address of the MSI data block between Linux and U-Boot.
Since all programming code for PCIe IP would reside in the
U-Boot PCIe driver, U-Boot would need to know the address
of the MSI data block before it boots Linux. However, if the MSI
interrupt widget dynamically allocates the MSI data block, it
would contain no code to program the address into the PCIe IP.

I wonder if the MSI data block can be a reserved block of
memory whose physical address is predetermined and shared
via the "reg" entry for the MSI widget between Linux and
U-Boot? Would that make sense?

Regards,
Alan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
