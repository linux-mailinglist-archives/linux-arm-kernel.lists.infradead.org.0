Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9892124D42
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:52:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1c4+O3PSQXDwvIEcfVdbH/ly6jc9t9KsjjdDhrjfN+k=; b=gIe1ElErfSuLi9nP6DV/I9Ncg
	nQEAsJjFOhjml6JYFsWxTIO/MgwkHUb+rfmh7qL7fvvGmkZslTAx2ofchV0oCrFl2YM163lRmKg8U
	Y9T5NaP7oi1+DgGEBxo5lCABpc/hJHUMf/5+CpOLrPatX8MHJ3+Wn5ud+BntQkjw91O82NloScrvi
	5e2ucSPpf327n3tmGU63wXrOcaeiLI0dt+BsfHysigxYW6i42CkpsWo+6NTMFBFkpXbZynoNL2p6s
	D1adO5qPZLHXy7XT98ll3bSTdvRf79aXtIeuULDOh8eiR9auMV43KrcjOstOQGB5TaPzA2dE69T/l
	UyL2pS1rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT2Nu-0000lP-1x; Tue, 21 May 2019 10:52:42 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT2Ne-0000a8-2J
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 10:52:28 +0000
Received: by mail-wr1-x443.google.com with SMTP id b18so17991491wrq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 03:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HRbTjVTN8OoB545citX2qhVa2c0AvJYcHqIgYxkmq9A=;
 b=gkkqBAtxeAPYYG/Bk54hkH9W9k40R8uawvVI3nn1dXeSJIdx/0BCghDn7ppDeHy6kc
 1x4Kj9pDY90TqhbyxR++oZHu8pwSewYJrFIxFsz9FdXkXh+jIniud+n3yXsT6VL3l5Eo
 UGQ/KSJ4OvIGeCP/jH/8MXWbg/0mnp9LSdquQwLKvvosZZn4c2re21swy87R4nDoA1H6
 dMD9CsR71iXzoaUsfgtnS2dh+3mcASZHM/OsAZC8tqFPbzhwB8TzayFS8SnvKWoeoytB
 U6klf3SUPvPyHoT8EABXmdCYtoaLA0kiRvJw8nmMR0O+ZD3ty8UJL6sUYET3+6ATBAPL
 lnyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HRbTjVTN8OoB545citX2qhVa2c0AvJYcHqIgYxkmq9A=;
 b=GIdEVxXhs9qAbOCh116PzlHOeVaAiyI1RDa4K4X7PaKfrQPdv6zHha3ryjxl/6OUPk
 nCjtX0e/oqu3hJkk1tHNWIExLVOEJWLH7SOPKjTqgUeagxrI+9h1CvWO5ICQhciL55og
 U4lRxdc8n94M2Mcr9QMHgZlwKBG5jfiE0CNySJnB74FpjXxiLNXE8MuSiP86UI0iyGUc
 +mf3+tNtK4iCt4gcDclQ4Z/WdUgxMymnBwatTITp0Dbvusjyqy1Wsu2av/ndqW29IrUk
 tjZdxqf2KtVe84FuCsrkBX1+Ay4rf6BuDl9R5dqN8jyO+UzsX2gptJIs8bm+HiJ9cYi9
 APTA==
X-Gm-Message-State: APjAAAVhOUT8AwuuYEwv/UFsSVvxfTetshqKEs1zRpzmvPMjJhyqWh0w
 HS+EQw9rEWVw/J2lAuyC/9Y=
X-Google-Smtp-Source: APXvYqxpXXLjrUYm+9Ks93ImeKkcYxcdmkZsVwnotPqTe6hEInxRQZ9jQBFI3jur5GF4T/OAdMh/zg==
X-Received: by 2002:adf:cc8e:: with SMTP id p14mr34392325wrj.82.1558435944596; 
 Tue, 21 May 2019 03:52:24 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id a22sm2545601wma.41.2019.05.21.03.52.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 03:52:23 -0700 (PDT)
Date: Tue, 21 May 2019 12:52:22 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V7 10/15] dt-bindings: PHY: P2U: Add Tegra194 P2U block
Message-ID: <20190521105222.GJ29166@ulmo>
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-11-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190517123846.3708-11-vidyas@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_035226_320892_D4FFF8D6 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kthota@nvidia.com, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============7428080775134706040=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7428080775134706040==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yhze8HlyfmXt1APY"
Content-Disposition: inline


--yhze8HlyfmXt1APY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 17, 2019 at 06:08:41PM +0530, Vidya Sagar wrote:
> Add support for Tegra194 P2U (PIPE to UPHY) module block which is a glue
> module instantiated one for each PCIe lane between Synopsys DesignWare co=
re
> based PCIe IP and Universal PHY block.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> Changes since [v6]:
> * None
>=20
> Changes since [v5]:
> * Added Sob
> * Changed node name from "p2u@xxxxxxxx" to "phy@xxxxxxxx"
>=20
> Changes since [v4]:
> * None
>=20
> Changes since [v3]:
> * None
>=20
> Changes since [v2]:
> * Changed node label to reflect new format that includes either 'hsio' or
>   'nvhs' in its name to reflect which UPHY brick they belong to
>=20
> Changes since [v1]:
> * This is a new patch in v2 series
>=20
>  .../bindings/phy/phy-tegra194-p2u.txt         | 28 +++++++++++++++++++
>  1 file changed, 28 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-tegra194-p2=
u.txt

Acked-by: Thierry Reding <treding@nvidia.com>

--yhze8HlyfmXt1APY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzj2GYACgkQ3SOs138+
s6GkRBAAsTNXxZRflg9TNJMUocJhYJyNf2p2I3MYeL/Es4lheCSur4dpFNxLS4d4
8ovi/gHEn583zazth7fZmKLKRA1uowxBAY3GIeOwHDUjUPUM4EoskrdGiIHqyb1Q
RwheHqBMllkYHAUoqNYKAMqW6HScTa2rp6cRs/MoK2KEGK1lK2gutkLSx81RwVcN
A4hDk+lJBT7cBgAiF+qbl/S/5K6JA/4ZAJWFIj5reM13zItYRg2X8ybijky1enbX
kGhxxq5IphzpFPEOQxEDjKu+0XtnKZkh9Uc9zgWZeniV+GNQWNu/KdznSrh88hgU
qiCF1Oneyu638SdA6sBGLqD4MC/Lkz80oJmtYlCAwdkHuUM4NmpLMn7MbXt1ztdG
v8FvlB9j98nL4fRSB5cUhryuFACwCRmO/oZ873PfHSmcaku6OHjTrYEGqO+wM3UK
ejpHA4w5kWmE9PSNvuBee3InEwvIRiBGCio5es1G0OH1NDUmoxCdv4uif+cHm+DB
sQdkoV/9/XKEk2qU9uYr7gPcO9pm0X/aqa5nRV5Nj8QO9yUMqI8AyWGgqUP922gm
CC7w7PYMch9sjOvNKdZZ5GjdRrUrTh6D7qpr8IfZ3ryxmzBE0o2Kqi1Rx6C5OBOr
5f1joAV9ke0zZ8c0923NrFnKAdo6FeB2epvM1qyTQUBM7V0QyNA=
=n2S2
-----END PGP SIGNATURE-----

--yhze8HlyfmXt1APY--


--===============7428080775134706040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7428080775134706040==--

