Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE8310B48A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 18:36:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uUq6Lmy+JeJOgGDnNvWekQ7aZfZFcQBSGnD/eAYp+sk=; b=e8BIxgfZZsE9RwU9uc9usSyep
	UwFD2GlqdmpjzSY8cOd6JYHCEyqDYu8vYQOq6ob74WnxgEblmcpw6sVT4WT0cwkdquqGXo/33eQv4
	vh0/4gr0ccGmzPufdQxR3wQYyNnWzYCtX+W5X2ExYOz+GciG1bXesxbwUS0ocHEusj+xW5Kr4Bhd3
	Vu6duREUwZVdm3fT4gfTmC+74vBAlo8UPlTC0qhI4AGAth7IQJ+3PRgMPtXk23x0bB8hFgsCJUnHd
	x9FEYzHmgKUUml+ONE1VlvD7J4sUO095ZF45k/hA9nV9gG+QOfHz5PN02B/mgbNGhPIizXVU/63me
	DbgvwWB0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia1EO-0007IY-1E; Wed, 27 Nov 2019 17:36:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia1EE-0007IC-2e
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 17:35:51 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 40B672073F;
 Wed, 27 Nov 2019 17:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574876149;
 bh=8HRYzVgPcetDDCF2bvKH47TzErjz8apkOIgcOvQ1Q6Y=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=BM8a+qfDycXQPaQbw7hsiDRV8bKLEb8FpywEpFh3vOEHMmQ1oySZpXGMCd0pvVHrH
 1iY9UZH1hZ6FYLZDgibJ5emEWQ4yU+lrVgNbPqySBe+7iNNKmCUHMOesopKoDFva/Z
 AAOADAj9iZp6SlGt3ST9nR57pV3T2Rj3+kVJ7jBI=
Date: Wed, 27 Nov 2019 18:35:47 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Vasily Khoruzhick <anarsoul@gmail.com>,
 Yangtao Li <tiny.windzz@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 1/7] thermal: sun8i: add thermal driver for
 H6/H5/H3/A64/A83T/R40
Message-ID: <20191127173547.ch3pcv3lxgdcrfnu@gilmour.lan>
References: <20191127052935.1719897-1-anarsoul@gmail.com>
 <20191127052935.1719897-2-anarsoul@gmail.com>
 <20191127111419.z5hfu5soxceiivg6@core.my.home>
MIME-Version: 1.0
In-Reply-To: <20191127111419.z5hfu5soxceiivg6@core.my.home>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_093550_143226_E8E5F4D2 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: multipart/mixed; boundary="===============8932195340882196173=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8932195340882196173==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rwcawhqsgm2ldrw5"
Content-Disposition: inline


--rwcawhqsgm2ldrw5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 27, 2019 at 12:14:19PM +0100, Ond=C5=99ej Jirman wrote:
> > +	/*
> > +	 * Avoid entering the interrupt handler, the thermal device is not
> > +	 * registered yet, we deffer the registration of the interrupt to
> > +	 * the end.
> > +	 */
> > +	ret =3D devm_request_threaded_irq(dev, irq, NULL,
> > +					sun8i_irq_thread,
> > +					IRQF_ONESHOT, "ths", tmdev);
> > +	if (ret)
> > +		return ret;
> > +
> > +	return ret;
>
> I guess just return devm_request_threaded_irq(... ^

This is harder to extend though, so I'd keep the current construct
(with a return 0 though).

Thanks!
Maxime

--rwcawhqsgm2ldrw5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXd6z6AAKCRDj7w1vZxhR
xcDrAQCIanJbpjnMpsEnvSREQtxK7fDMF2yUA4PEFXxT7Jc4XQD8DwS/ddoljPwC
LOq4CK3fzDEGVY2Hq1jih6ifX6QOQAw=
=BHNs
-----END PGP SIGNATURE-----

--rwcawhqsgm2ldrw5--


--===============8932195340882196173==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8932195340882196173==--

