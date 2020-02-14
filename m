Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC77015D3A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 09:15:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OYjXk27PsDPlEKlnz1BO6pGdt1QoNAdXC3lyIzrWTao=; b=RIqSsrJwzcIS41GgFAFEKs+Fp
	0CRifzuk+XuI88PRofoz3STJZc+GFIMeNALgyy0yarwjOWMkUPXV43fxOtWYFtdDtT/LftMLOKQYa
	LR3fBOnpkyOnhRBB/z4CEK0WHlFW2Vltk+jvbtOyzxPVORzez4Ms34kuHCWGC2YOQnStVOi2hGAVZ
	Q4/Q98hmtA0wQs6aHry+s/o7CUGM0KU3dZ/cAywTpxOD+/8bV4wX7855V7S8NUNlO/7SSrYLvp8km
	I5rPxUwh86SnpdhR5BAdGS11pZS23/UoQgttZviZrmmIo3gvSgi+H9gYkSIFKPrkCLU5EzibPsT9G
	kmOdY2LHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2W7l-0003rw-T7; Fri, 14 Feb 2020 08:14:57 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2W7c-0003r5-TU
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 08:14:50 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 698522209B;
 Fri, 14 Feb 2020 03:14:46 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 14 Feb 2020 03:14:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=DO1qB7EF03XbHYcM+MQop+UEcOT
 t18HnhzTS5Ovdc4M=; b=kNOjQxVZhVfgcp+iqhb6aDnFZ/JegypifI4ezoWQtuZ
 z2Ul5v1Kz08bX2Elyz2KGBv9w1Al76i1mt6iBcIF4ifj4wThv6E2xZcT9Sl8zT55
 oxgalW9xsjRlmFoBNTfMkgha11NjLgTHP8XQR1MYmZAROPw/jZ2/7olVS5qinq+E
 2x/U18ZHiVqdv1EdO/0QI2m+fullcKa56lAYlEmm0/rmq3OgoFPv0/qf2mD94mhK
 W1R+fH+fVqPtRTiZv9dTeaVjpN39y54UDQpT6yVxNbyEW8Vp7W/8OOJjmptANBIO
 ZJQHzKgsRvxxWbLlvXRA026yRkCXs4j7B5/0eXNHloQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=DO1qB7
 EF03XbHYcM+MQop+UEcOTt18HnhzTS5Ovdc4M=; b=vKAisGVD5dqKM7X6hG5Wdf
 gOe6cyx91Qjmo8YGkc8Ql6GAZJEfakYX6Ta85WrMRatSLebAOwJt5WYZiZyTB769
 FHzozMJ5c33IIV64LR5P0iCzJNUpAGQo7VaOVqDNzds5LifEkw0hqxdaPPo6uiR0
 zm6YXnLf4OwGa/K4Z+UX8xucVGqDRBcF2cem8dSXq/MjTssPW6TrVV67BR506urx
 hRYc0q8KAks7ZtaW/gXtOjN4s+WgQu+6fsNpnmco5z802vDPp624nD7V4Ug8b6eB
 93gl8dlm+2chh6dpZIgl+TK55m1MFNjfqLoPRGNC8phHqBiBpdjcDcafpUgVEUmw
 ==
X-ME-Sender: <xms:9VZGXsPA5af8xY7aiEojvDXfnfXMf-8CbgGHJ4ku6cOx5-ghsTPwcw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrieelgdduudekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:9VZGXsBaONtsZfOvtIHuH_5yKiDOoL0caaLG49vkJIprvPdlg1Q9zQ>
 <xmx:9VZGXmM6KBRF1IsSKO9UkEoY9bUh90PGu_TDlj8p_zynolIzCzTZ4Q>
 <xmx:9VZGXhzeh8k26vwac0stegTUDevHYGXll46f1GDuViz5NbtO5g5VKA>
 <xmx:9lZGXv-Xr4IdbcvbAnpBBJj3hcwZmqn48Lbr0mC07E8KSbE77Lz9Fg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id CE77B3280062;
 Fri, 14 Feb 2020 03:14:44 -0500 (EST)
Date: Fri, 14 Feb 2020 09:14:43 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 1/2] rtc: sun6i: Make external 32k oscillator optional
Message-ID: <20200214081443.ajz2sxh5ztk6qb2i@gilmour.lan>
References: <20200213211427.33004-1-jernej.skrabec@siol.net>
 <20200213211427.33004-2-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20200213211427.33004-2-jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_001449_097692_616B0386 
X-CRM114-Status: GOOD (  20.53  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7739046871576730383=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7739046871576730383==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gd4hk6lpwgqc6ffi"
Content-Disposition: inline


--gd4hk6lpwgqc6ffi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Jernej,

Thanks for taking care of this

On Thu, Feb 13, 2020 at 10:14:26PM +0100, Jernej Skrabec wrote:
> Some boards, like OrangePi PC2 (H5), OrangePi Plus 2E (H3) and Tanix TX6
> (H6) don't have external 32kHz oscillator. Till H6, it didn't really
> matter if external oscillator was enabled because HW detected error and
> fall back to internal one. H6 has same functionality but it's the first
> SoC which have "auto switch bypass" bit documented and always enabled in
> driver. This prevents RTC to work correctly if external crystal is not
> present on board. There are other side effects - all peripherals which
> depends on this clock also don't work (HDMI CEC for example).
>
> Make clocks property optional. If it is present, select external
> oscillator. If not, stay on internal.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/rtc/rtc-sun6i.c | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/rtc/rtc-sun6i.c b/drivers/rtc/rtc-sun6i.c
> index 852f5f3b3592..538cf7e19034 100644
> --- a/drivers/rtc/rtc-sun6i.c
> +++ b/drivers/rtc/rtc-sun6i.c
> @@ -250,19 +250,17 @@ static void __init sun6i_rtc_clk_init(struct device_node *node,
>  		writel(reg, rtc->base + SUN6I_LOSC_CTRL);
>  	}
>
> -	/* Switch to the external, more precise, oscillator */
> -	reg |= SUN6I_LOSC_CTRL_EXT_OSC;
> -	if (rtc->data->has_losc_en)
> -		reg |= SUN6I_LOSC_CTRL_EXT_LOSC_EN;
> +	/* Switch to the external, more precise, oscillator, if present */
> +	if (of_get_property(node, "clocks", NULL)) {
> +		reg |= SUN6I_LOSC_CTRL_EXT_OSC;
> +		if (rtc->data->has_losc_en)
> +			reg |= SUN6I_LOSC_CTRL_EXT_LOSC_EN;
> +	}
>  	writel(reg, rtc->base + SUN6I_LOSC_CTRL);
>
>  	/* Yes, I know, this is ugly. */
>  	sun6i_rtc = rtc;
>
> -	/* Deal with old DTs */
> -	if (!of_get_property(node, "clocks", NULL))
> -		goto err;
> -

Doesn't that prevent the parents to be properly set if there's an
external crystal?

Maxime

--gd4hk6lpwgqc6ffi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkZW8wAKCRDj7w1vZxhR
xT/JAQCebsgcgBInF+PMbD9/OQ+obICfwPn2F6YKc8wH6LbTwAEAzCHajFqwpLR0
m/VD6Vn5K5n5k503UZ48Ap0B4ro5cwc=
=A1UQ
-----END PGP SIGNATURE-----

--gd4hk6lpwgqc6ffi--


--===============7739046871576730383==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7739046871576730383==--

