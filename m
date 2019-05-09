Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC50318CA0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 17:03:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4qkSQcuCZLIm29UamkQ0sXFPRTQ4HmbOeSrkkgfJUGI=; b=ZCkdCqtztfU6KWTvjSvZvJUkP
	kp+r0JCc16nZ/cUeQE8hXnMLBoRz7PhekFxdQ7XQAOtWnYQ745QQrEJPryU7InnG2KQuT+6pcJR2+
	oWJdYQ+kXAm8QtUV31ssVPwVcWj2XGsfxKgMMKLNQqRLpZv4s/S+p7uKr6+23UxDA1We8P19F3F++
	IFK4APCjLNPAMSk3jSH82cDxMOuV2TVtuWKDzSJQzQsRjdnuYPhJsfuZrCBECpJ/wP5Tpflnes6DX
	vU6MzhyyuG4RieWghkWZbEf6sggutejxscFrVuhIffkjIU/MgIZS3cGs8s8BGOVk7AsQedLJKxjrL
	nlqnXxoVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOkZZ-0003BI-6S; Thu, 09 May 2019 15:03:01 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOkZK-00039m-3x
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 15:02:54 +0000
Received: by mail-wr1-x444.google.com with SMTP id w8so1098633wrl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 08:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4dsx/q7HbMfsJZPbIMqDoMkdbIHaHboqniF/scq0b4s=;
 b=op6o+sDbTlaAqh7mLZq6GcfYJtBYwK/t5Ez5FeZjMGVM+R4nw64WCOnJHAIu6anCbL
 BujfdZAeZMWJ/Dlaq2wod6cDWiBHkdyHNul9SUIeV0O98paTiQKNL4R0x324PuVX8Gjz
 bFACvMoqM5o6BVotZK0jvKrZEwYCgTSHBdXcgXrwlzeEFePHDECxcqMvzZf2FN2552Hf
 aQMw1DaX8t6ZcdCmAzG+Xt199k66+RES/9LNoSEjHu0kyuIlH4oCRpGLdAuWtfp2zxyu
 cS2KNl3aGbr2CHQP0pDZPHAm33chi1iuIaAE9w8ax2fPTZ1Zi0bycLTZCT55uCViWszk
 DqjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4dsx/q7HbMfsJZPbIMqDoMkdbIHaHboqniF/scq0b4s=;
 b=Vc9qWrcPGnugzktin6cldYfFAh+omOaa+pgIEsn8LZ+6Ky2c+GhYuugVrGuP1nyJ33
 ShMzYIX9tlTVblZmlP0j9LfzIg/cmGCsAzGlpWW+2oFClYLmgV++aBvs1JlpZf1Om0Hl
 g+fz5enFE0NTJFNbztxG/R5rbmJRh+hvkbE+rfptPQI1IvpMJWqGSiqZBaZI+FgWf39F
 3/pMKQ0WmR/YTUrW1UB/ZanMKLYDBg6a9xt851KT3XN8/nKiUgP2q30CU7UZkPhLwljL
 PqQtx80SXmAHFFbF7jmWV+VVJJ/sSiRBH6O93q5xIK9noVVGHBdf++QYx1k3BDU4SCdx
 e8KA==
X-Gm-Message-State: APjAAAXZp9PJ71lFZjwXhExnXe0+JFGqf2M9aC1w0p6Y2H72mBQ9CKw6
 SSnnvXpvFQVBfya0LjDdDbM=
X-Google-Smtp-Source: APXvYqz1DHOTlq78BMwbYXJC2Qau6WsX7Qi1e9jzkdUqySLmmY1bFf1hVZGmkhfBKtlDD7VBl5mzVw==
X-Received: by 2002:a5d:4ec9:: with SMTP id s9mr3667227wrv.223.1557414164337; 
 Thu, 09 May 2019 08:02:44 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id p18sm1628761wrp.38.2019.05.09.08.02.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 May 2019 08:02:43 -0700 (PDT)
Date: Thu, 9 May 2019 17:02:42 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V12 1/5] dt-bindings: pwm: Add i.MX TPM PWM binding
Message-ID: <20190509150242.GC8907@ulmo>
References: <1557408252-21281-1-git-send-email-Anson.Huang@nxp.com>
 <1557408252-21281-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
In-Reply-To: <1557408252-21281-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_080246_160670_BFF3C482 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 Robin Gong <yibin.gong@nxp.com>,
 "schnitzeltony@gmail.com" <schnitzeltony@gmail.com>,
 "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "jan.tuerk@emtrion.com" <jan.tuerk@emtrion.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1254323177862387335=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1254323177862387335==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gLcqQrOcczDba7nC"
Content-Disposition: inline


--gLcqQrOcczDba7nC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 09, 2019 at 01:29:19PM +0000, Anson Huang wrote:
> Add i.MX TPM(Low Power Timer/Pulse Width Modulation Module) PWM binding.
>=20
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> No change.
> ---
>  .../devicetree/bindings/pwm/imx-tpm-pwm.txt        | 22 ++++++++++++++++=
++++++
>  1 file changed, 22 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pwm/imx-tpm-pwm.txt

Applied, thanks.

Thierry

--gLcqQrOcczDba7nC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzUQRIACgkQ3SOs138+
s6GPVw/9Gdzsk9uaLau6Rkdgpm7E27qHxLaoGWnFIO4dSmbBB54pZ4RyBEndDzAM
+oKL64WpYLt3z8VCoEQTQ0kUyN3s1fcPfU8IQIAJ6D7cI8iIiaT7vyCWS3MCYT9q
+yx97WQdOo5AFnyy9VT6P4o9D3OE95QLrER7Wf3MXmAxWamrrS9cnly+DjB+Jien
2mJfWK/nUfxYMSBOTZrKGNh85gPsrIb2AiMLGJn92KMyyd8/nRcHJMUlFZk+0bXn
4VSRc2MFnUmlNcjYmqyDT/CcnkFVzLI6+Dlthcaiq3icjVw1Z61fyrG3IN+kW1KE
Nhq7y2EywnEiFcNmhIYxjyqSDsblmJiPpAGD6EA2pLk/dxjvnoeu9KsiBiWZQnsA
yWiaQKdUBAKJgP33vqiwv+mMQK8pYZrEThr8FKZ995qj37zlhP3ewtM9vrqMHUBN
81hGXOH48ZBCkFT0vHPrm2c6+FMkqk+Y/sZmyxor5Pje8nR0MVh9X/w/u1U+wOlR
RCzKA4pAvhWDzainC3x5uijo+HKomQ54wLq694KK97cUUp5CJxi0zD3PFMlye0Uc
JQ7RGOWwunI3u/wkS+YUmA18kqvYzzCg7BLDA3+o7oVb1nYPIA0sSPyFqq7SXhh6
YHy8kd3yzeuZ9ylMyUqeiei8prfyYiC1q2HyFi5w0ZImpq9bujY=
=Jfgf
-----END PGP SIGNATURE-----

--gLcqQrOcczDba7nC--


--===============1254323177862387335==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1254323177862387335==--

