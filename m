Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF00E6234
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 12:18:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0wj7kNPGlg2QoCDup70En/yAzLjYT7VFKLjk7nIc/Yw=; b=Zz2Ok0L9aHChxhmDJVSa+MyQP
	1UvVUdw9ILZxZBAIuMOaIaWW97KkpzR6QrfMvoGqX7u8SKqYfsSxW2ceBq+WpFZG1YQxqu7s90xvC
	33UhL5Qy6iqFfRyFjHQ21oED6GuHTuYrlBaqZIAd+F0zgaoZrek4xhovuv53S45DkNf+GxPKY2a/K
	tVTE/F1erOnyDR84afAu2dre4iy0/2ysFIUsGlmYEZwoF4rk6gwdFqdeZjlvE4c8iyTwVlHpXAwwy
	YgzMRISEruT32KY1JCBpUr6aH9EOnrvgx/Rrh4sLmCOstsS8yqAsHDggssaet+fcPm7Wu+CnYWfTW
	Jxq2WFJJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOgYV-0006LL-Gz; Sun, 27 Oct 2019 11:17:55 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOgY4-0006B8-TC
 for linux-arm-kernel@lists.infradead.org; Sun, 27 Oct 2019 11:17:39 +0000
Received: by mail-wm1-x341.google.com with SMTP id q70so6547709wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 27 Oct 2019 04:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to;
 bh=ozjLv38D02wF3YZPF1kQXnLllTtgLqYsGIt8rRUEKtE=;
 b=ZezgIGhklw2T6pepzn/3CDCIXBE/OUIGzDxdVB3U7L+IvoEztXjfJ4J+GETrQ4NHps
 V0diXhgf9loG3CYJq+VZSUi4BJRAIP/cWVUhaqsfkyuCVbcpIrbY+6YbTn2tqlZGL9rZ
 YdKXxF0fZMpgwnyYS2aSb6x0Xp0dTIlOFgMy26CNS7Xe+oOrYElmMvOSLTIeDDWTZj3e
 WPGQ2niPwgneYUNQo3nzmhYOOsp1kRfWPu8N2gzSJNRtyxWbp1Wa5FKJTiBX9kRfslJU
 bQhCMcNMpWb+hkP9Z/vZq1MjEmy2ssw/HsGk+TAwZ3MA7QgTYQx7yN/BKSgD1IlO9xyO
 1y0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to;
 bh=ozjLv38D02wF3YZPF1kQXnLllTtgLqYsGIt8rRUEKtE=;
 b=NPoMuesgQR5kXlC1NZgBiwfLpbhAyohy9AksAQeix35QDebLuu2IZEjiOyIF0RAUWJ
 fAWr1gQKhCuNswaOvsWk7XkDMu2S1/z/43CHpH8sS0sgBFcaxX4ANY6bqoOk1caFBFcx
 a4KPLyYggnm1Rh/X+Af1/90pKsk4uuaht22ylRenGHevs4BTiftsFYnMhDyHTwcJWrEI
 uHEjScLsOo8qlNkR4SevgsqYfXBhca9qaYePYocxxyJPOJ8+ix0o97VW2hbMxTjC4x+d
 SO1xCmyGzT69TFtPRwRj9kLc3D/wvYKCH6P52yQnkASNOEjxnsGru4yAofaipZ0kJETa
 XJiA==
X-Gm-Message-State: APjAAAXlu3DlmcvGgMmEKUykOzntocIV85mKZbVJHYiLY+2Ujb4xyzc8
 k4lFjOdcxzpcexpJHNcbmHSERA==
X-Google-Smtp-Source: APXvYqyhdSjyUdQfSi68+fWWpXpITrPlGnZerDM+dVXs1EYwtysHzGZs7xaHMWxdPr5EUTBZXdfqWA==
X-Received: by 2002:a1c:f305:: with SMTP id q5mr11193836wmq.137.1572175044802; 
 Sun, 27 Oct 2019 04:17:24 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ec4e:2270::99c4:f20b?
 ([2a01:e34:ec4e:2270::99c4:f20b])
 by smtp.gmail.com with ESMTPSA id h17sm8469911wme.6.2019.10.27.04.17.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 27 Oct 2019 04:17:23 -0700 (PDT)
Subject: Re: [PATCH] dt-bindings: i2c: meson: convert to yaml
To: Wolfram Sang <wsa@the-dreams.de>
References: <20191021140053.9525-1-narmstrong@baylibre.com>
 <20191024190407.GG1870@kunai>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <ac2dc086-e713-b639-2e8f-f2fb4e58fe3e@baylibre.com>
Date: Sun, 27 Oct 2019 12:17:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191024190407.GG1870@kunai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_041730_727492_F97988A8 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Beniamino Galvani <b.galvani@gmail.com>, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7183415586730327119=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7183415586730327119==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="uSvFfU1J9MhaXlDCiqAbXuvQuHA8h1Ikd"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--uSvFfU1J9MhaXlDCiqAbXuvQuHA8h1Ikd
Content-Type: multipart/mixed; boundary="4GHeFe8yu0shO7ojDEjDsZeVgcaLHL52r";
 protected-headers="v1"
From: Neil Armstrong <narmstrong@baylibre.com>
To: Wolfram Sang <wsa@the-dreams.de>
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Beniamino Galvani <b.galvani@gmail.com>
Message-ID: <ac2dc086-e713-b639-2e8f-f2fb4e58fe3e@baylibre.com>
Subject: Re: [PATCH] dt-bindings: i2c: meson: convert to yaml
References: <20191021140053.9525-1-narmstrong@baylibre.com>
 <20191024190407.GG1870@kunai>
In-Reply-To: <20191024190407.GG1870@kunai>

--4GHeFe8yu0shO7ojDEjDsZeVgcaLHL52r
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Wolfram,

On 24/10/2019 21:04, Wolfram Sang wrote:
>=20
>> +maintainers:
>> +  - Neil Armstrong <narmstrong@baylibre.com>
>> +  - Beniamino Galvani <b.galvani@gmail.com>
>=20
> I need an ack from Beniamino for this.
>=20
> Also, do you want to maintain only this file or also the driver? The
> latter would be much appreciated, of course!
>=20
I'm taking responsibility for the bindings to make sure the DT is correct=
,
but I don't have time to maintain this driver for the moment, sorry,

Neil


--4GHeFe8yu0shO7ojDEjDsZeVgcaLHL52r--

--uSvFfU1J9MhaXlDCiqAbXuvQuHA8h1Ikd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEPVPGJshWBf4d9CyLd9zb2sjISdEFAl21fMEACgkQd9zb2sjI
SdHjeg//dNqABHtrvn9cnkEQKfPa5BHNeqUbXdQA/5iWTnaE8irETKzq9cJ+VTzv
GtuU8zgbzRJ8GdVGF/K21UTpWgcT8/Auh9iw1aXt1lffR7+fYc5yw5KfHjUDTxAh
e0KZF+e93JqHPT0wkHmznJcn5ZcxpIOvd/Cmbko4tkk/KZl1cOhPqBTFwHdHFkvL
xQqdtvxYbLo5KGz0S/KkRtu4BcBlVifIxNj5erjEqj3cW15uyM1bzziPcIwSn/Vs
dNBd4P0cV9dM7Si+ECTFK+JT+X3D6kQ5GRTNWf3n0d3mSJbOV+nHUD+2M7CqXDsG
cJas3nlxsa4G5YDFvcUlW2vgdl1HzC5EZaGp3HzwxJYXazV+7Ik20iyWntDerJ8d
1E1QfHHkwlnwY5iXYnI6iacRohq2R6d/dP0FYhJ7hRaXoxApecDnFV/s/o12pV0e
Jb7TMhgO6MqldxIcUKtQKHiRowiyi0z6RBpPUKU1f5bY/dMPQvbhJCVW7vSS5CEW
W6lKoPOrWojRs1gN+gkddB4NAYMcaR7rGzIiFJugyidysBP0TlYocehFNodmiRDy
XlWugQTLTN+iBI5JFXAy5O7Q7mjh607LIEUEXAX8S1+ZCc6nCXu4vcJ1l746R/a9
/Akdf81OhdS/pzfKWbPdu0BY6aYgqMlIm5G0a1MgaMP/1ZmV7K8=
=Kmas
-----END PGP SIGNATURE-----

--uSvFfU1J9MhaXlDCiqAbXuvQuHA8h1Ikd--


--===============7183415586730327119==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7183415586730327119==--

