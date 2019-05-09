Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2299318C73
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 16:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V/wpF3c08mM1A6tTjZdvgVgh+eZFa4WLn8IZniL8+DQ=; b=i/SuHtrUhglrGVCMaOaJfcbF+
	+xGWnJ/sLN19+RW43FhWMy4EQYn7rrnbYDW+IOMPrqMdvXmcEIOayDo5WOpOutzf0Ff0hx9nJ4giz
	QPo6uJ8nzWYcvL4c//fPMBG/foaEmTxTicR2Z5QfChBJZhO4d10gQ0ENQ1s1BdupVZurWIhTei2uu
	Ns38MRHi0OkhuEaXXXoc0SgbDuV+to9bUC19isd0r0U4uN/MrUcp+ZN3E2QAsMAXPXXZO8YOaz6DD
	UkTCdJckdRAEQU6+d+aCDUD9P7eiTPzQU3Z5e2P3fTYLXqSnycAQVAugWWzc6k/OdgG+jr7k3PnhO
	6/RCsMd5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOkSB-0000un-ES; Thu, 09 May 2019 14:55:23 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOkS3-0000tV-QO
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 14:55:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id r4so3460074wro.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 07:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pgroLrXjulKnOxz4J39w9NLvm6dxB7hV2FJbK952mx8=;
 b=mta2wZVs1zifxA4N+ZLr345+hkPVQeWpcLzJp2Q9hEiN6JaKkzUMqJ3O2twKW7WrOv
 qGx8heXrJNdupUhq6pASZZ4ylBuAZCJnfOv+4TgW8tLRYVwQEZ+9zOwWS/4iNDOLTtDY
 FrK+UgVgh6g/EWufrLFJ0BHrtl6g/oMwO/Tt8aij/78YV3mfNwfISRJy0Jea39KAZgGP
 fEPBerQbT5g6bvQlgRBVRu4MIY50MjWOPLCJ2ciaBy4uuBpptdMqi9i7V/zp6i2cPW8k
 TxKRkeyds8jkhCt3qyhAepGdTYhIKbRWs765VJtjyKXqTyky4V87BDo7FFMMqEkLq9pX
 mPGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pgroLrXjulKnOxz4J39w9NLvm6dxB7hV2FJbK952mx8=;
 b=Qk8ZMXIE3/6bp4WcN0TYWmPmwukMRmGGG8oZJp5v2D3ZuDGyAzWwisf8NlAxL91CJg
 vea1uDvgDlfjUP8DeOzvgvAIUIAiCaG/nnpMiYyhcc5ZXBoFr7NYSUhVts8PcJaALaQJ
 3naQDMjjRjCFq6eLNlLf3aKkYAjZ0cVEumn9ardWVDmvMCaSUdSMtdEGMu1Gzr1fvdis
 fjc42Q29kC5FnrhPTQMuppi2AYmgbIclh3oS1kTNq9/c9r9qXUGHo9HMjjeVMHrZgUUa
 oPWdu5rNT+e5+DuWBxbJ8Ajr/th5kP64Pspk9Ohl0jxjx1UE3rQe4oaDmWqje2A/wiLV
 1n6g==
X-Gm-Message-State: APjAAAWJnq2MWbJ8iXL7cYn6ScOHZw5fHfeZdcykjQHN5zT9KztyL7/I
 6vHE1HHHKyuL9BeLhl2L68s=
X-Google-Smtp-Source: APXvYqx8AvOreAFuIDbkVT/vqoQoGyW4PTRNLbrFcPikFoENIJsGVkf8thsUBovN8jMkq6YDAiPolg==
X-Received: by 2002:a5d:4b92:: with SMTP id b18mr3471767wrt.11.1557413714464; 
 Thu, 09 May 2019 07:55:14 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id t18sm4549657wrg.19.2019.05.09.07.55.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 May 2019 07:55:13 -0700 (PDT)
Date: Thu, 9 May 2019 16:55:12 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH] pwm: imx27: use devm_platform_ioremap_resource() to
 simplify code
Message-ID: <20190509145512.GB8907@ulmo>
References: <1554095960-15638-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
In-Reply-To: <1554095960-15638-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_075515_865407_B1D580DB 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============8565030438347196619=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8565030438347196619==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="RacQGezy2Y99S6cT"
Content-Disposition: inline


--RacQGezy2Y99S6cT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 01, 2019 at 05:24:02AM +0000, Anson Huang wrote:
> Use the new helper devm_platform_ioremap_resource() which wraps the
> platform_get_resource() and devm_ioremap_resource() together, to
> simplify the code.
>=20
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/pwm/pwm-imx27.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)

Applied, thanks.

Thierry

--RacQGezy2Y99S6cT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzUP1AACgkQ3SOs138+
s6G0tw//agEcPC0fIAFdWa9AvRrl3E+d0tfQxSd+oiQ9H775nxrULNP4gVV2dBiy
qyW5SsswVKV6Rl+S0Q6JvhEjo/j9ttZrwNe/f9jOTWvX/mQzqVufbAIhBikAP3r+
6yiFICJ/idWQClOG6bkuaFBDNy/gPIIO82U+womvNEMB4fIkUEKl3wn0ZeEfJ8lN
cxnNdFpTG8f098WBVeQSsoxJ97jzbQQNOkmIbEhBL75o5/gh5rqky8B6O2vD2Ncv
rI04e1aQ7svRv2bVJIPpeHkAcNg0McMmjKvJQmnjCMD2FomkFbWDpcheIgCwIXJb
yg77VXfdIbwUlIeMy9JOS6kOj/m3dbQbUoyMDr8H6J9RZ43+Xv1Neyv15+rX/cJX
fHP1ZIIJUJy8QD0aal2ybA6jxFknAmE3loPYfCkiVwj+tj/m9Eb2Vjfi3ca1eFj+
lXZoiZG1rYaplFjCOedZcY0DwgnOcBmbLhITnc8IOBd1QPPScNmYj8ceZr5qn9SL
XNLpCj7cBULCJqIOKvWR2g9EY3/vEg208Sy/B8O7kbjT67uwDCEKYpuof7SzXe+/
VvS7MHaw4uJzxuBn5ES7thUf0R7EYS/HkaMsdlPqCjnHeSHNQTxMwLOSF+cSE+G7
QNazMfE0RaE0HX9rW9CrG3PSfv1GKq35/K7tZ1r90Q1OKVeddSg=
=TiNT
-----END PGP SIGNATURE-----

--RacQGezy2Y99S6cT--


--===============8565030438347196619==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8565030438347196619==--

