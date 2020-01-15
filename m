Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6EA13C34F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 14:37:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQ2dm5qPxyCTkmLufzDZvE0qKIc6cQnnBRi0fHMZW9I=; b=mb00AJ1Vfo/P61
	qQCKSsZhRAMX+6rPMuF3vSZaxykRW6q6Ktp5y9uN0hDEOoXGIWALD9iubOGtqYz4WuEm544iagnDt
	ej0SpNrxFhuTXL9+5eZt9WBLAB1syJhzIMAiv2m7BSsT3wlx7uEBez4f/1d95pF/dAOaLrxqD2vv0
	KGT3M8CVjQe40hMbJrq9ErsJqjs8ekh8RVStqpapoZ75kolj3RH3qpQ/08O8xTPG18XqW6uIYghXK
	sTkQKiVyDNs7tWb64yg7Qcw0PwYJqMAxNBk1e1S5l1xJyMxi4E226qMHbxzD02mbPPy8CdffbIO7I
	M98rDYAv5VmnSL1y9rnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iriqy-0001XP-4A; Wed, 15 Jan 2020 13:37:00 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iriqj-0001X1-3Z
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 13:36:49 +0000
Received: by mail-wr1-x441.google.com with SMTP id d16so15767645wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 05:36:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5+kwC8uObQ/HWjxvZd0dHpS/CMRU4SiA0lJfkAcxrF0=;
 b=or7s/TkMbxvkDXyrwtgMcXEAx+AnmSMP2dgg0uinLijJnJojzAvwTogOc0qzxEIDof
 vVwaqGKQkBLPn7Lj2czx9EOfAqh7mPeaXhfCg2yOKAW001JDIqV9QNWhTrIqsdzbmUZA
 Pvv6jXjaMRZqvlIWTCKa7Q/w15eAWWSNMD1FhiFa/U+vDvjOdNjGmAtvMNDr0iDz2/ei
 GLaZ/PrjCFJ9TZwzJDQZyRXpLVAvJKOQ0321pHiZkUzSQZ/dG2Co8dvCFqkZ7aztlxfa
 8J1c5O43inL+WUBK+h3PurkAvHSuTmOIAnPG+N5s8QZVa3y1/x2nyaEdnxe1kHeBCB2W
 RthQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5+kwC8uObQ/HWjxvZd0dHpS/CMRU4SiA0lJfkAcxrF0=;
 b=A1ERIO9+eb2Zv5wS/OgeLlTvJM7dDCC2tj4pAgnkMicGvrLDbg1EbLksrvaavaqw4U
 /ekaqjVuSDtjiKRPUG7EVhBWR4dZ5umMt+H71ki9iF2cp2Iwfu9Cc+PtS9MuDd/b0PQ9
 lFqjBwjJQ70XAzKH6Fss2mBnVXdb3THPlDkQOU6yuCTS4OTh/kGGBM1GNQ15uPoaGXTf
 5XN/qULSruRgy+PINaXCBrN1Y+YwIKK4B70V0hySi31GaHtQRyqDPpfvLhOGSlTB+rvN
 Uiklpsc4g2a9Sty4+R/hRgeC0q2qdh3yYSHNJmrNQIZ/mqokNgBt/2lmCGSr1/WHXpzE
 zpGg==
X-Gm-Message-State: APjAAAV6ym7baihmrcEgWVcjyZE9D771D6b8WTaa17okJeKq3DH5vXSC
 owIkwffniY8ED+vy5C6mwvlTPeQLC4gf0h3Vm9F+mA==
X-Google-Smtp-Source: APXvYqy13bQpcmkOHfPGnW7xeouGxykwzLlxjVdyq09mz56MdK96iTmat5FtwTdTBZT6ihkG0hMxNFa2z4erVLL89ts=
X-Received: by 2002:adf:cf0a:: with SMTP id o10mr30195070wrj.325.1579095403586; 
 Wed, 15 Jan 2020 05:36:43 -0800 (PST)
MIME-Version: 1.0
References: <20200110122341.8445-1-broonie@kernel.org>
 <20200110122341.8445-3-broonie@kernel.org>
 <CAKv+Gu8He-SmqH3cTOCReOntFaOWvdKmEAfxxAy7QW6GzHd=Pg@mail.gmail.com>
 <20200115091615.GA21692@willie-the-truck>
 <20200115120703.GH3897@sirena.org.uk>
 <20200115124238.GF21692@willie-the-truck>
In-Reply-To: <20200115124238.GF21692@willie-the-truck>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 15 Jan 2020 14:36:32 +0100
Message-ID: <CAKv+Gu-eUkAtft9d+=zvnHiqQUBRGSJX9M03zF1i9Ms+oMstAA@mail.gmail.com>
Subject: Re: [PATCH v10 2/3] arm64: random: Add data to pool from setup_arch()
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_053645_154854_6CA49139 
X-CRM114-Status: GOOD (  34.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Jan 2020 at 13:42, Will Deacon <will@kernel.org> wrote:
>
> On Wed, Jan 15, 2020 at 12:07:03PM +0000, Mark Brown wrote:
> > On Wed, Jan 15, 2020 at 09:16:16AM +0000, Will Deacon wrote:
> > > On Wed, Jan 15, 2020 at 08:48:46AM +0100, Ard Biesheuvel wrote:
> >
> > > > > Note that we are only adding data here, it will be mixed into the pool
> > > > > but won't be credited as entropy. There are currently no suitable
> > > > > interfaces for that at present - extending the random code to provide
> >
> > > > This is slightly unfortunate, as this way, we lose the ability to use
> > > > random.trust_cpu=1 to get the entropy credited and initialize CRNG
> > > > early.
> >
> > Right.  OTOH that's a bit of a mess to do, I do have some
> > thoughts but it's a bit of a mess trying to do it tastefully,
> > especially when considering that you probably don't want an
> > interface that it's easy for something to misuse.  The effort
> > involved certainly seems large enough to handle separately.
>
> Maybe, but see below...
>
> > > Agreed. Do you think we should wait for that support before merging the
> > > series? Given that I don't know of any CPUs implementing this extension,
> > > we can probably afford not to rush this in.
> >
> > It's implemented in at least the fast models already, not checked
> > any of the other emulators, so there's some possibility of people
> > using it while developing other things and hopefully at least
> > some of the various CI systems will be including emulated
> > platforms with newer extensions in their coverage so might gain
> > some benefit from it.  Frankly the only reason I'm looking at
> > this at all is that I'd written patch 3 because I was getting fed
> > up with KASLR initialization being easily disabled when I was
> > trying to test E0PD on the models (especially before I added the
> > status print at boot to KASLR so this happened silently), having
> > this in mainline would've helped considerably when working on
> > that.
>
> I was thinking specifically about users on silicon rather than developers
> on simulators. (I could stick this on a branch for developers if necessary).
>
> > I don't see any downside to having the code in mainline as is,
> > even though it's not ideal it does make things better since if
> > for some reason anyone does end up running this code on a system
> > that has the feature they'll get at least some benefit from it
> > even if nothing else happens.  The bulk of the code isn't going
> > to change when the early init stuff gets improved and includes
> > tables like cpufeature.h that make it annoying to hold out of
> > tree, the bits that are going to change can just as well be
> > worked on incrementally as held out of tree entirely and having
> > the rest in means there's less friction doing that.
>
> The usual downside that comes from merging patches with promises of fixing
> them up later is that the motivating task gets marked as "done" somewhere,
> the developer gets given something else to do and the updates never
> materialise. That's not a dig at you; it's just the way these things tend
> to work (I've certainly been on both sides of that coin).
>
> If there was an urgency to this, I'd suggest merging a form of Richard's
> code, as it appears to solve the technical issue of credited entropy whilst
> leaving some room for subsequent cleanup. However, I think that makes it
> even less likely that anybody will come back to do the cleanup because the
> code will be perfectly functional, so I'd prefer to wait for a complete
> solution unless you think it's not achievable for 5.7.
>
> I'd also really like Ard's ack on anything relating to RNGs.
>

Patches #1 and #3 are fine with me, modulo the HWCAP bit which I don't
deeply care about.

But the way this patch works around our workaround for mismatched RNG
caps between cores doesn't make sense to me.
arch_get_random_seed_long() should just have some out of line __init
path that gets invoked only during early boot, exactly how we are
using it in patch #3 to seed KASLR, where we don't care about whether
or not other CPUs have the extension. (Note that rand_initialize() is
called very early, way before the point where we have to care about
being scheduled from a CPU with RNG to one without)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
