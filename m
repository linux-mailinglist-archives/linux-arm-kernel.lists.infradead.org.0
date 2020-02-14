Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB1D15D76D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 13:31:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y3IhdwjO/o+bkVgJGWtOiAmTIMyzht7efSOmBf+U5pk=; b=UBtEQujjs4z+YKTa6oW/QfLgA
	uudpMcyXYwBsae6EC+DJuOvJzraLSfJ79QjzpSPuV+9+/ScUdGYejdj9g/TVkAfcL++bzjgNS+TPl
	tqZubrk+KAjYNf5jLTCx/hMMARc7ReuzuZG0ez+MrUdpfkEBYgcCWNlUmLTJp24Cxejp3wsTdqY8I
	kyEjj0TLN36FYmGGPA7MAm6lvCE3MLi3xRS+MmQXWR8bkjd7K37an/ySwTdcGwFWR/Zy4WmaPCtc4
	xEsWhcCgOnReLV+9La9uL6Pl3VjacQomrp6FW+DVL/pyu0RcTtVPRK0M3gHwRJC+BRR6wWVYb/0kj
	6QCk7U6ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2a8F-00071A-Gj; Fri, 14 Feb 2020 12:31:43 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2a88-00070t-6L
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 12:31:37 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 53DA54A6E;
 Fri, 14 Feb 2020 07:31:35 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 14 Feb 2020 07:31:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=LUuxcNfSOwWscQIzR0So/9bxPwg
 KSUZdiJhu4bV4RMY=; b=XtRM0egZ9LFEDkRTeXdhuM9gUjP39GO4ceL2zKVwwxp
 MMmUN8x5JFgL6/19NIiBbwRu/P67nPc5qb1G4g9E0qWrm9+M5C5AtCMeqYzPWLTg
 pMUMq99QrKojNTQJ5AFtJoXLPlfD4xSzEzXfS16fjUixXsdPWYkWGxAqvrY1H1j7
 4bQRbnaUrnPlRcZcmI6nUR23mTXtir72naeeVPC73uckanpbbwwzEARwV2b3vTQX
 Dbq2RuItrh4czV83wfvX5KqNXL4g5HPqbI7BDUwxH3ZbNAwMSYIzFqwmTWheBkXA
 GAxBDjsFCh8WKdm1hEeOoYEkel+Vp2ZYGBo2qg2+bGw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=LUuxcN
 fSOwWscQIzR0So/9bxPwgKSUZdiJhu4bV4RMY=; b=XQZnzuG+cKkjMP8GtT93yn
 2USAOWihi/JiMXsSVVo5Xle6gBbPoyWw1qOlJh5BekWkq0zBerhOVB/59WTZSiM5
 1X7+T553CpRxxUmX/55GjZCl8Br3RQd19u3LTdHbETHlbRXxVeJDsrk+pOGd+GyB
 GI23zMTn8ICYXiFf9A5Btn5VzbpbiFtBNTuGBYS64ZZex9sVjbPc82+6mFZeWPQF
 rTxeefUSgBcDvyq3F7OCaiTOMsHMfC5/N8Gle6Y+d3Ec2jENbZEPK6CQi5Wirnbb
 Q/XzhVjll6jBlPvAlasIn6XYQE7GLxo2zMLzjIRVJ0Rjs2Q680Rn8DMRClzWhSSw
 ==
X-ME-Sender: <xms:JJNGXtvxKMhvkoe2jIj6PoUIdWliTZewrnHDKfkLDlOHhUIez1MqfQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjedtgdegvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:JJNGXk-nAqy58gO4J9jhlotpUkkgw-5gF3qoJOVA8jp6WMwRq7dNsQ>
 <xmx:JJNGXnG7vFKRr2zyhSUVwhQneV0N39HzAwStXJTSZ6WJKeax34xmpQ>
 <xmx:JJNGXqyQcNoZafwr-8OoOXMw3LwM6OUuXeORQpcWFZplz8Ic-1TUHw>
 <xmx:J5NGXh2kB6Otp6KfMhVdkrTLvPEyU7P1Z_WnG2mx4n3Jq0ulNi38Aw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id DB06C3280067;
 Fri, 14 Feb 2020 07:31:31 -0500 (EST)
Date: Fri, 14 Feb 2020 13:31:30 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] drm/sun4i: tcon: Support LVDS on the A33
Message-ID: <20200214123130.7bfn7d2imgpkief5@gilmour.lan>
References: <20200214122427.108675-1-maxime@cerno.tech>
MIME-Version: 1.0
In-Reply-To: <20200214122427.108675-1-maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_043136_372898_0A716543 
X-CRM114-Status: UNSURE (   7.72  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0121438347097049494=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0121438347097049494==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cedtemy3eui6wleb"
Content-Disposition: inline


--cedtemy3eui6wleb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Feb 14, 2020 at 01:24:27PM +0100, Maxime Ripard wrote:
> The A33 TCON supports LVDS, so we can toggle the support switch.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Sorry, that one was a spurious send-email run ...

Maxime

--cedtemy3eui6wleb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkaTIgAKCRDj7w1vZxhR
xTM8AQDH1yyQdstxuKVzuZ87kQMF0t43L3SxHNcDVWVfUvSrpAD+O73ZNqlaoy4F
iNxK0jcWKBWBernguIgzQyobw/ovbgA=
=7Hpy
-----END PGP SIGNATURE-----

--cedtemy3eui6wleb--


--===============0121438347097049494==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0121438347097049494==--

