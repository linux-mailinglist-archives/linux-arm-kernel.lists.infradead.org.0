Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC1F14B3DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 12:58:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EkCCtW4DKboHDSZil8HLw3sJLNh6cln6zpBeTLksD6A=; b=kF0fMQ8yvkC/jQy5pr5gSqtIS
	QtUQXJTqNdbxtbUhhDWDvR/6RVIkMxfNBF6wslmh1thU9xXJVcctv7JLV+I3czb2MZ58HPIfw+ZK5
	FiSl4Ex9QRrxguWV973t6MbdsOeO5tmfe3vnOXlRsvXrzL2OmH2QQwu8HEdt9rmG8rzjAmB4qbthH
	r/Iq5D5vf+IMlXv/E+ci5FhGAT4ed4d9tOUkg8KTYeubHMbW9LzLvsdIP8p7arr5Wn/otWJ2N9AJ2
	SR1XOb0JAwgthzygdcJUQXlmP/Hqv9uOFw58ENcL6azhmoqtwqvmeIqNjy7ajwBuc1O7Ldri8ln6J
	7j/pDBuRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwPVm-0004YL-NB; Tue, 28 Jan 2020 11:58:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwPVb-0004XO-K7; Tue, 28 Jan 2020 11:58:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5AC31101E;
 Tue, 28 Jan 2020 03:58:18 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D65B03F52E;
 Tue, 28 Jan 2020 03:58:17 -0800 (PST)
Date: Tue, 28 Jan 2020 11:58:16 +0000
From: Mark Brown <broonie@kernel.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH V12] mm/debug: Add tests validating architecture page
 table helpers
Message-ID: <20200128115816.GA4689@sirena.org.uk>
References: <a7ba6d8a-6443-5994-6a34-2824aa9b054b@c-s.fr>
 <144F3894-7934-4EC7-A9F9-C6A84CA08C65@lca.pw>
MIME-Version: 1.0
In-Reply-To: <144F3894-7934-4EC7-A9F9-C6A84CA08C65@lca.pw>
X-Cookie: Doing gets it done.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_035819_749295_9D54138E 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Ingo Molnar <mingo@kernel.org>, Kees Cook <keescook@chromium.org>,
 Anshuman Khandual <Anshuman.Khandual@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Hansen <dave.hansen@intel.com>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============6062121306970978950=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6062121306970978950==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5mCyUwZo2JvN/JJP"
Content-Disposition: inline


--5mCyUwZo2JvN/JJP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 28, 2020 at 02:12:56AM -0500, Qian Cai wrote:
> > On Jan 28, 2020, at 1:13 AM, Christophe Leroy <christophe.leroy@c-s.fr> wrote:

> > ppc32 an indecent / legacy platform ? Are you kidying ?

> > Powerquicc II PRO for instance is fully supported by the
> > manufacturer and widely used in many small networking devices.

> Of course I forgot about embedded devices. The problem is that how
> many developers are actually going to run this debug option on
> embedded devices?

Much fewer if the code isn't upstream than if it is.  This isn't
something that every developer is going to enable all the time but that
doesn't mean it's not useful, it's more for people doing work on the
architectures or on memory management (or who suspect they're running
into a relevant problem), and I'm sure some of the automated testing
people will enable it.  The more barriers there are in place to getting
the testsuite up and running the less likely it is that any of these
groups will run it regularly.

--5mCyUwZo2JvN/JJP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4wIdcACgkQJNaLcl1U
h9Dslgf+KrZOvdjyO1AcLfLIlE2wA+hRmygG3Gh1YQ9wI6n+03XnA4v7f+7zZaQd
9nylNBzkErkupokycsWYhTEFN7o/tfjVGWte16XdQ1QHQE7npjULPGC5NcVVPfyc
qwaW2i5J5TeAuYArz3YCqLvUY6IAJefbxhZbLXTTBnwINIazuBDiAUzsAd/Uy27Y
x0YHtX4gXucyNEepoozxS07544hKbMvjTO0tt7P8egTTGwNHz+Uz6sMfUA/Muri7
hIJbxM03+cRn9ZKlTca/PzsXJN87ZLvWwcB0TGz+xI3Bjx2D2Q7Dn+OROr2O8e0z
WXNLV2W9WAaBOwArY4IHdeORokpCzg==
=j0+e
-----END PGP SIGNATURE-----

--5mCyUwZo2JvN/JJP--


--===============6062121306970978950==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6062121306970978950==--

