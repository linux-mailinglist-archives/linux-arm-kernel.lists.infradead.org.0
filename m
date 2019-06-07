Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 718E8389AF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 14:04:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FOU4Duto3dgiA+hbMe7VhozMhmaFbah+7RX/Z6sTO4Y=; b=FuwoSy/bu3kgpbMrlgCdBvcDt
	Jjzxx0fhLBXpXR5N4WC2/cVpe+7wZQ431WWneTKAueNJ5MUcggxaXvQNuqrE2TY4FZ+nYXqLxeNVl
	FI5ZSkd29Euj2yZCEUDRpkk6RyWFbVXu9kITGTx4lyHgP5lJ7BjC/DlBV10XiNhXZ7tAi5c7NE+v+
	ajGqU0xwiYNgtSHmJgq06sJ/bTvlzMs+UOl23Yza88RIqYbNnwQC7RZvUL/Dcd97dkSIYAgUb+Vja
	Z/+2SeGiXzJuEYdZRURK/Rr3TeIoFlg+aqM9qmfTwv0VCuJLvaFekCwU79X6mr1dkB708RpOXuPvF
	ydEEgj2xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZDbi-0004sT-Vb; Fri, 07 Jun 2019 12:04:30 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZDbb-0004rt-Ov
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 12:04:25 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45L1Qt4FFfz9sNd;
 Fri,  7 Jun 2019 22:04:06 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1559909057;
 bh=SVse233ZP/gfWiwAkphdAiPtrWGA02EH5CK05uTxdco=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=shBn+/bZp4+i7ILKYT0rkicAc6qcmmQP1VlZ3saK03LKB9zc/NDFJ5cjhXqlEHyPz
 2nllWsT+DJ6D5zDFTOmqEnjXbNpqikUY4YWSMMSeJwu5ucFQSEtL4eZUc6HVdKK4TE
 qeoWLj3UUE4M9QEUmDXWh2ARrdai0SPhHQww77UvDoWOKjYJt4Bb67lNhTHgNKLPBy
 6p7Lz1Bv/DqsVATPnHpr/EbevipmxUHrPDNyWaHhD6m4citn/ZVKw/Yu0UerC8T4Bm
 d5uAfepi6bZG8PmazXKqBSrkpabcAFZqyXErnjGLWQxR8X21ypmE9ZV6+vmRkEQUdV
 qL0IogG/ZPB0Q==
Date: Fri, 7 Jun 2019 22:03:26 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [RFC V3] mm: Generalize and rename notify_page_fault() as
 kprobe_page_fault()
Message-ID: <20190607220326.1e21fc9c@canb.auug.org.au>
In-Reply-To: <1559903655-5609-1-git-send-email-anshuman.khandual@arm.com>
References: <1559903655-5609-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_050424_211877_6472609B 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Will Deacon <will.deacon@arm.com>,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, linux-s390@vger.kernel.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Fenghua Yu <fenghua.yu@intel.com>,
 Andrey Konovalov <andreyknvl@google.com>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Tony Luck <tony.luck@intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============5602698942950486363=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============5602698942950486363==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/f4dkIceQ5ZrfVlbLmfAkblH"; protocol="application/pgp-signature"

--Sig_/f4dkIceQ5ZrfVlbLmfAkblH
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Anshuman,

On Fri,  7 Jun 2019 16:04:15 +0530 Anshuman Khandual <anshuman.khandual@arm=
.com> wrote:
>
> +static nokprobe_inline bool kprobe_page_fault(struct pt_regs *regs,
> +					      unsigned int trap)
> +{
> +	int ret =3D 0;
> +
> +	/*
> +	 * To be potentially processing a kprobe fault and to be allowed
> +	 * to call kprobe_running(), we have to be non-preemptible.
> +	 */
> +	if (kprobes_built_in() && !preemptible() && !user_mode(regs)) {
> +		if (kprobe_running() && kprobe_fault_handler(regs, trap))
> +			ret =3D 1;
> +	}
> +	return ret;
> +}

Since this is now declared as "bool" (thanks for that), you should make
"ret" be bool and use true and false;

--=20
Cheers,
Stephen Rothwell

--Sig_/f4dkIceQ5ZrfVlbLmfAkblH
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAlz6Uo4ACgkQAVBC80lX
0GwAlwgAndGNjcRg/+OZtSy1kiUIeIc3sDi7Ok5AjcBz7eTGTC6rACK7/CqF74Ff
Hw76yMUeoSjtJWLlhqmY0XI4ib30yQJSvSSWJyDvZpmgkDbNO69BK4rT4CO/d2YX
sCodILuUU462hNmmfr9N6uWJGSeDWdEvbfitkR2PEzQAUSsQacEA8UB+bqf+zQ13
xwBTJEE0YFg5UCqOcsE3bSTh/e+p7djYHrQIiZX0ntJOra+nJZuz/GfJQUmx4WYn
AHgcP+Marnv0/MW4JDWYDtetq+Fmr96wk01Ex4gMytm7TcpL0asnQ0IEVwljvVr/
HFKp+ZJLlwZP8lyt90zY76EEDgViPQ==
=7Lk0
-----END PGP SIGNATURE-----

--Sig_/f4dkIceQ5ZrfVlbLmfAkblH--


--===============5602698942950486363==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5602698942950486363==--

