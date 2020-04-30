Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8697E1BF44C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 11:39:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=udsz5AcZDp8v/czisP/qjKLEyB/Q2JdhWWRNYRBnZDo=; b=gbsqbVjEbSGJnkIH9yduu7cE5
	T9WuUCRqlNd5bq7hybz8ZHKNeWnO2kd8drKUNnvAM80CA5EzOAN+TX//VhHqWTmFyyx080hv1TsJT
	xrAON103/4GMZnAg9jA6AiZephe3ca1cs6/ApjiNAt7cxLHMZ5YQM8Pe38M8mHXnffOHviBk/jiw9
	M1GWGPh2WQN/Zcnwz0+zWuPNQ6uyATjMGQH1IoJe8IOEZkLFKVMG3j8ZcHUSSPBVrfxOlCUEXfJDc
	LDgjvS4PzlTOT/jeI1VcNYTNOfocUNsLfp2ewku7Fy1GbmABaZgCzrHJyM5Z1Dtfp7OgiQDKrXDG2
	rV9pXGflQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU5fO-00033t-9L; Thu, 30 Apr 2020 09:39:38 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU5fG-00033J-4H
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 09:39:31 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 49CVhL1mfPz9sPF;
 Thu, 30 Apr 2020 19:39:14 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1588239567;
 bh=+q3qK7ThA6S0SUMv93CvqoJgpSGdg5tNFF2TPvf35hI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=nQOE4vPYnSb9Gz4jmhcJfj+a1yh87FOuKiuzmd4oxYn5IhsI/Dnpwzmq52qQW0pQf
 M0tApzyZI9uxTdAiPF4s0Nkcmvsx1nkje8SKC9VWyRlEJIRIX73CXIJEF4ai+ol2DI
 zjGTMwOLdpx2CnZhmjov0yXsGp5XA5MkdfXI+vDu21NiH3qaAKsho+OsYLhyDQuPyb
 oOyc6EHycC/flK5ft9w6rIq/dmjl65Ag+k1HTd5JfXzHzqtobx0BmmMKwqCk3977qq
 93M3QGH4Y94A9KzFtlczuY8Tg4jfonKEvSz3r0vaMgH4N7dojOCJC3EIRX7AZLVqeW
 5SR7cffZTwIrQ==
Date: Thu, 30 Apr 2020 19:39:10 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: kvm: fix gcc-10 shift warning
Message-ID: <20200430193910.294842c4@canb.auug.org.au>
In-Reply-To: <20200430082927.GA18615@willie-the-truck>
References: <20200429185657.4085975-1-arnd@arndb.de>
 <20200430090251.715f6bf0@why>
 <20200430082927.GA18615@willie-the-truck>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_023930_371093_95F4DA5D 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rich Felker <dalias@libc.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>, Paul Mackerras <paulus@samba.org>,
 kvmarm@lists.cs.columbia.edu, Jonas Bonn <jonas@southpole.se>,
 Brian Cain <bcain@codeaurora.org>, Marc Zyngier <maz@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Mike Rapoport <rppt@linux.ibm.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Fenghua Yu <fenghua.yu@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 Stafford Horne <shorne@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Tony Luck <tony.luck@intel.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: multipart/mixed; boundary="===============2313386473431203658=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============2313386473431203658==
Content-Type: multipart/signed; boundary="Sig_/xzv.XEbMG=15e_LStDYa1s9";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/xzv.XEbMG=15e_LStDYa1s9
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Will,

On Thu, 30 Apr 2020 09:29:28 +0100 Will Deacon <will@kernel.org> wrote:
>
> On Thu, Apr 30, 2020 at 09:02:51AM +0100, Marc Zyngier wrote:
> > On Wed, 29 Apr 2020 20:56:20 +0200
> > Arnd Bergmann <arnd@arndb.de> wrote:
> >  =20
> > > Fixes: 22998131ab33 ("arm64: add support for folded p4d page tables")
>=20
> Happy to queue via arm64 for 5.8. Does that work for you, Arnd, or were y=
ou
> planning to get this in sooner than that?

The commit that this fixes is in Andrew's patch series in linux-next,
so it should just go in there.

--=20
Cheers,
Stephen Rothwell

--Sig_/xzv.XEbMG=15e_LStDYa1s9
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl6qnL4ACgkQAVBC80lX
0GzToAf/bXREqbiltcjG5hxNdpU1I4moIKv6bFtCjrnCW5muA2pCR3xx5Twzm5UG
Mw36RWbLqcQwOOcH9RtlCFe0zq1DEgPvShaF1lTh8n5dybdjKbCzSFsP6uoSZ/1i
rcT/rZ1GC/9zCOvI8MUYb748fIMdC5zeZOGpTPzYL8HPV4+65nY3+OMT8+0IS2JS
kJACY35PygG1QnWjF7JmwfBnAGe3M3jJ2OJe1IiF8lR6max8qziACp5cGHxAMq3B
d+XyW62Jfft6iGyz4+RAslfELwJXtLqgnJPy3NoJDy3eSghTCCh43mjuRctsVctk
7aYaVXRjxdDyfLBn013vvyPbIibusQ==
=6Ce6
-----END PGP SIGNATURE-----

--Sig_/xzv.XEbMG=15e_LStDYa1s9--


--===============2313386473431203658==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2313386473431203658==--

