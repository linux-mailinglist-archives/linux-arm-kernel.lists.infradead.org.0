Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 901201A7FB4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 16:27:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9vKbeUBSJnMSuqqxqKWm65iczZPNFIStV8NXczIarJI=; b=FagzZWFzyWJ5BnljPMA15+gfx
	atU7ZtR/mfF2Q6UO+zBYlk6QusiFfEcxLJIMNLASkpuf5dAqTwiDzHxz941YkZvq6sc3DHGzTbkAI
	Vzxj9zaRcQ1CY85kjc7/fgoExmLNrwGsQzby++RNeW9cXO6oAM99rPNIMd5n3Q2bNf4qoy/9niLyq
	DIx6Hb+djDFq4eE2KgpT9DjGq5nIFVurxa6pAewfyakpZ/d7rJ8QiGTPZvgyM/5JaOqSXFvPyYwHg
	AsLEh9wIPQ1Y5JLrRofMIpG2OtFlOMtJWoCrgQjkFV+P7Qo4rc9KfzzqmUWtJ07fZX1hxJtIUIdlR
	F9ureahXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOMWs-0006wl-Gk; Tue, 14 Apr 2020 14:27:10 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOMWi-0006wC-DV
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 14:27:01 +0000
Received: by mail-wm1-x341.google.com with SMTP id o81so7598224wmo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 07:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zEhwiR+vyHHEAXkMwbsVNm/lmU61lK9swOpVtUCs63A=;
 b=hD2cwrFrHSDinmjs202lPgG/kqeVPUD1XhAccX9hGHGrk+0YBfrgcbvoaf2aS7t2VW
 jufP0ADcPK8Ss5GeOEpdp5hrmWWLWzbCg9ttqLgTdbcDzrm7fwH+4YgGWKWHfyof/Q/T
 7QD0SPQv3cNYbOr95YefyZ7ZRraJeqgKa/PHqPIu1JZdJawkIgGYyqTfdc0U4gWZvCJa
 a4NIkOlrydcVbu5jFSIiwvdGymjCu50RhvaQx/GVGI3JLZHRZtRxn+GvTpMhEEX3dN9M
 b1BEQG4DePP2ttV+Ylrt61N5GApKqhIlzKhbGgkl9WktV+0K//kFV9pdMtVWIbVMZGdd
 E14A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zEhwiR+vyHHEAXkMwbsVNm/lmU61lK9swOpVtUCs63A=;
 b=Irjp7RjtB5mRQhszowdZah95tZ7MkwU39l1NEinWVaZ+NqsOdcE+OxHqpSowdPMfeY
 e4v9OyPGYdI1afT65ouX+55FFz5R7krRAq4GZ4dTYo7cb6bMkKncP7jITEZD4TwCx4K6
 V0aXNJMusWy5lKV2kALWNvE4PJZWlPbWccON8dcBP5iqvQmoVMY9jqIp2yH/ebaBurJO
 2Y25T8NYVuAHCF5Yp1utc8lf1Xiajyi59nq3ftc+Zx774/ZLqTVOBGiynR8NYD5OWR/j
 MqZyOXgNkOx1RTze4ZwUgnKG2DbWEoeITRXbm0m8QoaZbgaQirRIj3TbWLvPAZYN8694
 HHBQ==
X-Gm-Message-State: AGi0PuZ7vXUq8VzzxBaidSs4xkznywcIpf4c7bXw/PQwPfRNqHUvFRLZ
 br5WTt+5y5/E4SmqPAviKlA=
X-Google-Smtp-Source: APiQypIRTWEUu6tlvFDBTOgLwhZvew1YX0WsnFc5ex7ur5Tqq+z9rollOx+SWPnyFscoJTsvglGL7g==
X-Received: by 2002:a7b:c931:: with SMTP id h17mr130289wml.105.1586874418826; 
 Tue, 14 Apr 2020 07:26:58 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id y18sm20183332wmc.45.2020.04.14.07.26.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 07:26:56 -0700 (PDT)
Date: Tue, 14 Apr 2020 16:26:55 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Jon Hunter <jonathanh@nvidia.com>
Subject: Re: [PATCH] arm64: defconfig: Re-enable Tegra PCIe Host driver
Message-ID: <20200414142655.GF3593749@ulmo>
References: <20200409095530.12004-1-jonathanh@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20200409095530.12004-1-jonathanh@nvidia.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_072700_448520_8B925F24 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Vidya Sagar <vidyas@nvidia.com>,
 linux-tegra@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2885641937852786433=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2885641937852786433==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="JcvBIhDvR6w3jUPA"
Content-Disposition: inline


--JcvBIhDvR6w3jUPA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 09, 2020 at 10:55:30AM +0100, Jon Hunter wrote:
> Commit c57247f940e8 ("PCI: tegra: Add support for PCIe endpoint mode in
> Tegra194") updated the Tegra PCIe Kconfig symbol for building the Tegra
> PCIe host controller driver. Following this change the Tegra PCIe host
> controller driver is no longer built by default and so no works without
> updating the arm64 defconfig. Fix this by updating the Kconfig symbol
> in the arm64 for the Tegra PCIe host controller so that again it is
> built by default.
>=20
> Fixes: c57247f940e8 ("PCI: tegra: Add support for PCIe endpoint mode in T=
egra194")
>=20
> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> ---
> Please note that this is needed as a fix for v5.7.
>=20
>  arch/arm64/configs/defconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks.

Thierry

--JcvBIhDvR6w3jUPA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6VyCsACgkQ3SOs138+
s6HnjhAAorO/eH1wOSgRsSF23BCq+30hhKgnRnkyOsrtCHgf/MeYFIAzvcr06pDp
RDijJcmBvSzoNFsdsVDxhzOdYrzh2Nyw2NLSO7kDejN3UHxfsc5qqnQE5MfLsBkf
u1JRxL8KiQY3fOk1ImSfFrhZC8svbWMKgZGtb/xP1Ejx+PKWHpAOnkpt7blT4HqW
oUapgRS+sKD1QlrPLiShBLayktAljR2kI3ZOujqRZtOQ0AGIr3RTpNERveN+alSi
nyEjFfny7HJPgw0SoyDlprrC/XZXVEVLvqOzGVjGird0qMihyuBpI3Y0nKz0ODbY
c1xtFGqfeYXz77nETFl0rjDlBYPrepKZNfyPG34mq9Z5Ihze9eDWo74jU0WjXfT9
P+yr1Y5fom2kcC7T9EvvW26WKIebto2fjW42ogTvoixHKh1A9fcxvqBMTTqlPP8M
aJ5xB4SqaMVtEvXBtlyycexWP+zVaEg4kFZY++hAUhKmhKS1CLLBxlP0v+OIFSfU
2iWRC6zulaN/yppee9aUwOrKEgMw/LuBZ9G9LKlTokOuDMsIphqNQFNmXhMC8jEp
r09W8PTt6xhXlhNmPmyfm+rUAGtVWVgT4g6V+SlU04YPqgaoTNz0kx0Gqz+FlRej
kchihYhNuHEXNdTfVOscJlMHoxY2ESCNzQQ3U4MYDeYZSWehUCc=
=2UgN
-----END PGP SIGNATURE-----

--JcvBIhDvR6w3jUPA--


--===============2885641937852786433==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2885641937852786433==--

