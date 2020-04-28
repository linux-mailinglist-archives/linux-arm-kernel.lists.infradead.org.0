Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B89691BC36F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 17:26:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zEGsuxdFiIm0FS+6TKh3NVnExakMQT0hq/FWf9IPAlE=; b=VpN9T+/FzpSdkwVVpa4tRROSI
	1TnX5wuYg7QWpZ3qAq99qcQscqBj5O5cy8wFqO3fvSSMqqgzzPfVDKr5rWSj1wHPEpxrMDrXSxa57
	UG8lWLREvrdJv4X0q5CwTc2xuUv5gdA+CbbKY4Yxhf9DXn9GGmiu4ci+S8sWT5Xa/no/n2Wg2GINt
	6RAdXKPrxmiY4sdEQVFkEAKS5EebyEj/rZZ/HGbSzI8M68M0fmA0AGfAvkwLm2ig/hYm/qt5+YP0a
	LNy9bcOLRMxR/rqBY7nYd9zWhR37giKLBuVAcNz6wQ+IR1w+YTc4HptKbn2Z1ogiV6SKwsGB9m11R
	Mc5WzXA3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTS7V-0007ip-Po; Tue, 28 Apr 2020 15:26:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTS7H-0007hn-6r
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 15:25:48 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C4838206D8;
 Tue, 28 Apr 2020 15:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588087546;
 bh=th3tqv11ZgZgj8E96bFG6ckng9nKhzjnFA3FZBoCqDM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UlWrbndNBYw9f/3rJZ9vWhuiMI9bols+NUpDrkpb6nMDPcIB+exm9thHsajcNMv2s
 zF8ons1G+Tu9b/RtEzHyR4oERYHCJhNFS7iYENen9Yfm5zJskPzV8YzecKgzoPwIBB
 YihdZq8p8AkIueprECGqpetiJGVIrRNXwJ4Om4/8=
Date: Tue, 28 Apr 2020 16:25:43 +0100
From: Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v3 02/16] mfd: mfd-core: Don't overwrite the dma_mask of
 the child device
Message-ID: <20200428152543.GI5677@sirena.org.uk>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-3-michael@walle.cc>
 <20200428124548.GS185537@smile.fi.intel.com>
 <3cd3705a-4f48-6a46-e869-3ee11dc17323@arm.com>
 <20200428142938.GX185537@smile.fi.intel.com>
 <6ccad285-7b5f-3037-d4d5-ff4d9571b612@arm.com>
MIME-Version: 1.0
In-Reply-To: <6ccad285-7b5f-3037-d4d5-ff4d9571b612@arm.com>
X-Cookie: Eschew obfuscation.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_082547_274718_A2CEE416 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-pwm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Michael Walle <michael@walle.cc>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: multipart/mixed; boundary="===============3465008472606018569=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3465008472606018569==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LYw3s/afESlflPpp"
Content-Disposition: inline


--LYw3s/afESlflPpp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 28, 2020 at 03:49:49PM +0100, Robin Murphy wrote:

> For better or worse, the platform bus is the dumping ground for random crap,
> so we just have to deal with all the abstraction breakage that leaks out of
> that.

The reason we're using the platform bus for this is that historically
people were creating buses which were essentially carbon copies of the
platform bus with the name changed and it was felt that rather than
duplicate code it was better to just use platform devices with no MMIO
ranges defined.  If there's some assumptions about DMA for platform
devices floating about somewhere it might be reasonable to revisit this
and create a non-DMA variant of platform devices since there is a
meaningful difference.

--LYw3s/afESlflPpp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6oSvYACgkQJNaLcl1U
h9Bs4Qf/RCa5JW+qq8H0nchlRU4JeR7TBiAfPi1/fksL+W8k+qMkV0/KwPSMqloA
CaWErSXTzc1Mk3WKIT7UxNlcK1QsuUfNZnyA3JhFXAg39xjWpt2vSM7A/zY5mnOm
ZkujuFzw0NzNuBoxG+8OaBH1Ltitu/KpgCPJgrmwT09V5WuZ5uf8b3mjnEo0reaN
DYcUgV/u3XkUeSbMd1iljqd8bt+jHFHoFlVOVtcw+xh20cKvQ6kOzIPYlDbuz9rM
tGPZwlyojrQeFd8YYTh1hqSzqeB6E19JgdPEi9P34gi7rIctOcI6b9PwFO9er5fW
ov2hgkFJC60dI+z5f9j70bLBQfMw/w==
=hzNB
-----END PGP SIGNATURE-----

--LYw3s/afESlflPpp--


--===============3465008472606018569==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3465008472606018569==--

