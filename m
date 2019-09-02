Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46ED3A5005
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 09:38:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lbvWOvB5cR5I6xSRv4VQByp0GG6co/sDDWRIwNtvf3o=; b=bFDBhDnJPRoaI/ELt6nU1n4Va
	KAPPzTeVXw876UVv0MI+EyifhjBqRIfXeUpRSB54Tqkor4iK3S7gRk+HU+kUGsaJYYUAr00VDpzk7
	c5WviW135BDAaH+2pej9IUelWBlORvXqdSv8HabpAED2Dxm1klaLvUSM9FkV4wSWCZMoB49p2j0c4
	8LNqzhTRecWM1TL/x2ruaAH9eRnPVsli2PSURQ7l3jPH1mXtB0RJjc8p/pc1KEElwudFDFM3yGC3A
	lFT8l+NEWsLS7ShPMhrA2qg+XAm8c3F9i9uAKyhvPnEuySymF43Uy2ID2a6O75OT9UUreptPr+ir1
	GZSIZTTmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4gus-0008LA-Up; Mon, 02 Sep 2019 07:38:22 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4gug-0008Kl-VS
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 07:38:12 +0000
Received: by mail-ed1-x543.google.com with SMTP id t50so14764643edd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 00:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BlUusxOrxaCgMhXu0ZvmfJnQXORRPsMrgdIIDkov7+0=;
 b=YpALctmpSx7YjEgiI9SuGVl7dMwk/SEK5o1T0kfxhfQ5XqdN12E4NwZ4afeqD6tdg9
 l2+WuDUpxBppRmdo4g27iv7JCGBTm0Oh+H0oeRLZYPjYOpbsWs4hcfmk8K4vt4ZuSPAL
 yEXUSIVLjwxpPSBN9vQeBfmTTzB7G6uR87dsjLuyBS3qGG15nAJFT5Xv65L5DKghKdJl
 zpEqeWsFx4ZrnnAAyeMpTTERCJ/8F6bOqai1AthPs2ddc4uQPV4r5aSu6Hza4BaKM6ft
 YhXXSuZHeqwmgj9GJ/XsnXYwKoqtSUjMKDti9H5vZt+dD+Wj/n61bcnjOwyxDP+ZSnBV
 NbQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BlUusxOrxaCgMhXu0ZvmfJnQXORRPsMrgdIIDkov7+0=;
 b=jZnzs+haSR5w8aUykKG5OJijh4Ql0e056ps+3+eIo4cj0PmFe/OgxBhgX/iJWs0xwm
 dbKgcG1Mpwv5cBO3dvj++FCn6NltKFszMAB//N+j5f10Mv/mvztP+ot8Nc3hXUgyXueL
 HNJ4KOO6oJjTu1h4RdWd/7wrlKmKfLdOByRfcOPLYwWNH+eSl73yvUJYli4NFNeX63r7
 c7r4GsfSsvDEL/KHo8+qfAb+ygo6PyYFS1ZQhQt/5vvfzHhQuYE8HVdqfOxxfS0pTzvg
 lJEu1Gut8UhbabNlUJDBP5EUbizVyN2IzXhb68jM/jlqBYiJ1THhvr9b0Pv1PiY3200a
 vZ8w==
X-Gm-Message-State: APjAAAUaC/2G4BJaczhvjo6UHP97Y3pCSwOsj4iilJTpd1Ci1jrw0fZF
 +lJbtT65uD9XFb5Qu09tEX4=
X-Google-Smtp-Source: APXvYqwBFeYG7Dq7UMXgmFD2WxbHkj27kQRrNBFLJil5mA01IdIMDyjZ3VnT5a8rho8cIXtM7B3Xdw==
X-Received: by 2002:a17:906:318d:: with SMTP id
 13mr22669114ejy.281.1567409888769; 
 Mon, 02 Sep 2019 00:38:08 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id i5sm2751920edf.32.2019.09.02.00.38.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 00:38:07 -0700 (PDT)
Date: Mon, 2 Sep 2019 09:38:06 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Krishna Reddy <vdumpa@nvidia.com>
Subject: Re: [PATCH 2/7] dt-bindings: arm-smmu: Add binding for nvidia, smmu-v2
Message-ID: <20190902073806.GA930@ulmo>
References: <1567118827-26358-1-git-send-email-vdumpa@nvidia.com>
 <1567118827-26358-3-git-send-email-vdumpa@nvidia.com>
 <37034b76-7e3f-5f3c-25b2-696e25127682@arm.com>
 <BYAPR12MB271012F225E35C1459E58D07B3BD0@BYAPR12MB2710.namprd12.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <BYAPR12MB271012F225E35C1459E58D07B3BD0@BYAPR12MB2710.namprd12.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_003811_042719_5F8DE83D 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Timo Alho <talho@nvidia.com>, Thierry Reding <treding@nvidia.com>,
 Mikko Perttunen <mperttunen@nvidia.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Pritesh Raithatha <praithatha@nvidia.com>,
 "Thomas Zeng \(SW-TEGRA\)" <thomasz@nvidia.com>,
 Sachin Nikam <Snikam@nvidia.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Yu-Huan Hsu <YHsu@nvidia.com>, Juha Tukkinen <jtukkinen@nvidia.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Alexander Van Brunt <avanbrunt@nvidia.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7553794788985786868=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7553794788985786868==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="W/nzBZO5zC0uMSeA"
Content-Disposition: inline


--W/nzBZO5zC0uMSeA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 30, 2019 at 06:12:08PM +0000, Krishna Reddy wrote:
> >> +                        "nidia,smmu-v2"
> >>                           "qcom,smmu-v2"
>=20
> >I agree with Mikko that the compatible must be at least SoC-specific, bu=
t potentially even instance-specific (e.g. "nvidia,tegra194-gpu-smmu")
> > depending on how many of these parallel-SMMU configurations might be hi=
ding in current and future SoCs.
>=20
> I am correcting the spelling mistake pointed by Mikko.  The NVIDIA SMMUv2=
 implementation is getting used beyond  Tegra194 SOC. =20
> To be able to use the smmu compatible string across multiple SOC's, "nvid=
ia,smmu-v2" compatible string is chosen.
> Are you suggesting to make it soc specific and add another one in future?

Yeah, I think that's the safest thing to do. Even if we're using the
same implementation in future SoCs, chances are there will be some
changes. Even if the changes are just fixes, having a SoC-specific
compatible string will ensure we can apply workarounds only to the
implementations that are missing the fixes.

So I think "nvidia,tegra194-smmu" is a good candidate. It uniquely
identifies the instantiation of the IP in Tegra194. Also, if it ever
turns out that the instantiation of the SMMU in the next Tegra
generation is *exactly* the same (even if highly unlikely), there's
nothing wrong with reusing the "nvidia,tegra194-smmu".

We've done similar things in the past, where some new IP was mostly
compatible with old IP. Typically we still include a new compatible
string in case any errata are discovered subsequently. It's not uncommon
to see things like:

	compatible =3D "nvidia,tegra124-xyz", "nvidia,tegra20-xyz";

Basically this means that this is the IP that was also used in Tegra20
and the same Tegra20 driver can be used to drive this hardware on
Tegra124. The Tegra124-specific compatible string may enable newer
features if there's a driver that supports it.

Thierry

--W/nzBZO5zC0uMSeA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl1sxtoACgkQ3SOs138+
s6GyPBAApW9UCw6JCRUfPi6qMLdZo6ec3gtTq0ja+vujc8MIwNw0hNPf3Z6XrJxr
23cQ6NAbVv869Lv6yBjoa/s90EimzSOn9MSQh7u5Vocwxv+ptUcL3S+zeE5cYWCq
6il8nVLmckknwL7lWG7gYfxJ0VC/jVtnzblUWSBQVUyRLNiABMEZomEvi9/8UaMk
Ac9m3z7K5Le2aWyAeGgh1jsrkb/Vmid9f8stmrsM/kwp0v9CVfxXR0C9Wwt/n91A
ibiOWlFW3mHuo0uadSLjyUFpA8YAj0dNsTCK1Gws0ojSoMMQM5arb+qSULe3tsmh
nylujZWpqzpjSxZJ/0TgJxgJONmgRLamvFlbmFQNuApVK3oTc7PHNC3GPQVB/owk
bbw4CNVlatnwXUPT+Wis14qid/rE5hxWHdEQTpAPd/kF5yFjTEWqHgDX1BPVMbnv
HpxQmPwq8+x1W+9eHMBWrBoHvGXI2V4p5szFvst4fKlWH2cyfDNxMgJR6K6zBze7
Qw81D3FhJ4ZdwsABSmMTULv8EYuCInKgZGjNPlmtlyuuAiKDZDU7xfxntVNvK7cj
ay0xxvRolXiaKhFL5PptMX7hE+H/hlNeFcBqzGtf0hHOupI2g6gCZrB5+5h93ovq
fy8z4p2GCZaEsJscj7Fp3nvBu+DMiFUp4rmygKSC+MWt4tMyXSI=
=+U+B
-----END PGP SIGNATURE-----

--W/nzBZO5zC0uMSeA--


--===============7553794788985786868==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7553794788985786868==--

