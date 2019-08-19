Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC33792771
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 16:48:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BEszrB17Z03ZQawGkpx08Y7X6zBQiwPJDgXNctqMRrU=; b=bQfRZ1Qu2O578E
	EFq7/RzjFyARDUFTvplD4X5MyDnl8pAUZKgvkhAm1D6TRUuEU/wKej2w9ZZmJyLMpFFSz09k5BDUN
	Q5HItuGzs7hbff55Mfv5qUyvR8786NhkNgc7+LUHgSisNJHyd8VAMCdsHy53uY2P4dbj+ns3sFLur
	0PxuUzgYtB8G8cM9t3xFWrdOfETGzd4u3/5eYnHbpw23U09Xni/CSrin6SA7KdVy+SJw8XDU8V8r1
	Yxf/Uf2W6579aeHBDsOygdzKzyRaRqVUfkzCDO8UGNlFURwHexEAUfNr1wc+njPogeyDYM3kWM+md
	dRRrGDJgvW8eoKOLeVlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzixc-0001AF-N7; Mon, 19 Aug 2019 14:48:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzixU-00019t-J6
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 14:48:34 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 90FA52082C;
 Mon, 19 Aug 2019 14:48:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566226112;
 bh=AJssQANAaZSrd29LdE+ZV+BEHhmuxOo6gwBgK1ARbbo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cR1JmbRqAmrZwjZvqaFV+ZtTB5VeqjGK0KcRiDhcC/F604bsqM7LtfJnIC3UNTwPq
 CprWag4+nZblwJa1c+lOtZSAgRJYgqyycyvXDe7G29meTZMgIRM/FNqUNZhAJpwmgq
 IHGXLsUzpZwzmxkPOVNsufP6vRkzNV2Z2RTFAfR4=
Date: Mon, 19 Aug 2019 15:48:27 +0100
From: Will Deacon <will@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v2] iommu/arm-smmu: Break insecure users by disabling
 bypass by default
Message-ID: <20190819144827.6h4hm2gytogwepi7@willie-the-truck>
References: <20190404145957.GA25912@fuggles.cambridge.arm.com>
 <4754bcf1-6423-f1fe-64d4-da4a35b164ad@free.fr>
 <20190424115231.GA14829@fuggles.cambridge.arm.com>
 <20190502105912.GA943@ulmo>
 <20190502110821.GD30966@fuggles.cambridge.arm.com>
 <20190502124525.GA3579@ulmo>
 <94cf6d56-5dcb-051a-06da-5edfacde1655@arm.com>
 <20190819112856.GA28102@ulmo>
 <20190819120917.hysyc6l3ckkwcx25@willie-the-truck>
 <20190819133327.GA23089@ulmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819133327.GA23089@ulmo>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_074832_675700_59A48D78 
X-CRM114-Status: GOOD (  31.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marc Gonzalez <marc.w.gonzalez@free.fr>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, Douglas Anderson <dianders@chromium.org>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 03:33:27PM +0200, Thierry Reding wrote:
> On Mon, Aug 19, 2019 at 01:09:18PM +0100, Will Deacon wrote:
> > On Mon, Aug 19, 2019 at 01:28:56PM +0200, Thierry Reding wrote:
> > > Perhaps an alternative would be to add a property to the SMMU node that
> > > lists a set of stream IDs for which to enable bypass by default. We
> > > could let the firmware set that when the display hardware has been set
> > > up. That way when the kernel boots we can keep scanning from the
> > > reserved memory and the ARM SMMU driver would not disable bypass for the
> > > display hardware. Only when the display hardware is actually attached to
> > > the IOMMU domain, and the 1:1 mappings have been created would bypass be
> > > disabled, and at that point there should be no SMMU faults anymore, so
> > > we have cleanly transitioned to the kernel.
> > > 
> > > Any thoughts?
> > 
> > There is currently an extension to IORT under discussion which should
> > address this problem, so it would make a lot of sense for the DT solution
> > to follow the same approach. I think it will end up being along the lines
> > that you suggest, although we won't just enable bypass because that leaves
> > memory wide open if the device driver doesn't probe and it also creates
> > an issue because device attach typically happens before the endpoint
> > driver has probed.
> > 
> > So the flow would look something like:
> > 
> > 	- Firmware describes a physical region of memory which must be
> > 	  reserved by the OS.
> > 
> > 	- Additionally, firmware describes a master -> reserved memory
> > 	  linkage as part of the IOMMU description.
> > 
> > 	- When the IOMMU probes, these reserved memory regions will be
> > 	  mapped 1:1 for the relevant master.
> > 
> > This is similar to RMRR on x86, except that the mappings are intended to
> > be less rigid and can be torn down if the endpoint driver decides to do
> > that or for things like device passthrough.
> > 
> > If we get that working, we should update our booting.txt so that DMA is
> > allowed during boot in the limited cases which this covers.
> 
> that sounds very interesting. Is this extension being publicly
> discussed? If so, do you have any pointers for me to read up on this?

Sorry, I don't think it's public :(

> As for device tree, I wonder if perhaps we can achieve this without going
> through extra properties. We could, for example, just do a "reverse
> lookup" of IOMMU masters by walking the device tree and looking for nodes
> that link to an ARM SMMU in their iommus property. Granted, that's not
> going to be very efficient, but it would remove the need to duplicate
> information in DT. It's also going to be a one-time cost, so perhaps it
> would be negligible.

If we can get by with extending the iommu-map entries for the masters,
that would certainly be the neatest imo. Sounds like it's worth a quick
hack, if nothing else.

> I'm happy to help out with hashing out or implementing something on the
> DT side of things. I don't currently have access to any systems with
> ACPI, but I've got a bunch of systems that are DT based and that I would
> like to see this implemented on.

Oh, I'm certainly not saying we should hold the DT changes until the ACPI
side is sorted out, just that we should avoid divergence where we can.
Hopefully my explanation above should be sufficient for that. If you hack
something up that works for DT, I'd be happy to review it.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
