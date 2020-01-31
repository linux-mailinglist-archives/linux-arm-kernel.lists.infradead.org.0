Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C84114ED6A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 14:33:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U2M/tD9J6E5Xj6+ERWTBhGB5Bw+wzNcxaW43ccs/8+8=; b=T2vEd0gy3KkiwVHpm7uwKQVjI
	qtIf4riy6Fe9w1rZKqjFj32MiPL/zPDzPit0dNIzu/Qt8zSTFcwetJBOxvB9e76+PSxOzKKP9GIGf
	1QTvp0pGtqPXWQoS2P1j7I1Tv1Q7jk9qC81qRpq1bwZ3O0I1nPXB4n/msWc673VYh5PUJ6kmvqAos
	phAKA6HSkQA7Zyy7Lu+teAPbOL0kw+o/zaI1cjA7FRwrEmw6EQhrBPvLP8pVoBrAxxUbjr5U9cytR
	Og43vT+Ff29GwDX2Di7SowyMBb4CqL5RiBtgwuPtwx9wWh58LINl4GY/AbORwUci6IdfDEL1Igbrf
	Ww9I+nAfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixWQd-0006Nl-1q; Fri, 31 Jan 2020 13:33:47 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixWQT-0006NG-7e; Fri, 31 Jan 2020 13:33:38 +0000
Received: by mail-lj1-x242.google.com with SMTP id r19so7123024ljg.3;
 Fri, 31 Jan 2020 05:33:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=8xJUVWw1XqMhfXb1cV/Ls5bOc5zsZ/PIs0D4u7u3o1o=;
 b=NWiDXiMhla7cNfbmUDmqE5VH96zQpMJZJ/XNqjF+oM3XyZdpXBlMLIR6/VlUCJLOf+
 vblnrArB05QxSyH6EEU1zCjsdOfs96W8Qj4UdpMDaRzGk5xmFmKPbxyUPOfaNat9SLzr
 vRACKmQCOmEQ4jvPtplfeEW0fV2UbepicWT4qZxx6+Y6bWSlnrZq2G8gGJR1prUf6fS3
 q/FkCL2zzeSh65Yx5pd+QftU83FRyeBgKsoSNbqD2AzVVf5Olm2SNMGCL4kcPwya/4GZ
 milr4W8t92cjlrGQNxFX6HWSN4idpTQMfeuiegnQruBYN1rdV6rT9ADFtNuT6phHgd2M
 VVnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :date:message-id:mime-version;
 bh=8xJUVWw1XqMhfXb1cV/Ls5bOc5zsZ/PIs0D4u7u3o1o=;
 b=hIq0q9rlNMnWNnFN78pAZ7lC8qxxaiGYYSPgbb583o46u8YH4JX/z+694gSzsWGwq6
 pDc2skvcPVbLnmj//RfEHS++96PaAZ3k3wFqFavaZd2Bae+Ivcraf8cKe092TUf0DTKc
 IH6Tn0O+LvqgB064Ofljxyp3yeULUhXK+V2a2gP3iTSKlOgjnrQx288hXdsmwKO3oQtt
 NutZ2Oaw/HBtKgbHC/HE5/PTurGlQ1eBgO345MTxcHc4tMdiNVxg8i293Te9zcr29pZ2
 yd9TTWQmScpHjuuLdqRwAL4j/BNm0M+SsUoxBjik5pgO48wQXYpi2V49KdZXQcaiELQy
 PKkg==
X-Gm-Message-State: APjAAAWEDMFVFPDJxgbDeGaoKfgvPfcJBIn7JKLpooebuGAuD6pzWZTy
 zYf+VUSy+puDDKUrJaY8Ktk=
X-Google-Smtp-Source: APXvYqyRAlb719rmnNqIgnPYKeFfkJ4InXdaYjYsK7trRMSyEgx6KBG27EvdjnUbw/Hr9bDCnVnXuA==
X-Received: by 2002:a2e:3619:: with SMTP id d25mr5774534lja.231.1580477613536; 
 Fri, 31 Jan 2020 05:33:33 -0800 (PST)
Received: from saruman (88-113-215-33.elisa-laajakaista.fi. [88.113.215.33])
 by smtp.gmail.com with ESMTPSA id w29sm5787316ljd.99.2020.01.31.05.33.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 31 Jan 2020 05:33:31 -0800 (PST)
From: Felipe Balbi <balbi@kernel.org>
To: Hanjie Lin <hanjie.lin@amlogic.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Rob Herring <robh@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kevin Hilman <khilman@baylibre.com>, Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v7 0/5] arm64: meson: Add support for USB on Amlogic A1
In-Reply-To: <1579489086-157767-1-git-send-email-hanjie.lin@amlogic.com>
References: <1579489086-157767-1-git-send-email-hanjie.lin@amlogic.com>
Date: Fri, 31 Jan 2020 15:33:27 +0200
Message-ID: <87lfpn7ntk.fsf@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_053337_276650_384B4F68 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [balbif[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-usb@vger.kernel.org, Yue Wang <yue.wang@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Liang Yang <liang.yang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jian Hu <jian.hu@amlogic.com>
Content-Type: multipart/mixed; boundary="===============7051048186006512867=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7051048186006512867==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hanjie Lin <hanjie.lin@amlogic.com> writes:

> This patchset adds support for USB on Amlogic A1 SoCs.
>
> This patchset is composed with :
> - bindings of the PHY
> - bindings of the USB Control Glue
> - PHY Driver
> - USB Control Glue driver
> - dts of the PHY
> - dts of the USB Controller
>
> The Amlogic A1 USB Complex is composed of :
> - 1 DWC3 USB controller for USB2 Host functionality
> - 1 USB2 PHY for USB2 Host functionality
>
> The USB Control Glue setups the clocks and the reset about DWC3 USB
> controller, and binds to the USB2 PHY. It also configures the 8bit
> UTMI interfaces for the USB2 PHY, including setting USB2 phy mode.
>
> The USB2 PHY driver initializes the phy analog settings, phy PLL=20
> setup and phy tuning.
>
> This patchset is based on A1 clock/power domain/reset series at [0].
>
> Changes since v1:[1]
>  - integrate glue and phy drivers into g12a's
>=20=20
> Changes since v2:[2]
>  - modify amlogic,meson-g12a-usb-ctrl.yaml with dt_binding_check tool
>  - phy/glue driver use of_device_get_match_data to distinguish A1 from G1=
2A
>
> Changes since v3:[3]
>  - fix bindings mistakes of the PHY according Rob's comments
>  - fix bindings mistakes of the USB Control Glue according Rob's comments
>  - phy driver add xtal_usb_phy clock which moved from glue driver
>  - glue driver use otg_mode instead of soc_id to support otg function
>
> Changes since v4:[4]
>  - phy driver revert reset-names changes
>  - phy driver change clock name to "xtal" to consistent with g12a
>  - glue driver add drvdata otg_switch_supported
>
> Changes since v5:[5]
>  - integrate phy bindings into g12a
>  - modify glue bindings format according to martin's advices
>  - glue driver add dwc3_meson_g12a_otg_init() do otg related work
>  - glue driver add clk_bulk_disable_unprepare() in remove
>
> Changes since v6:[6]
>  - fix glue bindings dt_check_bindings error.
>  - squash phy and glue dts patches and set usb status to disabled default
>=20=20
> [0]
> https://patchwork.kernel.org/project/linux-amlogic/list/?series=3D185477
> https://patchwork.kernel.org/project/linux-amlogic/list/?series=3D180055
> https://patchwork.kernel.org/project/linux-amlogic/list/?series=3D189643
>
> [1] : https://lore.kernel.org/linux-amlogic/1574405757-76184-1-git-send-e=
mail-hanjie.lin@amlogic.com
>
> [2] : https://lore.kernel.org/linux-amlogic/1576636944-196192-1-git-send-=
email-hanjie.lin@amlogic.com
>
> [3] : https://lore.kernel.org/linux-amlogic/1577428606-69855-1-git-send-e=
mail-hanjie.lin@amlogic.com
>
> [4] : https://lore.kernel.org/linux-amlogic/1578537045-23260-1-git-send-e=
mail-hanjie.lin@amlogic.com
>
> [5] : https://lore.kernel.org/linux-amlogic/1578634957-54826-1-git-send-e=
mail-hanjie.lin@amlogic.com
>
> [6] : https://lore.kernel.org/linux-amlogic/1579220504-110067-1-git-send-=
email-hanjie.lin@amlogic.com
>
> Hanjie Lin (5):
>   dt-bindings: phy: Add Amlogic A1 USB2 PHY Bindings
>   dt-bindings: usb: dwc3: Add the Amlogic A1 Family DWC3 Glue Bindings
>   phy: amlogic: Add Amlogic A1 USB2 PHY Driver
>   usb: dwc3: Add Amlogic A1 DWC3 glue
>   arm64: dts: meson: a1: Enable USB2 PHY and DWC3 controller

I have taken dwc3 bindings and dwc3 patch. PHY parts should go via Kishon

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl40LKcACgkQzL64meEa
mQb/jxAA2qH+Wx14NNofPg4dQrx52qRhgqUpP83dr+5AAiQVmcJogR50DsHpOqaO
eVB41fn/HvWEzLg5+F4LTiDCjj3dThrKrJqT2LAu9CH0hZ08yDAUwCYtA6zl71Kb
SSNqfCImJdeY2VFym/BnHx7mFcCBnmtYsXxecusFOOjW7qhjNiwnSz8pHHvsVox9
Zhbl1xshpndfi+7YO4To7yQxv4SZetoemqKfzK1rAj8QCAbjqtP7HsrAAqfqBTWB
FTMx2Xj/wgGPB7oUrYmyTqURVXtJPcGI8zlLNQB0u4XnsYtIJwrx9vku/24PBHoA
EA7fQebDXjQg4aUeqeSnLaMxi4osnfX5aQ/cBVfV/b0yvG1Pfm1mRbxXdaWcsm4f
JjTdjQ+m5thpcNRN84OSV2Vld1InwRs7xfLG714Ueipg/svlNkw/9dI/0U0WcF/p
thKnpioYNG/q/EQ1XjOZD0SiXVPgYd/HvTRu/7Mhyj1aFKRU6K4InNgPZtZS4fCd
+iRBHJ7NLXtahH2rQYt6Zid3pTOvHnShzVU6n2qTaLkziS/TGL5knuKlvRSAa4w8
D9FkX7gxQP28xaDy0u1kouds9ubvcw8TjBQTS38EAjev6AtZojthwvsJ/4EIYHRt
QBEO9KQEaqqYvGNreNhV/Xex3D2UgwHokcsD1K1MFfVE3WfJ4fs=
=R1Oz
-----END PGP SIGNATURE-----
--=-=-=--


--===============7051048186006512867==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7051048186006512867==--

