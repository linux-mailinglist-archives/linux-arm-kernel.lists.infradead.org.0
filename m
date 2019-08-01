Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BEED7DB87
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 14:31:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Nd1/gTygLvu47t1UVltUv+hkvoYe62JSIWQR2FHHK3Y=; b=Uo/qp6LsjVEqEo51ht/Aio/Wn
	rW3VkAx7Qnp9wWyr9FyP4wvu5aB0VWGnIzQHoKoDIZZKpIAg7JtCMoXgns339fAuNe7aUGEBAkU4o
	UWRqimhALLjiJwEsRw/OKyUVkOcptLSL9sujfEw4fnnnJoEzmFyrJDohxreoJXyAKJLco8OXQXGcw
	vI6pW9RJE4x1RklMZY9qhz5BYIZKxnPXmjwIt3MoLI3HII9futRIdzSgWvY+SAyd9C5wDl6dNCsv1
	HC7ojV+BcQ54friRBmREvLlE0kpL55TZZIiwIFSiR5DA2UynVd3MLTzxk1cO9qdU0SJAcQ98owFdF
	cW7mcRQvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htAFB-0006fY-Jc; Thu, 01 Aug 2019 12:31:41 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htAF1-0006f9-Ph
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 12:31:33 +0000
Received: from localhost (p54B333D2.dip0.t-ipconnect.de [84.179.51.210])
 by pokefinder.org (Postfix) with ESMTPSA id 029702C2817;
 Thu,  1 Aug 2019 14:31:30 +0200 (CEST)
Date: Thu, 1 Aug 2019 14:31:30 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Subject: Re: [PATCH v1 1/1] i2c: iproc: Fix i2c master read more than 63 bytes
Message-ID: <20190801123130.GE1659@ninjato>
References: <1563956907-21255-1-git-send-email-rayagonda.kokatanur@broadcom.com>
MIME-Version: 1.0
In-Reply-To: <1563956907-21255-1-git-send-email-rayagonda.kokatanur@broadcom.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_053131_987361_9D1D86A7 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-i2c@vger.kernel.org, Ray Jui <ray.jui@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8726324587708595782=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8726324587708595782==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2hMgfIw2X+zgXrFs"
Content-Disposition: inline


--2hMgfIw2X+zgXrFs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 24, 2019 at 01:58:27PM +0530, Rayagonda Kokatanur wrote:
> Use SMBUS_MASTER_DATA_READ.MASTER_RD_STATUS bit to check for RX
> FIFO empty condition because SMBUS_MASTER_FIFO_CONTROL.MASTER_RX_PKT_COUNT
> is not updated for read >=3D 64 bytes. This fixes the issue when trying to
> read from the I2C slave more than 63 bytes.
>=20
> Fixes: c24b8d574b7c ("i2c: iproc: Extend I2C read up to 255 bytes")
>=20
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>

Applied to for-current, thanks!


--2hMgfIw2X+zgXrFs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1C26IACgkQFA3kzBSg
Kba85w//WB/fT1rfNyJzzedg2jVwLmdiaCcBYk4Y+Sz9sKRE3/SAdPulfp/wRUcb
Q0YUiC2cRjunfZK0voZ5EUSFU+pBvM8dIRuTIWon/qdi1+6tDDAFIuXcswulFf1d
09hBq1/aSOad318mNt2k4qJmUNyLvDaeYFHDCLwic1K48FWFqTWzgLpFn0idKxYq
wIqINQz9dl6Qg0t81emc4xX0MB202LoaDriix4ERwHFjLsQuseqr4IeDrbXtGvLN
7msFGGu7cgru2AUNXKPYWpZP3NItfZexR7AVhYKvuvDECy/jk/f+3DSyxj7qvrnS
1Am4aRNQI6BQRzpfVCZwOEdOTpsx9SCQTEKpWkj6P5sde01ghq/oQzp8ENb9qoj7
cuqGUJ3jf02dSLLFXusgfqywUEmLktGX+1gUvicURBykEYEecUV2xgCjnB3e7cTf
v3/IJxTqDRpeCIbMkD0W4MN3WVoFISnn/Vl50oH7GiwoxVJ4TnFdNOZ8TmWfV1TG
EoQf9yQR3vcmz13HUwyF8W27wJwWJ8u0iWLyqxeCgDaKtHRrL5HG8bEPu3rdLafE
6n5ksnQpABRPshtd18hRQyGVqWaqNDUjKLJgGJVhqK3kbnvgGg0Z8qrcQHOA7tl+
HMquJaDbDdS3AMUD3N0JHWqTr236PF05THzOH1X4hXIfsRtnPF0=
=L7tj
-----END PGP SIGNATURE-----

--2hMgfIw2X+zgXrFs--


--===============8726324587708595782==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8726324587708595782==--

