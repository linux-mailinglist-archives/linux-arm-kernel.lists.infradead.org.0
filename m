Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 002CD13C147
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 13:43:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=frTaFYwreVPEiu9+7wkIhIJnE9OiO9pJV+zaPoJa30E=; b=J3Hix2JCJOXhb4
	IDWh0+e+8GHxlrO78dAmD4Vgci6OYxDHN3NU6xrxTOIUc9LoeFg7VOxqcgqnE9TkreRWz6wpi121L
	ooZQr1wjpdOrxE0EHGKsGLYHUxDc6GHPrI2wza1CZ21wHfBEzEcBN7NOT6HIRmgP85K0Q5dWdfw0y
	ojj5CNEBR5IwgmJZZjkZI9s+KVGN4Ih16r4RSYsLEMQVkPHwCfIz78+zk5HxhJ/tZRPLgaJE/nwqP
	H9T6W9YiIYMGHMTrtnufH0n7SwbPZZGEq1qlsGHxVWG6DwE9anW2mhSw7tbCx6Cy0RTNNLoNcNlv6
	uwPEcgyk8pXngtLZniTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iri0j-0000CL-By; Wed, 15 Jan 2020 12:43:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iri0S-0000BE-Cm
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 12:42:50 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7AFC7222C3;
 Wed, 15 Jan 2020 12:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579092163;
 bh=uBGRF0TYhxvwUXps0aXHAPu9mIE+8IH4ee9mqCd13PU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eno9zDOhUgEnom7o2QlAAqQiqPoynPHba3Kcag9s5K6j7+wH5ElRKhrbNd+Qio0Jo
 TDi03XlRj2B1fRtRdvO51flObnBgWixrCVqHnk8hJWokECX2GOTiiXGthjKg39ssVy
 bgWANQBH/xocwEkF4KcKLaPq7jxiCca+YSugl5mI=
Date: Wed, 15 Jan 2020 12:42:39 +0000
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v10 2/3] arm64: random: Add data to pool from setup_arch()
Message-ID: <20200115124238.GF21692@willie-the-truck>
References: <20200110122341.8445-1-broonie@kernel.org>
 <20200110122341.8445-3-broonie@kernel.org>
 <CAKv+Gu8He-SmqH3cTOCReOntFaOWvdKmEAfxxAy7QW6GzHd=Pg@mail.gmail.com>
 <20200115091615.GA21692@willie-the-truck>
 <20200115120703.GH3897@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115120703.GH3897@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_044244_475952_087D9409 
X-CRM114-Status: GOOD (  28.40  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 12:07:03PM +0000, Mark Brown wrote:
> On Wed, Jan 15, 2020 at 09:16:16AM +0000, Will Deacon wrote:
> > On Wed, Jan 15, 2020 at 08:48:46AM +0100, Ard Biesheuvel wrote:
> 
> > > > Note that we are only adding data here, it will be mixed into the pool
> > > > but won't be credited as entropy. There are currently no suitable
> > > > interfaces for that at present - extending the random code to provide
> 
> > > This is slightly unfortunate, as this way, we lose the ability to use
> > > random.trust_cpu=1 to get the entropy credited and initialize CRNG
> > > early.
> 
> Right.  OTOH that's a bit of a mess to do, I do have some
> thoughts but it's a bit of a mess trying to do it tastefully,
> especially when considering that you probably don't want an
> interface that it's easy for something to misuse.  The effort
> involved certainly seems large enough to handle separately.

Maybe, but see below...

> > Agreed. Do you think we should wait for that support before merging the
> > series? Given that I don't know of any CPUs implementing this extension,
> > we can probably afford not to rush this in.
> 
> It's implemented in at least the fast models already, not checked
> any of the other emulators, so there's some possibility of people
> using it while developing other things and hopefully at least
> some of the various CI systems will be including emulated
> platforms with newer extensions in their coverage so might gain
> some benefit from it.  Frankly the only reason I'm looking at
> this at all is that I'd written patch 3 because I was getting fed
> up with KASLR initialization being easily disabled when I was
> trying to test E0PD on the models (especially before I added the
> status print at boot to KASLR so this happened silently), having
> this in mainline would've helped considerably when working on
> that.

I was thinking specifically about users on silicon rather than developers
on simulators. (I could stick this on a branch for developers if necessary).

> I don't see any downside to having the code in mainline as is,
> even though it's not ideal it does make things better since if
> for some reason anyone does end up running this code on a system
> that has the feature they'll get at least some benefit from it
> even if nothing else happens.  The bulk of the code isn't going
> to change when the early init stuff gets improved and includes
> tables like cpufeature.h that make it annoying to hold out of
> tree, the bits that are going to change can just as well be
> worked on incrementally as held out of tree entirely and having
> the rest in means there's less friction doing that.

The usual downside that comes from merging patches with promises of fixing
them up later is that the motivating task gets marked as "done" somewhere,
the developer gets given something else to do and the updates never
materialise. That's not a dig at you; it's just the way these things tend
to work (I've certainly been on both sides of that coin).

If there was an urgency to this, I'd suggest merging a form of Richard's
code, as it appears to solve the technical issue of credited entropy whilst
leaving some room for subsequent cleanup. However, I think that makes it
even less likely that anybody will come back to do the cleanup because the
code will be perfectly functional, so I'd prefer to wait for a complete
solution unless you think it's not achievable for 5.7.

I'd also really like Ard's ack on anything relating to RNGs.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
