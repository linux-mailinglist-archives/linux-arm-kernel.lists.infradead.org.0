Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF22B84B2B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 14:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6WCG0asxKHCI1x/FR4f7V6ZEfq5AD4ONh3TxTNyZzkI=; b=JlQj+oOA69Fk22
	P6e2AghTaL5t5UR1Q7rJpKPATk3i3iRTuhkPcgtKPkCuxichVVgoLtwhMBxgHvs+zeSf2PQO/08oD
	LN7kVM+1yNa47jS1tuD0aYbqac73R0QlA8VwhfLvsuOzSmygcPh7d23tNDkh45iOdgtg+GAE6Bmyc
	EvDCBF7P7lN2E7lnwL4U+cgSH4ToqyXn+5lZkq+vb4Oa3gOePD6loN3GAsrctjjOzvA8Pum327Cbw
	kpPiCWsrrA1qeYzMKcSWl83c66EBHb03cOAFgQkTrNCI+q46e2uJ4+KHf2GIlbic1qgSH9YjI5lsv
	ouABtgcX/Umu+U3/wm9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvKgs-0004wG-KF; Wed, 07 Aug 2019 12:05:14 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvKgY-0004uZ-1e; Wed, 07 Aug 2019 12:04:56 +0000
Received: from localhost (lpr83-1-88-168-111-231.fbx.proxad.net
 [88.168.111.231]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 7D6CD200002;
 Wed,  7 Aug 2019 12:04:46 +0000 (UTC)
Date: Wed, 7 Aug 2019 14:04:45 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: net: snps, dwmac: update reg minItems
 maxItems
Message-ID: <20190807120445.yje57g6mwcmyztki@flea>
References: <20190806125041.16105-1-narmstrong@baylibre.com>
 <20190806125041.16105-2-narmstrong@baylibre.com>
 <CAL_Jsq+6kCO8x53d1670VjgEjfs5opKY+R3OgsAo0WsXqq512Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+6kCO8x53d1670VjgEjfs5opKY+R3OgsAo0WsXqq512Q@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_050454_762832_4C452487 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-amlogic@lists.infradead.org,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, Aug 06, 2019 at 09:22:12AM -0600, Rob Herring wrote:
> +Maxime
>
> On Tue, Aug 6, 2019 at 6:50 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
> >
> > The Amlogic Meson DWMAC glue bindings needs a second reg cells for the
> > glue registers, thus update the reg minItems/maxItems to allow more
> > than a single reg cell.
> >
> > Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> > ---
> >  Documentation/devicetree/bindings/net/snps,dwmac.yaml | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
>
> I haven't checked, but the derivative schema could be assuming this
> schema enforced reg is 1 item.

Yeah, we do for
Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
(but somehow not allwinner,sun8i-a83t-emac.yaml)

Neil, can you add it to sun7i-a20-gmac?

> I don't think that's a major issue
> though.
>
> Acked-by: Rob Herring <robh@kernel.org>

With that fixed,
Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
