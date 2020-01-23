Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D396414642C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 10:12:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GT6KSqus4vGqoRC9/ARMLQ9VbnKS2Gs9KWkTijasKIg=; b=McYfhYJIyFL75nBjDY4svSixi
	KRIH3uDrwQLtQuP0DAJor1CvVD9V5sK5PdU4UyxU8Lft73oFRJ2htW2tgNkIisRa/GQS3coOvHHZG
	ikTzCkTsLlPeRtoHwG+bQIOJ3GIkEd0MBHg+3CC/X8ceFluFP0IE9TeJa7LHzmDEXeCc78gMKMNOF
	yuH4iFD6EoUGLKIwWGN1uJYtyEfQ7SjJulgvnJOTp8tPz+SPTTe9tFMbQ0KgTFIBjARL2ZnlsngIG
	3K9amv+bKnBq4iqkUDTTSvLy/qWeTIskH6wmkFg+WWHRGfI53SxXeEmISnd5MISAnj97VEbvxkVa5
	5cWuoVo8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuYXW-0002K9-BM; Thu, 23 Jan 2020 09:12:38 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuYXN-0002Jh-PU
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 09:12:31 +0000
Received: from localhost (p54B335E9.dip0.t-ipconnect.de [84.179.53.233])
 by pokefinder.org (Postfix) with ESMTPSA id 0D5DA2C084A;
 Thu, 23 Jan 2020 10:12:29 +0100 (CET)
Date: Thu, 23 Jan 2020 10:12:28 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 1/2] i2c: Enable compile testing for some of drivers
Message-ID: <20200123091228.GB1105@ninjato>
References: <1578384779-15487-1-git-send-email-krzk@kernel.org>
MIME-Version: 1.0
In-Reply-To: <1578384779-15487-1-git-send-email-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_011229_977296_06B6B7D8 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Greg KH <greg@kroah.com>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, linux-i2c@vger.kernel.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, Jean Delvare <jdelvare@suse.de>
Content-Type: multipart/mixed; boundary="===============6353986127878363101=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6353986127878363101==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="s2ZSL+KKDSLx8OML"
Content-Disposition: inline


--s2ZSL+KKDSLx8OML
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


>  config I2C_ZX2967
>  	tristate "ZTE ZX2967 I2C support"
> -	depends on ARCH_ZX
> -	default y
> +	depends on ARCH_ZX || (COMPILE_TEST && (ARC || ARM || ARM64 || M68K || RISCV || SUPERH || SPARC))
> +	# COMPILE_TEST needs architectures with readsX()/writesX() primitives

The list of archs neither looks pretty nor very maintainable. My
suggestion is that we leave this out of COMPILE_TEST until we have
something like ARCH_HAS_READS or something. What do you think?

> +	default y if ARCH_ZX



--s2ZSL+KKDSLx8OML
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl4pY3wACgkQFA3kzBSg
Kba1NA/9H0SEGYIvfDABmnfbNf6aGYleN3ezYXuNVZcg94mKdl/OS4UHpGthKu2D
ksZt3e2KI/77paY9AXrIlhbrEP8WBJbfvvMwocmv1ce+gy13O6QmFIbEOE42KexE
wtBOdC/gdzqEGJh647HpDIm6ayAYQRCUbuLUSgjbCdVZ0pD51VpHqpEtdUVY0G7d
HyQlHNGuzGztEKwU9TojdYg5dUClxTqAbZdBae3PdDuher3njrsFGlhUTideR0H/
0ZG/aZs5dZLhgTf52AZvgjpuXNIYUO2h5TEd1FN31jbMrTqCty1vfA5ruLzFZPFD
YDwN2Z6nsxiV3vwlevoB71yuPbxMQbBmzYqx9/JBZxjzJuBjaKz/yKkekoWoEpeX
ZYToFGjNYxuIfynfKUDwdz9Lpyui+R2NZ32YWEoYpy9pt7qBUDWGN50db6A8b69G
KkTJpEI2AU0q9fq07GNwZNxv8HW8rAGaJp5lgezQ49N7b8mvNdj/D4EBpAO7dmhn
0p3veACJQv8si5U5PLyq4/771qJJm6qpV/giPMOGiLQl8E+xw96STJdeSOQu6wON
8ne1TGbMKMjydsdk6OWfejgrhuFpF6+m/qyGCkv8TXPrGQ4hJcxW06t5JGEYtOKR
bkUCp38s+dmxnaH1FNWwan0tM3VTQJdl1Qw4TsGsNglxAyyNVME=
=tSe9
-----END PGP SIGNATURE-----

--s2ZSL+KKDSLx8OML--


--===============6353986127878363101==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6353986127878363101==--

