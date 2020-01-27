Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCB414A124
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 10:48:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fkZO+k1RuOxnHX73AI+IFC82yxSJyTT+biqHyfHHR+A=; b=PWhPrMAYLsqMnoTFC6wvcbQvj
	8nFi0mGwciq+UPlZdU/gS7FjPYikk6gLgbYh9P0Z0H3AUNSUcILE63oRPjcKAUtO90Rbo65aF50UH
	fRB+FfsVG7WxzD4hB0Y0I9Cqt4Bd/Ai1rsV0YTvTWFDXUco87Z4i0XM51oSnQNvpwOSjOsT9NOStg
	Nk+c/Xhvg3oslRu2pMnzje9SehPKw0twS8zsGauNw+dlV4pE/Y0qnj6teRk6UeDa6EpuhkL4N0oZ+
	2Bc5OfD+5k1dNb2XBTzglN3mX8+57JVKAfK0gRLP1xjn/O3sPwXPOUtyYih2PTdss92aG9UV1fgHr
	2f+usjBhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw106-0001rs-2c; Mon, 27 Jan 2020 09:48:10 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw0zw-0001qr-Nw
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 09:48:02 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id EA8158706;
 Mon, 27 Jan 2020 04:47:57 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 27 Jan 2020 04:47:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=D0agDfMES+f5sz8FtNMBMOC9b25
 uS9ZmYckjSQrkMEY=; b=gFSDjyyDFqLlM+dXDPSJzHdThqw7dWggT6q+A1hAOP4
 3fqxBj0kpgkLKVADimwtkVpZY58c1YQM6eErFprywq/epCUxIDkl57xPLbb8A6w/
 kqCfKSkkDQYZxTn4wdqc+iX3SRCBZ2MC3jfX2U7xwMJgHHqDhK0QSDyxY8Q9v22G
 fcR1tiaZoFYj01G0gYWyTr5iZtonLlWaKueMQc+kOBt1k3s9gwz5PVQlejQtKBfh
 Nyp+3ZzZN162bwtzzbo++WNTKh8S/3/pImX0mbCLzJ3cGAhn3EBUzHgOjCGlVCQv
 16aSuE0eX3wC7vT1TH0xrARXYbD73VLKC6JD/13PezQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=D0agDf
 MES+f5sz8FtNMBMOC9b25uS9ZmYckjSQrkMEY=; b=JzwOaY8RsRV8d4XIhFGIjJ
 5NSPq5SFXo9HTN5iCOzdgz/jSyz/Ig55R/QgZ2cYSvn85exPDBKF6SDzuIOWH/XC
 5n6+Ol4Yrw53jY/mJWxdLFf6Kfoa/Tb28Ml1SCvu7/372X9knABHudBfmeeFmXZX
 P7rQx8O+r04pK6fDgTl2FwNlDinVXGezBAn5zwy/0K8+Xtruf6cVQYsqClX/8oNh
 RmeMCQkHMSDTdNnDz+ONEpkS5PrPXD0u+pzMEvpH9P5jQHf1YcXbKVcTuCIgiIi9
 8PgZXddrb1qMI8+F6iZYTWgXo3oqTe+jRs0IBllXVkg2DhXwpn/nXmBAvMk7NXcQ
 ==
X-ME-Sender: <xms:zLEuXgfgLnl7eE_v9KdkAxCwQoLe0tOmhPu_1z8qaJtcoI5PbfCAaQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrfedvgddtkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:zLEuXoUcdZjzaRZOlDnmLuWWcZU6sLbIr7GqNbs-CDCX6J-mPCzz8Q>
 <xmx:zLEuXofHOipnjLbf6s1xGS7a1c7sSiguq0meZO8keXkeOYSBr-HtFg>
 <xmx:zLEuXtG75JtN5G42Cw4EVRkP5t0nadXYv14t4lYDdw7B4iIYs8WiSA>
 <xmx:zbEuXj_a599ETY-xBwnSAxkuC2vh8ZgvguKfy1WWPZwWQr2gHdLjpg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 96D40306965C;
 Mon, 27 Jan 2020 04:47:56 -0500 (EST)
Date: Mon, 27 Jan 2020 10:47:54 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Frank Lee <tiny.windzz@gmail.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: sun8i-r40: Add thermal sensor and
 thermal zones
Message-ID: <20200127094754.w4wacqgtdodxayln@gilmour.lan>
References: <20200106174639.20862-1-tiny.windzz@gmail.com>
 <20200106174639.20862-2-tiny.windzz@gmail.com>
 <20200107075816.ly6exfd4qtvfxxua@gilmour.lan>
 <662e157a-603f-7423-0491-f26f0fc8d7b6@linaro.org>
 <20200109131343.mjyuj5ed2xwvmwd4@gilmour.lan>
 <af4bca3b-ba95-aa10-5601-753f1c5275b3@linaro.org>
 <CAEExFWtmUtzBje-DKt71W46rs3PTF_Di_x3YQCz+tg8+W1kyAA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEExFWtmUtzBje-DKt71W46rs3PTF_Di_x3YQCz+tg8+W1kyAA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_014800_923385_E892671C 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 devicetree <devicetree@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6687144801152889954=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6687144801152889954==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rh4ccto7d4lp6y3i"
Content-Disposition: inline


--rh4ccto7d4lp6y3i
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sun, Jan 26, 2020 at 09:01:01PM +0800, Frank Lee wrote:
> HI Chen-Yu and Maxime,
>
> Can you pick this up again?

Sorry, I'm not quite sure what happened to this patch... I've picked
it up for 5.7 (for real this time, hopefully).

Maxime

--rh4ccto7d4lp6y3i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXi6xygAKCRDj7w1vZxhR
xUkmAP9DgDEkdFW+faazJdPD1Gp2sjOOP/a14Whm0wZv6t0dYgD/fPBVqAvI3326
HCBqMcPz39j+iwdM+UuywN8uLjHD2Ag=
=E275
-----END PGP SIGNATURE-----

--rh4ccto7d4lp6y3i--


--===============6687144801152889954==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6687144801152889954==--

