Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9A092512
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:33:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Dtq411LVWSP8NFZ5a7pmrw2IVNjZT8bYxLJvje76lfI=; b=jiSxXIix1VcxWIDQTh0mWHnqQ
	CMHw1SMUKxLbOY+ipFiA0G+jZ8Gs2YVdcXgbqTQ4O+WTIgAL068RtOqCYTyJStR8MfACPCrfWLd9l
	054VJiUn0cE6oHN7kiWI8Y9a0Vt7acvYbqO4MqDQhJDkA/DMwRNGpyyJJknAfCvC16AV+RKVnmJwA
	3rWPayi4BvspHNcgHwKs5keHAAPlkVxtMz4i6Mz4pjyU7ODJnYZxazogRweZq1vCdNjEWIviff23h
	jqhcUPtnyhs6dH3OFB7duU5399TJFbEjytOalxQly1ckwEkRAcOp+/oazs8IFN2BEnysigv589L6Q
	2ZHPWnRFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhn1-0007jh-Pj; Mon, 19 Aug 2019 13:33:39 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhmu-0007jC-Dc
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 13:33:33 +0000
Received: by mail-wr1-x443.google.com with SMTP id t16so8743956wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 06:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZyIz5UzY6QT8XXSXNvuCPQEu63oUviKuBmAPRl+9ymA=;
 b=JdJGSAoT5FNYW/qDiiyutVgbQeqwOwTcZmwCHqUSY9jrHf3cmGlRn7UkPkNjrDLJff
 DUz9Aba0Jb2afIX8qnSTW3Ix9aJp+jD3zxUPwvQhJdqVNxSP2V7H5/tNKllqtlziDz+3
 sJAZIyw7A4hkDfTQsOyJUEV76AamqmUF/9QqkwwBCzmx56xhI0+94fkbXtP0EwRd4TTp
 Q55C7gHOgPt1hazV6BXn71dSxclCj7eWoCQvD6BHwMziUv+2l34utfnExbo8/00FY6yt
 uAlLJ/m3fiEj1bODg5mQFjNFhGVHpksbTRRBPU0MGdYE+RFRzDhVUJNoTNcqKPn4qaYh
 NyXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZyIz5UzY6QT8XXSXNvuCPQEu63oUviKuBmAPRl+9ymA=;
 b=Zd2HOFgNz+uGW0uJppi9jbWSGmqittYoRZoyZGwgzth55ZjhKZ2lrgZgUAc8YoOP5v
 NMIDA4bJ2uft50rQidpw+O1K5l70pU2tDIiRBO/QSZdE6axA6Ads3K4QU8JJD2Pyvybp
 a9/CMTE/R4YAEAhwV/5THWCxMSpk08ihAZNjYZwj+voYKsmil8DCm1ITDK3cIQYNcwIY
 XasMsNpqbnwABGotpX1rJWl/bi3/blUuyKAu3zOEq0yxQ7IIfS7raEGXxS5WZpvAaZmj
 BXdC6Qvf44EY6gvgQIWk3OMg9uBVnr3ZPD70CVU7DI7ck3gbRiz4ZgmvbxGQvyzSvBuM
 ED2A==
X-Gm-Message-State: APjAAAWWufZgB5omx5vza4HTJQrozkEMIVISwcyYnD8OIOc1yKKX/DlL
 CIJOEfBlzukPs1tOxyHqDjw=
X-Google-Smtp-Source: APXvYqwck9ukfTtUMTVL6SuiMSPVF+WZACpaZF07V4xeawYIYr6jdNPac+ZUEpeQOxEv7+SAJX/vcg==
X-Received: by 2002:a5d:44cf:: with SMTP id z15mr15384917wrr.324.1566221610139; 
 Mon, 19 Aug 2019 06:33:30 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id o11sm12026039wrw.19.2019.08.19.06.33.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 06:33:28 -0700 (PDT)
Date: Mon, 19 Aug 2019 15:33:27 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2] iommu/arm-smmu: Break insecure users by disabling
 bypass by default
Message-ID: <20190819133327.GA23089@ulmo>
References: <20190301192017.39770-1-dianders@chromium.org>
 <20190404145957.GA25912@fuggles.cambridge.arm.com>
 <4754bcf1-6423-f1fe-64d4-da4a35b164ad@free.fr>
 <20190424115231.GA14829@fuggles.cambridge.arm.com>
 <20190502105912.GA943@ulmo>
 <20190502110821.GD30966@fuggles.cambridge.arm.com>
 <20190502124525.GA3579@ulmo>
 <94cf6d56-5dcb-051a-06da-5edfacde1655@arm.com>
 <20190819112856.GA28102@ulmo>
 <20190819120917.hysyc6l3ckkwcx25@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20190819120917.hysyc6l3ckkwcx25@willie-the-truck>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_063332_463995_DAF96229 
X-CRM114-Status: GOOD (  26.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Marc Gonzalez <marc.w.gonzalez@free.fr>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, Douglas Anderson <dianders@chromium.org>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7991773559265030706=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7991773559265030706==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mYCpIKhGyMATD0i+"
Content-Disposition: inline


--mYCpIKhGyMATD0i+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 19, 2019 at 01:09:18PM +0100, Will Deacon wrote:
> On Mon, Aug 19, 2019 at 01:28:56PM +0200, Thierry Reding wrote:
> > Perhaps an alternative would be to add a property to the SMMU node that
> > lists a set of stream IDs for which to enable bypass by default. We
> > could let the firmware set that when the display hardware has been set
> > up. That way when the kernel boots we can keep scanning from the
> > reserved memory and the ARM SMMU driver would not disable bypass for the
> > display hardware. Only when the display hardware is actually attached to
> > the IOMMU domain, and the 1:1 mappings have been created would bypass be
> > disabled, and at that point there should be no SMMU faults anymore, so
> > we have cleanly transitioned to the kernel.
> >=20
> > Any thoughts?
>=20
> There is currently an extension to IORT under discussion which should
> address this problem, so it would make a lot of sense for the DT solution
> to follow the same approach. I think it will end up being along the lines
> that you suggest, although we won't just enable bypass because that leaves
> memory wide open if the device driver doesn't probe and it also creates
> an issue because device attach typically happens before the endpoint
> driver has probed.
>=20
> So the flow would look something like:
>=20
> 	- Firmware describes a physical region of memory which must be
> 	  reserved by the OS.
>=20
> 	- Additionally, firmware describes a master -> reserved memory
> 	  linkage as part of the IOMMU description.
>=20
> 	- When the IOMMU probes, these reserved memory regions will be
> 	  mapped 1:1 for the relevant master.
>=20
> This is similar to RMRR on x86, except that the mappings are intended to
> be less rigid and can be torn down if the endpoint driver decides to do
> that or for things like device passthrough.
>=20
> If we get that working, we should update our booting.txt so that DMA is
> allowed during boot in the limited cases which this covers.

Hi Will,

that sounds very interesting. Is this extension being publicly
discussed? If so, do you have any pointers for me to read up on this? As
for device tree, I wonder if perhaps we can achieve this without going
through extra properties. We could, for example, just do a "reverse
lookup" of IOMMU masters by walking the device tree and looking for
nodes that link to an ARM SMMU in their iommus property. Granted, that's
not going to be very efficient, but it would remove the need to
duplicate information in DT. It's also going to be a one-time cost, so
perhaps it would be negligible.

I'm happy to help out with hashing out or implementing something on the
DT side of things. I don't currently have access to any systems with
ACPI, but I've got a bunch of systems that are DT based and that I would
like to see this implemented on.

Thierry

--mYCpIKhGyMATD0i+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl1apSIACgkQ3SOs138+
s6EZAhAAhoAonoH3j2JXNmpfoZ7M7qBVsTZxkGA84nLUZ2qLpMPW8oG6PHyWXFXy
UNbzxS4P5+EeIBBV1y/qd/TzJWM+ZSPUXKjbXzvVSrA7RkLaveWFBlPA02n38c3p
voDzckbCtd7IkFEIMrU567P8IlyimT2mcUjqL40v+fD/i0+JHgNBpl2des++zB7R
FSwRodRkfF+ZBZhRagLw/B04rygIpSqbo4JQNS3+MWNCXCsxA0Bgr9KGFggfpweZ
qE7iU14KIz0LbGMvII1kxjX4tFo7ciR2KdIM2C08cD4vPO1wUqoaGpH589HYOnuc
KU5cWJjT826k+c9r/iOXcfNscV7EdAEDkEU7JmI8ZuQPFWUuHgjDBm5q23j6pBSi
AbM6rDgIti2cdBtNfGA6t5GKxycYR/kJZYMupbXzN2hoG44rvH7MWvX2kL36K5nV
PRSNjg+Ak3waqlUMNKH4xILjUZ/kCtOQhDZmCgXZebqwRJ9IhUrftJG0lBd0rMsz
rRETX3efVWzHUX3H0SI6PmLHudeeny9YJs+Mfn6AkwZF50Pm6tQZ/N89LKumR8wq
X0PA08XvZQ7rP95t+sJ2IqlH7kDvXsnlsDSGYO3rj41n38rtb90Q97eo3EGRiHsz
4lOaKilx2mbXUVloLDJXdLVV+zfke48CMniwLVbQn2rBIEwJS6E=
=gCaK
-----END PGP SIGNATURE-----

--mYCpIKhGyMATD0i+--


--===============7991773559265030706==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7991773559265030706==--

