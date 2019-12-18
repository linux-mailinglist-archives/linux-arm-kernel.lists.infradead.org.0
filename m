Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C12161248C3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 14:53:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kGo0ZS7ZgnLwAotxeR/S9My3kZCIYuzEW3szPC40I3c=; b=nULQ3SPc4AYGtXooFQyHMCchi
	Dol1dUAQWBtuCjT1yIgHl2tlzOKNTGbTERnSdoabmnzvz0ibY4J0VDMUm0NvBciIKI2/6AN4VoMPU
	9Uf5l1kmDlqSwCKHaVW/rz4lZ5k74RLYQbXZN1TdMFN8xMIWJY7Y6R1hdhuRzKGZUET0agj1Pyl3j
	KHxJPUoPq2tFkMzqDE4B3hYJ7M2z+zYy0XpGkT7klDAQ6kfU0BXL1FRX2An15cYQhd6f1QU4g0V2/
	Xmyimz9HIP+YU3q4l4vo+gBEFUyWD1VxQQxwOY/lsycwr0SV/BGkhDC4VHktrGCk9GzYLWxYXkJSJ
	+PjTPDf3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihZlS-0004xP-Jy; Wed, 18 Dec 2019 13:53:22 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihZlG-0004wb-JD
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 13:53:12 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ihZl9-0001g7-Pf; Wed, 18 Dec 2019 14:53:03 +0100
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH] pcie: Add quirk for the Arm Neoverse N1SDP platform
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 18 Dec 2019 13:53:02 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191218102203.4078b011@donnerap.cambridge.arm.com>
References: <20191209160638.141431-1-andre.przywara@arm.com>
 <20191209162645.GA7489@willie-the-truck>
 <dacfd8bf-0f68-f2af-9238-4b0fadfbdfe3@jonmasters.org>
 <20191218102203.4078b011@donnerap.cambridge.arm.com>
Message-ID: <68c0c1e31ce72ab26eab7f1b077a302c@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: andre.przywara@arm.com, jcm@jonmasters.org,
 lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-pci@vger.kernel.org, bhelgaas@google.com, andrew.murray@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org, lenb@kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_055310_779145_4856EE59 
X-CRM114-Status: GOOD (  20.76  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jon Masters <jcm@jonmasters.org>, Catalin Marinas <catalin.marinas@arm.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-18 10:22, Andre Przywara wrote:
> On Tue, 17 Dec 2019 21:21:17 -0500
> Jon Masters <jcm@jonmasters.org> wrote:
>
> Hi Jon,
>
>> On 12/9/19 11:26 AM, Will Deacon wrote:
>> > On Mon, Dec 09, 2019 at 04:06:38PM +0000, Andre Przywara wrote:
>> >> From: Deepak Pandey <Deepak.Pandey@arm.com>
>> >>
>> >> The Arm N1SDP SoC suffers from some PCIe integration issues, most
>> >> prominently config space accesses to not existing BDFs being 
>> answered
>> >> with a bus abort, resulting in an SError.
>> >
>> > "Do as I say, not as I do"?
>>
>> In my former role I asked nicely that these patches not be posted
>> upstream, but I see that they ended up being posted anyway. Hacking 
>> up
>> upstream Linux to cover for the fact that a (reference) platform is
>> non-standard is not only not good form but it actively harms the 
>> community.
>
> Please keep in mind that this platform was designed to be standards
> compliant, it is just due to an integration problem that this is not
> the case with this silicon. So we end up with the usual hardware
> errata, which the kernel can fix up. I agree it's not nice, and I 
> also
> want it fixed in hardware, but I guess that's the usual software 
> guy's
> pipe dream.
>
>> You'll have people consume this platform and not realize that it's
>> broken, IP won't get fixed, and generally it'll be a mess.
>
> I don't see how yet another ACPI quirk in the ACPI quirk framework(!)
> will make a mess.
> Actually the rest of the system is standards compliant (it even uses
> ACPI from the very beginning ;-), so it's just this problem that
> prevents us from using the system in the proper, standards compliant
> way. Effectively we are back to the embedded times with compiling 
> your
> own kernel and somehow getting a root filesystem on the hard drive.
> If there would be mainline kernel support, all of this would go away
> and would could use standard distro installers (given they backport
> the patch).
>
>> Yes, it's
>> unfortunate, but so was taping out that platform without working 
>> PCI. We
>> all know what should have happened, and what the right move ahead 
>> is.
>
> That may come as a surprise to some, but Arm Ltd. is actually not
> really in the business of *producing silicon*, so a respin of the 
> chip
> was and is not an option. I too wish it would be different, but 
> that's
> how it is.

In all honesty, I really wonder why we are even having this discussion:

- The HW is unavailable to the mere mortal. And even most superheroes
   cannot get their hands on it

- Even with this terrible son of a hack, essential PCIe features cannot
   work (and yes, I do consider SR-IOV as an essential feature)

- If we take this hack and somehow get this thing to run with mainline,
   we will never be able to say "no" to this kind of unfinished,
   *prototype* implementations ever again

To sum it up: a hack that doesn't really work for a prototype that you
can't really buy? Why should we even care?

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
