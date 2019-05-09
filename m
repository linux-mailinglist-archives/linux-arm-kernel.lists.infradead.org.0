Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D4218CA3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 17:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QjBJnZpDk+E/OUmyYK91GtgcoLVc6LTXfD8+xuuko7Y=; b=L77f3zcYjlo1Krk5Fexa1unqd
	hsh0CSf757tBep2qhSQFtQirQvnphGN6STCQfDwcxzt3oqO1VU4jGSnRt48oKA5IppEAYad4BraK2
	WpBj74osJtNBcZ9MCgmocgaP/p/nPeGNigmTR4A+FNbeVl2dljyg0pun7aeQA3bA7xZ2ZhslOAlYR
	gSs38ntoymUiO700PIkVBVeDO/HCE3u42Vn0zPHUWgBX/2NcUT/HTdM3MobJ5kthh4mjJbYL9aBOk
	JYIyvWzRIoAef7FWQbiNk86Li2IjGqhrRmlVMY8v3ldBE/e+KD+yfMsLEmua49uCJQW8/bIlCylFN
	g+JbpIxCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOkZm-0003Op-MS; Thu, 09 May 2019 15:03:14 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOkZY-0003FK-CP
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 15:03:05 +0000
Received: by mail-wr1-x443.google.com with SMTP id r4so3498888wro.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 08:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+Sog/2qIfcLY1kwGbgsfnaLx1YInIBe0tmQKmP6und8=;
 b=agNGjFRiqp7mKOA0sQBpnVLz6Is49Ht1R++OlJR51N5ZhOmXmn9B9bjKoaCplyoGZX
 o0D4RPxiOoechErWKKdqUMf5YIG4QHxLWCBeVtmO5ML9eLa7vM2yXQQzSFBl102vPvB2
 dN/VOVjGj4fu/GMzdxa+FuHn0nPsF9VBMoEygXoJN7Pjiuo7rNUpIWcs/jtyHrGhdmnv
 NdQabe0Ddzt8U5wppFH1vxjGHqtKwrg3voWdW9wLdKu7UPE03HZ127Q7xZtAztFkZWdp
 XBqFvUSs9+4jS4XOzZ+VnwNMCn4KcUUBUloB4TsVDNBSFaO3tDml4w05QNirotWIgYtW
 ZFVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+Sog/2qIfcLY1kwGbgsfnaLx1YInIBe0tmQKmP6und8=;
 b=cwSWQpCGLifny0qK3wtarA1YfhOXGE8gyacJ9nTHt5fGjJgNcwPC2gpumYzLssx5PJ
 F/NbPevFDw5lr+c+STTyNVeIOUbb+ONzm+W0u4R2e77TXJoo53DBad67Ioe7Nec8YpEI
 yipnpDD43jhc9frBad63yrjRAqiGpHsySkMj6B4vlZXcFLX6cqLDnktlvb2tigVv1vgr
 NCBAb8AWR2jVpRlYPWo1vaEMQ3gVuk179BVeLzq9zsQ3epTT2aiYM4dIfYNQyBVBSAit
 p8QfIVxBk4vKl+EGUXQ/AzQrnAf8jP8H6x1pRj0GnTXEzQnd4s5iYSj/XNz+iJmcmLWl
 9Hpg==
X-Gm-Message-State: APjAAAVwjGDXViIW43QwN2Ga5QT2xi+Tn/but0a4hqQH2c+SFO/CSQO8
 3Segy+Y8CGDXQy4s5y9pz+wCELzi38I=
X-Google-Smtp-Source: APXvYqx2U4Ma/5CCY1tcHElwBTn4qwsSkBBXTVWp/3t0oForQwbgZRUKZ2bl+MvX4wDPq89Ij4naKg==
X-Received: by 2002:adf:edc8:: with SMTP id v8mr3701903wro.206.1557414178884; 
 Thu, 09 May 2019 08:02:58 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id x17sm3298766wru.27.2019.05.09.08.02.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 May 2019 08:02:58 -0700 (PDT)
Date: Thu, 9 May 2019 17:02:57 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V12 2/5] pwm: Add i.MX TPM PWM driver support
Message-ID: <20190509150257.GD8907@ulmo>
References: <1557408252-21281-1-git-send-email-Anson.Huang@nxp.com>
 <1557408252-21281-3-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
In-Reply-To: <1557408252-21281-3-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_080300_979370_F758FA07 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 Robin Gong <yibin.gong@nxp.com>,
 "schnitzeltony@gmail.com" <schnitzeltony@gmail.com>,
 "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "jan.tuerk@emtrion.com" <jan.tuerk@emtrion.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============0774568978150295066=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0774568978150295066==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="h13GW2gLSV2TxsNR"
Content-Disposition: inline


--h13GW2gLSV2TxsNR
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 09, 2019 at 01:29:29PM +0000, Anson Huang wrote:
> i.MX7ULP has TPM(Low Power Timer/Pulse Width Modulation Module)
> inside, it can support multiple PWM channels, all the channels
> share same counter and period setting, but each channel can
> configure its duty and polarity independently.
>=20
> There are several TPM modules in i.MX7ULP, the number of channels
> in TPM modules are different, it can be read from each TPM module's
> PARAM register.
>=20
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> ---
> Changes since V11:
> 	- ONLY add function comment to pwm_imx_tpm_round_state(), no code change.
> ---
>  drivers/pwm/Kconfig       |  11 ++
>  drivers/pwm/Makefile      |   1 +
>  drivers/pwm/pwm-imx-tpm.c | 448 ++++++++++++++++++++++++++++++++++++++++=
++++++
>  3 files changed, 460 insertions(+)
>  create mode 100644 drivers/pwm/pwm-imx-tpm.c

Applied, thanks.

Thierry

--h13GW2gLSV2TxsNR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzUQSEACgkQ3SOs138+
s6F/KA//UWmIXrWZOEJNfWpMu2ymqohHv39qDATl8P2EsfvZ2lFAEj+Q7KxyUghE
VEbkXJksm+A8u8HBj1MKNzbxrc1xodUIWaOVo3/Nj8BY3gt1+yIaiVaEhRvUPaod
18uhIWkFg2eZAw+3vHRumyHdL/DeYu1ejmvCD3qmeCbW7TPudKPy4DFzpD2zQmYG
qVKChU8J6SA+jUNsUrAVaKBdSoorWWeImvgZeXWUN6ltRZnua5goJvWU6NSDhe5B
PPvaJAOBJADlWJ3VmGieueuY4ds2k+XbFzXezgPQZNzFYrCgdMG+A6KCzbt5ZKS+
3Hh4iSlVKwpvbK6bxOqSqqAi1AkqbGSX3FRLy1/vpm9t+SXrZWpuk/YczuaXkmNi
PhKmIQGpeuBscTs9geeNY3bstqKouYoJr5KiPrk8AxeBdxxxv6QWJtoAOXr26OqM
uGkZqYemfYjsfb8fS6Yix4NsXNfDDGU5NpHuzaoBZgbzKHZsCXYB4YYWOzX2vOE/
7TzVOLSBy/sbjDxjclVrwMvbxz9JU+j//9wn4qU49fqI3IVOq8yOa+D2jZTHOrJN
v0X6H5YQzDGtOwsPSPQIeCAxXeqvwBCmUsN65AlfVd6NHld4x/yuiXvezOqrobjn
eVxK3nv9C88dJUO40pmTUBCe5P/rXFQk5NcSffby6hGUbz3UuCA=
=SEhD
-----END PGP SIGNATURE-----

--h13GW2gLSV2TxsNR--


--===============0774568978150295066==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0774568978150295066==--

