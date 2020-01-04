Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C22130178
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 09:46:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pANq8qnlrV5PZ+vgeD20GClo2fwgpVHF4tEP9XAyN2E=; b=mPYLZXdfiKJKh0XqDHAsHEm2/
	BDbdwza6PMxOXlZZNxF+U6iIJJh7ipLTN7NYVtyviu4UjCEmF0jI1oXt/Em62xy+die44VW24v5fL
	JgfWrd56hTKomNx6Vp7Jr8e4fWNz1SGxlv6OCJ6qbZdYYCU9+yGCKvhHUNdyqcvMdV2GDK4hFl/hY
	orkkqhcnvf3MNQaHN5hmjZv791LMEfDVNCzfhW04rIHJj57gqE34gUrG2+MoKgEZdnYGBo8FsV2Pw
	ZxYRIgVtrp9YxYfm9K2VkMtM7YEkZPMfY5GBg8hR8+6Onuygkc98my3SCTizCVn601x1xkBA2S5h7
	CaUnWi6yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inf47-0006KK-2o; Sat, 04 Jan 2020 08:45:47 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inf3z-0006Jd-O9
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 08:45:41 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 3A23622028;
 Sat,  4 Jan 2020 03:45:34 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sat, 04 Jan 2020 03:45:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=50yXllbu8VHNaCuctcXj0xRdsy6
 TBcAhvMaBja/qzec=; b=Ys6oVlYV2PZiLvjRqJIPidsLBAXL9m/QdrYonZaAOHf
 t7yK6EerS9cwscwPayS50g89Mf+EdMuuHDPM2BUZSrn+lSDQXkCDb7PqShtqhfiQ
 9KdtL4BJdzeW8P2UH90wLT0vd3w0P02roQdgnzlfqps+mvP5EmjF8pnlrWOckQ8f
 FDmsbH8m12BStrcwwi1mJ6l2dYpRBVVQy3P3m3JHnLRwBOinxAHwGztTmRbbZgvj
 YsMs9fi+7i3LwZXBwdzy1mDtZ/V6irodvSFhHFk0OYND6pg/rfZlzFmUGlFwKB7c
 RnwoA4q/Iwb+1ths3tIbDBt1FyRPtCq5dp9mRY5nYiQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=50yXll
 bu8VHNaCuctcXj0xRdsy6TBcAhvMaBja/qzec=; b=FF0zJlU8mn6snG9ZwZpXxr
 cgpnpnPeltmSHq/oYq2EKsSqGxzpkBO7kLyv6z7wnPdRH0/aIqC4ysYfhkWR0C9h
 XSoq5EpaFXQ4Py3fvPd6l1EvnNP8F2HUaCHhyzv3O5GYpzSU13CbHXmLdyMfzcAZ
 BhGdWiNXxOGpDsMM7Fo88I3NFpuXWjBE6bpJhudk6Muqrrs3jm0tVCRNdn8vhWHp
 as2vx3elW8Zl3eDKgR/8vdHqRxyuo/wXJyPnqjgpvKwh3Y31k3JMdojG6O7uC5D0
 4W8FV9QhwqSKh9/KxeKJztNPcH1zmXFZHvFf3/GxEnBfaOY1RP05VDRJ2SYyhbBQ
 ==
X-ME-Sender: <xms:rVAQXqg1CMyRf4YPo7Y70nVvTBiO4BG9SgcQYKiPcuU6azTJt7lrIw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdeggedguddvgecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkpheple
 dtrdekledrieekrdejieenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegt
 vghrnhhordhtvggthhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:rVAQXt4qH1W1gPQwaU13Hi2wJ8nadoZBjEogF0gCsprAel4TAOdEEQ>
 <xmx:rVAQXi5U5Cgjw6YL-6JfvLUsGYyxulcaNZD6jMmDvCRZYzwQcuCTRw>
 <xmx:rVAQXlEB_jypASFH9AC5Qz6xdtFEcDEsxlTbnEWrBlijrrq3TDHJrQ>
 <xmx:rlAQXiMxIbSITfSPELTjuJ8ojHy3N1wdmdF1QMeGAeT8Ltznx6JorA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B1B8D8005C;
 Sat,  4 Jan 2020 03:45:32 -0500 (EST)
Date: Sat, 4 Jan 2020 09:45:31 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH v3 2/4] clk: sunxi: a31: Export the MIPI PLL
Message-ID: <20200104084531.npas3issrfznitoi@gilmour.lan>
References: <20200103152801.47254-1-maxime@cerno.tech>
 <20200103152801.47254-2-maxime@cerno.tech>
 <CAGb2v679hRb+068xcA7DvnwYjp1V9MP9rOWWy_MqXwAG1_d_Zw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v679hRb+068xcA7DvnwYjp1V9MP9rOWWy_MqXwAG1_d_Zw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_004540_211385_48502158 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3226750520299998294=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3226750520299998294==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jhpwe4ug7hd6r55g"
Content-Disposition: inline


--jhpwe4ug7hd6r55g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 03, 2020 at 11:30:12PM +0800, Chen-Yu Tsai wrote:
> On Fri, Jan 3, 2020 at 11:28 PM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > The MIPI PLL is used for LVDS. Make sure it's exported in the dt bindings
> > headers.
> >
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>
> Acked-by: Chen-Yu Tsai <wens@csie.org>

Applied, thanks!
Maxime

--jhpwe4ug7hd6r55g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhBQqwAKCRDj7w1vZxhR
xaiBAP9dc1FBVQ46lxRQCakpUvqKyOL9xtjyjH1AZ+Wx+uAprAD/TQ5SI19lYCmd
ALb0rF6dCIQ520S1K/PL2vkiF+aehg4=
=EcQR
-----END PGP SIGNATURE-----

--jhpwe4ug7hd6r55g--


--===============3226750520299998294==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3226750520299998294==--

