Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A3C122A43
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 12:38:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bhK2S4JRU0A3Pqf6awsmDWHqHx7+SA8hOu2OPd3Mups=; b=qsGpo7HFydp6ejDe8bDfaCmu1
	sutmLRRwJTwu+tsbQtBPOhe3wDxbOZHGWh52Bnmlrl5Yjvhp7tsbkKyIfO8CLRLoiSUjys7DqnFB8
	gew6/4wTIueEDFfYU1lnGzv44tvQR4BJKvq4JEaMd/trzlvC7ak8kPhRLKFpd7QcnMJo3D+SIC1A/
	xjUcrNgDZgxZTxdCtpLPijpTVjXvSG/MprXCVMuRXeb99ROwqJmQS7hOn3hbbc1lvD51KtfGcT8yf
	ZZ4VNyywwhSkIxG254Qjywbd4U+7AwGdlXrTBn1lzRVkc2wwwHfPwgvpdUKMNTtEmHi/qyVkM8UOg
	QTtc+tctQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihBB4-0006LL-CK; Tue, 17 Dec 2019 11:38:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihBAu-0006KO-Vo; Tue, 17 Dec 2019 11:38:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 49C2631B;
 Tue, 17 Dec 2019 03:37:58 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BCDB83F6CF;
 Tue, 17 Dec 2019 03:37:57 -0800 (PST)
Date: Tue, 17 Dec 2019 11:37:56 +0000
From: Mark Brown <broonie@kernel.org>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH v2 0/1] spi: bcm2835: no dev_err() on clk_get()
 -EPROBE_DEFER
Message-ID: <20191217113756.GA4755@sirena.org.uk>
References: <20191216230802.45715-1-jquinlan@broadcom.com>
MIME-Version: 1.0
In-Reply-To: <20191216230802.45715-1-jquinlan@broadcom.com>
X-Cookie: Thufir's a Harkonnen now.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_033801_067745_064BE1CA 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <scott.branden@broadcom.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Ray Jui <ray.jui@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: multipart/mixed; boundary="===============3700106189571296799=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3700106189571296799==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VbJkn9YxBvnuCH5J"
Content-Disposition: inline


--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 16, 2019 at 06:08:01PM -0500, Jim Quinlan wrote:
> Changes in v2:
> - use dev_dbg() for -EPROBE_DEFER, dev_err() for other errors.


Please don't send cover letters for single patches, if there is anything
that needs saying put it in the changelog of the patch or after the ---
if it's administrative stuff.  This reduces mail volume and ensures that=20
any important information is recorded in the changelog rather than being
lost.=20

--VbJkn9YxBvnuCH5J
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl34vhAACgkQJNaLcl1U
h9DCKgf/YoplvcJ+ZiZKO2wNQyrsGbxzLwXcrNuR0JNdf93xNNeuOwmXU7pl6aNy
QnA+W+ezVelzur13szkX/XNF1/l7r2plXRjxKGk8h9pZgcgeevaoBVXvBwckDb8l
GmGbvUHgrUUcS3u62tX6swaWq7qr5EXAmJu2yRjJBV33QCcLsMJM+XBavhHPLMLD
I5JaTqeSomiHfsMOngOSpP+TmbYc93g2q/nLW3ljwGHW8ke0N+AqPvVtnQGCOAvP
YfxqsNQZQFsApVh+jh/80CqF+sqSKtGQXBPs/a9BQ6dFVZTbTyJlUsX1YONwKzrk
7UPnQt9K4d905TxNkxjkXhPVqWkNiA==
=nV6Y
-----END PGP SIGNATURE-----

--VbJkn9YxBvnuCH5J--


--===============3700106189571296799==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3700106189571296799==--

