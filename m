Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9FF1AB445
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 01:35:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MvaHMiqjPMESi/KaKAvbktZzJDvEa/WpA5C783SG5jQ=; b=MoZKFB6b7XlReuBFNZouWd+sb
	4yjUDgqNrQpu+RFOFbEXtM+3R2nEQvBfg4pM/6s5wlgur2q1ZyKYGm3bJFQ5LaN8niKc0IaKknJjF
	YcjUD91ljhh4esMPfdcvR6VhfuxLMYB99uo4pZ7ezRBw1u853lPWuL0f0A3i9Zy95XxffZlAwyjvC
	dqxXZ3S+VskrcVKltqzm5PhWGLdEIz3Gr6sRYr0hBqJKOtY8Z0RVDFHxyWWi4uQxfblITkYscCzY8
	d9L6KI8a7jS+epVhanwWbhw5MbaOWPA++HJakiyiS9fiF5t61Hz+M9R6fcTqmk5/Vp6ZSHaAWR6ey
	3JYFOUXaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOrZJ-00014f-16; Wed, 15 Apr 2020 23:35:45 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOrZB-00013z-5i
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 23:35:38 +0000
Received: by mail-wm1-x342.google.com with SMTP id y24so2450384wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 16:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3yhHiCLFkHALyeh9n0R+g91ZtL3ZmiOJYx7G3Acd2uE=;
 b=gbs07HG4V/IKn6V8g2AD2wilrTRYsbSeFe271v80vZurPTgdqencH8ctUgGfERhv1t
 qBnPynXX9mLJAfQ8TfIneuxPl9mB4Cvy3KQuiddCPqwz2v6sEUDgs8/0z0Y/2WHxPhAr
 5OcsNAJNh9xx4D+tuSIBF+UC5oxU2OUQx7LjddiaGs2WzxdZKAxoyHRQ7trRu25Ii+mo
 3ksN1xJZrXtUKjTXUvoFORg8kp5rA1MdTexsa5SxRE//IPnXhQcwtkl8pXNizXhDTX9O
 QsrIrbtuq34wy6gEtrYqTQFHLgx36DuppZZnnsZ6q+ejaemRsLypJKUWhNT9zmM4CunD
 1lUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3yhHiCLFkHALyeh9n0R+g91ZtL3ZmiOJYx7G3Acd2uE=;
 b=jJALIjiIi9BSHDlyzImMmjnetPDjkdJcYS6VvBAbIDBBWBt7X9ReczFU5iYZOSJWsm
 v5Gh+FOkMSty7QQYjTCYoAaUOrJh1YM1XIVikUgyiVyN6YSOmC2FpkdCPIjGriAhPpUz
 Mw5iyQDOkEcPYjNWvfrZAfGUTBHz3fcC9ae/PKHdKO7PTerdQp0vHo3zgupsVDm54O0s
 rSbxUmyZvJXESUk1SlpS7WlYHLgnLg5+QT769LT+DvvvQhN/6Z0soyLsbFdj3PWtMtS7
 VfHjtxietBSWPL7ceDSvSsi2yljxch5m35s+JQNIwb4v4J7cu9hRiobjybbxtabDR4fX
 0BRA==
X-Gm-Message-State: AGi0PuY9k7j4yknq1W/7s3DZXfIaEsEnb44oTaNGHJ9yH2yFKwpyNY1O
 Tj6Hzgd+NwLSGWqZOUGrGk4=
X-Google-Smtp-Source: APiQypIiHqj2LxiVZTz3NAfRabiq9kyGk4NLhgDJx+t58Jb/8In6qOQg2YwYZUe6S3Y9vrypStN4nQ==
X-Received: by 2002:a7b:c399:: with SMTP id s25mr1613933wmj.169.1586993734863; 
 Wed, 15 Apr 2020 16:35:34 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id h6sm1368044wmf.31.2020.04.15.16.35.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 16:35:32 -0700 (PDT)
Date: Thu, 16 Apr 2020 01:35:32 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v6 02/14] of: reserved-memory: Support lookup of regions
 by name
Message-ID: <20200415233532.GA211822@ulmo>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-3-thierry.reding@gmail.com>
 <20200415162449.GA1842@bogus>
MIME-Version: 1.0
In-Reply-To: <20200415162449.GA1842@bogus>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_163537_239440_80865CDD 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 Dmitry Osipenko <digetx@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7093004101106947435=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7093004101106947435==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7AUc2qLy4jB3hD7Z"
Content-Disposition: inline


--7AUc2qLy4jB3hD7Z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 15, 2020 at 11:24:49AM -0500, Rob Herring wrote:
> On Thu,  9 Apr 2020 19:52:26 +0200, Thierry Reding wrote:
> > From: Thierry Reding <treding@nvidia.com>
> >=20
> > Add support for looking up memory regions by name. This looks up the
> > given name in the newly introduced memory-region-names property and
> > returns the memory region at the corresponding index in the memory-
> > region(s) property.
> >=20
> > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > ---
> >  drivers/of/of_reserved_mem.c    | 19 +++++++++++++++++++
> >  include/linux/of_reserved_mem.h | 11 +++++++++++
> >  2 files changed, 30 insertions(+)
> >=20
>=20
> Reviewed-by: Rob Herring <robh@kernel.org>

Hi Rob,

thanks for the review. Do you want me to apply this and patch 3/14 to a
stable branch and send to you as a pull request? That way I could use
that same branch to resolve the dependency in the Tegra tree for the
memory controller driver patches.

Thierry

--7AUc2qLy4jB3hD7Z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6XmkEACgkQ3SOs138+
s6Ez0hAAhoJ+N1kIOrfHX3YiD1o4HnSvBdA5fzev2mOBfWSzcbDQtQuO7PYw6yCq
IeyEbUuehKpQL/OQASwHkJ4m3iRr8tH5PddGl1DF36Vu3bqAxr8opKZIi1S2hXHE
2iXFY48PzN9aDvLIilAylO12RtZoTD0yI30BpucJYhATovmkzvzNuhaJ8CDYjf07
4OJ0HoH7hOn9rhjHNQVq755OESyUTtRIqHxEw0150PJG33O1cjruRc9WgI5GVjO7
4MQSqFHmyOcfNWZZTins29E9Cnd/zy2nkj+YXsp7eBRG2QFjrlN+y7evCduhOdbP
moJzOF+e4dqEOZDwlVeqPni6UVFu4Zr5HWJw790osuG1oOCwB4NVpNRz34VjM7kD
nYoZaqIm9X5Foeus0Rl94cBreI0Bg1lCsM8CCoANE42t2NOlumnMsJoLWt4T+cBb
F5JoiSCC4JKIbuYedHI00W/9U6LcPqBcd/NZ2ZxYSVAibApDfG/APsy8a5gRLRgZ
460CNbf4e7p7lyN5c4l58DLJvEsT/jYd/ap09KZnUZmQgcfxAHmCVQUMFq+VIb2k
1gePNObVfuvOC6Q1KwGEcbgYlNKd/e6uGwn2FP5jzWYQr9Co8R8L+kRvIaHkuVl5
o7TOw5dujpA6zalLJnecmj8XrL5uGRTvE6AwpGujw1UgN4QTGVs=
=W/7i
-----END PGP SIGNATURE-----

--7AUc2qLy4jB3hD7Z--


--===============7093004101106947435==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7093004101106947435==--

