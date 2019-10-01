Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D05EC37EA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 16:43:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1QywV4zT10hfx5nxqsyaD2fGcQmgKL3FdBIFpxKRSUY=; b=pBzvWCdirSMSQt0QYpqZTBLGH
	eCk5ORXnypAWSyrNu4D81EdZCcpiL0Sp2jKVzF63J9UyBlkQuKwLjFT8mAPQktQR0K04JK0O0X1O9
	kTSiXvMfVNxl4Roy5PGNcWCKi41MxG34PqcmhFzZdfXDhdWkmiA71vaxNTwJSCEyP+xEo7xIe60gc
	AVKbb6kyOPUblmaVoDuqwLS+eK+Z3j7ALpd0FaXEUu7Cf8Q8rTmzPqTI681sTpWrPg1jRZlhgCEQ7
	pUaimJQt1q/koaTyfY+OtdGGl4foBm6gM07WjNriEdmKdIuQoeMLIwA6WDqpnBGhm+t4k7mDSyoCd
	CfFX5AKyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJN8-0004Ud-RA; Tue, 01 Oct 2019 14:43:26 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJMh-00048t-MR
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 14:43:04 +0000
Received: by mail-wm1-x341.google.com with SMTP id y21so3573805wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 07:42:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xaOfNL1OoZaAEZgoqD2y8IAN6v4PCX0JaZgRKFJO1HQ=;
 b=E0gNF8L/rF2+/OEqxB7EevvyKkiZVOzrtXCSqlpesiHT48i4OB1hNnkCNBVHpA2r26
 i9hIu92U2PzHxk7nqyTPetkju8UyyfbJD0ZV1c6ZkYkv1/aDOPdtNHPlN6EmMNUyZ4WW
 LGpL6LwAzqIMvv9oIr4jaDg9L9383R0bg55LZGmR4uGUBFHaRqefR8udKsWer5mw9mc7
 yzi+u2xDfi+gBQrSQ7NtcMWBD+JA5YujOY+rcAgp0NGX4jVeWpJGNwMuxKrqPzyGuFyF
 mnSWKRqeSFh/pNpcmiJDHzCh8dpJf3rmKklSbEd3SRzfUyyPIBFFuAksnP7BRFutw+V2
 fA+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xaOfNL1OoZaAEZgoqD2y8IAN6v4PCX0JaZgRKFJO1HQ=;
 b=b99HjREmU4YcHIK3xZutyF5NetV8se5FwWB/oC4O3gkC1qTxdHVTRXxnRZNR8fRPzU
 QNNQZ9V3jr4alzgfSwKCOvw6PD99wvO3YvHMYCvdBR5M6EXv3X3rNJK9QKXgGPEKxRM5
 VijzJIyOUJnq9fU086rObVTdq7/0QhN9QoAdTgx3brc0DJQbMj2q39kBthF8jbI4usLJ
 pfGjHRGt93/DG7PXSHH2gHdqG1/WPI53LXBYAWIDr3XejYVBX858KkQknXsz5B6v8ckY
 dICPsAHZUIGnS1Ib/EO/XPjPas/1v+oX1+DPqyd5yLEXQtczMlAI8hv3KE1lns6N/BvX
 E32Q==
X-Gm-Message-State: APjAAAWopcQEXndp+hj03vxGBWnqfNDjdJaQPxUyKY51GLqhTztF0smL
 dLuiLmOiYwSrqu2ChhRiduv5PEbm
X-Google-Smtp-Source: APXvYqzqyaxiVFjSZJ6se9jVgJ+Ez033K/VSdXb3iDYvQzAyyD9+O3UxsFJLAzajau0VXwFABU7zmg==
X-Received: by 2002:a1c:49d4:: with SMTP id w203mr3822100wma.132.1569940978003; 
 Tue, 01 Oct 2019 07:42:58 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id i8sm17866280wrw.36.2019.10.01.07.42.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 07:42:56 -0700 (PDT)
Date: Tue, 1 Oct 2019 16:42:55 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/3] arm64: tegra: Add unit-address for CBB on Tegra194
Message-ID: <20191001144255.GC3566931@ulmo>
References: <20190726101618.26896-1-thierry.reding@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190726101618.26896-1-thierry.reding@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_074259_838837_AB545AC9 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: multipart/mixed; boundary="===============9010272972035134483=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9010272972035134483==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ctP54qlpMx3WjD+/"
Content-Disposition: inline


--ctP54qlpMx3WjD+/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 26, 2019 at 12:16:16PM +0200, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
>=20
> The control back-bone (CBB) starts at physical address 0, so give it a
> unit-address to comply with standard naming practices checked for by the
> device tree compiler.
>=20
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  .../arm64/boot/dts/nvidia/tegra194-p2888.dtsi | 20 +++++++++----------
>  .../boot/dts/nvidia/tegra194-p2972-0000.dts   |  2 +-
>  arch/arm64/boot/dts/nvidia/tegra194.dtsi      |  2 +-
>  3 files changed, 12 insertions(+), 12 deletions(-)

All three patches applied to for-5.5/arm64/dt.

Thierry

--ctP54qlpMx3WjD+/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2TZe8ACgkQ3SOs138+
s6HDfA/7BP/RRUz2uNcWaO6MfcsRZcw/kM1SqLT2nzI1Afne784R7SeHGLR3U7uh
hTFwQWaMN7lnpuN8+slIqsZLXdxZpSi2ZixYRpN1v982pqbe3ZbuyfPELvkkLtmf
fdFF/P+aQZE1mqGywjv/7gaXUZS8mXan0Y5a6No9PIk5/7xqRyRXWdXajiFZuf4N
w0Yg028XRx82BFIU2izhM3UUqtBIFkaEGnxr/+U4hybquf1nLfO7SdyVD52DTlH6
Yke1X4/OOqwjvseZZtSe7hU5ViYYKMInhDHkxKw5J/lyXtlhS1mkcpInvk0oSrhn
x+642n+BCKV8UWY9x25KWPyCjlXr+40itoS7F/3tuihhbQc4wIiejXwnJV2s3sUO
JuJwOqHFujpEPqwyYCpzjL8hla4Xkf2YaLsyesZ6GIszoWa7I77CEky7L+2uoizZ
9qIPnZuWooUDHOt06h1o7ONMnI3jXMIrNz234SIrZv7RQd1Kfp55xMENzwIvsUB5
KjM/sCC2Q/3t8hw5VaF8jv6K6I0hi6If1RD9k1j4kVA33TDgbib1rkB0wcZGaB7F
rnd63GdZIVhXGDgtjXdd+gsxIwNWN/5PZRA9/3gqWxYF2pAdyAiMZ2c9wdx+EznD
p7Hhtx90GpA1aVClyQ2+sKf26KmFczNsfV6neMkG01R+M1TABFg=
=1T99
-----END PGP SIGNATURE-----

--ctP54qlpMx3WjD+/--


--===============9010272972035134483==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9010272972035134483==--

