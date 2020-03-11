Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C40DE1821E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 20:15:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FRbKwfsgkkg2Ng4NiiKrXVT7+ZwuBlIimlKADQ/vgTU=; b=pgDi3XtGVo6/KqpH2tWccUEaq
	B3SX+EMPPA7w634zf5TOGZe8IOmCFK1VaCdzbCmuvQFTWsbufuzQYvxjjx7ltk8g52pXfPa4ihCA3
	i36jTPKRpb2P27J+LwZxs24WSb+CO8UVkyrCXHPfOdb+s52cqiEDTiaQWcj5GLjYW38ZgXiy5yo94
	LGNwifw5/kP5Hw1e7cs5kgOq73uXNalaHqKN/IJrAAlQyzboRELQR6Yp+8RToChJ+WmSCDuafFSRf
	svoIB+lwTYRWTAdVJ63mIJ44+tx2Y13k/+njzqxfFXpBuGW3vpwDKgcWBGRdVZts6moiV4GQEnYkn
	RzE2LsVbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC6pI-0004xT-70; Wed, 11 Mar 2020 19:15:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC6p8-0004wm-ME
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 19:15:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E81C21FB;
 Wed, 11 Mar 2020 12:15:21 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 02A0A3F534;
 Wed, 11 Mar 2020 12:15:21 -0700 (PDT)
Date: Wed, 11 Mar 2020 19:15:19 +0000
From: Mark Brown <broonie@kernel.org>
To: Richard Henderson <richard.henderson@linaro.org>
Subject: Re: [PATCH v8 00/11] arm64: Branch Target Identification support
Message-ID: <20200311191519.GK5411@sirena.org.uk>
References: <20200227174417.23722-1-broonie@kernel.org>
 <562edd23-9d86-800e-aae3-e54c92601929@linaro.org>
MIME-Version: 1.0
In-Reply-To: <562edd23-9d86-800e-aae3-e54c92601929@linaro.org>
X-Cookie: I'm a Lisp variable -- bind me!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_121522_774448_9B04E605 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Catalin Marinas <catalin.marinas@arm.com>, Andrew Jones <drjones@redhat.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H . J . Lu" <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: multipart/mixed; boundary="===============1252987083277531499=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1252987083277531499==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mGCtrYeZ202LI9ZG"
Content-Disposition: inline


--mGCtrYeZ202LI9ZG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 27, 2020 at 05:35:39PM -0800, Richard Henderson wrote:
> On 2/27/20 9:44 AM, Mark Brown wrote:
> >  * Binutils trunk supports the new ELF note, but this wasn't in a release
> >    the last time I posted this series.  (The situation _might_ have changed
> >    in the meantime...)

> I believe this support is in binutils 2.32.

It looks like it's actually 2.33 but either way it's in a release,
thanks for prompting me to check.  I've updated this for v9.

--mGCtrYeZ202LI9ZG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5pOMYACgkQJNaLcl1U
h9AOkgf/SY/gSI7QW/Lbe29z6/u9w1lrepP1itRV8ICgiWASwxjzBxEUDfHMgTsV
Ng7Lx+w79lkeoWKj1id3jmu9SXG8pAmKiBpnc/iGNpkUs1evKFp2XyaqMLl5w1mO
DaNzX4HwWOKK6mjLXS1ferTsYgP0h0SnrJpODS/3HbvD6Txoi8b/m+XvAqiKrJi9
UiPK06ESXjNibgAx2JUDWtuKumjSFWEEGXDx2q6lCI06ZEvBIdkSK5aB0yJwYJqc
k60lhGcyCoMK6T9zNOCutbhZbQpGMlr+GInkEjkuuf/xo6SLfmuZx5hiFJHAumim
NrgBSedG1UXpaC5rINKAgEc2IacPkQ==
=4P3c
-----END PGP SIGNATURE-----

--mGCtrYeZ202LI9ZG--


--===============1252987083277531499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1252987083277531499==--

