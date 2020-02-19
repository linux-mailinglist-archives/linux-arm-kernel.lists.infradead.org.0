Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BE3164541
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 14:24:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ATOdSczEbkfElQXu4rjE/UtyFd4+ZMliSi4NVRSm19w=; b=hwiVfuGETN7xrm
	njb945SZKwd2SFkWkBvNcMBuVg3MXKJYnmrhn5qzgcrvMo1P2lwRJBmlmRd81ip2V26XRHpnNM7mA
	Z7PfRiBsyH6dgjBChQyO5lrhkS8QEQk7ixFDuTqdIMfM3mzOIINqBEx92qbPu5kNVnP/N7RXyOvMF
	nwO3KhRndGQtzBCQ/MlbDbakqFxhuSD5dd6NHinE+AtQSK9naB1ETjTA+14MUlf1FBxXSRlVAH9XM
	pv6dPRrpuiCt2jfm0srIgAuZvZ6tPSjtTN+JlsdBt5I5Q5+OA2xdwa7MxTbY/OzIiql45eNUL1DuU
	mZSNgBbqaKiB/AEymGEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4PLQ-0002NZ-W2; Wed, 19 Feb 2020 13:24:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4PLF-0002N6-Uf
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 13:24:43 +0000
Received: from hump (unknown [147.67.241.226])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 02D8B24654;
 Wed, 19 Feb 2020 13:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582118681;
 bh=WeK8iDiz+u7KGQl8xdyYvIuPvj8pRW13k3gZGmGmUOU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CrDKTg0KsoKO1U07yyagx89/mJ6hieOjLuM/lo6w3mB9Y9R+aQAidXZSv/ywuM3au
 r4bYkFE2ZGGFM/SSIBeOb3LJun+6yquvbVIUq2PH+U+U65CCtHToRoSUxXZ4LnlfNf
 XO/4CZv966+4qxBk+L+tbRqcMNDfbzR2x3+83oH0=
Date: Wed, 19 Feb 2020 14:24:20 +0100
From: Mike Rapoport <rppt@kernel.org>
To: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: Re: [PATCH v2 07/13] powerpc: add support for folded p4d page tables
Message-ID: <20200219132420.GA5559@hump>
References: <20200216081843.28670-1-rppt@kernel.org>
 <20200216081843.28670-8-rppt@kernel.org>
 <5b7c3929-5833-8ceb-85c8-a8e92e6a138e@c-s.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5b7c3929-5833-8ceb-85c8-a8e92e6a138e@c-s.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_052442_037963_7694620E 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -3.7 (---)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [147.67.241.226 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-sh@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, linux-hexagon@vger.kernel.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Jonas Bonn <jonas@southpole.se>, linux-arch@vger.kernel.org,
 Brian Cain <bcain@codeaurora.org>, Marc Zyngier <maz@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 uclinux-h8-devel@lists.sourceforge.jp, Fenghua Yu <fenghua.yu@intel.com>,
 Arnd Bergmann <arnd@arndb.de>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 openrisc@lists.librecores.org, Stafford Horne <shorne@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Tony Luck <tony.luck@intel.com>, Yoshinori Sato <ysato@users.sourceforge.jp>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Michael Ellerman <mpe@ellerman.id.au>, nios2-dev@lists.rocketboards.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 01:07:55PM +0100, Christophe Leroy wrote:
> =

> Le 16/02/2020 =E0 09:18, Mike Rapoport a =E9crit=A0:
> > diff --git a/arch/powerpc/mm/ptdump/ptdump.c b/arch/powerpc/mm/ptdump/p=
tdump.c
> > index 206156255247..7bd4b81d5b5d 100644
> > --- a/arch/powerpc/mm/ptdump/ptdump.c
> > +++ b/arch/powerpc/mm/ptdump/ptdump.c
> > @@ -277,9 +277,9 @@ static void walk_pmd(struct pg_state *st, pud_t *pu=
d, unsigned long start)
> >   	}
> >   }
> > -static void walk_pud(struct pg_state *st, pgd_t *pgd, unsigned long st=
art)
> > +static void walk_pud(struct pg_state *st, p4d_t *p4d, unsigned long st=
art)
> >   {
> > -	pud_t *pud =3D pud_offset(pgd, 0);
> > +	pud_t *pud =3D pud_offset(p4d, 0);
> >   	unsigned long addr;
> >   	unsigned int i;
> > @@ -293,6 +293,22 @@ static void walk_pud(struct pg_state *st, pgd_t *p=
gd, unsigned long start)
> >   	}
> >   }
> > +static void walk_p4d(struct pg_state *st, pgd_t *pgd, unsigned long st=
art)
> > +{
> > +	p4d_t *p4d =3D p4d_offset(pgd, 0);
> > +	unsigned long addr;
> > +	unsigned int i;
> > +
> > +	for (i =3D 0; i < PTRS_PER_P4D; i++, p4d++) {
> > +		addr =3D start + i * P4D_SIZE;
> > +		if (!p4d_none(*p4d) && !p4d_is_leaf(*p4d))
> > +			/* p4d exists */
> > +			walk_pud(st, p4d, addr);
> > +		else
> > +			note_page(st, addr, 2, p4d_val(*p4d));
> =

> Level 2 is already used by walk_pud().
> =

> I think you have to increment the level used in walk_pud() and walk_pmd()
> and walk_pte()

Thanks for catching this!
I'll fix the numbers in the next version.
 =

> > +	}
> > +}
> > +
> >   static void walk_pagetables(struct pg_state *st)
> >   {
> >   	unsigned int i;
> > @@ -306,7 +322,7 @@ static void walk_pagetables(struct pg_state *st)
> >   	for (i =3D pgd_index(addr); i < PTRS_PER_PGD; i++, pgd++, addr +=3D =
PGDIR_SIZE) {
> >   		if (!pgd_none(*pgd) && !pgd_is_leaf(*pgd))
> >   			/* pgd exists */
> > -			walk_pud(st, pgd, addr);
> > +			walk_p4d(st, pgd, addr);
> >   		else
> >   			note_page(st, addr, 1, pgd_val(*pgd));
> >   	}
> =

> Christophe

-- =

Sincerely yours,
Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
