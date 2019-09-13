Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C50DB21A7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 16:14:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vJm4CcjtTlMIseQ3mFj8S3Oiz3zR8D7S4jIbckW+gXM=; b=jPwjeUEHiS/8H32+mkM9mg7ek
	QGWa2+i6sigYx1rbk5rGSuoD5nKMLbJ8qtgIcEZkrVZycO1su9d8QNVq7lDRmNlyhhghFUoCT9ykL
	r/6kvTmDdrCoZrRepFtkmei9cWEhCqZ1tHWpWw8OdyDBYstb+uZ0AGAr76SOUB33uvChgGeem0IXb
	SQAkR5yuZHIQRhqc3qWNWp4MpokMrNJgrMPOMZtra6JVrxW5cRhutl1gwU6sQ/+lFvdKJprUfEwAf
	DxJEOCf7IpN6FrQT5AtSl9TvzpiPVmzy04TBz/pWbpaNoEJMkLdOQpCtCfPPvJzYdYZUTb/PWQAWN
	la6ihf56g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8mLI-0001Qh-Dk; Fri, 13 Sep 2019 14:14:32 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8mKe-0001Pm-54
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 14:13:54 +0000
Received: from localhost (234.77.63.94.rev.vodafone.pt [94.63.77.234])
 by pokefinder.org (Postfix) with ESMTPSA id 8BC042C3115;
 Fri, 13 Sep 2019 16:13:45 +0200 (CEST)
Date: Fri, 13 Sep 2019 15:13:45 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Biwen Li <biwen.li@nxp.com>
Subject: Re: [v2] ACPI: support for NXP i2c controller
Message-ID: <20190913141344.GB1022@kunai>
References: <20190906075319.21244-1-biwen.li@nxp.com>
MIME-Version: 1.0
In-Reply-To: <20190906075319.21244-1-biwen.li@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_071352_528844_BAB30C86 
X-CRM114-Status: UNSURE (   6.22  )
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
Cc: udit.kumar@nxp.com, s.hauer@pengutronix.de, rafael@kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 linux-acpi@vger.kernel.org, andy.shevchenko@gmail.com,
 meenakshi.aggarwal@nxp.com, linux-i2c@vger.kernel.org, chuanhua.han@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7869519314364705606=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7869519314364705606==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i9LlY+UWpKt15+FH"
Content-Disposition: inline


--i9LlY+UWpKt15+FH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 06, 2019 at 03:53:19PM +0800, Biwen Li wrote:
> From: Chuanhua Han <chuanhua.han@nxp.com>
>=20
> Enable NXP i2c controller to boot with ACPI
>=20
> Signed-off-by: Meenakshi Aggarwal <meenakshi.aggarwal@nxp.com>
> Signed-off-by: Udit Kumar <udit.kumar@nxp.com>
> Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
> Signed-off-by: Biwen Li <biwen.li@nxp.com>

Added Rafael's tag from v1 and applied to for-next, thanks!


--i9LlY+UWpKt15+FH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl17pBgACgkQFA3kzBSg
Kba+Cg//Q9SHjSTH13UGRUp2U0vv+JXhqpjqwDHNLtrcgLy5K1XTRpVp+HFwE/kt
RWOBpIHo4UHOwHLpxX9TcHYdKNPg/ZZx0lfoyIP4M50aznEXoDXxYeXTvtM+2RId
gaTu/w6OHA2wIDty+8cCuJMzxiYeS+AEwgVn82WcF19ZFzFehCpUs6j0w1aqBi2k
NunT4wQUO4AUlI9TdMUwY5/xm5/DZPKLYHtH3P6GKQTGkR0t3gyFTeVfNWtg8INJ
Ih3bPh0bFO5IZXkUC46mRxuLaAM7q/WbfZ5kj8UyQz/3VZq0td+mGWnRfVix5P7v
8if1Ay8jrv5bsiCcpfFmZMZteR4qseNNW+l9JL3yd3hjeH0pljaC8TiDxjIfEqYm
O3kvmj7T0ZEGmrgFppq/81jH5+xFK5zShpCT6ijTubt8Pr/FTGSGzGX28jBQ240V
ftguvv8FLZUBmHH8990eLIgHn1xHdETs2u1yutwlJxWN+UyJMeOBuwc6d2nwkNXR
gixUEQOcQxdGjBAXZg6fmeuJpUvg2izKadNmkPDXILzp1VupbyqotIMlHPLHOD4X
ky5v2eFbZfriCe4CbZqqV98pxIZFskzdHjZkXCNqzjGUpSz5Fgq8W6SWgzOJ40n6
VA2OMoXrj72XfReZE7k+1IKRg6ZhAZXAv5tXsmuxs2W5VmGsBRg=
=Jmts
-----END PGP SIGNATURE-----

--i9LlY+UWpKt15+FH--


--===============7869519314364705606==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7869519314364705606==--

