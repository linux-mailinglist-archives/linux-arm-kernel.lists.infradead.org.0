Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 909491DEB6B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 17:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kEyhr5UGMdVsYaQfmPKh7yNe7o+x7JhUB5SRuFcArfs=; b=ugrzJS92i9Os/h2ME3oluIM4L
	SgADJAnYKSNpFo+ycKZJMfCBUfj2TXQTD9yLeql0WwoTznhi/IFW1XYC1JAETHBHKB1dTNXgFvOF5
	rWvTOAesWD9bt0wL4zbygBsc6T5y0aqPYz72u0mu1zhuTLtdKAtz8dNbL4KtzLa/s33JtfUoCVk1h
	7RKfvBpeXsv/NF33URxytdgInQnRP2Jdg3Qh1fIrG5RS0VT6FnMg3pN5eNIb5sVugR1CPVlXoM9lL
	uNvTthNP5WCi9x5dUfC3RQzEnLKgKZfNzlc7/Wy4TiipzVZL0tlYqX8UJs5dJaveFKfLEAwlVbY1l
	tbKxIeDRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc9CV-0007WM-Tv; Fri, 22 May 2020 15:03:07 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc9CL-0007Vi-3u
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 15:02:58 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 9F181C3C;
 Fri, 22 May 2020 11:02:51 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 22 May 2020 11:02:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=dfruM1ppk6Jsi8d5RYiHeO1vXHS
 Akp8G8O5mgdM6/xo=; b=LtbtjjjjDuXYgfePn0K5MsfFT2gid1rkkn4yPxRmpyC
 Ja2/pqSydi/MssZ46qfuonGbmtuApaCGsqGbIyftHN3kTbWODhr1zOVeeHTbVKuo
 DGwksOQ7Vd8F64xM1LZtkh6mw0WkMJ1/gQATPu08AyaBdVRLOYJEY2wOy8UXwTcp
 Atv9OtTj8+4IImBpRdTZ0S3TPPjGAXM7i54aXSZUQSoWS7UHw4XqqN8HSZcVJZMi
 H2pd57jtQgLZDg8M8L6O4ez/dDu1pf573Ecu2OECFumcUXN3jqzwPyo2bpHWCaQb
 P9eY1MrxMk5g9L0krA751di6cfV8KaFbXzmqyBKLeeQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=dfruM1
 ppk6Jsi8d5RYiHeO1vXHSAkp8G8O5mgdM6/xo=; b=IFHnadejj8QV1XyZnNVZXV
 hOVKNxQTmJ4z8u/2XDSeAowasn6hEyvBzn2rxcM1h1jOxkWu0BwGYe8vxtDw77TS
 KNqRlCq4nw4Og/z6E+rjtrTGo2WJSuoGhstQZEX7HQbVjHDRxYkEZwQ3KWOo4mbs
 1jrBdMuykNI4b1XeyIwKK1le9nApTPLf2IRFmxb+sp1o7SeZbitOT66RP5f8H2FH
 dYXJDLBfxyvpCQ5PSjqt2WBoG/Db0G+faNPKvz2ml5ZS5JH2e6nltcjnm0HhKLgV
 +VaKOoTbP7VXVgcXF67mnnqx4ybajd+skiXRlAxrCCZ6W1OWrVsxS29RUQOsCbdA
 ==
X-ME-Sender: <xms:mOnHXrDWPnWZ8dtDqYDzbHVE4OkJn8-4thFQpNh58MyOiCSAJTBfGA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddufedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:mOnHXhil2TKMKBpEsL2QuCL5qVyyg6EdizKBdyQHKazv81-MGWLzzg>
 <xmx:mOnHXmkzfypkKiGRfXpwGpkHXshqHMkyc2kGNpGPz5p2lkNtc_-Xfw>
 <xmx:mOnHXtylCBiROuTeRLZrUQzDOXVcR21rVLyyexzKnQi4h4xC5Jiq6A>
 <xmx:m-nHXlJmlXed546T9v03WLlQoP7V4H7Jrab9Zf1uPOsMCffDZ69IgxwY98M>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 25EC8328006B;
 Fri, 22 May 2020 11:02:48 -0400 (EDT)
Date: Fri, 22 May 2020 17:02:46 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Frank Lee <frank@allwinnertech.com>
Subject: Re: [PATCH 0/4] Allwinner A100 Initial support
Message-ID: <20200522150246.s4sjfaijq3rnz6af@gilmour.lan>
References: <20200522030743.10204-1-frank@allwinnertech.com>
MIME-Version: 1.0
In-Reply-To: <20200522030743.10204-1-frank@allwinnertech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_080257_387923_BBC139C3 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, tiny.windzz@gmail.com, wens@csie.org,
 robh+dt@kernel.org, huangshuosheng@allwinnertech.com, p.zabel@pengutronix.de,
 linus.walleij@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6331004205214814649=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6331004205214814649==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hs5jysifm647f22e"
Content-Disposition: inline


--hs5jysifm647f22e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Fri, May 22, 2020 at 11:07:39AM +0800, Frank Lee wrote:
> This patch set adds initial support for allwinner a100 soc,
> which is a 64-bit tablet chip.

The patches are mostly good for a first iteration, thanks!

Could you provide a bit more context on what that SoC is and if the user manual
is available somewhere? It will be pretty hard to review without it.

Also, is that perf1 board available somewhere?

Thanks!
Maxime

--hs5jysifm647f22e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXsfplgAKCRDj7w1vZxhR
xRIRAQCEPS4vnOuSb5F2eHXxHbKMAf2dx5SdnadegmmYj+WVGgD/XtExiVLDPTh4
qD+Ft5Xf7Pn5KSkCrN9LzsLLvaypVwE=
=3Zpr
-----END PGP SIGNATURE-----

--hs5jysifm647f22e--


--===============6331004205214814649==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6331004205214814649==--

