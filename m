Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEF41A8370
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:40:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1xh4QjnyCGqGvF/q8ysJLQjxHWPbw//iDr6OxydoedM=; b=Aa3370JXn2t21c+7pB0RmF52C
	1nIDnmYrZimpYIIXIw0y4Py6p8azQ6aHlUZ0WjFc8Q26Rr7DMhYkhGevjRuawtmICBZkdJ0k0/L8w
	d2cvQeuJLoFpEbttEEGfBnslIhMC4sbOpL7f6XGvfU60pa6ebmOmDAEq6bToqGw75+i7dX4fZG0Tr
	aRH0W84VbXRp8vVg8lNw6Idc/P0oxGBtOCPIXQ6BUGyfyxmEUzU64Aj6i4JUgRSkjx3LoTx3k8baX
	BEsGS5PVtubKK1h6Li8g61Vp1CSduIYAPzmR8VdyNALoFfURKgPglYC2G97B7uy4bdvnSX8h3e5fQ
	XZc8IYZaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONfq-0006xV-Md; Tue, 14 Apr 2020 15:40:30 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONfF-0005S7-Bs
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:39:59 +0000
Received: by mail-wm1-x344.google.com with SMTP id v8so12778690wma.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 08:39:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=U8GTwHnMm7fOWiSJPOBSV6m2y2+1A4gg/neQHtMHeu4=;
 b=gSs78mzVUPzzb0Vtyt4Lc1QixoWe7H7cf6B6egjWdVtHb9B5L6NVmzrZUx9t7dQODf
 G3pnNRIkj73wSgRSASKAOjVj3VmsRNMftpE/15acQ6ThjmXwFcdpr8l52NAUxS9Xy0DX
 a1QBBW5FV+oPu87GsBA6+e4EqYf06QE7qk/mVvM7O4uox1MJqh2jtGye7KQxgFhEidzW
 qr5hAxjM8ekqexWSqATS4QqfcNot12W2p2P4RopdGtg6taxyDROuXe0QYS1Dmrx0tn6b
 7cFTDr8bkjCs/a7bR5D8Drfwl6HpJ6GjdwVogV5LtVeV5LU9yXArXZiK9MpiGzegagS8
 e2ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=U8GTwHnMm7fOWiSJPOBSV6m2y2+1A4gg/neQHtMHeu4=;
 b=ax43Kkp5AP86vq30ACPXh2ExT/SNY+5L9KWBMI4hXSB2h635Dohd+q8syyUbWLZ8fJ
 bo24zb6SdSXCAz14h+f69vKTwFV+vxvCsa44tM2tW86lc2ULN1ZRStmNZM3c4/wqi5Li
 1KreGrxyPgSwwsj2MlValqQs56SV+L0Pv4yYVGmZZfpBYF8PC3b6A7hE/xzN9gnoZfBJ
 0uUel5UjnmQboLWf6PbVe1T5ZaGQ8XrKUpJtGgXLZzzpPZc42QLb5LQFm3kARTRK+/CP
 4feWiZZPilnL2paw99RulGy1gfqvaGyHYe4NVP5uZKdloHdvq5Keix+ILD0/mJ0RGi9Z
 LiCQ==
X-Gm-Message-State: AGi0PuaaaSeLYo7Bhvm6Rnpu6a7T3KaUpi0ab8/DZSS3COExtdJlq2eO
 UUuNT4L75WqxHmtGNwblbcg=
X-Google-Smtp-Source: APiQypK/HbILUE64zYGJ4iCNavoetIFjifDKWsRL8QZtl/ZK/muMlXMnhBuOMRFkXujuT8XNkoTovQ==
X-Received: by 2002:a7b:c642:: with SMTP id q2mr466521wmk.41.1586878791725;
 Tue, 14 Apr 2020 08:39:51 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id t67sm20474257wmg.40.2020.04.14.08.39.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 08:39:50 -0700 (PDT)
Date: Tue, 14 Apr 2020 17:39:49 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v6 09/14] memory: tegra: Add EMC scaling support code for
 Tegra210
Message-ID: <20200414153846.GN3593749@ulmo>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-10-thierry.reding@gmail.com>
 <14cfd13a-5fde-f167-64cb-a61cba119a97@gmail.com>
MIME-Version: 1.0
In-Reply-To: <14cfd13a-5fde-f167-64cb-a61cba119a97@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_083953_494911_DED6C561 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Rob Herring <robh+dt@kernel.org>, Joseph Lo <josephl@nvidia.com>,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0231952970842562730=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0231952970842562730==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0fZkDq/H4AmqaB8D"
Content-Disposition: inline


--0fZkDq/H4AmqaB8D
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 10, 2020 at 05:26:23PM +0300, Dmitry Osipenko wrote:
> 09.04.2020 20:52, Thierry Reding =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > +static int tegra210_emc_table_device_init(struct reserved_mem *rmem,
> > +					  struct device *dev)
> > +{
> > +	struct tegra210_emc *emc =3D dev_get_drvdata(dev);
> > +	unsigned int i;
> > +	void *table;
> > +
> > +	table =3D memremap(rmem->base, rmem->size, MEMREMAP_WB);
> > +	if (!table) {
> > +		dev_err(dev, "failed to map EMC table\n");
> > +		return -ENOMEM;
> > +	}
> > +
> > +	emc->timings =3D (struct tegra210_emc_timing *)table;
>=20
> No need to cast the void.

Indeed, looks like I can get rid of that table variable altogether.

Thierry

--0fZkDq/H4AmqaB8D
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6V2UUACgkQ3SOs138+
s6GmYg//WAKvtCE2533jvRwm9viWE7gIwO4+5Qc+gBHrtYeZc/s1jQZHipianYQu
9kbwBh6XO6UgeyzaaK7f3qQQrgjyy3zqy8dyINW6FgQBBJndPDTzN45cZ3rjVpoZ
FMnnJotiX/1tl+YBkMbr84hh1ZYDucuH/BktLynsv/nowYs/0gAMExQs/wShOWz6
E7+D4uddL567mbQLN/ssHJb5HysMLNwAIMg2IeFa+kUXq9gC/x3PbstpRCeY9L7r
/gCwTnWGRscH9JT6Cyw1qoSr00CX5jZSXP2A4dY81YsGyfmNqJsrkd+X+oemqV27
oBTJFFZvTY2ShEP8AXKyP91BUzSsECpY7iPYM0ji7a1l4avpFBJCrKOHkhHZukUZ
+VAWpr2XnQgeJtHMz6dAfFJQyPw+KPEhdRFMgqcZYUzYFiVe0b3W4D1WIkl50oJL
rFLUGhnjgpGhnNezkWwHN1NYbgf+GsCe2gkk99IKLHAnfj/ds2sUNOZD7qIVrTAm
6Otq32sdI3T2T0BeRkY/ysF5ChkASMGjmD6xkDGFrk9Ddz94WNPa+wwrCiUnrr4e
Ceu/4HxF8ncU63g+f7N35dpfdZZpb/qWwrfFkDtEZ48tVf4fkKBs8YKyzuPliGIM
dAt7FZL3/mTm3l263IjkJuYarBBB+Ggs/hR4NB/ulB0oleeCD1A=
=MoN0
-----END PGP SIGNATURE-----

--0fZkDq/H4AmqaB8D--


--===============0231952970842562730==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0231952970842562730==--

