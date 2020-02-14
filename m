Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 841D015D822
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 14:14:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HVjLhGDcNEVfed+yX1gM1wvGcqz1nwIgsgpORt+qPZI=; b=pr45PiRfOjUJJES+3YOdciT/i
	Ha9d+QDpcC7l+XumstS49OS9fPcGt+QGxmDL5qKIYzsdmRV0cJos1tqyGDHH7PVZWG+otRreKTeA7
	wvaZ57Tqs4/HXXrDhhTzx6iW3Nt+O1epSjyWueTBPjM7/Ft/oRdomfT2+Pk20iGUgyKUMohNPDMf/
	Gu0CF0MzBkaJvwiZWarnGHA2x9N0/YjbpiDxKWWxkC8Hwg9whA4je/9tqlQZl+EiAWKZGdz7EFhmp
	r59wD2CbyMKJokIa7WecfrjcF3RkpxySRX1d8YgA2OObOEJKUAkYtfObkGyZkC26nLsNi0vPlE2LM
	X8K5zQSuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2ana-0006cs-8N; Fri, 14 Feb 2020 13:14:26 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2anM-0006Ok-1p
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 13:14:13 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id EF3C2560;
 Fri, 14 Feb 2020 08:14:06 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 14 Feb 2020 08:14:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=u9+v+4J9/zoOQI1Gm5b/NsSDu09
 67fM20z6x//ZlrMU=; b=Uyq+gayX6zoz//j1EOgBpXzp2s2mD3qTcpXZMcC1JNu
 G360zqbOsrQ6jRcELoDYCqszsvPEpWciAvrnylTXZ4Cj6v6UM9UIqM5LLAPgHMoR
 8N1GdVaqoodh8Z4fDoPvk0iZWDNY0uwZbWYSemoMsO+SPOQ0tNeCH9X2oBEpPns/
 siveeMny/h5Z81daAJpgguRtuHcOOduvKy0N5r89EK/c1qJ9PQuEnAGdIP3whepl
 yvMbxsLOFAp3whkOhMZrvZtjv3wFCXgu0XLKqbKMRXwFfKS7gNWOXlkFJU3KkDuv
 xeDbpyW8h3y1PK1Vld9epis5X20FWdkFEbwQlYh25KQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=u9+v+4
 J9/zoOQI1Gm5b/NsSDu0967fM20z6x//ZlrMU=; b=syRUlCVu6E8wgHuFMeXidO
 v5ps6/6Sz+L9nDIK0VlOke1tP8b2TBkczhxC8T2cExO0HFjsWu8EcWIlQBX4Gob4
 hUjTuQVqHwqGa980FiUrcKPnaNa267Wm+RykyADXpoZhWI6iVLPHHM9+ycBswHyj
 agFKQ99zb253giJaq7LEGFe3H939keOV83eLmdYppVcwMezbtAnKXSJX3AaaQCtn
 DQA1CreM8xJQABXxCigS9EWt/D5xdAZGDwCsJiOecGCQYCJNb6S5mnH1VjBAJa5L
 EuEroQwxuCoYF9p5dVlnLjkT1DfL+JMorJoAmvCoB4dpTzwFN+/XRBwXUAji+MGQ
 ==
X-ME-Sender: <xms:HZ1GXqmZN2wIS8mwfFKAu99J5yY6y1truSfo3k0nrsNzDSkozf99NA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjedtgdehtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:HZ1GXtgZ09gcCFOb8pcVU-kROzfRoMnEN5iuI67UGNh3gRi0qA6atw>
 <xmx:HZ1GXvgIrOq-iAwvQI9lm40eMsskM0nDDL7PldfMP6PVVyOP-vWS1Q>
 <xmx:HZ1GXjZi2x1ISSqVcIxC27MuhEOQ-RNG45E6COTMLr5tJSz1hpYTLw>
 <xmx:Hp1GXhN0uFsoo5GBKmSBIJaGBiUqIqS60Z7hLvOz563ZBI2bT2S6-Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id E18583280065;
 Fri, 14 Feb 2020 08:14:04 -0500 (EST)
Date: Fri, 14 Feb 2020 14:14:03 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH 1/2] pinctrl: sunxi: Forward calls to irq_set_irq_wake
Message-ID: <20200214131403.uxx76djg34rugm55@gilmour.lan>
References: <20200117213340.47714-1-samuel@sholland.org>
 <9103f638-b733-5f4d-1a64-ee35cbfd8236@sholland.org>
MIME-Version: 1.0
In-Reply-To: <9103f638-b733-5f4d-1a64-ee35cbfd8236@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_051412_355396_837609BA 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linus Walleij <linus.walleij@linaro.org>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0437366441802940414=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0437366441802940414==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mtvphatqxlrtxgdf"
Content-Disposition: inline


--mtvphatqxlrtxgdf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Feb 12, 2020 at 07:45:50PM -0600, Samuel Holland wrote:
> All,
>
> On 1/17/20 3:33 PM, Samuel Holland wrote:
> > The pinctrl irqchip may be connected to an irqchip that implements the
> > .irq_set_wake callback, such as the R_INTC on A31 and newer sunxi SoCs.
> > In order for GPIOs to be able to trigger wakeup, the IRQ from the
> > pinctrl to the upper irqchip must also be enabled for wakeup. Since the
> > kernel's IRQ core already manages the "wake_depth" of each IRQ, no
> > additional accounting is needed in the pinctrl driver.
>
> Ping. Any comments on these two patches?

For both,

Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--mtvphatqxlrtxgdf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkadGwAKCRDj7w1vZxhR
xUClAQCzO0MoH9wU1X+cfxcOBq2r51BL3eiLg+H/wLGJpk+FCAEAnP/9TmFQA1RX
zlcfN9umBwF5ukT/ODhstmhVyG70yQc=
=zvRk
-----END PGP SIGNATURE-----

--mtvphatqxlrtxgdf--


--===============0437366441802940414==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0437366441802940414==--

