Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F5CB8EC5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 13:02:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2TGW+dF3/57/gRNGdirDDZ+w864imRutgjvJJMF3WSA=; b=UNlyUOJYLZd0Hj2id4r3ur9GC
	9xmuFwrGoKLKRII5iKduJE7RgziJ23pUzFdOHCibzq3D1cMBA/Zy/WRDAd3wB2kBJHTpVNaYQPm7x
	LBYGLo1DlEQSrb+HS56XvyNS/XoZ6cuwnsBq6oTavRRDdHcWi5zHVrKsgy1xepKYgXq4ph/xOkjxs
	E3X2a5ZF4t20TH1r5aDWs2/he+um1VqtKnW3RZ4rNko9ReXOHbZNzON/I4Bbt+N2Xn9uYl2dE1i8N
	H33gPvWl+Y2gAYnS95yqvKq4dz4n8v6GdF0OM0eeTMSZESBLg6hNWc9sQ3/jQUv8FlMLCrhoG3YpB
	TuFns5B8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBGg6-0000Ve-TJ; Fri, 20 Sep 2019 11:02:18 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBGg0-0000VE-0R
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 11:02:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TvSJPXCNUj0sKtwLV+ZZRK3DKaY/Th/BDTAKK7SPRmI=; b=tFnaNCfFVD5quhenDzNWlPLBG
 H1xR7Ud+5LuOoeOUM1tufkeG1zX+z7B13lZOVDrq0n/h50BtlvgUZbCNfLo71wEfUnHvJylKDJnKH
 JVPaH2d6OIxUuxi3/Y8tZob3xE5cXJnuxTmfZ2uYN9+5Thph8DtRipWc/HVyLQ27OCZPc=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iBGfv-0001bE-Nx; Fri, 20 Sep 2019 11:02:07 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id D53BD274293C; Fri, 20 Sep 2019 12:02:06 +0100 (BST)
Date: Fri, 20 Sep 2019 12:02:06 +0100
From: Mark Brown <broonie@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 1/4] spi: mxic: Fix transmit path
Message-ID: <20190920110206.GC3822@sirena.co.uk>
References: <20190919202504.9619-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20190919202504.9619-1-miquel.raynal@bootlin.com>
X-Cookie: Stay away from hurricanes for a while.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_040212_057517_D68F3776 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Julien Su <juliensu@mxic.com.tw>, stable@vger.kernel.org,
 linux-spi@vger.kernel.org, Boris Brezillon <boris.brezillon@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8744415775278694002=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8744415775278694002==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TYecfFk8j8mZq+dy"
Content-Disposition: inline


--TYecfFk8j8mZq+dy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 19, 2019 at 10:25:01PM +0200, Miquel Raynal wrote:
> In certain circumstances, it is needed to check INT_TX_EMPTY and
> INT_RX_NOT_EMPTY in the transmit path, not only in the receive
> path. In both cases, the delay penalty is negligible.

In which circumstances and why is this required?

--TYecfFk8j8mZq+dy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2Esa0ACgkQJNaLcl1U
h9AgbAf/WGzhQIKCPqtpT234KXwcBHp9ZJZEvag3OQYnGwCZ2HTkbFi2GxY82UT4
FnSIj9o6IaTk1y4lFcXSoVfYJFm6ik+CksaPPCOKp/yX6Wdh+zcszod8nYGb9MDH
8JodKY8SteqX+PB9bxuZzip9vNkX6VaS+4ZA7Z/y+645Jmjo8FS1Yk83J/H87FJg
FroH17yf9TsGUgggStqTfz10e7sT17uPFpF6e3s/rGU3GVYqaYgtQS65vM2ARXbR
1OLvYa+4ogLGFE/JfxVFbyHDUQa7dQKZ/3fxlEXN4huhVJ9vRR0kPztathlfdX46
3TqFUQ7tJLD/tzeEt7hfU6OMdItB0A==
=717f
-----END PGP SIGNATURE-----

--TYecfFk8j8mZq+dy--


--===============8744415775278694002==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8744415775278694002==--

