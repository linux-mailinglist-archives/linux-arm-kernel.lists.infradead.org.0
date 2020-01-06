Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DDF131283
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 14:04:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Lh1lrx8X4jOblHbEUJZZbKtxITadK1zAmwewWvtgF7s=; b=RNkTWnNYCSwdjADIv/AQ+pZaN
	8UQtoZbTI7k5GD2qgsAgxinXX2qSyRUCsHbvNOqEQPfVy3XCGpg62Aw21kus1LnX37NLf5THlC40O
	nqTqgonIAk7h745LYmgC3tzrNWW38z/KbrBvFapSSLRpAZCpHNA6ewk7x+mkT04hgf00DqD1kuTcX
	rhIV+C/aium420kKO+SoWlKHSsXrdaBPKTYBmzJGO7tv4h8h/vEIcLjNb8HGWbZK0NQ0qNzeSg3R3
	MOHHqA1MJ+S4ifrnbdxXlcUyOOIAbRkqwpMOe5ixKjG06Q7kQbzHdpD5OLz2TLSmnJ8IG2Jm1oHTP
	vQqAVrObw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioS3s-0007tK-V0; Mon, 06 Jan 2020 13:04:48 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioS3m-0007t0-1s
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 13:04:43 +0000
Received: by mail-wm1-x341.google.com with SMTP id m24so14866477wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 05:04:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=f1SlUZDN16+Hw4sSBCtOG/D+BZxQ/TTwFM07SREKnFo=;
 b=DeDorgOpx3C4lcDFyo9GkzRr59Szn/LwWdUmMSwc2930pdk85z0mR7qnBxqur1PWk8
 5ZNAZGhOKaChzNrOeCGaaBhtTmFDpjscnDb6nX8LSJgCO6t/LjpT2g0r5Jt63Ff6e6gP
 ZZqq6PYnNvIDoWQIFnYHa/b0jcW7O2SvBuwwvnKJvOhlz8WZksto+RCUJdnrZ7j0m4HX
 FfDLR6GfxFRDEZKwdJ+RLVz5MlBKuNfiJYvvFtWihHVdrM8IU2kMxVJmaWmRO2ePTugj
 /7vlA6UfxZ/bc/n6CRkvLohYAwCPB4FLN8No5IqJIUfr9eHjp7MvHabyJHqi9dbD1AS+
 aT3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=f1SlUZDN16+Hw4sSBCtOG/D+BZxQ/TTwFM07SREKnFo=;
 b=ZtNmQLYR90eH4Djd9/ieZkCNUR7eP/ppRuE3IumfjstxPNAjRRFbGc/Wnm5EEtVSSx
 6SnCdgEctlFYuB1incRjtHtjF/pZTDp1lmaCiEHh/7SkExZ2qdD9ydYPBXQ43QdvCygD
 QPEv33n4REzCef8vEcq27Y2DoxBqnROkJKILEUP3vlKJCo4N5s9iq6za1ANv95cyHMP7
 t8SwSnXE6U0BrNPBLyol3Q28NIz2L9/iOR2/EgzBaj8oFJhHxjdccs58CGNf4tLnvRZP
 C5TElgh+k3tiy+kqIXLqTmNKGLoboGaY5oqZav3jZYbVXud6aP2f3IIRX2eCfftcpcKB
 5Vlw==
X-Gm-Message-State: APjAAAXa5tNDpbMfhSPmei0CB3+PGRW7NVan7MRWQ/zKMrNYadtXJOJ0
 mOckdSlInRmVW1q1cQjCqtM=
X-Google-Smtp-Source: APXvYqwYQiVAy7ZtUBk8Qv2zP+847DcpaQDmGIoG5FymG0IgkuUKC1KDqV4U3cWISyeAqZBsqRzYuA==
X-Received: by 2002:a7b:c183:: with SMTP id y3mr34995190wmi.0.1578315880453;
 Mon, 06 Jan 2020 05:04:40 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id c2sm71998289wrp.46.2020.01.06.05.04.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 05:04:39 -0800 (PST)
Date: Mon, 6 Jan 2020 14:04:38 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V2 1/5] soc/tegra: bpmp: Update ABI header
Message-ID: <20200106130438.GC1955714@ulmo>
References: <20200103124404.20662-1-vidyas@nvidia.com>
 <20200103124404.20662-2-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20200103124404.20662-2-vidyas@nvidia.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_050442_092904_5A45F7B7 
X-CRM114-Status: GOOD (  12.20  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mmaddireddy@nvidia.com, kthota@nvidia.com, gustavo.pimentel@synopsys.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, linux-pci@vger.kernel.org, bhelgaas@google.com,
 andrew.murray@arm.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============8370469193849529190=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8370469193849529190==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="w7PDEPdKQumQfZlR"
Content-Disposition: inline


--w7PDEPdKQumQfZlR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 03, 2020 at 06:14:00PM +0530, Vidya Sagar wrote:
> Update the firmware header to support uninitialization of UPHY PLL
> when the PCIe controller is operating in endpoint mode and host cuts
> the PCIe reference clock.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V2:
> * Changed Copyright year from 2019 to 2020
>=20
>  include/soc/tegra/bpmp-abi.h | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)

Bjorn, Lorenzo,

subsequent patches in this series depend on this patch, so I think it'd
be best if you took this into the PCI tree along with the DT bindings
and the PCI driver changes, so:

Acked-by: Thierry Reding <treding@nvidia.com>

--w7PDEPdKQumQfZlR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl4TMGYACgkQ3SOs138+
s6F+Zg//TLpFZod96JYrSlXeoed6v2Ljl8ogG72EMMhOZIGLCcKwJWIX7ZYo1SeD
WkkHSPNRbwIIF91AMpanXAmNImq3CSbg63BrTDhYcQXBxGRnAKM19NnI/tXwesm0
Vbw5Xsq1mkVDpw/TmlJDJTB+koeIdwIXI81voGHrpja0jPn6dDWpuR6GWA+lNjKL
7RrsKeRyXeAsND0HX/LHNGc0Muyw+uAOU5kPfzhrTx7xcIpIhPymV2qI4mexMw5h
fbmppZSm/21u53VkeMhhdFBa0Ic+JM7nS7NHWaBgwl8L7RbuT423uaX159qb2KRC
NQbVh4xJGmaNMEpDq7FxSpMHszHgBthvyV3z80kkohVg5jUM1Fno+YsjlBNeFhp2
60zwuPnvqIgg0i7vP7rwYVc/mrIJBkrcUgVzxB0M1/R978xJmVZSeFE9yzVY9oty
XaqjNcwPyL+w+04TbCqOarVCbmKKnGPKmpCjuE4PlhI4LhgDXO/e7afNFR7liMGz
PRI8whwR/49g0ByoOJrNA3r7KPoL3UMfLiWXBZCUnuvwBVdL4ihXg79zVvPE/eFc
HqZOSLfj03/ZcIvi8IigUl6LVGdSanZvyJOaQzKPE5bTIJb8VzxjxxJhq4tCZJ5y
LcsdpM6sTJefSbEf7Gio2ioW6r6yUTxzVoG3Pco1xQm0Szb7UCQ=
=GkrY
-----END PGP SIGNATURE-----

--w7PDEPdKQumQfZlR--


--===============8370469193849529190==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8370469193849529190==--

