Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8824440A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:35:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EC7bFTAZdPd+OJA065cFULCiyVQCg83cUpoE/cHBXoM=; b=dxlC7P4R8ARW92Euw1HwztQUo
	qoPWXl9Xrr0h/G3JjjI6b2lGxIqihYOwzIEO7SByps3D53MkrtxbOE9gW7z2eE0EIlmPYce7zXWJM
	Q7DBFD/Utf7Z3fmC/THUzki8RACBWHklBA2Ik0ISRVj3jxpzmkLHUhPr69j6Z8+w8K22FHmri7E77
	gddPyoY9cMOg8MZNRqm3/Vy2oraGi/++U9eaqOGwadv0KfTMvIJgUuI9ISc8JhyfpX8H/xeqp0C58
	umet+I+e3wOkNdF+aeotWoH7RS3TYA+JLYV1bzhBE57IRbFWNde1Sdmjr8dvIpUSxKlk+Km3/oGNn
	dWKegCn6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbShQ-0002kr-DA; Thu, 13 Jun 2019 16:35:40 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbShE-0002kO-M4; Thu, 13 Jun 2019 16:35:29 +0000
Received: by mail-wm1-x341.google.com with SMTP id g135so10893933wme.4;
 Thu, 13 Jun 2019 09:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CdU3AkHiGyVIlUJsXB82LDChYizZRFvTCAKkkb1a9Bo=;
 b=d21HABiSP22hYq6h2HqZvldGkD4KwFsLbe2nO07JgkifWj0n4vD0ejq10JdusropKA
 YP96a/ggrRLmwTlidX1zYOwLTTXsiJH551QUJmoK4cBh4WpCxGKz8Kn/uYGhb06UfZ6N
 j4RdWgRKhPgN188N8oiDPBv7oyI+9je3uKohQdNf8sDXc3H4AbKIcuQ78mwtlfjhhR3B
 zzFLHCGl6Fo1DTuchVDz1NHIjsQaDgroHBpaqatm9Se8lPtL4zAs0xVTjn3sgeW9GJn3
 iB9UyijNjXwP/DSzbp2aWx+gJ6Z0MzidOSvO9rdIx9m/7DS/nsMx/v6vhYTVOkMvACWL
 mNMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CdU3AkHiGyVIlUJsXB82LDChYizZRFvTCAKkkb1a9Bo=;
 b=NpzbsHP2gVBtD1n1l9i04E99fvtMQnd3A2r140crRr4bXoKUA84UYUT5LKWNg0Jeah
 awC8dmxORM65Cs/GLRI1DXdg4BrUhdJzaREV2HC6WJm+kTaB4L5mbLLy1g57Z7ZGlU9e
 q+Dp8eFy0tbFT9MoDQJrsj5Tz26aR9CtGTirwry0lGDuoJd9mz21ez+ujcM9C4Z72xLX
 XpFGjn/TwG0eBY8AyI0qchBC0TzoSAzkZC49EhWnJml2V2zjjHEWRQXB7SrTVGREGpYN
 g4376n9uhTTx0Z+YBNflx+f0vR+7/RAtuasREZPqIWElkAXrDjVCagt3vgYPoyawqlrD
 Ly3w==
X-Gm-Message-State: APjAAAUzG5EKxe6yksWYCSDg9no9qdeAIDe9AB1TIdJwejj8qkH06XHu
 UYJuQGrrRg/50t6awX2WU6Y=
X-Google-Smtp-Source: APXvYqzTMsGQ5gi7WuA5z1F9IWEkNjr/KmvxNpinkh3KQ2V8PASKooKQ8TQ9V8D6BrB+t6HYIGVZmQ==
X-Received: by 2002:a7b:c251:: with SMTP id b17mr4698049wmj.143.1560443726939; 
 Thu, 13 Jun 2019 09:35:26 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id d18sm223569wrn.26.2019.06.13.09.35.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 09:35:26 -0700 (PDT)
Date: Thu, 13 Jun 2019 18:35:25 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 10/10] iommu/tegra-smmu: convert to SPDX license tags
Message-ID: <20190613163525.GB3258@ulmo>
References: <20190613162703.986-1-tiny.windzz@gmail.com>
 <20190613162703.986-10-tiny.windzz@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190613162703.986-10-tiny.windzz@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_093528_720601_144C3655 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, heiko@sntech.de,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 joro@8bytes.org, will.deacon@arm.com, agross@kernel.org, krzk@kernel.org,
 jonathanh@nvidia.com, david.brown@linaro.org, robdclark@gmail.com,
 kgene@kernel.org, linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: multipart/mixed; boundary="===============0226256715857252043=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0226256715857252043==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xgyAXRrhYN0wYx8y"
Content-Disposition: inline


--xgyAXRrhYN0wYx8y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 13, 2019 at 12:27:03PM -0400, Yangtao Li wrote:
> Updates license to use SPDX-License-Identifier.
>=20
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  drivers/iommu/tegra-smmu.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)

Acked-by: Thierry Reding <treding@nvidia.com>

--xgyAXRrhYN0wYx8y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl0Ce00ACgkQ3SOs138+
s6FKzA//cTztUQT0grkWSjIr7uw4dhz8d4QkKoLpgJNMBy86/9lW7oGsYjGSTQd8
TElU4HT1/mbjm22/k8CS7uzTkDVIzJpLTMWIsvzJ8xlBD81/lnzau+NgzFxbCe+D
4FwpGJd9wsi1b3h1eWFzxsrY8xi17liG26hKPMl5I0uvPs0XXgIJxLvxshpwU5IH
p+Q7EDpSkcbtyxJCFcVNWQsAi0SsDawMHk42EHYEZYqgywlMfWqW/nisTODLcQGy
dWKABd5zclXza3ISw77plAvPu/7XZ79QGOLVadS2qEydL2Ec8cJg2JZovnn3hl3U
5Q7R7dq+3ArKEQXYiUhUNxNJ+pjiusO2mgn2elLB8gMcf3UehFZ6lVhFbkOete7H
rA5gaZhZd1nDC9J3wuTnCjlLDvWB/IcapgPLEiP1rvvAUJCgaQmAWgzsJs8wXm1B
robCwCzXX9q7ktjBLpeVGrrFtPDruXHWC1qcQI//nJdr7QPhliTbgrSt5+H83eY/
07UXShb9r+n+v4j8slwC6G9uuMZzq0o0OowDC3PXc5S+GXruiyVt1wB2+Z6RTvbF
P0mHLRfpPnsxC9YBejsrhVCRWHS71CQc9xuuRczo0smJXlmb3sU5KGZhZJaHWNTs
nPbGRR7vEW3lhNbSpACEZzLweA6/ALaRgri+qx3cHHnx6biX+A4=
=nAP7
-----END PGP SIGNATURE-----

--xgyAXRrhYN0wYx8y--


--===============0226256715857252043==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0226256715857252043==--

