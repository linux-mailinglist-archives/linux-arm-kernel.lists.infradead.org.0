Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7D466945
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 10:42:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PtXljeGC0BqhaojMp955XxKpEo0ziJMRoDfQ4AMr3XI=; b=YFwbZSwZ9tJayxUEpIcA/IEzS
	L95cxXN3R4ophcyhFe9kMoyw3Zn37ts5QCxtmR0LMZ47y+Vv5RW0/4ZUZPBVrMO9a9G0j3M1scRK5
	94cm28Xmaon29maTZ2OlK2cqemgcM8h4Uj3rIa8EEft6EbDWHxGcnD5znaezRgj4FcTHIUK+CSyDW
	pMPKX1WVSggO1bblog9iDuVRr1Q/Ee1wTnDYgtGLT/Ow64TVavCHHpHM0sV/Nc7YEprPnM3x29h8Z
	YP82bTov7gEnx8n5Ft1zdOJ+ICdIYI6vFJjMqqWLW4pGemhju1T+5dR0TUmaDBgI92ws682rwhAVh
	YLlHAbsTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlr89-0006CJ-C2; Fri, 12 Jul 2019 08:42:13 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlr7x-0006Bo-Km
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 08:42:03 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45lRHM60K8z9s00;
 Fri, 12 Jul 2019 18:41:51 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1562920914;
 bh=XMy057h7tEqUdteK4IfiKdKfqoRVIuXrEgiej/z+E30=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=WuNZwoFgEMQjylkarzZqrwhJHJfSfAndylVc8H1asf7TwExA9LFB1MP3+Srbny6Ng
 WSOf0n3AGT7y5G3JbpPC5b/mZ1C+DUsSqZu8IRGsEcnmyrsyAKBnQEKj4bgiElRZJ7
 FoBTUDC/NS1IYvTwzIJ9nJtfCb1GFOG1F2t+x70/3PAABZxkHw5+Gr1JNHW9Ux6FuE
 6pubM+Y4ILGevkpkgO+O3xxhqCWmEFgSZGWQnJhEF+G0ywFrnmk65nKWC5h+HNMV4f
 zPAiyDMVfCPFVcfNcYKaAYG1IvEWh2eax1FXdUMu87XijfMykOVdQPEgxtc/b03FFc
 eef1WUOMABWmg==
Date: Fri, 12 Jul 2019 18:40:55 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Michael Ellerman <mpe@ellerman.id.au>
Subject: Re: [PATCH V2] mm/ioremap: Probe platform for p4d huge map support
Message-ID: <20190712184055.47a7a54b@canb.auug.org.au>
In-Reply-To: <87tvbrennf.fsf@concordia.ellerman.id.au>
References: <1561699231-20991-1-git-send-email-anshuman.khandual@arm.com>
 <20190702160630.25de5558e9fe2d7d845f3472@linux-foundation.org>
 <fbc147c7-bec2-daed-b828-c4ae170010a9@arm.com>
 <87tvbrennf.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_014201_947056_B3AB2DAE 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: x86@kernel.org, Anshuman Khandual <anshuman.khandual@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Will Deacon <will.deacon@arm.com>,
 Michal Hocko <mhocko@kernel.org>, linux-mm@kvack.org,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Andy Lutomirski <luto@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, Thomas Gleixner <tglx@linutronix.de>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: multipart/mixed; boundary="===============8404117134512452728=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============8404117134512452728==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/gEMDf8pJbcBsPcmqhs4eMy2"; protocol="application/pgp-signature"

--Sig_/gEMDf8pJbcBsPcmqhs4eMy2
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

On Fri, 12 Jul 2019 17:07:48 +1000 Michael Ellerman <mpe@ellerman.id.au> wr=
ote:
>
> The return value of arch_ioremap_p4d_supported() is stored in the
> variable ioremap_p4d_capable which is then returned by
> ioremap_p4d_enabled().
>=20
> That is used by ioremap_try_huge_p4d() called from ioremap_p4d_range()
> from ioremap_page_range().

When I first saw this, I wondered if we expect
arch_ioremap_p4d_supported() to ever return something that is not
computable at compile time.  If not, why do we have this level of
redirection?  Why not just make it a static inline functions defined in
an arch specific include file (or even just a CONFIG_ option)?

In particular, ioremap_p4d_enabled() either returns ioremap_p4d_capable
or 0 and is static to one file and has one call site ...  The same is
true of ioremap_pud_enabled() and ioremap_pmd_enabled().
--=20
Cheers,
Stephen Rothwell

--Sig_/gEMDf8pJbcBsPcmqhs4eMy2
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl0oR5cACgkQAVBC80lX
0Gzspwf/VrAAnMW4h6ldvfqp7zGCa4zwIPADkPvWSNBoahsOMNPdBxKy/NjSosk4
9HSdh6ediokUaf9wY3ZTNacC8wlg5LRk8g9FZlcT4de4qSx5Fk7sIy4rXY7HrhBZ
uTyxqI19f8AlG3JCzfxBuA+/xgKl7/KctQC70jAWFGItK0DM0V08dkWVJ1MUBAra
QwXtOIFA2TNMFleSAM19/lvZiKG8mkWjrv1wBZtDPbVPg87UfSPLcS9XplOVd1in
FnI2Zz/xDu5853kJFQl1ERorfRDMqnUXGRHNl3L+6+KZoeVp8pHBoS5pYC/6B/Er
APSpYNV5gTnvKd8cpVJEw/3uUmEJgw==
=5AC8
-----END PGP SIGNATURE-----

--Sig_/gEMDf8pJbcBsPcmqhs4eMy2--


--===============8404117134512452728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8404117134512452728==--

