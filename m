Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDD713B0E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 18:29:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=je7AXfYXJouE5YWZPxyIlAXG9zTXIexy+DNStZklWhs=; b=JfrYN7Wu4I3C6wQF1D4jdfsof
	U1w7o/HzXUlXZL1CGkrczcBbsLCjFflCRWcbCwpgnyraizoxS2L4X/H6+hfQzHGy8nnlut96foBxr
	54v1RKOWkhB54RReslwE79dA9B5prKPK9B7tloNHKFw99opmCx3yC7s8kSQKuLePsSojMEygho32G
	g2lSswEmDZZ7DNbvve5cafMDpP2Z7Vmw90gfHblPEAlTcLTCEQeBJN8OlAqsMmuKaBomvWDbpp7VF
	GXBPSwn4M0M0k2cA84KWcKduzLle/VaBHJNadaKzDkUPLS6w+/mpIrjdQuTlM67fNgKwmAoH0xQWZ
	N0qR/IqSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irQ06-0004VD-5c; Tue, 14 Jan 2020 17:29:10 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irPzt-0004Uw-OR
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 17:29:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i70L8DNui8VPmavm+tZ8ivBeZkZeG8PnKWDI53xqtSM=; b=t1Oe+sLzVhteGVH2G8L+ZuR9d
 9utrcXUyXrsEEQ/BJ6ZWl8JUkosr9QdU1c25uUJ79QZPFWw4dH0VxlptSVkRIH+eNsz7uWLaowKzz
 bgZPklFW6glxzoPk2PfOWBAv2D8dgvyuOKSrZSrBaS7HS/Y4X20Ab+mqLujGICknxGT2E=;
Received: from fw-tnat-cam7.arm.com ([217.140.106.55]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1irPzh-0001qO-Tk; Tue, 14 Jan 2020 17:28:45 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 97845D01965; Tue, 14 Jan 2020 17:28:45 +0000 (GMT)
Date: Tue, 14 Jan 2020 17:28:45 +0000
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v4 02/12] ELF: Add ELF program property parsing support
Message-ID: <20200114172845.GF3897@sirena.org.uk>
References: <20191211154206.46260-1-broonie@kernel.org>
 <20191211154206.46260-3-broonie@kernel.org>
 <20200114163402.GH30444@arrakis.emea.arm.com>
MIME-Version: 1.0
In-Reply-To: <20200114163402.GH30444@arrakis.emea.arm.com>
X-Cookie: Programming is an unnatural act.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_092857_792438_3EDD19B8 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, "H.J. Lu" <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Florian Weimer <fweimer@redhat.com>, linux-kernel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: multipart/mixed; boundary="===============3176572017771585041=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3176572017771585041==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="656hIAUFSU7Oh46B"
Content-Disposition: inline


--656hIAUFSU7Oh46B
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 14, 2020 at 04:34:03PM +0000, Catalin Marinas wrote:

> The logic looks fine to me but I'm not sure the choice of returning -EIO
> is suitable in most cases. I think apart from kernel_read() returning an
> error, there rest look like malformed ELF notes, so rather -ENOEXEC.

Sure, I don't have strong opinions either way.

--656hIAUFSU7Oh46B
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4d+koACgkQJNaLcl1U
h9BzOAf/ZW4b8JHQ9qlWZwLXs7dElEQgCxM18zekE7pOdxU3oF7g7qLspavQhRB9
6VwtDC7KE1ohuOMkwPE5HFSzlOW5WyGKodH8581UTigsQ3vp5Y4OKdIwNYCmvI0O
OaPHa1Us+qy5w2fwhYFGQpJaKBAo52VFWFb1eS65cv/A1RVktrwfF0/5CUKQlOvT
eUsZAkU1zgYf5BTaFmLlhrKlfbfOZE7U3nSMfRpM9k0uHS8TkV4gJY8Krs2/IKWG
1ePbKRpoEnul7u915WZxspdgU8UI556Y1gmiJEO1RyMOWH56mWwEgHrQc/8MxLpG
AoSckdNGC+G7zG4pARh7eWJDwYq3GA==
=w1Xx
-----END PGP SIGNATURE-----

--656hIAUFSU7Oh46B--


--===============3176572017771585041==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3176572017771585041==--

