Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8338712446A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:23:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bzc/Ct3PcXXIuGFYn3fEf5rEVqYEdaF2YVc+ky4uR2I=; b=ZNCqtLoXo2U4rN
	DItsb05oPQtwn/l3RoQ3afgL+gv+NvcjsaGweBBHLSDKqybG4ZU9Tk6+BzhXcxEf/Ms+WTwnd/+0V
	n3VaRGLS+Mm/u4AULXiulTYo8vIRpzsgbQhIhsZjPQ/mrqMWTKU4WZWaWy1qdWROon80ERlZVInb6
	4CHwlMCXG48sMXkjg2I7GZrZuGEmh4JoHXAukBNLl8mB2Ol/HC1jiluG399T2nXOgnoQP2rtzeAFG
	/CGbex59kvQD3iL2Az1HM2fCNEkXMXAs9jH76PwNnZz4x+1P5Uw3XbWfs+9Up1W4uF4tWHp6QS/T8
	Ty4VR16TFpEZ/jrKGQSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWUQ-0001y0-6y; Wed, 18 Dec 2019 10:23:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWT4-0000xl-TF
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:22:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8A5FC30E;
 Wed, 18 Dec 2019 02:22:07 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F01C93F6CF;
 Wed, 18 Dec 2019 02:22:05 -0800 (PST)
Date: Wed, 18 Dec 2019 10:22:03 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Jon Masters <jcm@jonmasters.org>
Subject: Re: [PATCH] pcie: Add quirk for the Arm Neoverse N1SDP platform
Message-ID: <20191218102203.4078b011@donnerap.cambridge.arm.com>
In-Reply-To: <dacfd8bf-0f68-f2af-9238-4b0fadfbdfe3@jonmasters.org>
References: <20191209160638.141431-1-andre.przywara@arm.com>
 <20191209162645.GA7489@willie-the-truck>
 <dacfd8bf-0f68-f2af-9238-4b0fadfbdfe3@jonmasters.org>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_022211_013678_C2DE4498 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Catalin Marinas <catalin.marinas@arm.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 17 Dec 2019 21:21:17 -0500
Jon Masters <jcm@jonmasters.org> wrote:

Hi Jon,

> On 12/9/19 11:26 AM, Will Deacon wrote:
> > On Mon, Dec 09, 2019 at 04:06:38PM +0000, Andre Przywara wrote:  
> >> From: Deepak Pandey <Deepak.Pandey@arm.com>
> >>
> >> The Arm N1SDP SoC suffers from some PCIe integration issues, most
> >> prominently config space accesses to not existing BDFs being answered
> >> with a bus abort, resulting in an SError.  
> > 
> > "Do as I say, not as I do"?  
> 
> In my former role I asked nicely that these patches not be posted 
> upstream, but I see that they ended up being posted anyway. Hacking up 
> upstream Linux to cover for the fact that a (reference) platform is 
> non-standard is not only not good form but it actively harms the community.

Please keep in mind that this platform was designed to be standards compliant, it is just due to an integration problem that this is not the case with this silicon. So we end up with the usual hardware errata, which the kernel can fix up. I agree it's not nice, and I also want it fixed in hardware, but I guess that's the usual software guy's pipe dream.

> You'll have people consume this platform and not realize that it's 
> broken, IP won't get fixed, and generally it'll be a mess.

I don't see how yet another ACPI quirk in the ACPI quirk framework(!) will make a mess.
Actually the rest of the system is standards compliant (it even uses ACPI from the very beginning ;-), so it's just this problem that prevents us from using the system in the proper, standards compliant way. Effectively we are back to the embedded times with compiling your own kernel and somehow getting a root filesystem on the hard drive.
If there would be mainline kernel support, all of this would go away and would could use standard distro installers (given they backport the patch).

> Yes, it's 
> unfortunate, but so was taping out that platform without working PCI. We 
> all know what should have happened, and what the right move ahead is.

That may come as a surprise to some, but Arm Ltd. is actually not really in the business of *producing silicon*, so a respin of the chip was and is not an option. I too wish it would be different, but that's how it is.

Cheers,
Andre.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
