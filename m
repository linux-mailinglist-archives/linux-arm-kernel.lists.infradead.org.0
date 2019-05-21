Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F279124CE9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:37:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S818XV1dwEOZSqVaYXnO0bkxnxAocQfhGFT/tiABBus=; b=E93bMJj8ohAQrFD7M7XoISDmZ
	1rcDam8o4ZkwB6c/hDGpauM0r4dHmHdC+UoBFrJb+d4kELmBt0yGDNMfr84Fo8ZUFGBVnj8Hb94rx
	mpYABvxLXk9gY15cNCiB3gZ41XqYZETRf6l6KzPOKJnpzfdHP0svivpyBe+RzTu4wsfCMILJg0Xrw
	9vpmlVBd4mcXO8JQNt9JDz5XMUBZ94bwjF6EiliQR3u3BqmFVHBsvWIo3xGMxs8QTOTopuL8ySeGC
	R6rhZ03aAk57aQ1nu+v1nDa6xed72lgOilWmXWDQN/S79y46afvfwWYpEFHklaSewyD+9qqdz+gmj
	e30Mqn5XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT29M-0002Qx-5E; Tue, 21 May 2019 10:37:40 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT29E-0002Px-C5
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 10:37:33 +0000
Received: by mail-wm1-x341.google.com with SMTP id q15so2353585wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 03:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Pk9/EDdjZxONgrYI8kAOhGJWxmtEFhA7kOzCkkQmWqI=;
 b=qLQd9mwVZtT+4gIOwW5cnFjudOkGkzk/EjRdPXDv1cdLKRlfES7p5y5G/QZUc8PEsO
 e2837BkCoWNpD15ZBU2Vh/cePuiz7sOKHLQWaYvwK9/23RdR8NtwbzZLS2p8lMUgQ+I6
 VsM7QpxAG4kzLDIuHNaZTuSwf6euSTICBc2vYq8+avBAP9R6xt9fK66oEjOoxVksTx8C
 4m8MJFUXuzWHONm+XZYLpQ70gHpzOXK5Bmv3+MOjQPbnpm+WqCDHLlVbfSMDxb21RLlg
 BFJm3ZWiFJm1aZ14Y8drr82W7UgNWxI5ikF6apGHUuWBaJ52kYB/cOUpqWxKUZ5o/d7k
 p/dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Pk9/EDdjZxONgrYI8kAOhGJWxmtEFhA7kOzCkkQmWqI=;
 b=VXty8JcH+wZAqH5WK3hBhHSkx0NuulOXZyaPe0zUBfeiIE1KecxpaKG0eXpIez+F5K
 Dn6plaHBOiH9E7dhYtYlCT+LT0WS/HxcxikqFZ/lOSpAzs0TgxJGMqEkuKnsTbSh1vyg
 NgeLBYDfe1TbT0FWvjd0YtFn0O4S2Kc1FbZT+fOpqCuwUfJSsHrtOfQenoOlG0XIllrk
 zBIihXuz+AXsVm7ix/gT4OChzJ00oL28Zn05XPRV11oS2ckXBUTGZPfRTUz65mPWRlM6
 VlG/WVONP2wCInuHN5uezr2lbKkWKHYq0QpbPqbbR5zesr2LDTyYEEd2EPZjXnKo9yW5
 Yazg==
X-Gm-Message-State: APjAAAXp5dY0NyiIQ2sa7ZHEg2Jml+15cY+9vojxnQtC9bKo2KyX+z6B
 a+uLFESzEnKTDFq4Ye6JXLc=
X-Google-Smtp-Source: APXvYqyUlgdCPheRHL9v7ZLgwsBoKSkVYrYEIyqFLP0XC4W1deVNp6iynS+CfGy17wTGpq5IPR4DAg==
X-Received: by 2002:a1c:1d46:: with SMTP id d67mr2734396wmd.98.1558435050841; 
 Tue, 21 May 2019 03:37:30 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id n63sm2934211wmn.38.2019.05.21.03.37.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 03:37:30 -0700 (PDT)
Date: Tue, 21 May 2019 12:37:29 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V7 06/15] dt-bindings: PCI: designware: Add binding for
 CDM register check
Message-ID: <20190521103729.GF29166@ulmo>
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-7-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190517123846.3708-7-vidyas@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_033732_411262_A309A628 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Content-Type: multipart/mixed; boundary="===============7391698885887077713=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7391698885887077713==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rMWmSaSbD7nr+du9"
Content-Disposition: inline


--rMWmSaSbD7nr+du9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 17, 2019 at 06:08:37PM +0530, Vidya Sagar wrote:
> Add support to enable CDM (Configuration Dependent Module) registers check
> for any data corruption. CDM registers include standard PCIe configuration
> space registers, Port Logic registers and iATU and DMA registers.
> Refer Section S.4 of Synopsys DesignWare Cores PCI Express Controller Dat=
abook
> Version 4.90a
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> Changes since [v6]:
> * Changed "enable-cdm-check" to "snps,enable-cdm-check"
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
> * Changed flag name from 'cdm-check' to 'enable-cdm-check'
> * Added info about Port Logic and DMA registers being part of CDM
>=20
> Changes since [v1]:
> * This is a new patch in v2 series
>=20
>  Documentation/devicetree/bindings/pci/designware-pcie.txt | 5 +++++
>  1 file changed, 5 insertions(+)

Reviewed-by: Thierry Reding <treding@nvidia.com>

--rMWmSaSbD7nr+du9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzj1OkACgkQ3SOs138+
s6G8OA//Za/2suTnOQbvbpSyc5opGe1KwSkFsUP0RGg8aT54pvHnF+SvsLGd8Omu
Pqo0DCbxzEvfYkmdfEseSR3I60FCNYlMU7L/6OYFkAvpI5fYk8TGwyCssXEXHjwz
1BG7cy4oobxCkoNVwqCSm99hxFmTDj33HOYIDyQPt3mNKT/9pWD+V3AMaMPZ0dgx
wRWX4kvxKl355XimcWwspONm9Sk3PV3LEV4Evvr7otXgaD3nNWpLHdBjqBRQtgoe
ZZh1S7mHtc/kLBaHTXy1RBjHFf2Wkw9z3wm7iV/x8xkqroTkQoNnZV4HPOzHEyq4
xYFprccqToWaaXSVz41pzCRI0SoKELJawKakQFDEZ2wZkWAzeY53ORaJNT+EPYtK
uYo8B6ZBu/ikvmzPx9aMQMCzT3WOSWUkgt9jb02BQpcwI78rRHAhYqb1dqMO1mQJ
TD3UI+GZju6Fftt5Wmp02NKlJwJTgRTZZpJpU/+zcbPyYqJrLb4jYfM491wxR3lV
CGSUHMM9rYKBkgHJ81FFOECLV5CF1lwCQfeFGKpyiqHEUerm7qLeOC4Dq099InQd
rwhv6UwVuEU4Al8w+xK7fAqwkigZwgv13hGOsXDEIGurWptMPyfN4MIR4ya+kH52
8LBpB5J+9mNo/vaCXektWciSu/iOusTkXvnzF5K0rRVtcUnNsBc=
=HI8b
-----END PGP SIGNATURE-----

--rMWmSaSbD7nr+du9--


--===============7391698885887077713==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7391698885887077713==--

