Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFB1B448
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 20:21:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BoNbY7J79N9ACtCNSA/E90YhxTkiSgMwAwE14190l8E=; b=SaqxuiQgjk0AoqQ9OymQ6/4QE
	07PGw4eaZrF4sLlbOH0Ap9WTUu81LDjauZCbYzD7X/TSOfUTbZ5PTyCDiciw2cpXRD/3zbr9pr7af
	wAMPlYitAyr0EmCbIDAiUdxfJEvo1cO5wMfpQgWSvCtrmYSRGEo+RGCO0ehG50Rypze0fxB3S1tLc
	xPPgVIx1SscRA/5H/uRy0v33KsrBAjnE233lDMqafWCBYa2+xa1fXq15qgR87Cl/xoDrRfogdpI+u
	DGuD9cuXzvzOICF/xgTxmIw24UaXPzmoQoWPtUiX06mlpQ+NI5vStjNUQdYbyUmkvyNK/Wt9KCon/
	YO684V3JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKRx8-0007eA-8B; Sat, 27 Apr 2019 18:21:34 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKRx1-0007de-9K
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Apr 2019 18:21:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p01vbJpyOWJAdEXdJU0OCfw6W6SYYsQSTTr9W3aE80M=; b=oJ1uFElZv1svSo9snDycG0e8y
 X48y5Srs/Ekw8ZvHe6Od0d3EayaPfXx2H79dKk9/lxbXPDG1wUIDDzU+rWqiyA+ExIDZSzmVRqvLb
 8MGoXm/TgudGdCH7HjrW0xDCfvA5HEc3F4yFVR5AXbzxsQDSWOsafg76J0wJBGqUEV0MU=;
Received: from [211.55.52.15] (helo=finisterre.ee.mobilebroadband)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hKRwq-00053h-RE; Sat, 27 Apr 2019 18:21:17 +0000
Received: by finisterre.ee.mobilebroadband (Postfix, from userid 1000)
 id 54AE1441D3B; Sat, 27 Apr 2019 19:21:13 +0100 (BST)
Date: Sun, 28 Apr 2019 03:21:13 +0900
From: Mark Brown <broonie@kernel.org>
To: Jorge Ramirez <jorge.ramirez-ortiz@linaro.org>
Subject: Re: [PATCH 2/3] drivers: regulator: qcom: add PMS405 SPMI regulator
Message-ID: <20190427182113.GL14916@sirena.org.uk>
References: <1548675904-18324-1-git-send-email-jorge.ramirez-ortiz@linaro.org>
 <1548675904-18324-3-git-send-email-jorge.ramirez-ortiz@linaro.org>
 <20190204090301.GC23441@sirena.org.uk>
 <95276ca0-6896-a595-867a-184a518fa31f@linaro.org>
 <20190425183736.GF23183@sirena.org.uk>
 <022b3c6a-e356-3c5a-3c46-c6edcf4f8cd5@linaro.org>
MIME-Version: 1.0
In-Reply-To: <022b3c6a-e356-3c5a-3c46-c6edcf4f8cd5@linaro.org>
X-Cookie: -- I have seen the FUN --
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_112127_472012_882BECB0 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vinod.koul@linaro.org,
 linux-kernel@vger.kernel.org, khasim.mohammed@linaro.org, lgirdwood@gmail.com,
 bjorn.andersson@linaro.org, robh+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 niklas.cassel@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8353955317498314907=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8353955317498314907==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sCNd3Ivk/oijKKf1"
Content-Disposition: inline


--sCNd3Ivk/oijKKf1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 25, 2019 at 09:44:00PM +0200, Jorge Ramirez wrote:

> the way I see it, if I follow your suggestion and since we are not
> allowed to extend spmi_regulator_find_range(), the only options are:

> 1) duplicate verbatim this whole function
> (spmi_regulator_select_voltage_same_range) with a minor change (this
> amount of code duplication in the kernel seems rather unnecessary to me)

> 2) modify the struct spmi_regulator definition with a new operation that
> calls a different implementation of find range (seems a massive overkill)

Since the point of this change is AFAICT that this regulator only has a
single linear range it seems like it should just be able to use the
existing generic functions shouldn't it?  It just needs it's own
set/get_voltage_sel() operations.  As far as I can see the main thing
the driver is doing with the custom stuff is handling the fact that
there's multiple ranges but that's not an issue for this regulator.
It's possible I'm missing something there but that was the main thing
(and we do have some generic support for multiple linear ranges in the
helper code already, can't remember why this driver isn't using that -
the ranges overlap IIRC?).

TBH looking at the uses of find_range() I'm not sure they're 100%
sensible as they are - the existing _time_sel() is assuming we only need
to work out the ramp time between voltages in the same range which is
going to have trouble.

--sCNd3Ivk/oijKKf1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzEnZYACgkQJNaLcl1U
h9Be2wf/Ts0rAq3XrujapmG1sE36u6DgwDxHfPpMSejg40goWEljc2BT0WnUwqiC
NRj8O2f8zXZJ6jEofNYk6dOO17ej93naTtIO34nDIU7KSB0q0DhyApUTMwGiFuC9
b5Aoa1EvRAaqQ/Pr9n8XUHnDxgCJsMzDxz9w6dXlT0fgDnvoFnQAL1OYaHZjwb72
Sgp/3sJSpniaTGO+F3QaSV/lmGJ/7bMRvvNSQZOpwYc10YRmuFOGcGw2WZp71G4q
XUlyxvscZ77dvHs3p/p87mwuzJID6ZTxnIFcH3ScemFJE6DDSN4aRb1gfVZtrOIS
qdrDP4sKHBDd+xxxcUqJVBtZaWHK/Q==
=RPrf
-----END PGP SIGNATURE-----

--sCNd3Ivk/oijKKf1--


--===============8353955317498314907==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8353955317498314907==--

