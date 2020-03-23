Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE05318F108
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 09:41:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OVoWxMrNXB3G6tyow8qSz6iaaL2fwRKrXT6x5isfl2k=; b=djinFJBn52KFINsYD3nsUAdGD
	K1ecFzwkiva/Z1T8SWcReJZbbp9lUI5HfxG4VyxSXiMG1vIPflw6HYxdOTrOrj/aY2JRjf1ggi2MV
	cWNE4aVihXUbo2GFQhqfmxmT6yxMVS32JGo4KTsFpRk8gjsvdbD7K2/8C8pRTcwNvnQ28QGmJcooe
	IAHO0qWjIBIdNgH7wbIP8AbX8cEFC+FVa3kQKIqkgmo9j5vR8DLEHZH8CuCLzv3Tw1Rm6mQrqa47h
	06GLJrwoVXl2UQyyBmwvVCJsO2mKsO680pjI3tfYQsUamxdhaulGgHvdZkEBjB1hzL1pFOobk6b0S
	TS+PDJqSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGIdz-0002Nu-8R; Mon, 23 Mar 2020 08:41:11 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGIdq-0002MW-1M; Mon, 23 Mar 2020 08:41:03 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id CB3CC5803F3;
 Mon, 23 Mar 2020 04:40:49 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 23 Mar 2020 04:40:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=fHWUKXGid2zJLklqRrQVAqJyxWO
 RDMns591d25tofu0=; b=AytY9mV4LMIsxZFCbDZA1rPAfWPiUSkl1yJA9yHT1Dg
 U5C+aUFEt02ihAk22pTPK6Fh4tafs9ajDlc1CK+G2FC+2mCT6Z4vEsUAyS9IQY3J
 xK+dL0sMH+E/zP3SIVoaLTDOqbOvsWTZc+nR3Pg2ttHj+49aHMiHtOyVwPeA2vX+
 dyR9ftC7te7emHVAM+iNZgQmopr2XzgAlV6GflYm68dwIu7qfB12W3Z01fO15PrV
 tG7KBgpiqU2S4r/6ibfcusZYyv0VIHHsaTQoWGU+yvBpyVTD50KiL2aJ3ozreXPI
 opTOdNar82f6rA2NtlVIDaDN3eSsSnabPH+fF47z97w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=fHWUKX
 Gid2zJLklqRrQVAqJyxWORDMns591d25tofu0=; b=13xQaVbcSm9Niz4m5vzzXm
 dE1Pl+K/uMotiDU9ENoRL6+BFM9fImRCyrqrTerOO1E9oNkQThz7bUtuSYy0SMI4
 ShMTIK5nUHmArDiEgUBDC2eGbML4bvZRbhqSiQadTfxn0rpSFK+m8DnZkA1tRzZa
 JhPgyzpDE5IzuC43V1n0E7VfhWWLQIFk0/NAb/zUHYuC5gke5qLCm46PtXQ+wj4m
 AJiOGMyA6WkPdgrzY8u2SPfZ0zKSWM+sTJBWdtNgVWUYfGgqCEYzJd5C+RP7yhpf
 h7hQgERaHdSDs1Vj3s3lOhTK02++5awDp1/Y73ZHSigcCy5W3Ant/D3D7OpiwExQ
 ==
X-ME-Sender: <xms:DnZ4Xp7cMc482V-wIbnsLigZckbRgSxzztsFBJJdyBVjupHEgSl8NA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudegjedgudduvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrg
 hinhepuggvvhhitggvthhrvggvrdhorhhgnecukfhppeeltddrkeelrdeikedrjeeinecu
 vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimh
 gvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:DnZ4XrzWaf-48WNPSb1IujStB9_zZoiw5q2rWcsoqsM3NT2-1yqRhg>
 <xmx:DnZ4XuBmeSwX5ZaCJALhNaazY51wZCnKu-_vJcEUOkd8zT9LQYUodQ>
 <xmx:DnZ4XkPdQCUogMWWnuQJMdbKWUvk0ya5D6OqVcEw-DStuo0JDp9xOg>
 <xmx:EXZ4Xtj7Mq5CRPJR9l5TUXx2Q7DRAiUWa2VOIHN6_9U4_FhRjw56lA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 83F373280059;
 Mon, 23 Mar 2020 04:40:46 -0400 (EDT)
Date: Mon, 23 Mar 2020 09:40:44 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v2 12/12] dt-bindings: arm: bcm: Convert BCM2835 firmware
 binding to YAML
Message-ID: <20200323084044.dziwbk7pugoy73yh@gilmour.lan>
References: <20200204235552.7466-1-f.fainelli@gmail.com>
 <20200204235552.7466-13-f.fainelli@gmail.com>
 <20200206192333.GA30325@bogus>
 <47e12841-d9bb-3204-76c0-5bc0ef74b094@gmail.com>
MIME-Version: 1.0
In-Reply-To: <47e12841-d9bb-3204-76c0-5bc0ef74b094@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_014102_219563_44A92208 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, "james.tai" <james.tai@realtek.com>,
 Arnd Bergmann <arnd@arndb.de>, Scott Branden <sbranden@broadcom.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sugaya Taichi <sugaya.taichi@socionext.com>,
 Ray Jui <rjui@broadcom.com>, open list <linux-kernel@vger.kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, Vinod Koul <vkoul@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org, Joel Stanley <joel@jms.id.au>
Content-Type: multipart/mixed; boundary="===============1649724567592918186=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1649724567592918186==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wwybpixyqgd42xes"
Content-Disposition: inline


--wwybpixyqgd42xes
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Florian,

On Sun, Mar 22, 2020 at 02:35:17PM -0700, Florian Fainelli wrote:
>
>
> On 2/6/2020 11:23 AM, Rob Herring wrote:
> > On Tue, Feb 04, 2020 at 03:55:52PM -0800, Florian Fainelli wrote:
> >> Convert the Raspberry Pi BCM2835 firmware binding document to YAML.
> >> Verified with dt_binding_check and dtbs_check.
> >>
> >> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> >> ---
> >>  .../arm/bcm/raspberrypi,bcm2835-firmware.txt  | 14 --------
> >>  .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 33 +++++++++++++++++++
> >>  2 files changed, 33 insertions(+), 14 deletions(-)
> >>  delete mode 100644 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt
> >>  create mode 100644 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> >>
> >> diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt
> >> deleted file mode 100644
> >> index 6824b3180ffb..000000000000
> >> --- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt
> >> +++ /dev/null
> >> @@ -1,14 +0,0 @@
> >> -Raspberry Pi VideoCore firmware driver
> >> -
> >> -Required properties:
> >> -
> >> -- compatible:		Should be "raspberrypi,bcm2835-firmware"
> >> -- mboxes:		Phandle to the firmware device's Mailbox.
> >> -			  (See: ../mailbox/mailbox.txt for more information)
> >> -
> >> -Example:
> >> -
> >> -firmware {
> >> -	compatible = "raspberrypi,bcm2835-firmware";
> >> -	mboxes = <&mailbox>;
> >> -};
> >> diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> >> new file mode 100644
> >> index 000000000000..db355d970f2b
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> >> @@ -0,0 +1,33 @@
> >> +# SPDX-License-Identifier: GPL-2.0
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/arm/bcm/raspberrypi,bcm2835-firmware.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: Raspberry Pi VideoCore firmware driver
> >> +
> >> +maintainers:
> >> +  - Eric Anholt <eric@anholt.net>
> >> +  - Stefan Wahren <wahrenst@gmx.net>
> >> +
> >> +properties:
> >> +  compatible:
> >> +    const: raspberrypi,bcm2835-firmware simple-bus
> >                                           ^
> >
> > I need to check for spaces with the meta-schema...
>
> I believe I had tried to use:
>
> const: raspberrypi,bcm2835-firmware
> const: simple-bus
>
> but this did not work, and I had to resort to doing this.

That would be:

compatible:
  items:
    - const: raspberrypi,bcm2835-firmware
    - const: simple-bus

It changes slightly from what the initial binding was saying though,
since it wasn't mentionning simple-bus at all? Is that on purpose?

Maxime

--wwybpixyqgd42xes
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXnh2DAAKCRDj7w1vZxhR
xWPgAQDElnAp04YnCuO+jkIJku1JVizkv38k3ww8QABe4VX0xQD/arimv4bGqD7V
epzB2XkOyomNsyh7Rg3ODKZa7PzqxgM=
=r/Q5
-----END PGP SIGNATURE-----

--wwybpixyqgd42xes--


--===============1649724567592918186==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1649724567592918186==--

