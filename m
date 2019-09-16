Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00092B3A46
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 14:25:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4SqOCGBJmV9T3ExaQPMP1SkVcorh+caZWi18S2H0I2w=; b=E7qsoihKwb2bqtHEvsV3NLBME
	xrsfsZpRMFWXbWdmpmjeeMbRhrcWweN82ojTfOgHvwG5FEFjdMJRSiErGCb1i1r4meG7uh3JFqN6f
	pmAPC61lWuqiJByBUf88OLccT2etjVZhX0B/6vBkBbuvVGVht8eAQFR+jJwQvyti8tUJfY63eraxW
	lOh2GpAMOrTTVuJlCyYZE3L3bLt9ieISIvpE2Kiv6q05J1zqlsTU1q/ahUhp5z7UP+6hdxo4ehyht
	yCScR/NsGMsGNuPvcGZcvguJrknq1RqGjc0jrlFm0Da25lOc0IdG1kbPZfqLDAoWMARCcm2RIwifB
	v+jzMrthw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9q4S-0008E2-P8; Mon, 16 Sep 2019 12:25:32 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9q49-00081g-Rv
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 12:25:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UpOy94Kk05newuEYV/41V7dmlT4Lz2VFaz56TX7gBF8=; b=CiI6oTAnkt3REl35f0JoiivqZ
 kci7oVKqLJ+95/kgphayD4VxMZREXsmIpO2lfPpBx4luYpBRmphfZHCn2s5lyfA9ZYo6NTGGfsL8q
 y7++5JC+uTYHC4FJnWdIrl2xmDTum/rxlQPhcUNPslj9l0Lw/rHL3NUgwyQmW2RmeH7TY=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i9q43-0004Ai-2f; Mon, 16 Sep 2019 12:25:07 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 22DA82741A0D; Mon, 16 Sep 2019 13:25:06 +0100 (BST)
Date: Mon, 16 Sep 2019 13:25:06 +0100
From: Mark Brown <broonie@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Re: [RFC PATCH 03/15] spi: make `cs_change_delay` the first user of
 the `spi_delay` logic
Message-ID: <20190916122505.GC4352@sirena.co.uk>
References: <20190913114550.956-1-alexandru.ardelean@analog.com>
 <20190913114550.956-4-alexandru.ardelean@analog.com>
MIME-Version: 1.0
In-Reply-To: <20190913114550.956-4-alexandru.ardelean@analog.com>
X-Cookie: Man and wife make one fool.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_052513_915531_B7040C05 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: f.fainelli@gmail.com, baolin.wang@linaro.org, linux-iio@vger.kernel.org,
 zhang.lyra@gmail.com, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 jic23@kernel.org, linux-tegra@vger.kernel.org, orsonzhai@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5494142287605907274=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5494142287605907274==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7U7nS7UhGMyosb9W"
Content-Disposition: inline


--7U7nS7UhGMyosb9W
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 13, 2019 at 02:45:38PM +0300, Alexandru Ardelean wrote:

> -	u16		cs_change_delay;
> -	u8		cs_change_delay_unit;
> +	struct spi_delay	cs_change_delay;

This breaks the build as there is a user of this interface.

--7U7nS7UhGMyosb9W
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1/fyEACgkQJNaLcl1U
h9AR2Af8D01ThOEZ5vESTf3rqD3pj7SjkSwmXmtdE8km6WNwCuP/WAlc6Lrgj02m
yPoEFSxsQq97A47hALIaE3WogYwp5YTeN4rI8yeELVQItYThT8CPHYaQa8RuWtJB
qIp3h1PlKVmOnSNPtNsW1/rfxxgeJNzX6GZf1UWDHjfkSIexZBrVWgb/YP3p3n2k
YTyaVloShnXeUA6BXfla9Z05BHc5aCu5KBCfLyJ8uTPIeD6mIP6b3ympe6sn6+Kw
i1zrIFYvEU/J2ZN0IaZXsKRMgMD2XRPjaDlMyygOm9hr6y2SGEyOt8ml37ISXJ4w
bFoisz9mWYHBsC9+53nBiKsGV+OrlQ==
=pg1e
-----END PGP SIGNATURE-----

--7U7nS7UhGMyosb9W--


--===============5494142287605907274==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5494142287605907274==--

