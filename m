Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3891431C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 19:44:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M5ZpFhG5cpHs4YifEyIICB4SAdOgrIuIBuDAnJ6WUs8=; b=qf1tonFPU0um/WUdk14LMb+0S
	SiTJWyriRxY4nErBzsLQsEQDB/da5CNgmsKo75XAUDNmszWvFiRSy+dMGS9mqYGWcaNOlpaYOotCw
	BYIr/oQupDMdIDl8tfYr0VUs/XNYxz34G+/YeQsxzky30hP3DAmRM+soIvXqqHwjLVPyYBMYIgdai
	13fOPBArbIF0Ca3DUE+FSENXr6kj7thoxioP7mP6qEP5ybZhhOXGHcz69RcY9ZqgYOcQWzsRsRpWj
	LyghAKuKTEGJytGrUw1aqJvO4JCgQdDxj/nV8vPomHDMS1l05dsqsEnVtrbyq9XDxsW4gSqivd2wz
	ezfidJXJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itc22-0001hT-0v; Mon, 20 Jan 2020 18:44:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itc1p-0001gf-Qp; Mon, 20 Jan 2020 18:44:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BF7F531B;
 Mon, 20 Jan 2020 10:44:00 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3E8013F68E;
 Mon, 20 Jan 2020 10:44:00 -0800 (PST)
Date: Mon, 20 Jan 2020 18:43:58 +0000
From: Mark Brown <broonie@kernel.org>
To: Wen Su <Wen.Su@mediatek.com>
Subject: Re: [RESEND 1/4] dt-bindings: regulator: Add document for MT6359
 regulator
Message-ID: <20200120184358.GN6852@sirena.org.uk>
References: <1579506450-21830-1-git-send-email-Wen.Su@mediatek.com>
 <1579506450-21830-2-git-send-email-Wen.Su@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <1579506450-21830-2-git-send-email-Wen.Su@mediatek.com>
X-Cookie: I invented skydiving in 1989!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_104401_913014_A804B1DA 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8390354289011877481=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8390354289011877481==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oIlomvtVtXAVxSKT"
Content-Disposition: inline


--oIlomvtVtXAVxSKT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 20, 2020 at 03:47:27PM +0800, Wen Su wrote:

> +- mt6359regulator: List of regulators provided by this controller. It is named

Any great reason for not just calling this regulators like most other
devices?

--oIlomvtVtXAVxSKT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4l9O0ACgkQJNaLcl1U
h9CJ3Qf9F1Lz97+TNbVFwl3OCaMrrmSbjc2psD1Lqb+aFCX9c1c2JwLmvwJK4jf/
YWvSq2TOjt8g/5poJO36dbSjBU7tlGGvIly8ZIMpZcb/GuN+P5TEj4HoLhDtTXLX
vWhIS8j6d29tnV2TzqrrbQCoj42uvNtaE2CJjUeXXt1Hsifhf2DKKh5HZNGXGxEo
IEfqgWrmb5NjwwjiZIkiIdgcXnbaWs4KxOe5dvTC9RjhMwlnWZve9t7ZazhoQCZk
j77N3//8c21A2Iljh3NR70mS/izQMedpXjFZ49vpXbIBzZjpHoCFzKy2C7I5MCHr
Nk4O2xvPd5ZU1NMffAGo4UEcXa4L0w==
=ZKXN
-----END PGP SIGNATURE-----

--oIlomvtVtXAVxSKT--


--===============8390354289011877481==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8390354289011877481==--

