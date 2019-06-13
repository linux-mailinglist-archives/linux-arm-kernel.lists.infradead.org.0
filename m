Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2314144408
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:35:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r/o7sXXkI1x70WuXh7/l+dCqgSeqYLyP3Ut5sHyEG6U=; b=kyAxhFHYHpds0YzI28xfARtE7
	WbBj2pY3WGZGG8KOCRYGmgGQ/ObAopOUd4q2gBUTwuvEgY9HOlqbxE7EPol4wL3UxX5qffJvxI1jI
	o7s47YyYCUMelvpBlU8jxFmw9hST73QX9/9jPsfPUP6mK46rQ3ItndT98l/AWM2rdui0hSqNIpcoq
	OvEfqcTGDjqYWvraav6h5OFPBXWLL4qIe64sD1RnCM03NrYBunyEKjivPBViDzrJMBhuxqnggDBti
	PNniF+NsNJfRpr5Gvwk59+1/IOPSwHbkPUq+hN5IM5JJZOsdqGAq7DSTE+iW0WSXXzDSt6tIj6fVB
	ESqy+qROg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSgz-0001Fs-9z; Thu, 13 Jun 2019 16:35:13 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSgi-0001EO-Oc
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:34:58 +0000
Received: by mail-wm1-x343.google.com with SMTP id s15so10817754wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 09:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HzzbYgkXL3nx7rZNrWYRPJ9FH3eafUuwvWKYEt4rTNY=;
 b=EhGkyDzsyQVM4Y/94UxftsVuA8EG6DZPJt0ubfaHzbDr7060e2AlkRN8Zc/vD4NDL4
 Rm2I07fxy+hjZLoiXHVtvVsdQlDzDGew4048qmTDkC0KvtFywEOnqbG7yjSTHZz32gJ7
 z6lz5r5uDFsMQpL/RwT6OHB1szHoIpbZC7ACtuFr+8I59Haa6hu4tRdqkRIaKL4ffoos
 VbIjS3s6oZzhB68MHlgMpEw5oO4ANjp5e2BqrWgUn0w9zGoYUnKTVB/l8sf6CQMHK9o8
 unty7DjXCoDCbcPwqA8q2yBIKhYeKg7l49QAIp30nEzBU8XuiVXkfexqQRQ8Qq19Dbkj
 hhnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HzzbYgkXL3nx7rZNrWYRPJ9FH3eafUuwvWKYEt4rTNY=;
 b=iVeonsPD2jY858tinxPL2RSkFmVaY7Ze82aFc6MJkHTGzU8rEe/j+/9PGHV6fGJ2lk
 TE+73bpe14Wk6p0i8Cr7woRePISgLlw1SXcTsJ4FxnbsfYRRUBwwjuyL3yUl/RMNJxzb
 awzfJG3LSmt8K1EW+iQZ8x8ia9eSEyu6iYSHAdAz7sRQwBh2l8/qWn475+Ub0EiBgvr3
 sbr8cbv7gvSg+7Spi77P9Ckdr2ToR9FKNv5CGYphbE/33jzjgvB68m/RSsIUbNsU+dt1
 1uR3u4BTK4MINxbLFABZH06T9UNoaZLitqurDyD13ehPiGhbmVSDfcBl7pkpOfkefNk3
 IAxA==
X-Gm-Message-State: APjAAAVvVTIjx0TbFzCMBa87sXBiAU8o6zU/qVYXuLQotYJecls8fAju
 MVjkBg/bmvcHnlQZdIsFzeg=
X-Google-Smtp-Source: APXvYqzOLxHsCwuM6OpMKUGm47fWsof6HuxDcJQf5F/i/8IP53t/xc7LYVZx3n1KnRMnhi0CbPro6g==
X-Received: by 2002:a1c:e3c1:: with SMTP id a184mr4173350wmh.24.1560443694373; 
 Thu, 13 Jun 2019 09:34:54 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id u5sm470875wmc.32.2019.06.13.09.34.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 09:34:53 -0700 (PDT)
Date: Thu, 13 Jun 2019 18:34:52 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>
Subject: Re: [PATCH 1/3] arm64: tegra: Add ethernet alias on Jetson TX1
Message-ID: <20190613163452.GA3258@ulmo>
References: <20190613161517.2837-1-thierry.reding@gmail.com>
 <04a355c8-a4ae-9275-a85a-791ce5c1b34c@wwwdotorg.org>
MIME-Version: 1.0
In-Reply-To: <04a355c8-a4ae-9275-a85a-791ce5c1b34c@wwwdotorg.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_093456_828477_2AB4EDAC 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: multipart/mixed; boundary="===============1113257302511658468=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1113257302511658468==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7AUc2qLy4jB3hD7Z"
Content-Disposition: inline


--7AUc2qLy4jB3hD7Z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 13, 2019 at 10:22:23AM -0600, Stephen Warren wrote:
> On 6/13/19 10:15 AM, Thierry Reding wrote:
> > From: Thierry Reding <treding@nvidia.com>
> >=20
> > Adding this alias for the Ethernet interface on Jetson TX1 allows the
> > bootloader to pass the MAC address to the Linux kernel.
>=20
> > diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi b/arch/arm6=
4/boot/dts/nvidia/tegra210-p2597.dtsi
>=20
> > +	aliases {
> > +		ethernet =3D "/usb@70090000/ethernet@1";
> > +	};
>=20
> Don't aliases require an ID in the property name, i.e shouldn't this be
> "ethernet0" rather than just "ethernet"? This is a bit more obvious in the
> TX2 patch where sdhci0, sdhci1, and serial0 are shown in the diff context.

I don't think there's a requirement for aliases to have an ID. The IDs,
in the cases that I'm aware of, are used to fix the index given to the
controllers in Linux (which is sometimes abused to get fixed numbering
that can be hardcoded, rather than having a more robust way to look up
the right hardware block).

U-Boot has a comment somewhere about ethernet being equivalent to
ethernet0 and it treats them the same way, if I remember correctly.

As for upstream Linux, there does indeed seem to be a slight tendency
towards ethernet0, though it's pretty well mixed. 32-bit ARM is mostly
balanced, whereas 64-bit ARM uses ethernet0 almost exclusively. Maybe
this means that recently there's been a push to standardize on always
adding the index?

> Patch should probably be CC'd to some/all of ARM/DT/... mailing lists?

Oops... I meant to include those. Added now.

Thierry

--7AUc2qLy4jB3hD7Z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl0CeygACgkQ3SOs138+
s6FZGRAAie3WvvLA3MldS9O2cqq/CUfmWuGxbWSyjTIhIRx49f0S1nHj0WJdYOzA
EP7RUHDgqUwJDqkFsNjyZNU7fatwgd784WjL2vXUKZFf5PX04507kzZQvtDvW6g/
ARzahv1N/zU6YvTtLWGC7jgKRa6e8IltBQPIUYEURFamv3i+N+05oLz1xI22Nj3s
b/UAOncXztcR5tlE2Uusk+Avz+uHva6oNYB6WLyIlB+VZMdlUDruMA1n4uy/QZGH
ejkZOt3KteED40l5jQDxocBtqcJmudxE1HHMUsQh8Gz3JUtXK/l+ofks6DXgJ3H6
1ht2S3FoYJUETcV4GU8g1a8oeyuRGQ2yax8rHTBCiVIwBrlvc0b82wXYVOftPFtD
hCur2A/UqlNS3CYSOsE1GuazVNrFPMuqk9qCs1XU0rnw9QioTkUt305vuxCwFoH1
oVFXQGajdXMiTu4QfTtoolCWAugCQLT2W3YFW1qKJ20egvCkvvTQFvz0MX4Q3wGP
m1KD2eo+xCyWFetwLCZzl6yjaDOlzhqctWmVEhxZjV0Vl/C04KklxrD46gohgqzj
fY6TDnjFHVM64MVy8c55OA3PniCv1aQ1brf54eUdlTWp4MS6R3+4zYBP+X5MF3Vb
LQq624SnGItBbllLT+aoKhq0b8uUYszPiYImjX4VmsMqr+O6Q84=
=LHm4
-----END PGP SIGNATURE-----

--7AUc2qLy4jB3hD7Z--


--===============1113257302511658468==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1113257302511658468==--

