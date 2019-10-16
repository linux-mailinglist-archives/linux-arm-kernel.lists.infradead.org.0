Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E01D1D9158
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 14:47:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OIHz+O6w3sny5trTuqj0PmjrJw73O/eUJnm3imvcU2Y=; b=bdWupSQMrGrn3RQsrZqynPv11
	IYsJjG9jSCQoxbPXO9jofpD8NQkQ73BfZx4G9RrqMjylGDYTXOuJqLJvfKkgxJDLh5oLVXl0Ms2/U
	dheg3Z//oTXib/gJHghB/dLtNLI9uTgkL659u0QcA7pnQm/BeJc+EdMsP4zwuhiD7d4Fng8PBQtla
	rrGjKpYVxws/MPTrydLvFTkYTCICWdn4k1N1VtNqU06YaUnG7pGWF00O9D6nsBHJqYpZsCE3VEDUz
	p4MvjgvuQU4P/OMS23BvxZJCjLEsV5LVwYSSaCydH2bNyR1UHVEV/o4qkJ2CirvC0+okq/LVWZo3/
	9H5pxS6Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKihb-0005Qd-3F; Wed, 16 Oct 2019 12:46:55 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKihR-0005Pz-Fi
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 12:46:46 +0000
Received: by mail-wm1-x341.google.com with SMTP id 7so2800041wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 05:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zKeyF68jMzkZ8PZE+zyf0AJaz2r+snV2TpAgt4NOVLs=;
 b=KTEToaQ6qrUyieyWQDtnZTqU0uLP/8iwXQlf8besLewIcU49APKdYdkSgI38Agh1MC
 fybhBfRdkx5N+TTVr1tYMxdymZL3T0riuRTK/LOyyxhgaZQubAeRVPpVt+A3RnXX8QXs
 URwFg3CqEOZzLc5RyI2hhW6B0aejSropBsziuKyyH/FIwM2Q/afI6g5YmezT97h0gfC5
 m7l0yztoR6wQheMj/D2XjlMwJcTuiMahzWX2A2g4HbTmV1V3s2gVyEtGwQa4xFvdKB7X
 +hlE/qsb3XwJejEKcLz/Da0ZJ8PWWa/2vOpEx0Rr6ALCbfpwZCOQM8tBCVrg0yVT28Nz
 rENQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zKeyF68jMzkZ8PZE+zyf0AJaz2r+snV2TpAgt4NOVLs=;
 b=gzeSVs7lCvQQ0io5OBeHWz/ZB/UgtXk1MFEx+Js/Bi4+muEluZze3Iz+FvcSmyfIy9
 TQYstGC4Oz5Qi6T7V3ar0BIpuCqsUA6pCFtDXUSecv766HdWJbdwDavc/nlG3LtHso6i
 rMVXr5EGEw7YpRxCsWOBsODRYC1ep745FYiRQAU25QuBSqEcRTIyDuAEKi/hg57awri0
 FekCI8bd+SoV2UAdzbDInkX2bdRLh2P4+tWvvf5d2ZH6GG7NAKkAslVDpk7nOJvxiMET
 TAdnqKjWqs9ne67CgjSHJ7p8AzEaU2HjqGEXeP++ww/wQeurOjY48f3eXn9/CLrwTLrA
 T83Q==
X-Gm-Message-State: APjAAAWpsRv76HeyUWP884/4cF29JF2iAO4FP6x6EhN53LJX3b7BQwfb
 8+dYMoQInE12JE2SH68v5+Q4b/Rn
X-Google-Smtp-Source: APXvYqy4uLAxXK8dZ9uj0Q5OXVcdh/jm7RvNEApTwfDvS63JBb+q8OpwLefZS54uymyMLUA4t9VzRQ==
X-Received: by 2002:a7b:c4c6:: with SMTP id g6mr3276352wmk.126.1571230003562; 
 Wed, 16 Oct 2019 05:46:43 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id c18sm22646572wrv.10.2019.10.16.05.46.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 05:46:41 -0700 (PDT)
Date: Wed, 16 Oct 2019 14:46:40 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 1/5] iommu: Implement iommu_put_resv_regions_simple()
Message-ID: <20191016124640.GA1772382@ulmo>
References: <20190829111752.17513-1-thierry.reding@gmail.com>
 <20190829111752.17513-2-thierry.reding@gmail.com>
 <20190918153737.dea2z5dddhuus25g@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20190918153737.dea2z5dddhuus25g@willie-the-truck>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_054645_525053_93392250 
X-CRM114-Status: GOOD (  23.51  )
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, virtualization@lists.linux-foundation.org,
 iommu@lists.linux-foundation.org, David Woodhouse <dwmw2@infradead.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0389349132269610046=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0389349132269610046==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gKMricLos+KVdGMg"
Content-Disposition: inline


--gKMricLos+KVdGMg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 18, 2019 at 04:37:38PM +0100, Will Deacon wrote:
> On Thu, Aug 29, 2019 at 01:17:48PM +0200, Thierry Reding wrote:
> > From: Thierry Reding <treding@nvidia.com>
> >=20
> > Implement a generic function for removing reserved regions. This can be
> > used by drivers that don't do anything fancy with these regions other
> > than allocating memory for them.
> >=20
> > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > ---
> >  drivers/iommu/iommu.c | 19 +++++++++++++++++++
> >  include/linux/iommu.h |  2 ++
> >  2 files changed, 21 insertions(+)
> >=20
> > diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
> > index 0f585b614657..73a2a6b13507 100644
> > --- a/drivers/iommu/iommu.c
> > +++ b/drivers/iommu/iommu.c
> > @@ -2170,6 +2170,25 @@ void iommu_put_resv_regions(struct device *dev, =
struct list_head *list)
> >  		ops->put_resv_regions(dev, list);
> >  }
> > =20
> > +/**
> > + * iommu_put_resv_regions_simple - Reserved region driver helper
> > + * @dev: device for which to free reserved regions
> > + * @list: reserved region list for device
> > + *
> > + * IOMMU drivers can use this to implement their .put_resv_regions() c=
allback
> > + * for simple reservations. Memory allocated for each reserved region =
will be
> > + * freed. If an IOMMU driver allocates additional resources per region=
, it is
> > + * going to have to implement a custom callback.
> > + */
> > +void iommu_put_resv_regions_simple(struct device *dev, struct list_hea=
d *list)
> > +{
> > +	struct iommu_resv_region *entry, *next;
> > +
> > +	list_for_each_entry_safe(entry, next, list, list)
> > +		kfree(entry);
> > +}
> > +EXPORT_SYMBOL(iommu_put_resv_regions_simple);
>=20
> Can you call this directly from iommu_put_resv_regions() if the function
> pointer in ops is NULL? That would save having to plumb the default callb=
ack
> into a bunch of drivers.

I probably could, but I don't think that necessarily improves things.
The reason is that that would cause the helper to get called even if the
driver doesn't support reserved regions. That's likely harmless because
in that case the list of regions passed to it would be empty. However, I
think the current way to do this, where we have to implement both hooks
for ->get_resv_regions() and ->put_resv_regions() is nicely symmetric.

Thierry

--gKMricLos+KVdGMg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2nES4ACgkQ3SOs138+
s6EONg//ZrYWm5ShwdyQ9XivGxuuU1NxmrAJMtWHz2z0xMVhLv8vVlvNeGNNepm/
AYozw/NMlEZokXfJVW9zNHDpOdr+MB6EchafhOZo9kK592CE18NhVrpVDptMvf29
K1QsQvgCq5Lu9EHBeDMxpx6Kn9VNBFJuAeYCIVzD5GOm80sHdAp1eKMwu/od+oTQ
IwZLB0K82tKdvnwYDYjN/JUW0dbrthH+fW843oOxAqQgrJYApL64k6WuPn6evN11
V7xbw3/Yk3LMqxmBzve7b7ATYXdGRuN7TdMX7aZmLX8xyu11L6LbK+Lss10BbBKi
Vja3MbZgoD54Eam3zOvj+b7tfdiRry4jhqqVksJ/Q2U7KOygrzLORgYR6wTgtz9g
opzD+i9cGdaSj1k8kvVeFPqX9TL/er2hy05MIEWYYTuVh3Y6xiPekH988bHvxf9X
bcl8I5YARin8U2n5R9kaS+drtuo3HvgeQMfszEf9UDNLQc+Pl5niTQPJzljWiZ36
zI8Tq7Sq8Fph33gOGbpcZMTDux4cjlYtGWle7U5tkS38Xte7+IgRxmpwWDC6Y0jX
muP1UNGkXJMLvJtssGseFZZw9qkJcq0NPRdjaN4k+LTdbrw0B10f1CDST8g/9Z4H
xvmbe6SyeWzgcBc43Fs4V3YjZXAYWxf66eD2B9h9AdAEHSmCgD4=
=LljU
-----END PGP SIGNATURE-----

--gKMricLos+KVdGMg--


--===============0389349132269610046==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0389349132269610046==--

