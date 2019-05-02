Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B645E11ADA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 16:09:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lveOoVZPE3i4Bwszlyucl+Sk3IxgZ6licmKDwrS5liM=; b=UnsraJn0G0a81+
	q/G9zFC2HE7I9TudhkKVblNxYka5qdgmSxd7lcB9kf/86RcXhXkCkDrf2R053hPyZyC5UDXf39CHe
	ZmdDs2qKO/UU8DhAnut2L+l1eQ38bhdgwLMozuloULCXUgXZIs01pwJKYixOhk0aYQ+0erMVQxoev
	dgM9tdF41NsySGwOLRuY76dsIhh3cjMYjCQsHRM92aOFXarMg0CuV5ORpE3IBjUN2MC4naFeMK5/t
	Jsm/bKa7P8vyHiESTtWfzYLauORK/qDtUhwx8sKc78f38g/RJddVxiYV7ttdyprzvyCw/c0rLppX8
	Y5nt3tTGMr/imSrfpMmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMCOf-0007ZZ-UV; Thu, 02 May 2019 14:09:14 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMCOR-0007RG-Qy
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 14:09:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6D2F3374;
 Thu,  2 May 2019 07:08:57 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 07E833F220;
 Thu,  2 May 2019 07:08:55 -0700 (PDT)
Date: Thu, 2 May 2019 15:08:50 +0100
From: Will Deacon <will.deacon@arm.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v2] iommu/arm-smmu: Break insecure users by disabling
 bypass by default
Message-ID: <20190502140850.GA9500@fuggles.cambridge.arm.com>
References: <20190301192017.39770-1-dianders@chromium.org>
 <20190404145957.GA25912@fuggles.cambridge.arm.com>
 <4754bcf1-6423-f1fe-64d4-da4a35b164ad@free.fr>
 <20190424115231.GA14829@fuggles.cambridge.arm.com>
 <20190502105912.GA943@ulmo>
 <20190502110821.GD30966@fuggles.cambridge.arm.com>
 <20190502124525.GA3579@ulmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502124525.GA3579@ulmo>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_070859_886928_C069F086 
X-CRM114-Status: GOOD (  27.40  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Marc Gonzalez <marc.w.gonzalez@free.fr>, Joerg Roedel <joro@8bytes.org>,
 Douglas Anderson <dianders@chromium.org>, Jon Hunter <jonathanh@nvidia.com>,
 linux-tegra@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 02:45:25PM +0200, Thierry Reding wrote:
> On Thu, May 02, 2019 at 12:08:21PM +0100, Will Deacon wrote:
> > On Thu, May 02, 2019 at 12:59:12PM +0200, Thierry Reding wrote:
> > > This made it to linux-next yesterday (less than a week before the merge
> > > window opens) and deliberately breaks existing configurations. That's a
> > > little rude.
> > > 
> > > At least give people a fair heads-up and a chance to fix things before
> > > you start break things.
> > 
> > Sorry about the inconvenience here.
> > 
> > This patch has been floating around for a while (albeit not in -next, since
> > I send my stuff via Joerg)
> 
> You can't expect people to test random patches from the list if they're
> not on Cc. I don't think it's safe to claim that patches have been well
> tested until they've been in linux-next for at least a couple of days.

I didn't claim it had been well tested. I also don't think being in
linux-next implies a patch has been well tested, to be honest with you.
What I can say is that this has been discussed on the public mailing list
for some time, and the outcome of that discussion is this patch.

> >                            and is heading for 5.3, so you have ages to fix
> > up your config!
> 
> Last I checked, Joerg applied this for 5.2 because you sent it as part
> of your "Updates for 5.2" pull request.

Sorry, I meant 5.2: the kernel that will be released in ~2 months time,
during which you'll be able to fix issues like this one. If we're having
unresolvable issues late in the cycle, then we can clearly revert this
patch.

> >                 It would, of course, be better to configure the IOMMU to
> > provide mappings for your DMA peripherals, but the trivial config change
> > will be enough to keep things working. We won't remove that as long as
> > people are relying on it.
> 
> I don't think the Kconfig option is really useful. People nowadays want
> to run standard distribution kernels on their devices, and distribution
> maintainers will often rely on kernel developers' guidance on what good
> defaults are. This patch suggests that the default should be to disable
> bypass, so if this hits 5.2 final and distributions create their kernel
> packages, they're likely going to go with this default and potentially
> break things for many of their users.

I'd say that people nowadays also want security by default, so it's a tough
crowd to please. You can still fix your .dts (I see there's a patch from Jon
doing that), or pass "arm-smmu.disable_bypass=0" on the cmdline to fix
things if you're not in a position to change the .config for your kernel
image.

> Luckily this seems like it's fairly easy to fix, but given that we're
> past v5.1-rc6, fixes for this now need to get special treatment. That
> would've been okay if this was a pressing issues, but this is changing
> something that's worked this way for ages, so it's hardly urgent.

Why the special treatment? You can continue to merge fixes after the merge
window, no? I feel like I'm missing something in your workflow here.

> > I don't expect most people to run into problems with this change (the new
> > behaviour matches what SMMUv3 does already).
> 
> I see the ARM SMMU v2 used in quite a few DTS files. Not all of these
> may be problematic, but I'd be somewhat surprised if Tegra was the only
> one impacted.

I didn't say this was specific to Tegra, only that I don't expect most
people to see any issue. I'm sure there will be others, and we can fix
them up as they appear. I can't think of a better way of toggling the
default behaviour.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
