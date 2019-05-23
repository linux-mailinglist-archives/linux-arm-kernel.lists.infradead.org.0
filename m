Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D23E327D16
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 14:46:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UArZvSY/eUa0okpdMJWHcxqpe2QJoiq1knHKknwQu7s=; b=dAIWUDqJ/xI4yclZ0k8b5BmJg
	v+fzEgaRaiJ4RSymeHgdurhaZtQormbu/6oX89ifXvkRZ7e7RpKLrKzleQkSAa2xQvN7KKXcwgyq1
	sXKGn+1PeCy3ykm9hYffYIIIWqjlqiw/Dg0xyFEH6YALX6nH8crdoPme/pNexUZFO467WqQ7yLsmE
	SoDowo4Oc4Bw17UTMmSJBdzKh226wgpLdYRBeTv62zW1XLuqu4HurYWOOj3ixFA46oJEgPLQRbYFC
	235qN5b+D0KLZt+uDwpmjklJKDyNoPWzvwbRsrNJzWmerKNDEEI6OqG8c+w4jfzw5qGI4ZVNgxS90
	gYbehznKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTn6s-0000ex-L8; Thu, 23 May 2019 12:46:14 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTn6l-0000ea-G9
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 12:46:09 +0000
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id CD9B2100022;
 Thu, 23 May 2019 12:45:46 +0000 (UTC)
Date: Thu, 23 May 2019 14:45:46 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH 6/8] dt-bindings: net: stmmac: Convert the binding to a
 schemas
Message-ID: <20190523124546.6agw7fu5qteag3ol@flea>
References: <74d98cc3c744d53710c841381efd41cf5f15e656.1558605170.git-series.maxime.ripard@bootlin.com>
 <ba1a5d8ad34a8c9ab99f504c04fbe65bde42081b.1558605170.git-series.maxime.ripard@bootlin.com>
 <78EB27739596EE489E55E81C33FEC33A0B92B864@DE02WEMBXB.internal.synopsys.com>
 <20190523110715.ckyzpec3quxr26cp@flea>
 <78EB27739596EE489E55E81C33FEC33A0B92BA5B@DE02WEMBXB.internal.synopsys.com>
MIME-Version: 1.0
In-Reply-To: <78EB27739596EE489E55E81C33FEC33A0B92BA5B@DE02WEMBXB.internal.synopsys.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_054607_689073_DCD13137 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Antoine =?utf-8?Q?T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6479707374587605372=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6479707374587605372==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tf5grxv2ddxyomh6"
Content-Disposition: inline


--tf5grxv2ddxyomh6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 23, 2019 at 11:25:09AM +0000, Jose Abreu wrote:
> From: Maxime Ripard <maxime.ripard@bootlin.com>
> Date: Thu, May 23, 2019 at 12:07:15
>
> > You can then run make dtbs_check, and those YAML files will be used to
> > validate that any devicetree using those properties are doing it
> > properly. That implies having the right node names, properties, types,
> > ranges of values when relevant, and so on.
>
> Thanks but how can one that's developing know which bindings it shall use?

I'm not quite sure what you mean here. Are you talking about which
file to use, or which property are required, or something else?

> Is this not parsed/prettified and displayed in some kind of webpage ?

Not at the moment, but it's one of the things that are made much
easier by using a formal data format.

> Just that now that the TXT is gone its kind of "strange" to look at YAML
> instead of plain text and develop/use the bindings.

Well, it's kind of the point though. Free-form text was impossible to
parse in a generic way, and you couldn't build any generic tools upon
it. YAML provides that.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--tf5grxv2ddxyomh6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOaV+gAKCRDj7w1vZxhR
xbIiAQDiQ/YoNNi0GkGaqteHf9TnQ2HqpEptDspMMmoMtI/iUQD9GIkc5JePBFh2
kcr5Fwff9irX+EB/TCiw12tiyLODug8=
=9C+d
-----END PGP SIGNATURE-----

--tf5grxv2ddxyomh6--


--===============6479707374587605372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6479707374587605372==--

