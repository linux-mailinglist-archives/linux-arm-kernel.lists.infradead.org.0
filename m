Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9E11A8172
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=edzmuuiiiZw+vO/ILZ1lg8GHh96b9ZLTnHq0JztwnE4=; b=XL6Q3RP+h/koDpSW66TEbCzE8
	oxeTrdQQ47p1jzP05/m5HS5t1NfUwGzNhAsTiBgv0ejHDpactamf9NZloZ3PYXR5/xrxjn4mmban4
	AVdL9juwvL2eDB77UmmHaAb1c9sY0cyjpRjaTO6vh+93X5YWnj6xIxzbKiqI568m78YnmvTbL85NY
	UsI1hYeq2b4acIxuR4Yr8/vELF7mYXwBtLhcfXge+uFkYLwQwh5rPMl+XLTV1G195PWdKdmHL9Hpc
	OquSu83GjsbwzvrZx2dPdEcL508/LcW1PSl0/9V/eEjbw3pSGPKk55TKZQHhN7lAoe42FxYKL0rv+
	ent67/b2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONAo-0002kc-Bp; Tue, 14 Apr 2020 15:08:26 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONAg-0002jo-Fl
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:08:19 +0000
Received: by mail-wr1-x441.google.com with SMTP id j2so14734673wrs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 08:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=k7q0i04JrV/LeWRv8qAlwGssC6S97Ez37RZ9eJFf4jw=;
 b=s8K8q5iRtggqNP5qEoyp9NKhh1FcI+I/WpvocM2IwWOsRGN2OhmPWCtRPpKF0pSqur
 kk6vqF/IOvEFrkaVsK25+SsTVR3Q33zsGE500TdhYf4fhtYvOROG/nhZJGYsK8vBIzQw
 jTdQSgEfOfsUMZkimdJNkyvA2AyPfUP607BuhA2QDyUpyaTAgDwODdgJne/fIoF4Wax+
 njNtUfZ0TJJX6fUbBlsxihKkggxTV5g+hv8GKrdrrUqpfu6QshbWFu9rtMQrmS5kxVss
 BbkYk/46kdC1TtrT4Zte7uDcDIN0OYATpc38YKttt6+IXg1ZQFuaOdgwqY8bNqBQdBWr
 xuZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=k7q0i04JrV/LeWRv8qAlwGssC6S97Ez37RZ9eJFf4jw=;
 b=aaL0A3VubdPxIlho40gLSfLMsK4Z4Dl52s6fGeYb9tIzZPVsWDx8+7pl8GlmXQJotr
 4W1suBd3lSjfGlBsYU/8SNoL5vQ2ikPS/nG84WcwMQCSHsF6dflW+Y9xNfMBgwn/u/IE
 pH/bliZhJjVtKoFGPk1ox2Wn4v/TMvBxRvUrMMSrcsGlMbLGXpePC5cXdREHKDxnJtl8
 rQ2HK6YwDI/YB5pcQ+pRqCXBB1xpxZkC/QTEMtL5nrf7XXEOhJS3kt21hQ177eRKQNeA
 d8ME2pvjy8vfez7AOeid89GHQFsdTDRGD+oMmAqFAY72v8xXdomo5CKnRVT2/GQzr0FT
 ++Rw==
X-Gm-Message-State: AGi0PuYlCVYtsSz6LpQz5rbAJIy1MOhqaeYFt+nYeev2ni6aSj5L6D6w
 5TnAN3zOmGgFgA6SjtWMl/A=
X-Google-Smtp-Source: APiQypLR+uWxiXs63aPjYfFPWMFe2n0Nn/f6HhopnZJbUeLcgUQfMkrWPO84Tz3WWOc4Hxo4F/dUmA==
X-Received: by 2002:a5d:658e:: with SMTP id q14mr25214585wru.92.1586876897235; 
 Tue, 14 Apr 2020 08:08:17 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id m14sm17431931wrs.76.2020.04.14.08.08.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 08:08:15 -0700 (PDT)
Date: Tue, 14 Apr 2020 17:08:15 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v6 09/14] memory: tegra: Add EMC scaling support code for
 Tegra210
Message-ID: <20200414150815.GM3593749@ulmo>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-10-thierry.reding@gmail.com>
 <e015e35b-3f82-56e1-2d86-ebc467eb92f7@gmail.com>
MIME-Version: 1.0
In-Reply-To: <e015e35b-3f82-56e1-2d86-ebc467eb92f7@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_080818_526758_C03E37CA 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Rob Herring <robh+dt@kernel.org>, Joseph Lo <josephl@nvidia.com>,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9169072578923982654=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9169072578923982654==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="75WsOQSofUOhcSOp"
Content-Disposition: inline


--75WsOQSofUOhcSOp
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 10, 2020 at 05:25:06PM +0300, Dmitry Osipenko wrote:
> 09.04.2020 20:52, Thierry Reding =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> ...
> > +static int tegra210_emc_remove(struct platform_device *pdev)
> > +{
> > +	struct tegra210_emc *emc =3D platform_get_drvdata(pdev);
> > +
> > +	debugfs_remove_recursive(emc->debugfs.root);
> > +	tegra210_clk_emc_detach(emc->clk);
>=20
> It's great that you want to make this driver modular, but I don't think
> that it's a good idea to suddenly rip off the EMC clock from the users.
>=20
> It should be better to simply disallow unloading of this driver once
> it's loaded.

That's not what we're doing. The clock is going to stay around and users
will be able to access it. The only thing that the above does is take
away the possibility to change the rate of the EMC clock.

So I think this actually makes this really nice both for testing that
unload/reload works and it also gives users an easy way to disable EMC
frequency scaling by simply blacklisting the module.

Thierry

--75WsOQSofUOhcSOp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6V0d4ACgkQ3SOs138+
s6GsWw/+M5/HCC6YVqevVHN5rlOJp1Ymn8G8PfobgyJaQ+IQ5YBian1VcklzBhNx
jqEPh0NaQTMm8Lq30si3Es6lnPugjOhhsYpGP2PVQ8Fpgr33hqoileVYzHYe4uMP
uk7SUYzZMoBAdO936koxzvfVIS86NGqzVciHH7xDQqndF1PoRShxkHA+Fmg7FuwA
BNKrTPyYObiEZD0KO45fHkyWxrBl7lfk6Qm9gMyM5wpp80JHI/gGkmE3kUocMW/w
zYXnGLES5NcrDgBDv1aRAlt8pafa1TrFtZIpADX2Y3q533/TEojbb3f9BtYkLCAP
8cfmAfFdHK9gOo68OGpPFePzFZRYdxEH3xCGOsISgMoE5PRIKpLhVZW1/zlaVGHG
yQUuKR2c/G+qlPgD1vb42B7b7cPmA3DU7KGZn7aUhDTuR8ovDd29Xzzqzvf9Gq52
CKZFYirYrVuNF4Yu81JCQejfoOy3dah1EILZ/H4rwsIZGbNmzNt8uMPJ9/b0UAht
9aCgJJC05SNFFeWT7PYgleJHLLl5zpdStTbZgSHdjyS7az2+hTCU/ZxEFVUbfARp
yMauGoTgjC+Tmlo2i8u/TO91xvVVLx0jnhAT9QETnjYkTZtr1T5h8jh9u2EIguHb
oFtPdGtkf4+73XZxomkd6XA3sThbRwKYCuzJUIupCz+fwe2ByZQ=
=UtAs
-----END PGP SIGNATURE-----

--75WsOQSofUOhcSOp--


--===============9169072578923982654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9169072578923982654==--

