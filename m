Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 434DD1EF88B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:03:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iv/mh9zK2aQD4beVL78Ytsl8mZxq55o8EP0M2n5I47o=; b=M8IyP6CBIjq8ms
	rblvhm/xeYqz2nn0HOYo0t+ew4X+WUmb4QKz0UXeg+qXO4ouljzMzM18a7qjRk8mD2lhkI5B6AZdI
	APCS0IQ5sjs26+Hln8U9CCGztPurSIhH1gUpLakI9vqxobHwCydOdP/cAllwnYnwZNCPUmRx2zePz
	tZs9xREB4z6XucWBEvRs58HMhv2JX5Hyw2b7jFN3O2aSOVYXaJJXpQ0Y3IRuJtTZMDkPI9aOJX4S1
	SmIO/2CXRXUzu3YINpO/mY1UaXhrrnThya1nqKXX7vsGUMV02n7+zTrcvxzgGAZi8eqvG3Mjy0NJb
	1mES7ADzQs3znG52Optg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhC05-0007dx-BU; Fri, 05 Jun 2020 13:03:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhBzt-0007dT-SJ
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 13:02:59 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E06C7206E6;
 Fri,  5 Jun 2020 13:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591362176;
 bh=d0mqLPHPl/CqHHShruLRsKnlEALjzbCX18cP7dI7Fh0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H/wa6rV0nVAMHYHAuwT9zPOguWfWfOHUqT3NVLiBof0soVEOF8iUSKnOlCJ7+2sdI
 0JD4UpLS4xISC2hR9HIiK1GB/KljNK5vyAHx0Cepj2gWFY07W1IRC8lbrqoqRkkdbQ
 LBWcEfN60vw+yF7PvASuA23oSrhlDcqUvdwNPR/E=
Date: Fri, 5 Jun 2020 14:02:52 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: Please help to confirm the risk if using TPIDRRO_EL0 to save CPU
 number, thanks.
Message-ID: <20200605130251.GB20441@willie-the-truck>
References: <1D289F1E6D91D2489524BBB0B8880A7DA1A39219@dggeml509-mbx.china.huawei.com>
 <20200601070311.GA8601@willie-the-truck>
 <20200605121029.GE5413@sirena.org.uk>
 <20200605123302.GA19936@willie-the-truck>
 <a46ddb53-2226-c9c3-bf3f-0fcc5d924b1e@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a46ddb53-2226-c9c3-bf3f-0fcc5d924b1e@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_060257_955003_EDD159D9 
X-CRM114-Status: GOOD (  25.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "fujun \(F\)" <oliver.fu@hisilicon.com>, Mark Brown <broonie@kernel.org>,
 Wuxuecheng <wuxuecheng@hisilicon.com>, "Lixin \(Victor,
 Kirin\)" <victor.lixin@hisilicon.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 05, 2020 at 01:58:39PM +0100, Robin Murphy wrote:
> On 2020-06-05 13:33, Will Deacon wrote:
> > On Fri, Jun 05, 2020 at 01:10:29PM +0100, Mark Brown wrote:
> > > On Mon, Jun 01, 2020 at 08:03:12AM +0100, Will Deacon wrote:
> > > > On Fri, May 29, 2020 at 09:03:37AM +0000, Lixin (Victor, Kirin) wro=
te:
> > > =

> > > > >     Intel optimized getcpu syscall on Linux/Android system by usi=
ng vDSO, but
> > > > >     ARM doesn't do any optimizations for getcpu syscall.
> > > =

> > > > >     In Apple open source, TPIDRRO_EL0/TPIDRURO is used to save th=
e CPU number,
> > > > >     [1]https://opensource.apple.com/source/xnu/xnu-4570.1.46/osfm=
k/arm/cswitch.s.auto.html
> > > =

> > > > >     =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0Is there any risk if using T=
PIDRRO_EL0/TPIDRURO to implement
> > > > >     the vDSO for getcpu? Is there any possible to break any ARM A=
BI? Can you
> > > > >     help us to confirm the considerations?
> > > =

> > > > Do you have a use-case for high-performance getcpu() that isn't bet=
ter
> > > > suited to rseq()?
> > > =

> > > I actually have an implementation of this that I'd been waiting for t=
he
> > > end of the merge window to post, largely because I first heard of the
> > > use of restartable sequences for this after I'd already implemented t=
he
> > > vDSO version - this stuff is not as discoverable as one might desire.
> > > It doesn't store the CPU ID directly in TPIDRRO but rather uses TPIDD=
RRO
> > > to store the offset of a per-CPU struct in the vDSO data in order to
> > > allow for the addition of further data in the future.  I'll post it
> > > today for discussion.
> > > =

> > > The latest version of the Mathieu's glibc integration patches is:
> > > =

> > >      https://lore.kernel.org/lkml/20200527185130.5604-3-mathieu.desno=
yers@efficios.com/
> > > =

> > > The only things I can see where the vDSO does better are support for =
the
> > > node parameter of getcpu() and the ease of implementation for the use=
rs,
> > > the restartable sequences code was merged all the way back in v4.18 a=
nd
> > > it's still not used by any of the libcs as far as I can see.  The node
> > > to CPU mapping is static so I'm not sure how exciting that is, it cou=
ld
> > > be looked up separately when processing data if it's important, but t=
he
> > > ease of use feels like something.
> > > =

> > > One important caveat with using TPIDRRO is that if KPTI is active then
> > > the KPTI trampoline uses TPIDRRO as a scratch register so unless we c=
an
> > > find another register for scratch usage the user would need to give up
> > > the protections offered by KPTI or run on future hardware which can u=
se
> > > E0PD instead.  This severely limits the usefulness on current systems.
> > =

> > We only trash TPIDRRO on entry, so I think you could repopulate it on e=
very
> > exception from userspace and it *should* work with KPTI (famous last wo=
rds!)
> =

> Is that not already the case given that we keep TLS gubbins in there for
> compat tasks?

No; we only trash TPIDRRO for 64-bit tasks. 32-bit tasks have loads of
free registers :D

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
