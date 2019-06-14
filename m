Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 190EE46393
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:02:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R/Ay0pSxIF3g24x4nBDmsKYp0JjasfbYPvgf0vxbKZQ=; b=jiWslvdcVFd9+GORW9VR1rcRH
	iuVLrlYbnwRC+obRLS14uzFBO0xx6VLtu57fAXuZwqAOVLHsWkQK++SkLzm5BUq9+mZ43MorPk58h
	MznoWugRdpgERe+QaP/CxGhPZXgD2CKPJc3XSK5NHyI4I+nGDUsSiX0oG1+makM7cbyR2rple2LiW
	6GmQ+4EDE0Zde/8qPKJZsDDhQ3kvqc/xx7Nl/H77bNhzEkzI0OOIdgOtjcIp6/srUQr6eDU/3yE8J
	W84yqdRY40McBBLEkz6HGH4zvjHIWb+8v/prQHBUS908A3caumixVR3WewTNnbRrp3RUghUwJTbRp
	grZvrMiww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hboeO-0005H5-HJ; Fri, 14 Jun 2019 16:02:00 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hboeG-0005Gd-KK
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:01:53 +0000
Received: by mail-wm1-x342.google.com with SMTP id s3so2907598wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 09:01:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fUFWgrHMxZFj694JqdS5Mj4bEK1nUO7EOXhJ9PHAuY8=;
 b=n5K1BgFJN8dNHinLtf34OmSk/68dIJ04uif9ywLR1lDfGCq1Kig7qS31uLwTqAI1EA
 PErGkpp66ID549+T10rLmRll9JqdnCO4xEpge76a4mpB/Z6laJC3XwZSClZz/sdoN6DF
 Vq/USjRgK6FRldyZo9ROlBWZ2ikrM8INMVoYa3fgMS7U+obO5W7ITATrH+oOrdVHV6/A
 DJWYFNX4b/mtd08zRlPz+RWmGCHD6TaKqFtwX9W+MUtaV4gEdwB0ZuHePDPYRGzG3nXt
 iUhzsWvVEfIFgXehdFlN5lXOK6+DaUU3IUPy0tHGbYT+CV23QltKcUAfyZVSyxVu7w5Z
 qSZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fUFWgrHMxZFj694JqdS5Mj4bEK1nUO7EOXhJ9PHAuY8=;
 b=UGZ936QE6ZKMe6MHlhe5+7KMfeS73rhYprMssm+irlRV0TQfBaqiDRb6K0roui+IkD
 VlcuY3WTYdJHNKEqFdWpqKtzzGwMVLLOYthebwb/Xo7lJtR3RmICqTTI1DJNeCwf+IEK
 1Rbp6UyrhfqWc+6NkjXAl8JBXkczFCK26qLcF/jyEU7K9wi+728gZSJrfSoATZhVdsLA
 OrVgbt/WDTEOAQyGBns7uEO6McEOiXkJv/AixU1ktYvIha6wMsgccbcwoBwQK+4ZO3JE
 yUx5G7D48qF0k3MCw+OV9EX5JTKRkRxMeR7shu7Mhb1Eg5pu6xwdmaNe2/vK1So6CIXw
 2qIQ==
X-Gm-Message-State: APjAAAXXX2+k8WFc3MrGKQ1bhzUERVhA4ChdJj8Iccz60kIHivanh97z
 o1EmbEpGdZAQEmlQiBQYkPc=
X-Google-Smtp-Source: APXvYqy3dZO9hdBko6KVw3wzXcaVPzt7z4Fgaxw8z3HlBkP23ru41yrMf9/CE3IFELNjwTICU43WnA==
X-Received: by 2002:a1c:9e4d:: with SMTP id h74mr8809366wme.9.1560528108891;
 Fri, 14 Jun 2019 09:01:48 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id o14sm2901938wrp.77.2019.06.14.09.01.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 09:01:48 -0700 (PDT)
Date: Fri, 14 Jun 2019 18:01:47 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Nicolin Chen <nicoleotsuka@gmail.com>
Subject: Re: [PATCH] arm64: defconfig: Add HWMON INA3221 support
Message-ID: <20190614160147.GA28409@ulmo>
References: <20190424181010.28950-1-nicoleotsuka@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190424181010.28950-1-nicoleotsuka@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_090152_693952_3D386422 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, catalin.marinas@arm.com, treding@nvidia.com,
 will.deacon@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1924714368175975404=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1924714368175975404==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="NzB8fVQJ5HfG6fxh"
Content-Disposition: inline


--NzB8fVQJ5HfG6fxh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 24, 2019 at 11:10:10AM -0700, Nicolin Chen wrote:
> Tegra186 board under arm64 is using this device, according to
> its dts file. So this patch enables its driver with a "=3Dm" as
> the other HWMON drivers.
>=20
> Signed-off-by: Nicolin Chen <nicoleotsuka@gmail.com>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks.

Thierry

--NzB8fVQJ5HfG6fxh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl0DxOoACgkQ3SOs138+
s6GVwg/+P/AvfzdpZqk+ZPGxa7bpI+hMZJWx608PHZLFziGdVT6L4TCTbkitOnA2
lsrSkOXjfjVBbxe+wz9zHRYjlQuTkeqNJ7qa/q7X0IDXn3L238gOz1Cw34IBu+Uq
GJUlHtzqAIMd4QoISPKUkEn2QxAGDJyxFq9XPOCgxcwwfmLK7J+n0qdfSrX86Azc
T8itykniaIepsFW4T85KUAd+D4ORat7sns5gpWNKqGG5QqCJJDLVURK8pDflqltz
x5EsWdPy7WrPV58CCj8dMKd8xO5FM7qUUlzP3/vQILQiXza9npEa6Okg5tTd1Yo8
Pso2qjA1JsoO2nxMYU1MOohveyuuuk0E31imHNf5Uem5x/ThUPWZQdXi5q5OMKl8
o8miSKjm0IFHE9mAgM/lQ1kGmD2s1eNpl90uObQFcqHeoLT6/yNlIvNLP5Ij7WW2
HtHG14Jbd2Bmax5OY8AFI8DPFqLRAJsyI0fAFFveZ0dSsn4fo08WAwbjRK+Ps0Ue
+94KsuaTg7Ig5aZ9fhStz9LGgw6lUG64gA/DjgQWSP0Q8f1Vr1LgB4T43x2tZ7Id
x95bl3PkZOavjeuGjV5FFV4K+foMkQyUQDHKFx2VimGo4ZH6xv0HNa+X9D4XeHx6
GD4tm6nhf2PQ9H1Oc7Rt/plmwhEm42sN+8DJAPpigq22j3i0bAE=
=eXs8
-----END PGP SIGNATURE-----

--NzB8fVQJ5HfG6fxh--


--===============1924714368175975404==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1924714368175975404==--

