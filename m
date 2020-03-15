Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04AA3185B73
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 10:28:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ISEc8Monhn9qIgGXMnzL8pUHs1z9eVel7WltP230bF4=; b=k1rJ+09EQnkFYO12Depx/E9bT
	KsVMKgB3XbHrAOhAyIuo1L7+TVD98ObJ+MyxRdqK6i3HbKpHocBnMIrmpBi6GN1G4pCkLd0oaPE00
	L2WRL7mUkSib4gzmLeNM5eG2906+88O/Wdt/OdLahhMRwk6a1rwbc92kwbrnfHM8b7e+Qy0g6xThL
	cHBEWkDGC5/RRpdTo+dvrE2AaH8pR5MFwZUYTvU2hXDCeWlFS/niwNlTGJtD/RqphURCzlrbm7Gv4
	3ktEiCn8r0kJZD0Opf/+nLihWGmpoYRYzSrznbSepTMdSVEv8aWwb1dmnRKc9vaIb48+EO2ZwVkSe
	T882rzZgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDPZH-0004Fp-0b; Sun, 15 Mar 2020 09:28:23 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDPZ9-0004F8-DT
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 09:28:16 +0000
Received: by mail-lj1-x244.google.com with SMTP id d23so15196822ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Mar 2020 02:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=k0MY7Bqf584jeU9PbEpBAMYhk0hnAtxUjrOw1PNGQHQ=;
 b=Sx43VyZaq2psJT9xqIVidcHL3h96etCE7IVZacPBNdfwm1ykQfiCokV3MGbXASTucf
 d9kaMtFyylnFJ3xX2f/J5w5/35NG6F+ZeaHxZt0Sadpwbvume2jt3NPzVZ9g1cZY/HBB
 rtH5q3SMNBhds3/yLS4ny21+ruxPDH1i4tqAPqBqVirMMOW3+4LThDiAs5+MjWMBad8o
 isY3i/ywS97tlSH3hzgOD+3FKgzGiewOx+CByrS6E4BnVmKrNfa+ajysQa3xBErDNr5s
 SL0FywuSsdV1EfufhjaE/34EnTd1G0IhAj99w3QVYlYPsSzIEcmT+NIGFV2Xqbujl+gh
 0qOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :date:message-id:mime-version;
 bh=k0MY7Bqf584jeU9PbEpBAMYhk0hnAtxUjrOw1PNGQHQ=;
 b=IusXzH91c49zJxGbbDy63Dbb5qvULF9wPDV80S7kcJ0oNgl2+2weAMjg/D3MObq6MZ
 snQwo/yhKOL2BmJDNgLkj/353Yn7gYu+Ew6IEgwkaf9qqs4P1fRZLjH3wY0sOotYLScp
 EzGt0aE1C1ofilJT/D/AzXbyYpLaCIUC6hnfKVoByDq57hbYWoHkjr5RxjCVk6ryoggj
 L5QRV3F0FLhiUhE5Md6L59zw7rjgITWdZXcifWE4fzxzIky/g7x+SGN4f9L0cfJHgjQ3
 cxxu0YbCPrii66GFzIriLGjG/PfDE+FE0OvMNAQkikhnHy1cYlRDA0QXCfwpR3wRMDjH
 VJGQ==
X-Gm-Message-State: ANhLgQ1Of2I8MMyGigxKlDeUEG5J3O1LlAreq6dWYFK6/smJHD2oGZd6
 rvNVDS1QNPjPZBEZHGMf4Ao=
X-Google-Smtp-Source: ADFU+vvXjsjBwXRjg6blDRN9dWbFmFP0x6cQKEKKsY3Lzbg80fvZNanN8fszf7hNtH4/g9dBOm89Jw==
X-Received: by 2002:a2e:891a:: with SMTP id d26mr12762955lji.182.1584264490463; 
 Sun, 15 Mar 2020 02:28:10 -0700 (PDT)
Received: from saruman (88-113-215-213.elisa-laajakaista.fi. [88.113.215.213])
 by smtp.gmail.com with ESMTPSA id
 f23sm1708531lja.42.2020.03.15.02.28.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Mar 2020 02:28:09 -0700 (PDT)
From: Felipe Balbi <balbi@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCHv2 1/3] devicetree: bindings: exynos: Add new compatible
 for Exynos5420 dwc3 clocks support
In-Reply-To: <20200301212019.2248-2-linux.amoon@gmail.com>
References: <20200301212019.2248-1-linux.amoon@gmail.com>
 <20200301212019.2248-2-linux.amoon@gmail.com>
Date: Sun, 15 Mar 2020 11:28:05 +0200
Message-ID: <871rpuezmi.fsf@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_022815_458502_845A681B 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [balbif[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: multipart/mixed; boundary="===============5591234316945572498=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============5591234316945572498==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Anand Moon <linux.amoon@gmail.com> writes:

> This patch adds the new compatible string for Exynos5422 DWC3
> to support enable/disable of core and suspend clk by DWC3 driver.
> Also updated the clock names for compatible samsung,exynos5420-dwusb3.
>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>

doesn't apply:

checking file Documentation/devicetree/bindings/usb/exynos-usb.txt
Hunk #2 FAILED at 84.
1 out of 2 hunks FAILED

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl5t9SUACgkQzL64meEa
mQYm8xAA3I2/YauH6uYkFBQvDNCN3vk3Y9Nd7A0OQ7+zhusbeqhl93In7+YgQ+3r
gvXux2DHyL121EUbI7Fj398cescSm4FBgnhlVx8qhKQFn85vPBWtCjI8vvS+PIxn
S6+emDEeVhj0FF8mfuVV844SqIrz7UcIg9hS9PMsrZLvh31cFbgJhAKhR84ak4lr
jku+TUy2tf9ZJr8DU8DUH8dRWccCRZJ+RXFyNAfaMZ3aNJuI6CS5bGTp1LBL4alh
i4G3NgBIk4JStBxezp3AZuJ5yYz3yHcgk2paMSKiuZoLJ+12KiLwxIlY70Mo984P
8XI9oP6xVTreGY1KGR3I819s4qAjCley7q1/2eFiO2i7B4JMbn4724lExPUpEaPy
qBtoiOmN4cYBPaF75RGCJEZmgM/+yt/CQHWEowEQRHSaoQ6iqUBmyOjZhAh03fA3
8Bg6Mfs2cJXntvjNSLneHTzbOXbh1F57UCh+cWJNk7QOag/O95kd5N4IZJ55CWD6
BnAc4yMsl9aOGNLYqwX173WqeOUHm7r6MQ+vXxp24ZlBT0Z9x9OfPmN6BGXPXJyA
OFgkjJacY7L6pTWhVMPDReQ0SkXpTvqBZVGxYaxAROVPg/+Do71j8tiUwESQg19A
1k/AH25xxfy/4OvcBqCwpphqRwzxuOvc6/+NEwXFiBY+oJdTnQ4=
=uud3
-----END PGP SIGNATURE-----
--=-=-=--


--===============5591234316945572498==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5591234316945572498==--

