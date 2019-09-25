Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC7CBDAC4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 11:16:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e+4iuduuklbXYwRLczvEQ1wRDAuAbdm/o0DjxrHTYQM=; b=tXVuIWJ1DSBXv0xZSgZYbYM7U
	VbiTPpQriwaxYQWkZyDtQyccUVwveU+OcUfPdodMGDGPJSgcHm1hL7on+bdQ80sSZpiWaJ/Jv1EJN
	9aU0tTWvVJ+10Ecyml55C3A2Hkiiir4s48mgzAqRTPUA7xeWi3jBdAzc9ppVElEdZXzfcnCd3bgCq
	J0mCRY3xliiuelYpTlIERBfF28s973XMoMAQLt9RUI5CzFRLQu28/RX14x9IEk3/y6iPsLlktXq+D
	zphDBmaPdpvm4Wmnes4hg/b3aPICUEieMctd+zkdbx7TapK8X4LU9/rarUKsIWwFou2zGU2RZGfPX
	BnxU8FmcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD3P8-0003ik-Mz; Wed, 25 Sep 2019 09:16:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD3OR-0003iF-9Q
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 09:15:29 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C17A020673;
 Wed, 25 Sep 2019 09:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569402925;
 bh=Z2Uag+DwW909ph/1HOySpUCCmNKluWCbwO7QFKK6F8E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LUAdHLEB0Njr3vPkEeYEnn9UJ65aNeraXjCw8vvFf6X7fzKvIP2kobELTTOGaz+Ai
 F/6Pk5OGh6G++u9o8W46kH+kpymk6XLNk9oIVvO3P5dgTlNDCS89SC0ZdQYzlIooNS
 HHynK47zEbah8oMWrSK4ChXXBYoripfPPxhyqVt0=
Date: Wed, 25 Sep 2019 11:15:22 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [RFC PATCH] interconnect: Replace of_icc_get() with icc_get()
 and reduce DT binding
Message-ID: <20190925091522.jf5q2jdo6njfkxto@gilmour>
References: <20190925054133.206992-1-swboyd@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20190925054133.206992-1-swboyd@chromium.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_021527_837987_48B3C845 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, David Dai <daidavid1@codeaurora.org>,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5486269731441519147=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5486269731441519147==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="aomtcuidegtr2wsv"
Content-Disposition: inline


--aomtcuidegtr2wsv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Stephen,

On Tue, Sep 24, 2019 at 10:41:33PM -0700, Stephen Boyd wrote:
> The DT binding could also be simplified somewhat. Currently a path needs
> to be specified in DT for each and every use case that is possible for a
> device to want. Typically the path is to memory, which looks to be
> reserved for in the binding with the "dma-mem" named path, but sometimes
> the path is from a device to the CPU or more generically from a device
> to another device which could be a CPU, cache, DMA master, or another
> device if some sort of DMA to DMA scenario is happening. Let's remove
> the pair part of the binding so that we just list out a device's
> possible endpoints on the bus or busses that it's connected to.
>
> If the kernel wants to figure out what the path is to memory or the CPU
> or a cache or something else it should be able to do that by finding the
> node for the "destination" endpoint, extracting that node's
> "interconnects" property, and deriving the path in software. For
> example, we shouldn't need to write out each use case path by path in DT
> for each endpoint node that wants to set a bandwidth to memory. We
> should just be able to indicate what endpoint(s) a device sits on based
> on the interconnect provider in the system and then walk the various
> interconnects to find the path from that source endpoint to the
> destination endpoint.

The dma-mem name is used by the OF core to adjust the mapping of the
devices as well. So, any solution needs to be generic (or provide a
generic helper).

Maxime

--aomtcuidegtr2wsv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXYswKgAKCRDj7w1vZxhR
xe8UAQC3EqIcKg882wsQj/TdlIO/sf9HoBIDnQnVNJ2t2kaPsAD/Qsa+D9ZQUlKc
qhYx4agifh1/WXVN4H+Wb39VO4vx5wk=
=Z0s1
-----END PGP SIGNATURE-----

--aomtcuidegtr2wsv--


--===============5486269731441519147==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5486269731441519147==--

