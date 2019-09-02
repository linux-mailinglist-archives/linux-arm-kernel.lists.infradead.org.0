Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33081A550C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 13:39:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xJZXfLAj/S3VPzgT6+cC+wMlVOjy+JK4rcro/nrCR0Y=; b=PsTUai+i0gNULmpOfFc9paJXe
	PAogqnqJJXXHkt7TQ4VP/4Ia3MIeQd2yOBvHmMOLGLE7FMNibfyMt9OH5egv91Gk2qo0iSCG6wCAA
	bzTWZ0Qwvohv1PSGq8ymO89qNHPziQiBAoa9nMzzRNqT560OOnPc3CK6IWa5qPdDHl175HIN7ijEn
	MhXFwvSKKfNCHP/PsHWRarLDEj8lRwwM28o6iTNHYw92F21YAMmfALmGLNgD8/qJAliV45r1lyzgg
	IHhKZy6AFDWezB56ilERuiptYg0VVZ8lQEX9GlO0C9sRtlSOKGYRMG5smhHfhlU/K2L6yBvrmL4ub
	+L48PGGIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4kfg-0001qr-4t; Mon, 02 Sep 2019 11:38:56 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4kfQ-0001oO-P7
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 11:38:42 +0000
Received: by mail-ed1-x542.google.com with SMTP id z9so10102318edq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 04:38:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=A1jU8Kd8kaSBOirwnCIVWK0+MxxtP3zKULey0yqf3Fs=;
 b=kmAUcOKMUugD/IszxroNxks32yx1nKZbnpoX4l3389KhNbSRtiSEEp8d1CVXS7TdiK
 m+Ege9ha5mPyS0c02pzMrdwWiLq8Pw4TJlw1F5AGaJbSi9dDFw5sA0j6SdgbqRbhyrZt
 zp/dAcsQQ0ta1MHVi9G3XCY7xp3vBquRO9ERvWO5naYz/1+45quUwj2ybrb6Y4cP7utU
 WOuZiXwh/Iw2PdhnqEZblqQQWW+VFz4GmfweVBjHWo7U9tJYlZTvKcG2C7Ss4zg0Nre5
 hJgumzeWHb3arPUgnwVrfRY4WCQ2rLEQ4s+mj/fhmw8xsEc2kHxxzbZaWfxZ9WvBYWuc
 DQmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=A1jU8Kd8kaSBOirwnCIVWK0+MxxtP3zKULey0yqf3Fs=;
 b=c1nEvan1dGPeXeBtANb27nCH85Wdrp0TEEZEhcyEd7HnyAkylGZ6Spg5/zKj2MvoQY
 a+S8sjQN80hS3zoBWlPGdJpFsP8A8VlcxKHr1qP+4jWFpMN/2jwa1K0wW51ErjKM3sOa
 wiWtKxIyq4a4M/ex3G65nRzbT/bknr6zeiZCej91bIBYnTFsyQb4u1Y7t6XsNFP6x5ta
 nHG3PBcnTkph8cXZwjOnS5cibwLtLu9ckncHQ/vlES2QE1pXUMRL6wB3UkspASRp5Pcl
 nxrv2lZFY6i+9mPf16/nG7iCPS/9g2HmdmC8wj46mH5psYNWgK4NqxT8y/xJY/7DFfy/
 a3kQ==
X-Gm-Message-State: APjAAAWy9UQT9CD2NwOU5Rkl4CJJdP3qwOsN6ZVpqxrD6Kfl4DmHvv2O
 705yckXgykohuQrc85JEa4M=
X-Google-Smtp-Source: APXvYqyQPT8NxW+hvmY9U01+tXAZ5YfgoV3MfxbzA8OX3sMJ570CdsXTtchI1DDsOQXnq1onRbztWg==
X-Received: by 2002:aa7:da54:: with SMTP id w20mr23284871eds.52.1567424318209; 
 Mon, 02 Sep 2019 04:38:38 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id f24sm2859546edt.82.2019.09.02.04.38.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 04:38:37 -0700 (PDT)
Date: Mon, 2 Sep 2019 13:38:35 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V3 2/6] dt-bindings: PCI: tegra: Add PCIe slot supplies
 regulator entries
Message-ID: <20190902113835.GE19263@ulmo>
References: <20190828172850.19871-1-vidyas@nvidia.com>
 <20190828172850.19871-3-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190828172850.19871-3-vidyas@nvidia.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_043840_820398_710D51D8 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-tegra@vger.kernel.org, robh+dt@kernel.org, linux-pci@vger.kernel.org,
 bhelgaas@google.com, andrew.murray@arm.com, digetx@gmail.com,
 jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============6818663891623265677=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6818663891623265677==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6e7ZaeXHKrTJCxdu"
Content-Disposition: inline


--6e7ZaeXHKrTJCxdu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 28, 2019 at 10:58:46PM +0530, Vidya Sagar wrote:
> Add optional bindings "vpcie3v3-supply" and "vpcie12v-supply" to describe
> regulators of a PCIe slot's supplies 3.3V and 12V provided the platform
> is designed to have regulator controlled slot supplies.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V3:
> * None
>=20
> V2:
> * None
>=20
>  .../devicetree/bindings/pci/nvidia,tegra194-pcie.txt      | 8 ++++++++
>  1 file changed, 8 insertions(+)

Acked-by: Thierry Reding <treding@nvidia.com>

--6e7ZaeXHKrTJCxdu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl1s/zsACgkQ3SOs138+
s6FOWA/+L0+vUUclgoY9YfwR5cI+nK0iPHLC/9XLC8xZsVkBaeLEZPWXWlem7QsU
CpdhO7J9sCK8TEW1h8MVKzIhn88paNynYuOLRhjBVJM7hoGCsRNS2/laeeulEvy0
bgf7qphguM9m/sXkCcoj/wHfEyNcTrl71ZyYybG5OGxKMgawwLhdAh9iqNEHRHZX
iR1TfnjIZSANuXcQsEnfHNkFwozF+NDdv7gr11mJm0BrHBmT8XwSZm3xVdPPCXeT
m7rNkB+jtW3jCuxdfXSeUP1qptQT/ZtOdJuN+NudSaJOnV9KZ8CwNRoqWvWH3BFa
1NbR4A1FxlOPLZg9SK2ya8HJQ4xpqXmQBwoPTgDFyypCyouBIC9XK/zLBvhrEfkc
SRWS0nufk/ciXkMAJspPFmFpafr1TuMKlgLfQEQDoiaFBWozVSu3csBsg3917ejc
GimoR1APSzLYU0L85BLekUF+nth7RpGz+VY+eKMSfCUS18mcmUTjpiPw1klrbzex
UFQFCbbf6Sua5Ct5U5nL/uZmZFxj960SQo2d9I/HYbRSuS91D6t7SJvOtyeR1eRz
HVFc6AIBV1J64ogQ6oZsa73b1mvkY+vOuMaqdcEdUn2xrilg3x+LGCpj7Ph6drXU
wFBgvboTaI8RRMp1yZNvsv4HIX62CYDf3fLPVpYxuPr3ipMy6yU=
=3vWd
-----END PGP SIGNATURE-----

--6e7ZaeXHKrTJCxdu--


--===============6818663891623265677==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6818663891623265677==--

