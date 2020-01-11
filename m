Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A06C137AD3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 01:57:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QxZpV4pjInQQhJW90ZIsYR7XmbIbisT4S3TCThKIEiI=; b=FxKPHK3+nWYUYtnAnJRdqGWZu
	IMru/RpxOQ79cQ/b4NTxcem8TXIonEkTJFzu2s/QgfVZZmR9W2r7Z0EY+ZToTpGvdvsf1pVFIKLTO
	qnNiEPFbpjGo9HhdPwyjhD4TnCHEVG3O3YiVMDWE6ZgH3iVfm27oc4E1XOF0569xcn1iHrNiv5VY3
	M2gHSw6kkDQMSYyhjwHqPdc6U0QsZoE82gHsN3SFJJcU1UwdFyk2/zktFDyhJGVg2703r2/8Tt3bp
	RTiE4DRGCbx4iHpAV4BFQJZGO+LZwEhhjr+q6N9bdXfMeFD+3WiXGFlBLWcBIsU9elEhbN+3FpGjG
	C+tILN8xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq55v-0000vQ-H2; Sat, 11 Jan 2020 00:57:39 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq55l-0000v6-DY
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 00:57:30 +0000
Received: by mail-wm1-x341.google.com with SMTP id a5so3873543wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 16:57:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=46ibCrb21ZuBeioA2f4GKI33QnIcmomDF/lpRa1Rv4E=;
 b=olC/Kmu/IkrdUqkKB2OqZW1A3kPzoRDxkHQ85EQExY2cJ/gMsBgF5CxHbz8AR4IOf+
 FcgRQhMqhIokOrXx9hdOgwC9m2IQPWR/4cLuKtYqEmU/Uxm7RBr4oloxmjBSn6E34w2E
 iH8SFwHmIjZwK9M+FRoQpdq44xu5suMDkUqMSvRZVjD7YF8JDhJX79QKO97ay+YWBocZ
 33nywS9hYBsOQeSTE3R0iMEq5GFwl35k3+2TkY0EXj2lovL9u35buIVFcnZJUkcyhA46
 7hqfCefAhDgp0z1JXDBfSI03kFp+NvS/Yw5wcmBIaS3+pSrHuMHmSwrl3w0fchZHoMYa
 jQ+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=46ibCrb21ZuBeioA2f4GKI33QnIcmomDF/lpRa1Rv4E=;
 b=oePYeklq51Qj8emJaiqgxTJI39GGPjmr8Q6qvY8mY6b6o6gpOflp/xYZ5yDpk4H5LO
 GjJjGB5zZA3CceSx/ZWNd2vCp//LgA6XKKqtPrQlR+dbpkqSJ1owOgDYw1zbeYRG2WLT
 XDdK+Ht6CxBjHlT8vGtBNY2ez7/xvNcpYqjLgHmaacIwuJQRy//gViIBk7n/5ySh7eeN
 cKJ56lGHDJtAlO9mRaXQ9p14ZRKf6Vyv7kPui8D12SRzflBuG5296wfVR9uHMA9cflaw
 EuSFBw9N5gaoMy9QkTLu8wOi77Wr/RO6XOoA1wqsQwUPJk9WIXAFfAF91Nrx89zFpZYC
 ikxw==
X-Gm-Message-State: APjAAAWPJRdYOSZ9OP21C5N7UgdqSLqH01rqwEniG4dwVynE6xq7BMJY
 qeBLJnsMcvrQ/SQMdSf51Ig=
X-Google-Smtp-Source: APXvYqzILsJ2W1LWqm1d5va62ZcsWOKo5aAPbpuVEnXyEsapjX70PwXEZ9wnpjyyIWz4TO9MaNLEEQ==
X-Received: by 2002:a1c:49c2:: with SMTP id w185mr6788028wma.138.1578704247929; 
 Fri, 10 Jan 2020 16:57:27 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id t25sm4274672wmj.19.2020.01.10.16.57.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 16:57:26 -0800 (PST)
Date: Sat, 11 Jan 2020 01:57:25 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org, soc@kernel.org
Subject: Re: [GIT PULL 8/8] dt-bindings: Changes for v5.6-rc1
Message-ID: <20200111005725.GA2414054@ulmo>
References: <20200111003553.2411874-1-thierry.reding@gmail.com>
 <20200111003553.2411874-8-thierry.reding@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200111003553.2411874-8-thierry.reding@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_165729_460087_5573AF4A 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: multipart/mixed; boundary="===============1269765636094190553=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1269765636094190553==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="+HP7ph2BbKc20aGI"
Content-Disposition: inline


--+HP7ph2BbKc20aGI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 11, 2020 at 01:35:53AM +0100, Thierry Reding wrote:
> Hi ARM SoC maintainers,
>=20
> The following changes since commit e42617b825f8073569da76dc4510bfa019b1c3=
5a:
>=20
>   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
>=20
> are available in the Git repository at:
>=20
>   git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegr=
a-for-5.6-arm64-defconfig
>=20
> for you to fetch changes up to ddb8840d2777bfca7c9ebc8c24ea20f9a37145ba:
>=20
>   arm64: defconfig: Enable tegra XUDC support (2020-01-10 18:34:14 +0100)
>=20
> Thanks,
> Thierry
>=20
> ----------------------------------------------------------------
> dt-bindings: Changes for v5.6-rc1
>=20
> This contains a conversion of the Tegra124 EMC bindings to json-schema
> as well as the addition of the bindings for the memory subsystem found
> on Tegra186 and Tegra194.
>=20
> ----------------------------------------------------------------

Looks like I messed up the tag description for this one. Please ignore
this, I've sent a corrected version of pull 8/8 now.

Thierry

--+HP7ph2BbKc20aGI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl4ZHXUACgkQ3SOs138+
s6H0nhAAkL8m7+IYeOhWSL5T3B60NqF7jmJfsXikf5q09AZgWwoKvPyudv3/EBll
Hwkp4NxZKD3J9ExgJhKmX0/1Pl5nzZFUtTz5sgMBpmEGHNHDqDnAIHn0Oqi3ew9H
J9sXNB4cMRFfMPaZth8e62AaWgnqHBLygefOf8MnbqS11smugiQRd1/eAKpaUY1w
MZUEEcTIFETxmIdBWbs/GXZGgLq9FfmH6LDVPj1cvKHA/tWXhgoyeknmiOTjI28c
xsk/BFA1LLD4ZrLV+6dtuN28nwjR+NipjdJ0t17r1J63KvNgkUgvHe04+Lk9x+AF
J44yYfpnRXOfpC+Z20BBkAsmckK14/TDWt6KiW5aI120HdXffRxca7cYjCUYfl54
DutIdwRznp9pOd/taqsQ7BYZdMTyegvPqn3vbuccdhREjAPHiazFDkE68I/qyFAD
OAl3nFtqkwZCslmiLYp0CAOgkHxsqLvTdfMnHpE2QAjZu6LoVmpPmwH4tEwkch/M
l7EGOe2N5GPnVkuoZn0f0iciJhv+TNQJ1ze+sn8lMGjBCqn+DIWY0KP1gldR70QI
M6CB8O8xLAKsP1taImTLVfW0OEX8c9x3xzcKkfKvl/PoiL8CmlvT/m3B2LfvVk5y
g8zHL6yBJHu2LHs3eKng+Wu2Y59zPXfVuwrMggoR8FbbM2E0dFI=
=AApv
-----END PGP SIGNATURE-----

--+HP7ph2BbKc20aGI--


--===============1269765636094190553==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1269765636094190553==--

