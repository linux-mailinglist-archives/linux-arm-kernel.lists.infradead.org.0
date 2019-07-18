Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE48E6D40C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 20:38:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=68dHgngb7qnEKmjk1qJCpsHhD6rTJxtq8eiS9dVfKKQ=; b=rwe5yjzh7hLMzC6USbTwgi5Sc
	7S2oSjjs7EE+XDBJnbhfR09M6LcRQ3aqpyZw+Djoz+iVlS+Pl2hhCSRTjgd7FPZzThs5UjjJoAPg+
	i6eDMLKLOqJuHoe4LfVa2zts8qiSV40IOKjvGqKG6KhI9A/bYwzmKiglgWUh8DNnW5AP0nXBJhXa3
	4vZnXKTGfjV1GQTt/FVdaJVo4HuH8QfKG2Jq/wps91IIzLSNtDFP3WDGyyIQyzwZSkMOmZFyKiFZ0
	lCeYRARQG9iJEWxLfA+nUYzDqPWVl9D1FwNKYT5FQH7jV/IkPPTLRqH+oUsIvBwstdewuYf/lTR2G
	TPab3Xjlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoBI7-00007A-Kr; Thu, 18 Jul 2019 18:38:07 +0000
Received: from anholt.net ([50.246.234.109])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hoBHx-00006F-A3; Thu, 18 Jul 2019 18:37:58 +0000
Received: from localhost (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id 0E59410A2EDF;
 Thu, 18 Jul 2019 11:37:52 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at anholt.net
Received: from anholt.net ([127.0.0.1])
 by localhost (kingsolver.anholt.net [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id WE6eC8O3qbeP; Thu, 18 Jul 2019 11:37:50 -0700 (PDT)
Received: from eliezer.anholt.net (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id 5024010A16FB;
 Thu, 18 Jul 2019 11:37:50 -0700 (PDT)
Received: by eliezer.anholt.net (Postfix, from userid 1000)
 id 418FD2FE2547; Thu, 18 Jul 2019 11:37:51 -0700 (PDT)
From: Eric Anholt <eric@anholt.net>
To: Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Stefan Wahren <wahrenst@gmx.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH RFC 07/18] clk: bcm2835: Add BCM2838_CLOCK_EMMC2 support
In-Reply-To: <3b691366-81b1-efe3-8b7e-a81f0fc9c2fb@gmail.com>
References: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
 <1563393026-17118-8-git-send-email-wahrenst@gmx.net>
 <f6d8fecd-94d3-a5a8-2d4c-c1ae2b6a0919@gmail.com>
 <3b691366-81b1-efe3-8b7e-a81f0fc9c2fb@gmail.com>
User-Agent: Notmuch/0.22.2+1~gb0bcfaa (http://notmuchmail.org) Emacs/26.1
 (x86_64-pc-linux-gnu)
Date: Thu, 18 Jul 2019 11:37:49 -0700
Message-ID: <87blxrgpdu.fsf@anholt.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_113757_393227_2F24DD2E 
X-CRM114-Status: GOOD (  19.34  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [50.246.234.109 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4908894486240151945=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============4908894486240151945==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Florian Fainelli <f.fainelli@gmail.com> writes:

> On 7/18/2019 1:47 AM, Matthias Brugger wrote:
>>=20
>>=20
>> On 17/07/2019 21:50, Stefan Wahren wrote:
>>> The new BCM2838 supports an additional clock for the emmc2 block.
>>> So add a new compatible to register this clock only for BCM2838.
>>>
>>> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
>>> ---
>>>  drivers/clk/bcm/clk-bcm2835.c | 33 +++++++++++++++++++++++++++++++--
>>>  1 file changed, 31 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm283=
5.c
>>> index 867ae3c..5fe4695 100644
>>> --- a/drivers/clk/bcm/clk-bcm2835.c
>>> +++ b/drivers/clk/bcm/clk-bcm2835.c
>>> @@ -31,7 +31,8 @@
>>>  #include <linux/delay.h>
>>>  #include <linux/io.h>
>>>  #include <linux/module.h>
>>> -#include <linux/of.h>
>>> +#include <linux/of_device.h>
>>> +
>>>  #include <linux/platform_device.h>
>>>  #include <linux/slab.h>
>>>  #include <dt-bindings/clock/bcm2835.h>
>>> @@ -114,6 +115,8 @@
>>>  #define CM_AVEODIV		0x1bc
>>>  #define CM_EMMCCTL		0x1c0
>>>  #define CM_EMMCDIV		0x1c4
>>> +#define CM_EMMC2CTL		0x1d0
>>> +#define CM_EMMC2DIV		0x1d4
>>>
>>>  /* General bits for the CM_*CTL regs */
>>>  # define CM_ENABLE			BIT(4)
>>> @@ -1950,6 +1953,15 @@ static const struct bcm2835_clk_desc clk_desc_ar=
ray[] =3D {
>>>  		.frac_bits =3D 8,
>>>  		.tcnt_mux =3D 39),
>>>
>>> +	/* EMMC2 clock (only available for BCM2838) */
>>> +	[BCM2838_CLOCK_EMMC2]	=3D REGISTER_PER_CLK(
>>> +		.name =3D "emmc2",
>>> +		.ctl_reg =3D CM_EMMC2CTL,
>>> +		.div_reg =3D CM_EMMC2DIV,
>>> +		.int_bits =3D 4,
>>> +		.frac_bits =3D 8,
>>> +		.tcnt_mux =3D 42),
>>> +
>>>  	/* General purpose (GPIO) clocks */
>>>  	[BCM2835_CLOCK_GP0]	=3D REGISTER_PER_CLK(
>>>  		.name =3D "gp0",
>>> @@ -2101,6 +2113,14 @@ static int bcm2835_mark_sdc_parent_critical(stru=
ct clk *sdc)
>>>  	return clk_prepare_enable(parent);
>>>  }
>>>
>>> +bool bcm2835_has_clk(size_t index) {
>>> +	return index !=3D BCM2838_CLOCK_EMMC2;
>>> +}
>>> +
>>> +bool bcm2838_has_clk(size_t index) {
>>> +	return true;
>>> +}
>>> +
>>>  static int bcm2835_clk_probe(struct platform_device *pdev)
>>>  {
>>>  	struct device *dev =3D &pdev->dev;
>>> @@ -2109,9 +2129,14 @@ static int bcm2835_clk_probe(struct platform_dev=
ice *pdev)
>>>  	struct resource *res;
>>>  	const struct bcm2835_clk_desc *desc;
>>>  	const size_t asize =3D ARRAY_SIZE(clk_desc_array);
>>> +	bool (*has_clk_func)(size_t);
>>>  	size_t i;
>>>  	int ret;
>>>
>>> +	has_clk_func =3D of_device_get_match_data(&pdev->dev);
>>> +	if (!has_clk_func)
>>> +		return -ENODEV;
>>> +
>>>  	cprman =3D devm_kzalloc(dev,
>>>  			      struct_size(cprman, onecell.hws, asize),
>>>  			      GFP_KERNEL);
>>> @@ -2146,6 +2171,9 @@ static int bcm2835_clk_probe(struct platform_devi=
ce *pdev)
>>>  	hws =3D cprman->onecell.hws;
>>>
>>>  	for (i =3D 0; i < asize; i++) {
>>> +		if (!has_clk_func(i))
>>> +			continue;
>>> +
>>=20
>> I think that's very hacky. Can't we just create a per SoC list which get=
's
>> passed via .data and in probe we iterate through that list and enable the
>> clocks? That would make clear which clocks are just for bcm2838, basical=
ly emmc2.
>
> Or within the structure, add a flag that indicates whether the clock is
> available or not for a given chip? That would avoid having to introduce
> bcm283x_has_clk() functions that needs to maintain a possibly growing
> list of clocks. You would still have to check the flag though.

I think this is a good solution.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE/JuuFDWp9/ZkuCBXtdYpNtH8nugFAl0wvH0ACgkQtdYpNtH8
nujm5BAAqTw22zd+97KYRSp3dvKuulqM3L8dPozlpAmE2wErmmMZ2z+jZzIqZnVQ
4tRHGz5shBnoy+zY1Ex2xjezPRwPL43ITWpNURrjpKCkN3UWGZZhwYxOvFTa+RDP
l3hNK/qbx3US7p/N2chwgKO11NXG28Gw634dIOqvW/qzQSGoqM/5JDU9Av6FtGm+
2zqZwS3vsrvXQ/X3VyZBpFVZ/3KelN/M3Uc6KZMIECqaFpb50Kq5MasKE/U/Pxin
QemNYAP6JGrVUfZQknPCjA5bUbeksjUs8OWqA8ZXHQkL3U3+tcmtMP/H5dIrWYnV
bxyZcT8ZwjIB+BYRb0Zzet0vvCM74IU1/IU1ncvLiBEqgJ0apzFTKIulIsHX62bR
ymxP+nNmYz7ZqYsGqd1IZIMeLtlFobrHWHVLANoOwNg+JfvMpt2aTm6DGDKBg8Cv
MwMfYej3X0BEgBtl8EY2LtfRPwsoynIVIcKzF4qRuEmv/+lePs8oRnsOYS2th25J
cpoBMfrsGJuavdlR9AyUtH+TbVo1/U/9XQM6D5MB7hRjOzk4EoPf7+weyfZUlnDf
IUfMAathk79hsi8BvBLL2aFqDFEWGorAkXCRlM0StK1TVypLqNcDvkeNgRfmr5xT
2UbV5HV7/WdAmePVl7Ev+K/M/b6TLla+XrTgMOLXow3Awln5mKY=
=qcK3
-----END PGP SIGNATURE-----
--=-=-=--


--===============4908894486240151945==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4908894486240151945==--

