Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C42D5177754
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 14:41:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZPpwvj79rQeagCDdhoB30zInpvhIMS2NXbtOoizFv/U=; b=cnSQ0z0hHu/P6e0vezdtYULNy
	hFQftsASmC7UN3QMi9Ku1odotIqElAonEmwHndL58uRuTPFo0Hke8IplGgwbOxXLKaxfCxE84We0j
	Zn5J+wEaC247o/NVDJkuYxxSVXDTszTfvXP4Znsh9r+wqJ+hAuxE/B4Sz4R/I8N3fOl+jh+IGsfx5
	lEPVM2H15VvlfTRf0QW3yL80O7W8xuevRzVKPgCNUpGb8F+ZZR7V1enLs/tRyU4RxJ/WP5EY1TmEA
	lFNpD313KCNaFuNYHIKcuxKZ+ZET3HGkAtfPmljP7zlwA0lJyJITd0ne+gz3jjZQrvgl98VBIiuhz
	3DDcjqoMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j97nD-00062b-Ig; Tue, 03 Mar 2020 13:41:03 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j97n6-000620-2L
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 13:40:57 +0000
Received: by mail-wr1-x441.google.com with SMTP id v2so4314090wrp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 05:40:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YLrc2+FA1ilMNRmgjCWNRM7AU/9wyz5rmTyxSf5L/jk=;
 b=tuAM88xFmr/1HHdgnU+iN9kKxRCACr7qjOAbMKA2T6ct8kOUOPCytXX5yv7PsPOpq3
 KaI5IOFI7uye+KEltFVfEIU28ByZqcjE9dpNPgjNDv28bC9BUyhtvi8TAG10NGL1uSoE
 S4teOUD2khVaxZC6jD2ygMa8bW/10RZfFmMHSJoEzck2ITDCYx+uBC4GpJA6Wt98JVvV
 vNJ1/HzzD9ClQopIlsC1xOFt9E54txaUfmJ9CyDtvxk4bdtb5Ttvtop7cGrGlD1HVwOK
 9AbPrRsbMnIzFcNha+LJ1gMXmPaDhPrJDLpJkiBz3X+xUHNEmpt+i0omU4sLz6ifb/AG
 g+dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YLrc2+FA1ilMNRmgjCWNRM7AU/9wyz5rmTyxSf5L/jk=;
 b=B/g1BWk1tMcgorKdJayBZsE91Wm08r1PwECcr2oBQM9eJk32ntmhvqUFqQxmwLOiO+
 MN9emkoM6dvIjf73lUKcRfRtlo4g5TpXNI9NdGURuMJWsWa8VJfDFnR/nwfKJLvKw8Qd
 TQFYqwFxSeTXPXvo7LiicQdbeVO4JsUejQp1SmCiwjxrzPzsxq7eVMiWoyPV7s08Y1VS
 wxWepD07L9FN6qwrdc+ZlXjzyw3NMyHYtz/3jBLKM0sbMcAIhDNZ/xDKNYOgUXXzu4Xj
 CehGrWia0KxZ0bRNvwR/XrXXq4b6dy14Y6gPsjzuMSUcQ8bN9RX7xNfWfiVw2FGMkGGH
 lXjA==
X-Gm-Message-State: ANhLgQ0SBvYb7QJoCNKbWufcgsYkMswJl5v2sQT9qk7u/TIMx/w9++5D
 Nt0PwObJ4aDfALkPeUHlGG4=
X-Google-Smtp-Source: ADFU+vsUi9N0mZqkU864Zt1scSOjkJGbRqy/7SxuooIaUW3uRiZRk5L7SxSRfaKwnjHBqYIWc2rWJQ==
X-Received: by 2002:adf:f641:: with SMTP id x1mr5471264wrp.248.1583242854870; 
 Tue, 03 Mar 2020 05:40:54 -0800 (PST)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id s5sm32044251wru.39.2020.03.03.05.40.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 05:40:53 -0800 (PST)
Date: Tue, 3 Mar 2020 14:40:53 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V4 0/5] Add support for PCIe endpoint mode in Tegra194
Message-ID: <20200303134053.GC2854899@ulmo>
References: <20200303105418.2840-1-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20200303105418.2840-1-vidyas@nvidia.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_054056_112077_A0FC9FBA 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mmaddireddy@nvidia.com, kthota@nvidia.com, gustavo.pimentel@synopsys.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, linux-pci@vger.kernel.org, bhelgaas@google.com,
 andrew.murray@arm.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============4983741037189740862=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4983741037189740862==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kVXhAStRUZ/+rrGn"
Content-Disposition: inline


--kVXhAStRUZ/+rrGn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 03, 2020 at 04:24:13PM +0530, Vidya Sagar wrote:
> Tegra194 has three (C0, C4 & C5) dual mode PCIe controllers that can oper=
ate
> either in root port mode or in end point mode but only in one mode at a t=
ime.
> Platform P2972-0000 supports enabling endpoint mode for C5 controller. Th=
is
> patch series adds support for PCIe endpoint mode in both the driver as we=
ll as
> in DT.
> This patch series depends on the changes made for Synopsys DesignWare end=
point
> mode subsystem that are recently accepted.
> @ https://patchwork.kernel.org/project/linux-pci/list/?series=3D202211
> which in turn depends on the patch made by Kishon
> @ https://patchwork.kernel.org/patch/10975123/
> which is also under review.
>=20
> V4:
> * Started using threaded irqs instead of kthreads
>=20
> V3:
> * Re-ordered patches in the series to make the driver change as the last =
patch
> * Took care of Thierry's review comments
>=20
> V2:
> * Addressed Thierry & Bjorn's review comments
> * Added EP mode specific binding documentation to already existing bindin=
g documentation file
> * Removed patch that enables GPIO controller nodes explicitly as they are=
 enabled already
>=20
> Vidya Sagar (5):
>   soc/tegra: bpmp: Update ABI header
>   dt-bindings: PCI: tegra: Add DT support for PCIe EP nodes in Tegra194
>   arm64: tegra: Add PCIe endpoint controllers nodes for Tegra194
>   arm64: tegra: Add support for PCIe endpoint mode in P2972-0000
>     platform
>   PCI: tegra: Add support for PCIe endpoint mode in Tegra194

Hi Lorenzo,

I've acked patches 1, 2 and 5 of the series. I think you're going to
need to apply patch 1 in order to satisfy a build-time dependency from
patch 5. I can apply patches 3 and 4 to the Tegra tree since they're
only adding device tree content that may conflict with some other
patches that I have in the Tegra tree.

Does that sound reasonable?

Thierry

--kVXhAStRUZ/+rrGn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl5eXmUACgkQ3SOs138+
s6FGqQ//SZc5V8LZwgjymzl/i7cT6pra9G4FiC7lOGh3wefGsiUhHtjnSMK0T1fv
oeOyO1/dIIAWsl/qztmbf6Cq6ARu0f4bBo/ZpRAdC3CiyHn6kRmk8dChB9/JN+HY
RshU2ZcppcNhvhSQKWkyFBj8S05T4ceTO1GAoxwTd1OuVcORYXT3gP7Fiht6sfQu
74cIXdMELea+aDoucY2joPWmZRUkr0Rs+P1oQSSoCcETlEmM7I+cyM5QPQk1qLJK
q6b/peT9yJ/JBQuxo/MZ2K4ebUgyEVNQsreHbTOPLzHwidFSGSjev63CDPBEdTsD
4T+7thNE0OlFRoTfSBuaCrxtvPKpvWF+5XXYMYM2z8xyJAKZok9nz7CQPPOTUiNn
t5Qbf/vLBjbUD22sEUaZXBlalAeJgBOK0aW4YnxOh5xfRXKz6f5T4FLOwxKc91Zu
m3pHTaDLvm8YSXmiTbq62IvCp9Hc2fqBw3vUzbH1tvkcJA0DwH465rQx1ADM+To+
IQOOum66ZXNRrU4ctc5eZhEGF9rRclXXirdzIDPLmAbp1fjr23+Vxr46pwSGazcY
9tQb4UtptzcuvaWQ0HhkatEFWGHkjKKTevtRJ1J8w32/NzbaMZpGUBJIGfK8pe8z
OGhxDwZ77g2oQ3ULktj27BDFPzP8TT42JPvi+AHOmEiJTfFKNGo=
=Datu
-----END PGP SIGNATURE-----

--kVXhAStRUZ/+rrGn--


--===============4983741037189740862==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4983741037189740862==--

