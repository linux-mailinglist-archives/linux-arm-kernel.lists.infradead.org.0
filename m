Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C109154375
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 12:49:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Nb+jpj2ooVNxCjIAX3joU5BSZsk34zWYKLlxUOI55Ek=; b=SVN7tzbIbHotHk+szPGa6nVcD
	BMyx/vXbQYd7TWQj6jH0iqZvCnm5W7NMxyk6p5uE/boR8Q7lCN/9p8CyiL2Kga/btQtRg5wzYDB1Z
	louJQ1mpjVnC2cc0nFAjZqenIyYGHxZn5KstAT372nhjMueGV3VMjq7dZ2XqlNJ0GQvx+hOHhPptl
	bM3H3i1hgTAl8FjpqawlK84L6th5By0uPMQbre1jxkOfz1rJgO4VSrvlfKIcMykIVVRQ3Ss28dv8x
	eLzWU3gwUCQ4ubfDztj4kxf8MOVY1OkA7AlpMd1hBq86djkG+eDc98uy/tAKjVZiC5WPOeCBE4BN6
	5gqFCQh2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izff9-0007SB-5G; Thu, 06 Feb 2020 11:49:39 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izff2-0007RI-70; Thu, 06 Feb 2020 11:49:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aeh2bnGaIQasagmj+LRJPLVBSVmtzVWOfHGUZwOPl9k=; b=uzMAt5emOT/DsoAgMGDNx0ij9
 tuZOOxrxBl7YfrZ7Noe82a9tTttXG8/pzRK1mI8sousbwvv2GX0Bmkb2gfV7Ua9/Zljmiej4jNAIX
 DeFeYfFPWNLFNZuMalqtWdpZ0c+4KKrajxqsP+hHOyg0uMxoOe8gQS3kp4sjLgGUCTxcE=;
Received: from fw-tnat-cam3.arm.com ([217.140.106.51]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1izfey-0001aU-5A; Thu, 06 Feb 2020 11:49:28 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id D10C3D01D7F; Thu,  6 Feb 2020 11:49:27 +0000 (GMT)
Date: Thu, 6 Feb 2020 11:49:27 +0000
From: Mark Brown <broonie@kernel.org>
To: Wen Su <Wen.Su@mediatek.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: regulator: Add document for MT6359
 regulator
Message-ID: <20200206114927.GN3897@sirena.org.uk>
References: <1580958411-2478-1-git-send-email-Wen.Su@mediatek.com>
 <1580958411-2478-2-git-send-email-Wen.Su@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <1580958411-2478-2-git-send-email-Wen.Su@mediatek.com>
X-Cookie: Programming is an unnatural act.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_034932_254047_2A41BAFC 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5805448847908455339=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5805448847908455339==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WW66Wv25qHMoYYLs"
Content-Disposition: inline


--WW66Wv25qHMoYYLs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 06, 2020 at 11:06:48AM +0800, Wen Su wrote:

> +Required properties:
> +- compatible: "mediatek,mt6359-regulator"

Why does this need a compatible string - it looks like it's just
encoding the way Linux splits devices up into the DT, not
providing some reusable IP block.

--WW66Wv25qHMoYYLs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl47/UcACgkQJNaLcl1U
h9AGqAf/ei5s8WFL5nFhQ5WtOwQKyMl6BzjPHZGCXguSsSzU+Bs45Cq1viLBg3ww
H/gXJ2VJxUuY4EU3kr3iP6Haxhe/h9TGEobGG917mADI9ZBScIkY6l7AGQPe44mQ
oCiBKl73LxwZtRu8DNFg7k1W13eAOKi0TLwQ0KaC4GalJ1loAnttpbgxUvBLVR02
BxiROqhvkQsNI1q+oh1Dnyvd0rFFT12QXDIgw0sbR6DEVkEvHFnvB9C720P5L9ld
4iFDo6hOqqSwZIecmI3G36JIpFEY3vE+f2plbZCRaf01Fd91TZPZX0YQlBSr4Qbk
uJ85eR2wboqLgi77IS+mzYNgxwg5vw==
=vTbL
-----END PGP SIGNATURE-----

--WW66Wv25qHMoYYLs--


--===============5805448847908455339==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5805448847908455339==--

