Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA760F9987
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 20:16:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fAEpE8t8Go8+jhhbzVI+3ziqHc2l1v+NlS098k6j7t4=; b=gWC3G1NuLs41Ble0vBG3ZdYru
	5Ilm6TgnM3zaPYljQ/da29VZkmQFcHPFO2YjMQkPv4AZtFbtIBY9auwMQXsADWpLaLopwL0B6l2Gg
	bakAiBkhvdTor/NqQqEGAPvlHvBzvl9UIZFL3EHdfUzQ719EM6Eovmwsacqnh+ZrC5WWqZCJRxpmS
	MBDa0Fl10jrkJbqx7D/UTX8aTgnDoVzf8DNI/vTR9AfZdJOAIW172FqWI6KIS6F+vnYtgze/RDokt
	/SDExdD96ovG6vt6NlfesMyhS9bMWTSK2SFWCWFC8U7oRYAZZbjoSjqLylLByIUsWoC7FJGYyeg6v
	ZcN5kphag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUbeR-0000rZ-9m; Tue, 12 Nov 2019 19:16:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUbeI-0000rF-Gr
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 19:16:23 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E189D20818;
 Tue, 12 Nov 2019 19:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573586181;
 bh=1IW8UUMmQ1aplMh8cmJEkKKNsjASki0Ab44VZOslaPk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rL470w9j47ztbIN8itCRbCXBV+CYT0FjVIdVe/g+CYnW8SJ7yi+ynGw67CJ03Cpw8
 bQ66XQbLq/LZeMR2BxY9RH4v1Kq7cZUA0MvpkY+Z42A9VldZK/dVOsE6koLlvTlDWm
 IOinDXU7oult1Vdrdk+foCXekQfEG2ybYOTuUEoM=
Date: Tue, 12 Nov 2019 20:16:18 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH] clk: sunxi-ng: v3s: Fix incorrect number of hw_clks.
Message-ID: <20191112191618.GC4345@gilmour.lan>
References: <BN8PR08MB57792366D78997180A698AF8897A0@BN8PR08MB5779.namprd08.prod.outlook.com>
 <20191111123936.GM4345@gilmour.lan>
 <1FA73EE3-CED2-4241-839D-51C8C02531F5@aosc.io>
MIME-Version: 1.0
In-Reply-To: <1FA73EE3-CED2-4241-839D-51C8C02531F5@aosc.io>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_111622_597921_6F55FA51 
X-CRM114-Status: GOOD (  18.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tian Yunhao <t123yh@outlook.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7707332382443733296=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7707332382443733296==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="alCHniwhwUTljuKz"
Content-Disposition: inline


--alCHniwhwUTljuKz
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 12, 2019 at 08:59:56PM +0800, Icenowy Zheng wrote:
>
>
> =E4=BA=8E 2019=E5=B9=B411=E6=9C=8811=E6=97=A5 GMT+08:00 =E4=B8=8B=E5=8D=
=888:39:36, Maxime Ripard <mripard@kernel.org> =E5=86=99=E5=88=B0:
> >Hi,
> >
> >Thanks for your patch
> >
> >On Sat, Nov 09, 2019 at 03:19:09PM +0000, Tian Yunhao wrote:
> >> The hws field of sun8i_v3s_hw_clks has only 74
> >> members. However, the number specified by CLK_NUMBER
> >> is 77 (=3D CLK_I2S0 + 1). This leads to runtime segmentation
> >> fault that is not always reproducible.
> >>
> >> This patch adds a protective field [CLK_NUMBER] which ensures
> >> ARRAY_SIZE(.hws) is always greater than .num, thus eliminates
> >> this error.
> >>
> >> Signed-off-by: Yunhao Tian <t123yh@outlook.com>
> >> ---
> >>  drivers/clk/sunxi-ng/ccu-sun8i-v3s.c | 2 ++
> >>  1 file changed, 2 insertions(+)
> >>
> >> diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
> >b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
> >> index 5c779eec454b..de7fce7f32e6 100644
> >> --- a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
> >> +++ b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
> >> @@ -617,6 +617,7 @@ static struct clk_hw_onecell_data
> >sun8i_v3s_hw_clks =3D {
> >>  		[CLK_AVS]		=3D &avs_clk.common.hw,
> >>  		[CLK_MBUS]		=3D &mbus_clk.common.hw,
> >>  		[CLK_MIPI_CSI]		=3D &mipi_csi_clk.common.hw,
> >> +		[CLK_NUMBER]    =3D NULL,
> >>  	},
> >>  	.num	=3D CLK_NUMBER,
> >>  };
> >> @@ -699,6 +700,7 @@ static struct clk_hw_onecell_data
> >sun8i_v3_hw_clks =3D {
> >>  		[CLK_AVS]		=3D &avs_clk.common.hw,
> >>  		[CLK_MBUS]		=3D &mbus_clk.common.hw,
> >>  		[CLK_MIPI_CSI]		=3D &mipi_csi_clk.common.hw,
> >> +		[CLK_NUMBER]    =3D NULL,
> >>  	},
> >>  	.num	=3D CLK_NUMBER,
> >
> >I'd rather have the number of clocks (.num) being properly set.
>
> However the maximum clock indices number is different on V3s and V3, beca=
use
> on V3s the last clock is missing.
>
> Should we define CLK_NUMBER_V3S here?

That, or we can just reference the last clock, we're not using
CLK_NUMBER anywhere else.

Maxime
--alCHniwhwUTljuKz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXcsFAgAKCRDj7w1vZxhR
xRGMAQCLdf1+S5MiugOG811D1O+TID2K8oHSTiGL0ebwb1WnzQD/RoJSiEPXRiwL
00DWv7QWDbWvFN/sZUAK3pqmsgjjZwA=
=jeP6
-----END PGP SIGNATURE-----

--alCHniwhwUTljuKz--


--===============7707332382443733296==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7707332382443733296==--

