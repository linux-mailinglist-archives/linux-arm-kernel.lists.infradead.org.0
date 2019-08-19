Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA16894CC9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 20:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4sQYuk/pzp58avsNckOZzAJC/tle5IEW5GHk5ytqEVk=; b=kbLIzXBLqF5E5a7JA1sYrM93w
	Mg+2CQvo6Cy7WhimjYKAk7PrYWEl8JM0CWxHW0qTk2+WwPbbeyrL27l+Aw7uWvCC3/N6TxayCMjDs
	gnvwC9IW0/8Xw/r6ipJMbsAYrNKeT/mH5nPy58FNcVhRf8FhkTzKTh7Qc/F1BCvTySyUanMNiY8PP
	nLYD6QbH0d8uxE3MREy9cOMMWlEAFbxDbV7OGLv6N8glLJZOx0VjyzYTXVibo+q903VW/L74d4Ej7
	KAZSOXTg943nMCSwkWTnlVADRaHG40x16q7z4LAR8rJXxL9hA9Z6v6xACTrwrPwO20UgNB8r4FW1K
	XGOgtyNCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmNj-00021c-1q; Mon, 19 Aug 2019 18:27:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmNN-00020n-El
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 18:27:30 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E14B22CF5;
 Mon, 19 Aug 2019 18:27:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566239249;
 bh=T6MbYST0Y+M3UBooFmVzIiLfpDqy4T6s/zqDGdFpXGc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=b4iLOurdcx7gNRxvezPCn8jFlaNZg/a4tNzAUYh/EkweINiaQAot3V/puHFFG5veu
 Eb/ltmyrJm35BhR+xTTuZ04fiqwD4hKie7ZBE3X02oAQnfaSMcfILzn3JpGt1Kg4YX
 pewyCCuwIouHrwCI1g1Hb3GTfP1S96kpHXGY7Nrw=
Date: Mon, 19 Aug 2019 20:27:26 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/5] dt-bindings: mfd: Convert Allwinner GPADC bindings
 to a schema
Message-ID: <20190819182726.7se7vexlftybsqlz@flea>
References: <20190813124744.32614-1-mripard@kernel.org>
 <CAL_Jsq+QxsxxCsaJ8GjSQhKVHnas3WqjOPnv86=-fWs143CUQg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+QxsxxCsaJ8GjSQhKVHnas3WqjOPnv86=-fWs143CUQg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_112729_514502_9DE59534 
X-CRM114-Status: GOOD (  14.68  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Frank Rowand <frowand.list@gmail.com>, Guenter Roeck <linux@roeck-us.net>
Content-Type: multipart/mixed; boundary="===============4014002962065167183=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4014002962065167183==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cqozu4ph2avfiavn"
Content-Disposition: inline


--cqozu4ph2avfiavn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 13, 2019 at 03:28:01PM -0600, Rob Herring wrote:
> On Tue, Aug 13, 2019 at 6:47 AM Maxime Ripard <mripard@kernel.org> wrote:
> >
> > From: Maxime Ripard <maxime.ripard@bootlin.com>
> >
> > The Allwinner SoCs have an embedded GPADC that is doing thermal reading as
> > well, supported in Linux, with a matching Device Tree binding.
> >
> > Now that we have the DT validation in place, let's convert the device tree
> > bindings for that controller over to a YAML schemas.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > ---
> >  .../iio/adc/allwinner,sun8i-a33-ths.yaml      | 43 +++++++++++
> >  .../bindings/mfd/allwinner,sun4i-a10-ts.yaml  | 76 +++++++++++++++++++
> >  .../devicetree/bindings/mfd/sun4i-gpadc.txt   | 59 --------------
> >  3 files changed, 119 insertions(+), 59 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/iio/adc/allwinner,sun8i-a33-ths.yaml
> >  create mode 100644 Documentation/devicetree/bindings/mfd/allwinner,sun4i-a10-ts.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/mfd/sun4i-gpadc.txt
>
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied, thanks

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--cqozu4ph2avfiavn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVrqDgAKCRDj7w1vZxhR
xe/QAQCdjHYyPT1sbZs3doytGQ893nBVcEEfzd/iGm9+jIBxGQD/QEk4vLmUXEEu
fopc6mLQNzKp3ZMuCE3WzEnc5wQU+Qc=
=yYiT
-----END PGP SIGNATURE-----

--cqozu4ph2avfiavn--


--===============4014002962065167183==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4014002962065167183==--

