Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6A1377FD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 17:32:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V+5K5QOa4dRzOTn35P9Q2AkwblJnHWPbB4hosdszHls=; b=VeUaKRooiAG4HOJfhYvJqGn1b
	aeQf5h9MnCX2rngkIpvo3J9EESyWEAqUwwwdka8tqZ0W1OuAkOZysiMyt8HO9l6/BasIROU308fMj
	LufkkR8tjHpyyTlhd8J0aHlfumKQlHe7Ib5LixWW0rJGUECyRT4w4k5/apUWGsAag5MDT6WH+A7Bh
	DfRU9v9pf1U5tMM6rH4L8QyRuwhEVrX3a9ZFvBWlZVHXlq90l6DReQXFZfCqLpg0hvo2e+YL+NQYM
	aDL2oEzNGHgHPSeUZ4wQo76C4reTVzb1J8dLIMMc9NY9Bshh84YgNOaEpGChaXjWfcqHscs/X29tu
	GjxGS+L6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYuNQ-0003wb-FE; Thu, 06 Jun 2019 15:32:28 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYuNJ-0003vt-PI
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 15:32:23 +0000
Received: by mail-wr1-x442.google.com with SMTP id n4so2913929wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 08:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HX3M9WP/yryEwh7vX9+9JslPgp+IEmjuwN20Escc6kI=;
 b=EiUYU8vhWxjAAxHOvDowkjzPhStcE3hELrYCWJ27QKnAI3cJFbwKgtz7SyV1Nlh3G7
 aKbxXLDNqFCQSrvPmzI/x3zqIs0RocRokH+TItX8e6zy93V4TnYyK/nIP2w2Y6S7lRVo
 oZJ4TEeNTAS/ojkuEzag0RiCf4oljXXX0x2UYQCurM8wg06qcdiQEy4if80rprzE6bxU
 SF6cJPZYyqtGEpnSdRQA6IUtwIspXawWvs1aJfxPF+HOkXeQWSXbgX0pIGKa/VFQ8tlQ
 pzv9iGs8JLuDdIXwcI5hSvQC4MriQbkxesUfvwPoK6G4JUCi/wGL16z5n3RcdBgnCrVT
 fEVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HX3M9WP/yryEwh7vX9+9JslPgp+IEmjuwN20Escc6kI=;
 b=plv5F6Lu9RdIHM1c9lUZj/g1fz2IgabdmURHGQZtmdJLBHJhiIVKMFErELOdS1B0F2
 zr7IiYR6OVeQvxOjNJY04BwlqiIVNLzrHkwDtSyQY5uJJote1yqkUVjc7SHvIaBI+lZy
 Ff8egJcMwzG/duzmDSbt2y/v2BatbCyjsTvIdp3g+P9eTe7zD7I6V/+PWmqAmYUvvW0A
 gbKBV0/qzgpPJVPxzxaMblEbnfQjVmPaxohyvu5zMEYMsZaHDezKIBHFUqjRs9W9F7W+
 ZmLe7xnCE9wDHjDYXNi1Muq5INfyMEBD8XsceOts+seAtghepdV6nYOX1Ng6c9PO7mmf
 8hgQ==
X-Gm-Message-State: APjAAAUCim/tLzfxFHyz0tluHes8+L6R23MtASYbsTA3gVSmmQ5ct5+j
 dJYMVZANaBpYBbmgkEbK+KQ=
X-Google-Smtp-Source: APXvYqxRHVyiOMsBJdAL9QEQxw+Px16GqdTmA3UJBr61U49dfLm6pC0vNkSsniND2XvWP2wLGn5EWw==
X-Received: by 2002:adf:9dcc:: with SMTP id q12mr3836539wre.93.1559835139048; 
 Thu, 06 Jun 2019 08:32:19 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id c129sm2082954wma.27.2019.06.06.08.32.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 08:32:18 -0700 (PDT)
Date: Thu, 6 Jun 2019 17:32:16 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V8 05/15] PCI: dwc: Add ext config space capability
 search API
Message-ID: <20190606153216.GA3338@ulmo>
References: <20190526043751.12729-1-vidyas@nvidia.com>
 <20190526043751.12729-6-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190526043751.12729-6-vidyas@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_083221_853827_FA01C650 
X-CRM114-Status: GOOD (  11.39  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: multipart/mixed; boundary="===============7380976911823928269=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7380976911823928269==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="OgqxwSJOaUobr8KG"
Content-Disposition: inline


--OgqxwSJOaUobr8KG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 26, 2019 at 10:07:41AM +0530, Vidya Sagar wrote:
> Add extended configuration space capability search API using struct dw_pc=
ie *
> pointer
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> Acked-by: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> ---
> Changes since [v7]:
> * Changed data types of return and arguments to be inline with data being=
 returned
>   and passed.
>=20
> Changes since [v6]:
> * None
>=20
> Changes since [v5]:
> * None
>=20
> Changes since [v4]:
> * None
>=20
> Changes since [v3]:
> * None
>=20
> Changes since [v2]:
> * None
>=20
> Changes since [v1]:
> * This is a new patch in v2 series
>=20
>  drivers/pci/controller/dwc/pcie-designware.c | 41 ++++++++++++++++++++
>  drivers/pci/controller/dwc/pcie-designware.h |  1 +
>  2 files changed, 42 insertions(+)

Acked-by: Thierry Reding <treding@nvidia.com>

--OgqxwSJOaUobr8KG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlz5MfsACgkQ3SOs138+
s6GApw//TPvpvgBzP5P9ZA+voryvcGrZFDGOvZN3Ue1+gcsGJLKWkkyfdki8Xn4K
pkOboAWOYl3FVFstorO6OlL+sToBPM7KSW3d1y8Xf4lCJG6pl6Wguq01rQiL+lgC
SiHzhKaumTJ6cIiZICbExS0cnWwgNvglaMRV1enwe3SfAdqpiSBJYsJy/OFgUHMX
e8P0PX0CY6pK+lGGi610SRhzorXOne+ukTGgm+qrAU/9XsJWkF9uwyaJF7BprSfq
fjPGMQlZ+ezB9sZn+RAJT8qZpNsovOTLDWV6P4b+bR6hBbHNM3uOFlnpOUsKfiLL
YJIBU00ZlbIIOMMCK/78Xg2i9GsndiLKmAF8XYeNcGKfHOyivoABLViL4eL98yZl
VMEUTSMw97RhAoZ9DgD5M5ESFEAbD0qvy5GoGW7OcJ3JyvJam6hr2nFDIqyAuq5G
W5w/opznB6oYuiyvTWbH2BYTKdpZv1IMZTLRsq1o8yQHCRt/L7GemvXGWm+7UhNJ
hPIFoLR7bvYE/wHvnplHw72iXh55j3/Ku2oBCgs9Ikx8Q64XWDSJQBwqNXwT5pW4
2qcCVbs9kcdOmuhadUJNE+Aeyz32+7GC9JS5PIrtgvCrS9GlYWg6pjGDqMy4lzJ0
fVfLAxMTiKwPO9jr2SOY8TIfObb7fXzKGB31sBPvCV2tRUpK0OE=
=DlKq
-----END PGP SIGNATURE-----

--OgqxwSJOaUobr8KG--


--===============7380976911823928269==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7380976911823928269==--

