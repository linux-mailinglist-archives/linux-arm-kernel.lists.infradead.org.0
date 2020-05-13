Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 861A61D1771
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:21:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vNcM5llziALx4B4iHdAiHP2njeTaAJhQ1WdNVIk68Z0=; b=qrgBHuGfhOlHv0mv9mluot4lb
	w62uavks0ZHxFzIcHx7IecSDMLtjJj0KaMC5sLqOL828whHe4N74gRKi5GE+rvufvn+Jhy/V0nvKQ
	+EYtfxvl23GQId+6hdNYUDuQjWJ+27Xhb0bpYOstSCm2cSvRdkbktbtsbO4o6c1D2aGXDnZDzVr0G
	OT2XkYTjKv1SJNpysfde87dL/U7UBWd+AOdex9nfA3muSQBAzkgfb5w2tbytYCqlF0S75BZKhAGoz
	P8BM/qQqxpUCWo2qc+cEcL4QmyvQSKy1uZQFOSCUvYv/GnpoNvqu5BINDFaWozbgrpZILw9zuCLOP
	WMdsdS3eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYsG4-0003ou-Kn; Wed, 13 May 2020 14:21:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYsFh-0003ik-J5
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:20:57 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 46108204EA;
 Wed, 13 May 2020 14:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589379652;
 bh=xYliYxPYdz+EzA8+AToQJ24fTWH1RasJD+CDbZFs8rM=;
 h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
 b=Dvecip84VSu3lqqwL/YxNQcQI+eL3pnDgXSxtxTORImbXyggVwPsyETfSQxV8DG4C
 tcKXcp1k4SZgfb83qcq1Ta8H6w+D0hFrurwLEGgqObeG1Ncfn8N4Zt0kkSUmgqRsbP
 eqItLAjIutwDCYbP+qM9XkJ8rRkaRiwuoumjHxsk=
Date: Wed, 13 May 2020 15:20:50 +0100
From: Mark Brown <broonie@kernel.org>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH 01/10] spi: dw: Add support for polled operation via no
 IRQ specified in DT
Message-ID: <20200513142050.GH4803@sirena.org.uk>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200513140031.25633-2-lars.povlsen@microchip.com>
MIME-Version: 1.0
In-Reply-To: <20200513140031.25633-2-lars.povlsen@microchip.com>
X-Cookie: Long life is in store for you.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_072053_655637_62ABDD7F 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-kernel@vger.kernel.org, Serge Semin <fancer.lancer@gmail.com>,
 linux-spi@vger.kernel.org, Serge Semin <Sergey.Semin@baikalelectronics.ru>,
 SoC Team <soc@kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8922459246748235284=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8922459246748235284==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="QDd5rp1wjxlDmy9q"
Content-Disposition: inline


--QDd5rp1wjxlDmy9q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 13, 2020 at 04:00:22PM +0200, Lars Povlsen wrote:
> With this change a SPI controller can be added without having a IRQ
> associated, and causing all transfers to be polled. For SPI controllers
> without DMA, this can significantly improve performance by less
> interrupt handling overhead.

This overlaps substantially with some work that Serge Semin (CCed) has
in progress, please coordinate with him.

--QDd5rp1wjxlDmy9q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl68AkEACgkQJNaLcl1U
h9DEtgf/f61AekAq0B2UKpnnXnB9997QNh55McFNERQwUA4m4Zm/1vkYcyAR7/bo
JkGPw3gjFvxohNrHtqPVOZgID3jyYGa2tzlJS4HH48o87zawaBgRBLJ0bLTz9M/E
l+/xv847Jg8dArpdyFxSgEHDRwRZdceyeKJvuDU0DMeCtY8bSxtpOjE964siNvM5
qL3CR8LIj50ULntvFEYQGWaQVGk78CUlgO7nW2/plZgH/RnHK4HTJtoXl1EhBOvX
KjoX/RHQTWoiPSVR5QiykOP4MyhQFWDzVHdjODKyja8L7FuoW9l48muoClpjaxU6
ie83z6BkYyIxxam518H3cUs1QSLPVQ==
=IaqJ
-----END PGP SIGNATURE-----

--QDd5rp1wjxlDmy9q--


--===============8922459246748235284==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8922459246748235284==--

