Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B39C37F1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 16:44:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aqqBUZO6CWHmBzNbUvBJvl0SnSOyTCcmgoOuYDPymw8=; b=PwQEKS8msAyevVhDQXsemnS9n
	HwQoblteheSIdSA/a2dxe33/ilugHZx4UwzfqTUcx8QyDZqWYoEJDLspeZhyqoNIOXNZpnSCeGsgJ
	P0EA51YMfID0ondXX0GswofZkUtLk6SG9tssrATr8VNNTgP3KCibyacdeOS7XJzFWXvNSymHfBu2c
	a6VZFt22lE77xIIbmc9yDK8ME1TlpUro1aDCthUfh+xYsDryyv8sb5lHQEDwAkjBmgkJkOfsxa3AC
	PQsWx0SrI25OB7D9qkY1qXjO6isl7H3htu4WgEi5PuKHvvl37sT//YDv/nxdRyONUnKje4RqQvddF
	3w2ou0ZDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJOC-00058z-Vy; Tue, 01 Oct 2019 14:44:33 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJNw-00056T-7Q
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 14:44:17 +0000
Received: by mail-wr1-x442.google.com with SMTP id b9so15897389wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 07:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=OikTbuqK6A2qTYHDLDWJoXT63eutsATdUGWY/2GQzJY=;
 b=abMEp6vzixxcJfYcyYbYKRyEjJJRmRs/RPQS+OBV1oTZg6PVFHWb6N7pL62AIt0M+A
 nenqJUao+vG0+vO25Y9v0OF9a5uPnTLklvc3IuOug/FIavtKD+r7nBKqK2qw4MnD/N/H
 wtjTOw931MuW3F4lbuOblwUN1QHWZwJYReMXzlG7NorNXg9WeqxcF+n9QwUKa/Jll957
 PRRuOwfNrB02p/3sYF3x+p8uJVBv8N6j3A5IRAbNhS9ls2nEL9oEJm6SLGsM6IW42fuM
 Ahvo+mFz9iGCu/z553gi0g0lVWQjnSAie455OTm++K8jHP2Z3tqL6vLTC4OJa9slSRPO
 8WNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OikTbuqK6A2qTYHDLDWJoXT63eutsATdUGWY/2GQzJY=;
 b=cDOsXILczKlYckCkRrRoQC6zk/Pnba97CBicgiR/4Cqwc+ST0jeMOlANzjsZik5cHI
 JQ6Z17l6R5dTfDUDvCAw6qbeyduiBIHqDgAO7+aXPe+QGdD6aWeB/KFrq+v0KV6ws0Fj
 mU3zLQDh0jAXhFC8Y7/lwV0bKoxhVhoxHJqc0VK4Fq3z01ooCgZXYsp7WfbyYGdGioJD
 efDVE+Tp97EcoB9ZEN0OCx/gWrwxHG2bXaK/yjWc9TtKtchu3naf3S2PJTeiJXsT+WcN
 a2FL6PT4YQmElysPnIAiKEIC6WsYxiMby4RUApyoPRIDwo0MbUbLVHjlCeFqxylkIcUa
 CVTQ==
X-Gm-Message-State: APjAAAWbxzsSLoDiHUmqGZDU0siOfnPRJ12AJhOVTmufqjPcRY+V2Kpl
 NuGvXFSYtLxRAQbMQxjNe1g=
X-Google-Smtp-Source: APXvYqw2ivYLXplUjnZIZ1ea/NWJkCSYWngeeeWH9PEqywV7J3OBAaBkyMz3gocbVVq0ZoFVVpX3Ng==
X-Received: by 2002:a5d:4f91:: with SMTP id d17mr1240548wru.329.1569941054301; 
 Tue, 01 Oct 2019 07:44:14 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id x5sm15850173wrt.75.2019.10.01.07.44.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 07:44:13 -0700 (PDT)
Date: Tue, 1 Oct 2019 16:44:12 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: tegra: Hook up edp interrupt on Tegra210 SOCTHERM
Message-ID: <20191001144412.GD3566931@ulmo>
References: <20190829105647.15212-1-thierry.reding@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190829105647.15212-1-thierry.reding@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_074416_265984_F7EC6FA8 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: multipart/mixed; boundary="===============4955773607390259841=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4955773607390259841==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="8w3uRX/HFJGApMzv"
Content-Disposition: inline


--8w3uRX/HFJGApMzv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 29, 2019 at 12:56:47PM +0200, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
>=20
> For some reason this was never hooked up. Do it now so that over-current
> interrupts can be logged.
>=20
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  arch/arm64/boot/dts/nvidia/tegra210.dtsi | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Applied to for-5.5/arm64/dt.

Thierry

--8w3uRX/HFJGApMzv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2TZjsACgkQ3SOs138+
s6GzQhAAp0Igvn8aJSUBOB43OB1hXJ2JhVy10rLBK6HaiyTJhXvIKJ1m3yNjE/e1
J0ab0gMK7TR9zIwqCLUHFgofCssyMmdMaS4d4/IUzMfRE0B/g35e8ysP8wWDgKRs
wS5ISsi2sRbAyVeLCL4tQxcreF9kFEcIvQhHGWmOeAfYZ+vljDtawGnKynJ7IChz
CSkPoSesMQMmp3xcbZY8/F/X928XyluXv4pNuka/os1b2rUeCcjMevOVZxHDLqT7
UZh5W2HSDmweUHDbupQDmjM8mSwou+2yFVziYz0s2FLu6GNGczER1NbXrL6S6GC6
ivUl+1Uk9pyP25oZpVVeE1LZZPddDS9qBKY9amJp7+/DILo38KR1JXGwH5e7pG5l
E8l4vJ+Jwunx4PRHEXABe9MtBCPLUESKEUcBCVwKv2o5HYFYayJXVMVmHskcRosW
9a7CkGM4djMO5ac0ovjziimiun5WS4LYffOv8xzzLV+jUM5tdbM0F7X/NkQHvOmT
w4weKWLgJTebHdDi0lq7N1UxGVwZLUS9uh1MXVDPPToMimiwzrZxCMM4XfCOm0df
sBTJOyeoo/qgOjJNlZmmH+z0oKN7gU1/VyWip9LkxbKzpIyFFkXyg8xDrA9B3SYU
YMt+CRvU0SPTCr27sc8RccL1ZYjW25hU14fUssRwYjaWP422Ngg=
=Fg8B
-----END PGP SIGNATURE-----

--8w3uRX/HFJGApMzv--


--===============4955773607390259841==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4955773607390259841==--

