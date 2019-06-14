Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 887CA459B5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 11:58:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CpHj7KsG6zes2u+SLZxTikFfrpD7L8I68Fr1VajJ1YA=; b=mfZLjJkjONjccc
	bTomToO9Ldf0AnbkmiTbVf3LpXLKhjPsduwuzC2SEKTT+Wa7Dza6sFJadK2ju0mV2auTlTlUOspix
	e5U/oEsrvGAiCHSRKRBUgo+xXModFmMv33aGnXF3Ppf2wohwGM8Clc7cQYE/GQCjvD7IMtIE3b8mM
	b+fFnLy38qXZ2jcSxWDzgkXpAzbUQOM5bhS/GOaRjTGgbVCGJn9ydZFwridWhfnjdHKfpBxBqnZYm
	EiXR2iOcz7bM1taD0Ce+B0L0sR6MZLHy/6IiMG4lMnVzhZMIAjPxd0OZygL8mZrOUhLdjwRMmixwA
	+CI+kDGYjfxDvFFiJ4Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbiyC-0002uF-Dp; Fri, 14 Jun 2019 09:58:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbixy-0002th-9v
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 09:57:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 507BC2B;
 Fri, 14 Jun 2019 02:57:48 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3E46C3F718;
 Fri, 14 Jun 2019 02:59:31 -0700 (PDT)
Date: Fri, 14 Jun 2019 10:57:42 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [RFC PATCH v2] arm64: acpi/pci: invoke _DSM whether to preserve
 firmware PCI setup
Message-ID: <20190614095742.GA27188@e121166-lin.cambridge.arm.com>
References: <5783e36561bb77a1deb6ba67e5a9824488cc69c6.camel@kernel.crashing.org>
 <20190613190248.GH13533@google.com>
 <e6c7854ae360be513f6f43729ed6d4052e289376.camel@kernel.crashing.org>
 <CAKv+Gu95pQ7_OfLbEXHZ_bhYnqOgTBKCmTgqUY27un-Y708BgQ@mail.gmail.com>
 <d5d3e7b9553438482854c97e09543afb7de23eaa.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d5d3e7b9553438482854c97e09543afb7de23eaa.camel@kernel.crashing.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_025750_438731_49C8DBE2 
X-CRM114-Status: GOOD (  17.45  )
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
Cc: linux-pci <linux-pci@vger.kernel.org>, Sinan Kaya <okaya@kernel.org>,
 Bjorn Helgaas <helgaas@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 06:36:32PM +1000, Benjamin Herrenschmidt wrote:

[...]

> The biggest issue for me right now is that the spec says pretty much at
> _DSM #5 = 0 is equivalent to _DSM #5 absent, and Bjorn seems keen on
> having it this way, but for arm64, we specifically want to distinguish
> those 2 cases.
> 
> We want to honor _DSM #5 = 0, and at least initially, leave the rest
> alone.
> 
> Now, we *also* want to look at switching the rest to the "normal" (for
> ACPI platforms at least) mechanism of using what FW setup and fixing up
> if necessary, but that's not what the code does today, we know just
> switching to pci_bus_claim_resources() will break some platforms, and
> we need more testing and possibly quirks to get there, so it's material
> for a separate patch.
> 
> But in the meantime, I need to differenciate.
> 
> Also using "probe_only" for _DSM #5 = 0 isn't a good idea, at least as
> implemented today in the rest of the kernel, probe_only also means we
> shouldn't assign what was left unassigned. However _DSM #5 allows this.

I am not sure about this. PCI_PROBE_ONLY cannot stop an OS from
reassigning BARs that are clearly misconfigured, it does not make
any sense. It can't stop an OS from writing those BARs anyway,
since they must be sized, why firmware would prevent an OS from
reassigning BARs that are programmed with values that can be
deemed 100% bogus ? Or put it differently, why must an OS preserve
those values willy-nilly ?

For me, PCI_PROBE_ONLY and _DSM == 0 on a host bridge must be considered
equivalent.

I agree with Bjorn on his reading of _DSM #5 and I think that
the original patch that claims on _DSM #5 == 0 is a good
starting point. I would like to make it a default even without
_DSM #5 == 0 so that claim and reassign on claim failure works
irrespective of _DSM #5, it is now or never, I think we can give
it a shot, with an incremental patch.

Lorenzo

> So we'll need to find some more subtle way to convey these.
> 
> Bjorn: At this point, because of all the above, I'm keen on going back
> to my original patch (slightly modified Ard's patch), possibly
> rewording a thing or two and addressing Lorenzo comment.
> 
> We can look at a better and more generic implementation of _DSM #5
> including for child nodes after I have consolidated more of the
> resource management code.
> 
> Looking at the spec (and followup discussions for specs updates), I'm
> quite keen on treating _DSM #5 = 1 as "wipe out the resource for that
> endpoint/bridge and realloc something better. There are reasons for
> that, but we can probably discuss that later.
> 
> Cheers,
> Ben.
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
