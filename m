Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E51C4BA1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 12:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zLNdYwqUO/+lwun//DkIQRZDY3cLAluDfsORlrO1VJg=; b=NXWsTY39pfY0yeB/Mcc01TeuZ
	m8AHVPMNrIqio5Mm0QdQM+rITFMuhwEQ1+oWgzeHwB0swaM2dlAN3Yl2yztsf0GIhztkd2GCbNmJM
	O7pOdiD0Ez6pPopyDyRrDNleXd7LU06QJIe5LEODVu+Gt2w2MNnFzMlW9W3gHqXFOyPse0zx9sRlX
	ncGI8rvtPfJhmp/adgqcHOPsz6Y/sfM6AsgQC6D6A6JlRbQzElB12NKw3kvzHQHbBHY4Ze7cEWtXI
	RK+AhpmUzyeP/cFKn0s+LH1OSCbtDLpgAaB9RNJyIvLvCZx+P/fKpl8Lf/Q3jHfkms39ohKph3dUK
	KKWYuAlcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFc2O-0003Vv-SP; Wed, 02 Oct 2019 10:39:16 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFc2G-0003VC-KI
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 10:39:09 +0000
Received: by mail-wm1-x342.google.com with SMTP id r19so6627164wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 03:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=34wC0n//44F6y79I2b4AAd2CW4tyXa/jyiOQHai4gS8=;
 b=LCgk8yPhc7jdn3eNstggPqAH1MafZ3eYuEY8P7C5YN5g1R5aludwgXD2nJg95ofiNG
 4ozU4VPR1n9Yttjm5dPW5nxL8tHIWUZGgorGiy85f8Cz5dRb2G3ozE7PS0MHQWSVZsWH
 lsx2EjLC2+Q+JagvxQ0JSgS0qsjc76n3R0a8lsGwrn9blviD8Ck2aGmrVQedw2iB9auq
 LMNQQ72enoHc2AoOggzyfPeshI1XzYIByHrvwbomiXkJZrEoi4nGU2KaX8TM/9+jDnwm
 0+KvhTEL63nQ3hgangxKkUGt6+tK84Kq16gL7pzV5fxYgCrx86OmWJYkaLTzfjL/9V4A
 CG7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=34wC0n//44F6y79I2b4AAd2CW4tyXa/jyiOQHai4gS8=;
 b=dhjOUyOUf2yZC5KsiUAurrHBH+yQm6IrGMO+HO+qthydMetKaRxMhSrwHHmvQcaGIr
 uEpbge3eHktqcTmX8FJpvXxh5XXnyExVzt2yAEsdi0lMYJUVPFH1QuAwyQx0hwIbKipT
 DqREvXknOH4/d9w1Md4ZsiOYgvABDi+7J0j+yuiqiZXvf81r4ijcpd3uRJqfU7/zagxh
 /DRA0Yt38l2hKw2lhZ00KRoFkuPeDkAluZzvxAO6u9R4eCHcqprzCNrGuJQ2IPGZrVCs
 7DKzRaYyaJNHJqROVK7yg4K7mJoZnJytfgYynRxOP/ifjiUSuPncNH5/JQuOOuOKrY4x
 kjDQ==
X-Gm-Message-State: APjAAAU9U7B49P4YTxucEHpNou1n/u7Dvc2wuX6etFrRncDHU79sOMSy
 Yul9eYn3NoCZm2PO1ZnaMG7l2oaM
X-Google-Smtp-Source: APXvYqzKaVdz2ys0q7Ajk0apq2a5ruazTjoX3Ns1yPUR64X5X1zjyBQv/KrerK3HFQV0RaCjeaFObg==
X-Received: by 2002:a1c:5fd6:: with SMTP id t205mr2286748wmb.124.1570012747064; 
 Wed, 02 Oct 2019 03:39:07 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id c18sm19817723wrv.10.2019.10.02.03.39.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 03:39:06 -0700 (PDT)
Date: Wed, 2 Oct 2019 12:39:04 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] pwm: sun4i: redundant assignment to variable pval
Message-ID: <20191002103904.GI3716706@ulmo>
References: <20191002100844.10490-1-colin.king@canonical.com>
MIME-Version: 1.0
In-Reply-To: <20191002100844.10490-1-colin.king@canonical.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_033908_665388_C95DEB2D 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pwm@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6387424612722588094=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6387424612722588094==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="RwxaKO075aXzzOz0"
Content-Disposition: inline


--RwxaKO075aXzzOz0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 02, 2019 at 11:08:44AM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
>=20
> Variable pval is being assigned a value that is never read. The
> assignment is redundant and hence can be removed.
>=20
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/pwm/pwm-sun4i.c | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks.

Thierry

--RwxaKO075aXzzOz0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2UfkYACgkQ3SOs138+
s6EokA//eXZuyZhqQNANMBM0nG+CkHKuKs+iC0DOXQ4NyZMNNoXNy6I2UvGg7Yxr
hSiF5hYwZqfU12j33qdvne88q+Qh4R6UVyH9+doCh2SYpO928hUyrcBP7cutZ6LQ
pXxUyssDZCWpzr95yrKXhFdtp1KARRdeIjvnu2qdAUXVbJ9LsYpWVKBZQ+5qzrit
p0oR4l9K1T8m4wJ+DM9ejM8SPRsT+LMhaqPDWzqSRy6OewNPhcHiQk26XwZ2SWDH
tUMLk5vuGoHxKHOYorOG3IFjfNjCWqJbsRyYIYdjk0hqBrZ6UWhAI1EKdeb6qK5V
oPyxLIIhiTMZ6JiSN/RgY3zO+/0Mak0YLrouaVCpt6mI/OcsTh6u6++bDvQchQmB
vcNFScHVLuwUnNV1Bh4FEjocX3i5ucDQsAhDQfX1HriCX4MTXt3QArdQLx2s1CYS
AcntnIIYWzT+YIc6FObtL4ml/FPmwBKT6V5F5eA78AwcsRDV6dMcqRO1I8wkkypF
gAh5KLSjWfibX+nYC2vgMsP8Ab6wD40fu8sa8W8q/Q6A4Yc267hqHgsMKTnVQP4t
TK/kv4TqVADa7mV6sGsvQUvtKn2+3rBUnv+WU06VXgw4ZhzyjybuZbGi5rkugGm8
eUDcoodpzE8EJSlgjgpygmouU5EUezWzh/tfCGR3HKeTPQBs47E=
=VQ2m
-----END PGP SIGNATURE-----

--RwxaKO075aXzzOz0--


--===============6387424612722588094==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6387424612722588094==--

