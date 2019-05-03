Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E26F412C19
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 13:13:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZBichatzZePmr/WPwIO1Y1e3rt6yxYTsty3RUyXzJaA=; b=q4bArfkuD2siZP7E2uXNwEelw
	SaMCN1lJp0zQnY9NU3zhqKYv4/fT9LBiXNuaESrgdsl9AwdV6+AxSCgqlGslitB5yIGC3IRLoRK2Q
	3SZqcTIV/qIL4V+MFR+IzPRD12GcnjE0rj8uS54sKFRVXpGLTfGjvAifhcZWOwcEbhTgmKsPj+AD3
	JLJ6q+sMGKVThIO4Nfje0ewSji6cYBR5HqO1zfOCjRi+cObEFfcxhp1UlT1OJSDgyzrF7J7zfrXHk
	czuc9d05twzGdCPAwm0qyBX7y9IRKz5PIDSBtyTkr0wVw1luT+AHbcWPsOJtaHTbjFxjFjTKfnY0S
	tdwjPzf8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMW7v-0003J3-G4; Fri, 03 May 2019 11:13:15 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMW7n-0003He-Gt
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 11:13:08 +0000
Received: by mail-wr1-x444.google.com with SMTP id r7so7323879wrr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 04:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VorhduCjm/PV7LIywmluOVllNVaujX/MK5dw8bcazaY=;
 b=DQJhiA9/d6Snr8rcYf11fSDkRsPn4eFH0pbGbeO3EYim9yz2xSYoxcKO8uWhGjLG/0
 YyPSP/s0ul2iyhFEta0KIGoKCYsvPceBXPQ8+3P93X7mrPjolezEUW5LsRqYbh/GnxBS
 fL5O/wQ2rx3M0ooHwDQnoA3rBfuqUP+9RKR0K3D7SuahieZ8JvQh70Tr7X72V1lMaWdN
 s6d18HmvK0j2BtgmSgXgTteuthc52BBw3m2NZXjBhAvmpmCIheumFpJAggJ6zXMou6VX
 9CtwlGsAeQXhsAl/mW75AcLYBaA03v8u6yqItMWGsXuuWlu2hwGwSSqyH98t1+cwaNG5
 2B7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VorhduCjm/PV7LIywmluOVllNVaujX/MK5dw8bcazaY=;
 b=BoY3sOQOOz13w10Ns0Py6HbNhp3ALWgctNYQ2q7ZAADZEpM0QrOMOracBn7y5lTKuo
 WiF6Ir37AXyl2vJLXfHJClPgbBdElX+oPyWg8Mjk35WQTT11SmdbhlfbBhcMSiZa+Zka
 XaKBUVYDGWvUUxF1C2Fr8XxDPVHWNGXeTyoJWB8b8Oo84Ex4vJ6ICruCl5OVvGYvBEYa
 mKfjzOgKkTkGnq5pjX6qrkG+HC89L8c1xEqJvzzXNhkKH/Br/L4S7lkhacBMUmlTLzFo
 kCWxQJpRuizNcWa49NYiIuVd3YJ76wbsj7/l/ILpd7zWUmHV93/iZXdz8pNSA682IzEk
 UZTQ==
X-Gm-Message-State: APjAAAVKf4UfYa7+W8WvfzeaabyF7RrodI5jGgoB9hwa+oxqITGMMDcx
 jvy3Zh9zzLtj3q0vI2MCqgo=
X-Google-Smtp-Source: APXvYqzIoZM1WKmoSa+jqkolj1Wa5xAp4KxJNadWyadjysOMzw6Haf/w2JCSiYGbd4g8Uewe/f6klA==
X-Received: by 2002:a5d:6249:: with SMTP id m9mr6360592wrv.255.1556881986035; 
 Fri, 03 May 2019 04:13:06 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id c10sm4139876wrd.69.2019.05.03.04.13.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 04:13:04 -0700 (PDT)
Date: Fri, 3 May 2019 13:13:03 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V5 04/16] PCI: dwc: Perform dbi regs write lock towards
 the end
Message-ID: <20190503111303.GD32400@ulmo>
References: <20190424052004.6270-1-vidyas@nvidia.com>
 <20190424052004.6270-5-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190424052004.6270-5-vidyas@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_041307_585701_572EF80E 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kthota@nvidia.com, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============2189866356466042748=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2189866356466042748==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xB0nW4MQa6jZONgY"
Content-Disposition: inline


--xB0nW4MQa6jZONgY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 24, 2019 at 10:49:52AM +0530, Vidya Sagar wrote:
> Remove multiple write enable and disable sequences of dbi registers as
> Tegra194 implements writes to BAR-0 register (offset: 0x10) controlled by
> DBI write-lock enable bit thereby not allowing any further writes to BAR-0
> register in config space to take place. Hence disabling write permission
> only towards the end.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> Changes since [v4]:
> * None
>=20
> Changes since [v3]:
> * None
>=20
> Changes since [v2]:
> * None
>=20
> Changes since [v1]:
> * None
>=20
>  drivers/pci/controller/dwc/pcie-designware-host.c | 3 ---
>  1 file changed, 3 deletions(-)
>=20
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/=
pci/controller/dwc/pcie-designware-host.c
> index 36fd3f5b48f6..e5e3571dd2fe 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -654,7 +654,6 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
>  	val &=3D 0xffff00ff;
>  	val |=3D 0x00000100;
>  	dw_pcie_writel_dbi(pci, PCI_INTERRUPT_LINE, val);
> -	dw_pcie_dbi_ro_wr_dis(pci);
> =20
>  	/* Setup bus numbers */
>  	val =3D dw_pcie_readl_dbi(pci, PCI_PRIMARY_BUS);
> @@ -686,8 +685,6 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
> =20
>  	dw_pcie_wr_own_conf(pp, PCI_BASE_ADDRESS_0, 4, 0);
> =20
> -	/* Enable write permission for the DBI read-only register */
> -	dw_pcie_dbi_ro_wr_en(pci);
>  	/* Program correct class for RC */
>  	dw_pcie_wr_own_conf(pp, PCI_CLASS_DEVICE, 2, PCI_CLASS_BRIDGE_PCI);
>  	/* Better disable write permission right after the update */

Perhaps make this explicit by moving the write enable call to the
beginning of the function and the write disable call to the end?

Currently it's pretty difficult to see where it's being disabled. Also,
that would make it more resilient against instantiations that require a
different register to be programmed with writes enabled.

Thierry

--xB0nW4MQa6jZONgY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzMIj8ACgkQ3SOs138+
s6FFuRAAmiTyrtz2NxKwCwdtyyP/+itBnYe7MfDjSdUTPlZtSa1dFyCI+XHymBsB
X2sVKTo2/OgUkGwsMWvLqW/Na5Z5XHetXaP0+5zJqswFAfAS5JKZtwnU/7th3H9e
dlScRp776ngjkaAeAc8E1v36v7fYgfSn0fZu9Sk/i7pm/UZ0TkkSYSLaro44tQlW
+UzxntgV0w94wbfmQb6LzJbf2No1isVa9hz+NGEJGur0vPLso12PPe6kvtyO3eH4
hQTHqbQChqUAk0ic/s+SRsdiYNOGceoteCy2ysAf5vzvSqZULEFfVODLVo9xrAhe
DburhK/NF+w1wcTmTgOzJRTmtTlhiYYrMBlvipP2lYC8Ksyedo+Ku8FMbrfvOpRE
XU6NUL4VPAvl8ZKPOVc4Y6+rOB4VYjlYkgnpTEuJaSpplqaZ2GwD1fA1JjBX4J2o
jvQTocuTrx+N5J1OL43pBT9KnxGZa5UCvxrha1DD9C0KStb4z6qCKPQhWEnnAbXE
YfmoSwhHMu5zHCQmp7W/qm+wWwFnWbxw7s0CfGyoeGwz/oFNTFMCwA++tZp51B06
HOP1iEE/Z4jzxOQYiArz/bRUxQ1Nm7lrlalcoGwCgLhhD9Exp5to9JZkMKIwGllD
jOp84vWCp+stTczX8lt5NPbmChSpMWarJQn+c+c/tjhfq5Aa0To=
=EmOl
-----END PGP SIGNATURE-----

--xB0nW4MQa6jZONgY--


--===============2189866356466042748==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2189866356466042748==--

