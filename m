Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C57933CDF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 03:50:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M/5l2CQLFOU8LvpQ25GDvu+tCjjl6FqAByqJGUIWNwo=; b=AQSfzbYGjtefn5
	sRqTsERkUTkmJdmAQBzXRVuU5VU3ceq/IR+tVl4YA1a+MIDo3ZI73qcI36L/4ODGIhiAHJgOrrqwF
	dvzEeGCwYjmrGsDEwR+GORBYs6ifkHnSaO7fob0KzBn25gOxnWZDi2WVROFLQT7l0yloCiCSaMr1v
	lsK3xfxsisUYLXMDvI3LM6lZ6D+d2w0QEeiLxDqFoqOg6lGgghbijzdIdr00hp+ueU/1kKkk5j9iS
	rfAoN/c6NyY2J0lgV3f6esG4K+cEvr7OvmF6yqEobue6jhQbK9ViVca/4LFhRbd0l45VLB4G4DAuR
	Fwg0+cyyibM8LPT3PomQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXyaK-0002Td-Ji; Tue, 04 Jun 2019 01:49:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXyaD-0002TG-33
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 01:49:50 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CEE49263B6;
 Tue,  4 Jun 2019 01:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559612988;
 bh=ZFLaYphn424cz90ooZBwJiNuxs3UlGcvbszrva1KAHQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XEL1fVyEl5TIg9HXRLdNCn9lCO4e/kDQvwNRyON7CVcC+j+V5qVZRvRn2JFyXMtCP
 YlN+SPaL09Q44nMRu/oyHqByOvaVAU+rLHmLTN6jfWb1LAuLTaSVEgAem/KkcugYbR
 lUaLhqbRoPIJGpZ4LNHEbSvu5bA+7RgGaJSDmj2A=
Date: Mon, 3 Jun 2019 20:49:46 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [RFC] ARM64 PCI resource survey issue(s)
Message-ID: <20190604014945.GE189360@google.com>
References: <56715377f941f1953be43b488c2203ec090079a1.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <56715377f941f1953be43b488c2203ec090079a1.camel@kernel.crashing.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_184949_165743_228FFE83 
X-CRM114-Status: GOOD (  25.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-pci@vger.kernel.org,
 Sinan Kaya <okaya@kernel.org>, "Zilberman, Zeev" <zeev@amazon.com>, "Saidi,
 Ali" <alisaidi@amazon.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 09:41:16AM +1000, Benjamin Herrenschmidt wrote:
> Hi Folks !
> 
> I'd like to revive the discussion around Ard's old patch:
> 
> https://patchwork.kernel.org/patch/9675707/
> 
> We (Amazon) need that sorted one way or another ASAP since we have
> setups coming where we must not let Linux change the FW assignments
> under some host bridges.
> 
> In fact it's a reasonable thing to require for other reasons. The EFI
> framebuffer is an example, there can be others where FW/ACPI/EL3 etc...
> might have assumptions based on where some system devices were located
> by the boot FW and will break if we move them (such things are common
> on x86 and powerpc).

I would like to handle these individual devices that cannot be moved
the same way we handle legacy (IDE, VGA) devices, i.e., mark the BARs
with IORESOURCE_IO_FIXED.

This could be done with either Enhanced Allocation capabilities or via
ACPI _DSM function #5.  My preference would be to do this at the
lowest possible level of the PCI hierarchy.  IIRC, EA can do it for
individual BARs, and _DSM can be supplied for any individual device
(or bridge, but I'd prefer to do it on the device because that gives
us more information about exactly what needs to be preserved).

Of course, _DSM *can* be higher, e.g., at the host bridge, but then we
lose the information about what specifically must be immutable, and
that means the OS cannot ever move *anything*, even if it becomes
capable of moving things around to accommodate hot-added devices.

I'm not aware of anything in DT that would correspond to DSM #5, but
it could be added.

> Taking a step back I think (and I suspect we generally agree based on
> followup discussions I've seen) that the "right" thing to do is to have
> our default behaviour be:
> 
>    - Claim what the FW established if it's not obviously broken
> 
>    - Call pci_assign_unassigned_resources() to assign what the FW
> didn't assign
> 
> Which is more or less what powerpc and x86 do today, but using a
> different mechanism than what's in pci_bus_claim_resources() (they are
> similar to each other, I wrote the current powerpc one loosely based on
> the x86 one at the time). That leads to a side question (which we
> should probably discuss in a separate thread) of whether we want to
> consolidate all that.
> 
> That said, we also know this is going to break *some* existing
> platforms that have known broken FW assignment. The question is then
> can we sufficiently detect the breakage and re-assign in those cases
> (like x86 does fairly successfully in a number of cases), or do we need
> to add some board/platform quirks to force the full re-assigment on
> known broken platforms ?

I don't know how to parse this.  What does "known broken FW
assignment" mean?  Are you saying the assignment from FW *looks* valid
(all BARs contain valid addresses and are inside windows of upstream
bridges), but it doesn't work for some reason?  If that's the case,
how would full reassignment by Linux fix anything?  Linux has no idea
how to change a valid-looking assignment to make an actually-valid
assignment.

> Even if all arm64 platforms are found to be broken today, I would still
> like to have our default be to use the FW setup, if anything as an
> incentive for newer platforms to get it right. At the very least on
> ACPI.

I agree that Linux should not change anything unless it needs to.  Of
course, reasons it "needs to" might include allocating more space for
hot-added devices, either because Linux discovered an open slot or
because a user requested more space with a kernel parameter.

> We can use DSM#5 when it exists to force one way or another (ideally on
> a per bus basis but that's harder, so let's start with host bridges
> maybe ?)

I'd prefer starting with endpoints, but I think it will all work out
the same in the end.  When enumerating X, we look for a local _DSM #5
and mark X's BARs/windows accordingly and set a pdev->fixed_resources
bit.  If there's no local _DSM #5, act based on X's parent's
fixed_resources bit.

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
