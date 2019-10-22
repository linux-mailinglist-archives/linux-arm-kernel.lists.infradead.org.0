Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16AF6E021E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 12:32:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hj6YKw8xzhvAiErlbjKK1zmbnOhMg9aN8hDvcUY6LUI=; b=eM99xooEI3nNfL
	9jfk+7QxisBlAFiNJ0SWpIoEUOx2tTIPHgeAQRR8BCf9BLi8bebCr6xohPip3TJU3q/RVjzWA32d/
	M4/aBcVkBuDDJp17Q69DNBtsO29KV3uIO/SUcaUiyEIS1GEaRFnxuuDBW8eKzRAx3EebOmioqSq7i
	k+rqTiBkDA7PpAH66374dEO7ppEFpKQEAfdZBlyyVo4PWn4dksiyz15EfR/yAYwTzA5CugUdyNDpZ
	Mj9iHdm42RDGFDmM2/B8paKInbpiWsopBHlWD53BdAXwfB6L3GAG6ci8M+BMU75S5geoYT9O+oxVz
	plbtE/qqV4vGS6JZjqmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMrSv-0000F4-7u; Tue, 22 Oct 2019 10:32:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMrSg-0000E7-Mq
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 10:32:24 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4BBB620B7C;
 Tue, 22 Oct 2019 10:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571740341;
 bh=BBu2NmvdVb1QtTKj1PLuJSKNxaY/KN55w4CVevFLVBo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KajojXmq4Opns6SbxaWXEo4/LI9mHBWmmp1W2aXPlozLc7kp6IXqE+gekpYO1rBBh
 Lo3B4lTD3EkEg/8b2eTtKD0FyYK4bfLHiO9C1j8sNAxnDv/1KbiBJsZSxivB9ZdJ8X
 RuK1hXqqdI+mNnwERHTL1PW0DZUUgSyTfsDLBJaY=
Date: Tue, 22 Oct 2019 11:32:13 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 04/12] arm64: docs: cpu-feature-registers: Document
 ID_AA64PFR1_EL1
Message-ID: <20191022103212.GA17035@willie-the-truck>
References: <1570733080-21015-1-git-send-email-Dave.Martin@arm.com>
 <1570733080-21015-5-git-send-email-Dave.Martin@arm.com>
 <87zhi7l8qz.fsf@linaro.org> <20191011145148.GK27757@arm.com>
 <20191021191818.GH4691@sirena.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021191818.GH4691@sirena.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_033222_765680_64D44066 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Suzuki Poulose <suzuki.poulose@arm.com>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, "H.J. Lu" <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Alex =?iso-8859-1?Q?Benn=E9e?= <alex.bennee@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 08:18:18PM +0100, Mark Brown wrote:
> On Fri, Oct 11, 2019 at 03:51:49PM +0100, Dave Martin wrote:
> > On Fri, Oct 11, 2019 at 02:19:48PM +0100, Alex Benn=E9e wrote:
> =

> > > > -  4) ID_AA64ISAR1_EL1 - Instruction set attribute register 1
> > > > +  5) ID_AA64ISAR1_EL1 - Instruction set attribute register 1
> =

> > > If I'm not mistaken .rst has support for auto-enumeration if the #
> > > character is used. That might reduce the pain of re-numbering in futu=
re.
> =

> > Ack, though it would be good to go one better and generate this document
> > from the cpufeature.c tables (or from some common source).  The numbers
> > are relatively easy to maintain -- remembering to update the document
> > at all seems the bigger maintenance headache right now.
> =

> I agree, it'd be better if the table were autogenerated.  Having tried
> doing the modification to # it does mean that the document looks a bit
> weird when viewing it as a text file in the kernel source which TBH is
> how I suspect a lot of people will view it so given the infrequency with
> which new registers are added I'm not sure it's worth it.
> =

> > I think this particular patch is superseded by similar fixes from other
> > people, just not in torvalds/master yet.
> =

> Nor in -next for the minute :/

Which patch is missing? The only other one on my radar is "docs/arm64:
cpu-feature-registers: Documents missing visible fields" which is currently
in -next as a8613e7070e7. "similar fixes from other people" isn't very
specific :(

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
