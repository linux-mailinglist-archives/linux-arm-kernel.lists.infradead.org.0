Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7A01C76ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 18:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TznYP56TsAIawNezFJjN/viDET+F+voKjs5/aD4bdng=; b=CrVrJG4SkPHa/7dZYKMs8K5S5
	E+Ym7Tgmm4krO+lv1OF2WFLnT9L8EKvQQ+xieWI6lBS7/lr8HW/6NA8k4Ourosf+gmwZlUlWiJFY1
	RxVY71t19CrgM2bQcqQDKSKhayjIKCdRUwFy9YGaUk6nQcRMCucVZ+jFoRCmrn0Mo2y6OkU/gIgrt
	t2nFOxnTcG4avo9rh7r/NMo017GBrhoKidglPHXWbDOJZmA78YoxnyhZ5OZ3mfLv7Bf/hG8WdzY+2
	BW6W2iBzKf56UCncY9n5EzDBueaDkPpm5j66xHHsKHsRqPxdfVEKhHmJ3JY9eI9T+ANYLo7/vXpS8
	uBbXKwFSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWNC9-0005K5-7b; Wed, 06 May 2020 16:46:53 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWNAN-0001QC-My
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 16:45:05 +0000
Received: by mail-wm1-x343.google.com with SMTP id x25so3320410wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 09:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=oIvgZsV8Bgyu7IuZVIKOz1YRNdUcKs8YV3CKER49pp4=;
 b=rlAVzuCLwDb7yuepHZjDlpkldlozrQBNJHtWRoxWMNk+D+zYiWKBnB1dIF1hx69qU/
 f23R1uUhyYfRFzb+GqsAIk6g6qIdqDWxNAI9a/cVMogaLmb0+9oxVwg4WqbjcjIwarvP
 PqDIbeXVkh3GUJxYSGEzfwNrsqyIf7ClGM7CkZYknsALrlPBYqmyQEbI/i6HYC5ZI9p+
 dHaVgOxKVKZbhQigUDRIo5fFFPC9cgFJWcLuCBeVpDrN/JN0QRgBBNtZMoVDASaAh2Sp
 nriAg4Ma+d5AaCe8VQCfcxcdOCd16ZAH3CJKfMQ7MqPgdxZBxrJhH5hn8cDKTgUFsobC
 +L3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oIvgZsV8Bgyu7IuZVIKOz1YRNdUcKs8YV3CKER49pp4=;
 b=h0twM8GGA6LyaEHP0OJoFfg6V6VLWK4HhEWsb5W3y7dtr3PoQWjSzwTxzuXq2hebBY
 fErMUf7IcanAtefDSoOSMtnBvHzeTcQiKdRzq238JHbviDIcwYAEam9jeKhcU5Y+ywKa
 rsUF8xIQI1XKUlnQvljGOWqwl78n1x9rHJNLZ+Tz4HigYlWlHuv0gpJ12CI9HkOVYR7W
 6SMIo6jyscVZ4U+fa4PJbQGtBpgvLQQHFoeiXUy1usxe650ESbNLVvqjAChNaGlnW2fQ
 69kPzvRS71PDsCOJ2qTACOLTL21LmS+cQJ6R7idp/Py/j2MYrvaIuN8AuG8O2hBmPdeU
 X5YQ==
X-Gm-Message-State: AGi0PubnaPSDxlWSu8H7ye7Xsb7YopHhBdO4MzI9VRA/AZVYPLGF0dC3
 i4uyT/Sc1OX2/2VWN9FOMr4=
X-Google-Smtp-Source: APiQypIaTilY72QfLDVV1ORbOcvMtGYTS8G4EsZWV/hlZ1XECK0SB6jJFg74PoF1MZTDo9GRdbREvA==
X-Received: by 2002:a7b:c858:: with SMTP id c24mr5690005wml.51.1588783499394; 
 Wed, 06 May 2020 09:44:59 -0700 (PDT)
Received: from localhost (p2E5BE57B.dip0.t-ipconnect.de. [46.91.229.123])
 by smtp.gmail.com with ESMTPSA id w9sm4005996wrc.27.2020.05.06.09.44.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 09:44:57 -0700 (PDT)
Date: Wed, 6 May 2020 18:44:56 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v1] ARM: tegra: Correct PL310 Auxiliary Control Register
 initialization
Message-ID: <20200506164456.GC2723987@ulmo>
References: <20200313090104.20750-1-digetx@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200313090104.20750-1-digetx@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_094503_837762_3365A60D 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nicolas Chauvet <kwizart@gmail.com>, linux-tegra@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 Jonathan Hunter <jonathanh@nvidia.com>
Content-Type: multipart/mixed; boundary="===============3762457347041813851=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3762457347041813851==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nmemrqcdn5VTmUEE"
Content-Disposition: inline


--nmemrqcdn5VTmUEE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 13, 2020 at 12:01:04PM +0300, Dmitry Osipenko wrote:
> The PL310 Auxiliary Control Register shouldn't have the "Full line of
> zero" optimization bit being set before L2 cache is enabled. The L2X0
> driver takes care of enabling the optimization by itself.
>=20
> This patch fixes a noisy error message on Tegra20 and Tegra30 telling
> that cache optimization is erroneously enabled without enabling it for
> the CPU:
>=20
> 	L2C-310: enabling full line of zeros but not enabled in Cortex-A9
>=20
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  arch/arm/mach-tegra/tegra.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied to for-5.8/arm/core, thanks.

Thierry

--nmemrqcdn5VTmUEE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6y6YcACgkQ3SOs138+
s6GD/A/+NzmvjIPJ34uaTNbvaUoVRNP+HMuGLoEmhzzf+wTDrT0UwTVlz0nKSh7F
6vwI05FUgT3FRozK65BE0DtYYjTCLQhISvMBn7tJ/LfHOGiXVuZeSLuKKzfkrleZ
wTuPkYj4v0lHtOncYNWDKzxHKYYbsoRKDVxyPnH3hLFbsxyG392xzcOgsegiv0Fk
EFED3VkVMoS3zSU2amy0m8BNDhQFojA2yYIAb76+fO/amRpFGhyi/cbU3diylCuY
RiOGX2hrfnkC21zMYl8vLE07QCAnm9ZiFU2O2hjp8l9fDIBdGo8UvT6xv4OKuo/b
lMWuO7z+tk+f8BovUQ6W4PSrL4xEvjKBoGLQzyDTTfpMWrQ9cJuFufg9FkskjGwD
oJV5IJdy5DgFmbcWHhkNveCLSE3CO4/NfNuWQQAXE1yfsP4m+rn3KQqzfCkiKnUL
SU4FwucPNnR7BwrdeIZ5kP1F9Fi0toiOuzZv2EgmtjAomlX7JYJy8Usi60NUptX5
UYV55WiDmRpVavBOTzuKLnqOXYfNpdzkQOuWzjjJE4+LjinqtTJcP8Oc3gBQyMaS
9fxR4LtKLBnBMPCA12+E71prlZZnMqUQcy2CwU1iSqdrR577AjPQsEtIY6LNYzCE
ogWFdne+JAry3+gwbAPxmYkAx4SLVvHrpCfOAlZl5mI8M3KwXc0=
=1shP
-----END PGP SIGNATURE-----

--nmemrqcdn5VTmUEE--


--===============3762457347041813851==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3762457347041813851==--

