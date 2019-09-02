Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA572A550B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 13:38:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZMCe1nvZJEVJMp/IceB0KVtX9nfhpCLkRxwQvqzesx0=; b=FZiBjkFj890vWkHmdekBIrTc3
	4YAAUpNE3hb9YA+oA4+AIzS1Y1Ijz/rLhvqzW36Ybkya4XuxLvPcPdYqNUPHfESqXxtcqE0Seodh6
	rbDfUFK95XT8/mjVOjdGaoKXavdZr3Vj5ZAsRL/bhByljXwdSwL21gBtSFSE0t8tZuSypK0FpOaWk
	iHBi/ZbJnzviduOGkp7wGPf8u3vLnz3gLYoNxsfKLMFfb1hPdYg7MQSHh83p/nOUL1xSck9JccHRv
	8TwrxZjf8MY9KMLyxkBneOo8V2k+PDqH0p4qx9W02hmOg8IVesK1FsBy34MOlDHhMUcSyD0hGwkJ+
	7zJ+ewoKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4kfN-0001ev-A9; Mon, 02 Sep 2019 11:38:37 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4kf9-0001dy-HW
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 11:38:26 +0000
Received: by mail-ed1-x543.google.com with SMTP id y91so3434639ede.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 04:38:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Bs2n5sOSnZKXzoAXps0daq+vWvxl2WJKs7rvutsTT4E=;
 b=XPNxsY5QH534cp64SXtvHluzlrL1NvvCKvuVIAkTY6t8H60YdWLXoxqa2sQ9+p2g9k
 xohNmogX3ie67YGH8xuBCV+Hqzmc7IWBYM+OHATG2/QOXCgUkJhk3fzFitBDRVfbVl8L
 VpZqMq2juawGFW8NMF8oWxsmbq7pjO39exiaUGddPAUghztghhwmRu1LrSlApHR0yn4S
 OSmbrQMrA4XfoccFDI1BcOsStlqfjB2uTuVwQUIPpl6GJGr1soNlKLeGiZWdmOyjJZum
 4Ik2TaQFCGNPyB0gVWxonj5gWuISSkbMgOigGQXByeSrtfF9y2AIWzgjLpcey7W7IH4O
 Kh1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Bs2n5sOSnZKXzoAXps0daq+vWvxl2WJKs7rvutsTT4E=;
 b=Ifq44aSDeEm4xkrGTn77J9XwrRbnd8RNCcKtlBlTVOs660vY0LACLoKrOVTTGF2GSz
 kaYkf52nbkVaTmJFeeTJY2HCXtoShzvsQxPC+JHa9RsVnwZLoj/L9tR8+EI6y0ISGWYW
 7WRS+MPwyXln26VQBLmcAfeTmFfo0aL9PzeQk5soMN/ndNg8TJ/qpsqoeHJP1VtVyZKH
 mVsBZDO/3+VUlpj9TXjYUcYA0GzoHxFOIx5eul0g8ZEeDgBWeqkqZjjHsCkhcg6abCmw
 43gc1BDni828x9vN0kwjsXQ5ElDICObmTjbUWJdeqsOfdHKK+b7/VENAQN1bSVOHGvvb
 9WQg==
X-Gm-Message-State: APjAAAV4pB/Y+IoSRqe4mO9NpD9RSCKkCGLye8ywu9EpTE2afr8Mobfg
 clkuX5eZ+rmO1t9BrLbPcAY=
X-Google-Smtp-Source: APXvYqxmE3s5EZUgIaOzgPLsOpwCF4lBTKm7zDmoM9dVth1ZO/tiUVK+qNUIJarcOaz9ECE9IhEs3Q==
X-Received: by 2002:a17:906:c59:: with SMTP id
 t25mr23680384ejf.206.1567424300787; 
 Mon, 02 Sep 2019 04:38:20 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id r10sm2846825edp.25.2019.09.02.04.38.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 04:38:19 -0700 (PDT)
Date: Mon, 2 Sep 2019 13:38:18 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V3 1/6] dt-bindings: PCI: tegra: Add sideband pins
 configuration entries
Message-ID: <20190902113818.GD19263@ulmo>
References: <20190828172850.19871-1-vidyas@nvidia.com>
 <20190828172850.19871-2-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190828172850.19871-2-vidyas@nvidia.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_043823_608757_016A1191 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-tegra@vger.kernel.org, robh+dt@kernel.org, linux-pci@vger.kernel.org,
 bhelgaas@google.com, andrew.murray@arm.com, digetx@gmail.com,
 jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============0391647687163063021=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0391647687163063021==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="LTeJQqWS0MN7I/qa"
Content-Disposition: inline


--LTeJQqWS0MN7I/qa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 28, 2019 at 10:58:45PM +0530, Vidya Sagar wrote:
> Add optional bindings "pinctrl-names" and "pinctrl-0" to describe pin
> configuration information of a particular PCIe controller.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V3:
> * None
>=20
> V2:
> * None
>=20
>  .../devicetree/bindings/pci/nvidia,tegra194-pcie.txt      | 8 ++++++++
>  1 file changed, 8 insertions(+)

Acked-by: Thierry Reding <treding@nvidia.com>

--LTeJQqWS0MN7I/qa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl1s/ycACgkQ3SOs138+
s6FLlQ//RFadCCy0+ywuyNwstWFl2JPShvqLv7sExZxKzKf4dNbyo0pVeTDUFWDX
Xs25hc51nQ3J6PSG/U8KFvEhhZjYizZNXlCr0kdFrsaM+NAOejcC2BQ+cArIDb2w
Gq3FBww/kgr1UCbfiDIThGlBgwalXABkZ32vk7pu9TKbDpMZLWyCHPEms6fFwo1g
RhSLQJlMkf7fm4sp1ZFUvzvUjm5lEkqqQreRAfMO7NgVKwziBsrpc2wkNNwHqj9w
XjeQ0hP2pSwKeB6IHGA4JFioQlb1eYhG8dqTAQem7qV0uOV9n2oIE86GgjiBXqea
F3LiggKv47SQFBbyx/0TofZW3UVHWgtPlbZm5dIb/qPreNBX4/CKyAIZhn2Nt073
pj4IZdllTRlPGchj0eW9a6W4PKOz/q/ZksK1kWjbw3yd9oKI7gpePqOoed416ALO
5sVkOi1siz7sIyj/VowG7rRfPC/QqRtoVGVEYHtrdox2cPqjvXb30uCp8hqB9PZ0
gXBVi/b0kWfAzl1S5Bwuh2WcXSkNEaUtSC4mnNLsbgiSA3P4qszsb9g4GZwrVN5T
TlrWTAk7Hsm8AefUMM1SxseUH/VrkHnWDBEuN/K9t620vz8lyWCLcyAj+UdAWzUZ
IXXXM7Jy2zYyR319UK74mkMxGokz1Pue5oJLciykKIyy+g9cDMQ=
=eTUT
-----END PGP SIGNATURE-----

--LTeJQqWS0MN7I/qa--


--===============0391647687163063021==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0391647687163063021==--

