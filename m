Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52475126290
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 13:48:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A3byI+VEi/38kC0MAIrN5mkLlO+nJ/+lWmG+Uvk+V/s=; b=Cz7yDFTeYD7TSyBoomUVhLyhe
	P2PgzwavmfBYQt6DerKuMAd0BDnw9mQibPu8bPgrUW+tDZtweX35FUzDe8NZfGOQZ9G7NZp1AhoO9
	2h0VeYt0rG1hKa+6OnmgFGEsAVnHmUkVxSyQktH67c69xebnOzYlWQSxTux2ztbSPfLVHcxBdc9NR
	D0mzy2YXGmQVcw4cnQaMnAbX2fl+BS6N4wx/yxNTPTJ1SQkouqtPa2HV8EAREFVHQ/y6NMoCrNMub
	QN4M0TtOnXvelF4jdJuGu3SDA0hQuv8dgUDijbnIzX4yFcrf8c74INk6sM5gZiyZ5nk1E3ifCvqBR
	aERPvS2Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihvDk-0008Q2-RW; Thu, 19 Dec 2019 12:48:00 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihvDb-0008PW-I2
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 12:47:52 +0000
Received: by mail-wm1-x342.google.com with SMTP id m24so5291559wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 04:47:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=e2DBwRLOc0+NXX0lm+V606orQs3w/QtiskRtJFmTJpE=;
 b=PTKns+SdLLr4ZaCEfAh3ObI+jGZMo4+JOlU5CQQRWkDFIVSsPWz2iDbfKhjEq6MKIC
 aRbyCQCnk0cTs2UwulNsRgCaiGU5xFbr8ETxhumyOWd8x1/PXMy2lyyiNaGerK3cQHCZ
 QeXBFYNls7O+PoJIrEVsftRBKevjpiYvieUmujy9N2Ktd21t46Qo2yfAICnLpbqmV8sZ
 x7W+JNTruIQEteqTUii7U1vwxk7FLU6CCKbJhIp95hDFhijA9uokDokESBeuNby6NCnH
 QGAbDMuJK9ssD148eRuhFOTXZ4+6o1OxSY+LTgToJGv6UM3vYL+/4R7PHs2e8issXRYK
 N/fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=e2DBwRLOc0+NXX0lm+V606orQs3w/QtiskRtJFmTJpE=;
 b=NuscEPRy5UVrg+/3odNKuigPNO01K0fqKmbElvP4ymQtyb34t/bS+SkML7aUv5Fkiy
 8E1ytUNhgQ+W52mkBf392X6rTlUj29wBeiI7on7wT5CBtsTXr1Q8Sz77eFG/T7hKfXIP
 bsVv/aXUz6nzrnxuQmQ5jBn5GCpGz6QkIlBAckmrDU3V3HTe1QgQ/41PhiCmV7bOgidC
 f+WKwX6iO/IdCXg8sXNcxHS+NHFiV19iB1Bvs3eaiUlyiBK38bbFxxWvn290UW0XkQxA
 arxDtKcmW7+wWyPDDNEi5y7Y3YO1WEmcWZ0JIMBxQpvjlpoZ3VuxxMIAdJ4r1bEph7uo
 BGdg==
X-Gm-Message-State: APjAAAVDpUx7I9nNyg9+L0vtPP3680k0nf+RYg5DxQbuZc5Sep5yHrVk
 MVNbCH6DKD74deSr6EZnIfM=
X-Google-Smtp-Source: APXvYqwa9Hu0h5qRLAIYGmBsvZFeHDEip3Ga9oDqR6+Q+7HjHlER5nfEI1KMGyTaWk8sZgzSPZaIvw==
X-Received: by 2002:a05:600c:2298:: with SMTP id
 24mr10205863wmf.65.1576759669976; 
 Thu, 19 Dec 2019 04:47:49 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id c195sm6591110wmd.45.2019.12.19.04.47.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 04:47:48 -0800 (PST)
Date: Thu, 19 Dec 2019 13:47:47 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Lu Baolu <baolu.lu@linux.intel.com>, Joerg Roedel <joro@8bytes.org>
Subject: Re: [PATCH v3 4/5] iommu: intel: Use generic_iommu_put_resv_regions()
Message-ID: <20191219124747.GA1440537@ulmo>
References: <20191218134205.1271740-1-thierry.reding@gmail.com>
 <20191218134205.1271740-5-thierry.reding@gmail.com>
 <2b3020a1-221c-f86b-6440-e9ef65f0c12e@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <2b3020a1-221c-f86b-6440-e9ef65f0c12e@linux.intel.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_044751_597971_E5929409 
X-CRM114-Status: GOOD (  19.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, David Woodhouse <dwmw2@infradead.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8970267302768884209=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8970267302768884209==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Q68bSM7Ycu6FN28Q"
Content-Disposition: inline


--Q68bSM7Ycu6FN28Q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 19, 2019 at 09:53:22AM +0800, Lu Baolu wrote:
> Please tweak the title to
>=20
> "iommu/vt-d: Use generic_iommu_put_resv_regions()"
>=20
> then,
>=20
> Acked-by: Lu Baolu <baolu.lu@linux.intel.com>
>=20
> Best regards,
> baolu

Joerg, do you want me to resend with this change or is it more efficient
if you fix up the subject while applying?

Thierry

> On 12/18/19 9:42 PM, Thierry Reding wrote:
> > From: Thierry Reding <treding@nvidia.com>
> >=20
> > Use the new standard function instead of open-coding it.
> >=20
> > Cc: David Woodhouse <dwmw2@infradead.org>
> > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > ---
> >   drivers/iommu/intel-iommu.c | 11 +----------
> >   1 file changed, 1 insertion(+), 10 deletions(-)
> >=20
> > diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
> > index 42966611a192..a6d5b7cf9183 100644
> > --- a/drivers/iommu/intel-iommu.c
> > +++ b/drivers/iommu/intel-iommu.c
> > @@ -5744,15 +5744,6 @@ static void intel_iommu_get_resv_regions(struct =
device *device,
> >   	list_add_tail(&reg->list, head);
> >   }
> > -static void intel_iommu_put_resv_regions(struct device *dev,
> > -					 struct list_head *head)
> > -{
> > -	struct iommu_resv_region *entry, *next;
> > -
> > -	list_for_each_entry_safe(entry, next, head, list)
> > -		kfree(entry);
> > -}
> > -
> >   int intel_iommu_enable_pasid(struct intel_iommu *iommu, struct device=
 *dev)
> >   {
> >   	struct device_domain_info *info;
> > @@ -5987,7 +5978,7 @@ const struct iommu_ops intel_iommu_ops =3D {
> >   	.add_device		=3D intel_iommu_add_device,
> >   	.remove_device		=3D intel_iommu_remove_device,
> >   	.get_resv_regions	=3D intel_iommu_get_resv_regions,
> > -	.put_resv_regions	=3D intel_iommu_put_resv_regions,
> > +	.put_resv_regions	=3D generic_iommu_put_resv_regions,
> >   	.apply_resv_region	=3D intel_iommu_apply_resv_region,
> >   	.device_group		=3D pci_device_group,
> >   	.dev_has_feat		=3D intel_iommu_dev_has_feat,
> >=20

--Q68bSM7Ycu6FN28Q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl37cW8ACgkQ3SOs138+
s6HwMg//QTaq9qdL6boTSg1EAx8bgcGx/ElOv3yPZusDHrNbEG7C19YElgpyGquj
7x+Amfj9QD/8vIKJg+w2Z7VpKwUgrVyteYw+dOyFzSx5gjqLE7/r5klBFwR32/Uz
pGffIE2X3N6xtCfdzYrFt1ay9wM+cHJA0lvMy7oFX+XEOxc/eAorwm68g+UgkYAm
QigqZ/5cjjlkIkQL2FThNHnwpwd9zAhOMchjlyz+4UZv/4AvQqX0YSilx72T4JP0
3LOCto7pCGTmvv/4/E0bCOzIa+FOMZf56LLqOstqBhIoPeBWGuGNXUerZ5iV22E0
ah5RgWxHM0YwGufRGyHiJ8niUQlIuuIzFsJmjvXbDHdaIM7/tZMGRVRGNcZuINBb
5Addl123iKthkOTBBqNMoZwg9Y30E3mG07wZbH8tkZj91CRJPJ1Ui5uQsEtxlwvS
jwGcb9kVFk3PJO0AuKvDC9VTi40K1MDYW8NLAtTYV4UhLKA5XGuOWawKZWC20Q+X
88ie9W4l5+HhW9hgpSfawGdKAlOeeCzXTVmqzm8o5vaAIZ6qGnaf4peVVZ59YF70
HSty77b43BATtE0oL3ps6hzLgNMNQYSAd8hOnA1cqEwK4+wyCsRgfzx64jxyMOSB
vCaXjNxdpNsgZWqwqw5NVrsV2z3Jn/f11Wvsob4EMM5C3/ZDuVE=
=lKCJ
-----END PGP SIGNATURE-----

--Q68bSM7Ycu6FN28Q--


--===============8970267302768884209==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8970267302768884209==--

