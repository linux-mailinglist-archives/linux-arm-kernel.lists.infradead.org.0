Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E329C375DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 15:59:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Content-ID:MIME-Version
	:References:In-reply-to:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uUnRIucMMkVnWhQVACnh6bRzkJn0f6lrQ5bklQce7NI=; b=Q8S9eIqsIT0+vs
	Aa02HJQAQF7eVz8hcpsTQFcOsp0154VP89Rnv42TMuaYlB1wb4jAqjbCkBm311/VI5EFW6nrFxwOF
	Uw3HteE5bXMcz37we+ZMYx4k4qP1duHnfsJk5fRJp3s+ypZWN4WPLcF/RfzXS4PXXYN54Au4Sh0Bc
	BvSDy2Q4MPKlzDGHZYGfNKHorTyuDj6FfG5AWgKHg8GPgh+eCyxkOhMwN6ub7+RfwnxTMA9tt2VsY
	D4XIKnradgxXcXTeQxygTOXcYyh/Hyk3Q2tgXHwhIBAW4aRiiql9ZCNBWRFtjTcQa5iS4DEeZN9L5
	ZBXMM0FOCw6fkNNqeEgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYsvh-0002rr-JC; Thu, 06 Jun 2019 13:59:45 +0000
Received: from h1.radempa.de ([176.9.142.194] helo=mail.cosmopool.net)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYsvZ-0002qu-Gr
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 13:59:39 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.cosmopool.net (Postfix) with ESMTP id 0B80890FE45;
 Thu,  6 Jun 2019 15:59:33 +0200 (CEST)
Received: from mail.cosmopool.net ([127.0.0.1])
 by localhost (mail.b.radempa.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t6ScGfx02b-c; Thu,  6 Jun 2019 15:59:32 +0200 (CEST)
Received: from stardust.g4.wien.funkfeuer.at
 (77.117.149.20.wireless.dyn.drei.com [77.117.149.20])
 by mail.cosmopool.net (Postfix) with ESMTPSA id 513A190213F;
 Thu,  6 Jun 2019 15:59:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ccbib.org; s=201902;
 t=1559829572; bh=yRX2r+1exJu+xt6035zadTL1ALZUnRaTg/CjqI7wAzk=;
 h=From:To:cc:Subject:In-reply-to:References:Date:From;
 b=Xfkl4O7wX3W5m8UlC0jDHhFkqAU2BvG0QxydrPbS9pMTSjHknn5s/c1SBTbtruCcq
 coWAmuJr1yuOJaqZowoulZ4CcLBNmsNeCqUBUAZ7PircVahSQsVhWKIyeT5tBQ5436
 fIYEpSYrT8cO2D3AnUl0hF34wAuI64BKWaKomt8Y=
Received: from lambda by stardust.g4.wien.funkfeuer.at with local (Exim 4.89)
 (envelope-from <harald@ccbib.org>)
 id 1hYsvP-0000PY-Pz; Thu, 06 Jun 2019 15:59:27 +0200
From: Harald Geyer <harald@ccbib.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: a64: enable ANX6345 bridge
 on Teres-I
In-reply-to: <20190605120237.ekmytfxcwbjaqy3x@flea>
References: <20190604122150.29D6468B05@newverein.lst.de>
 <20190604122308.98D4868B20@newverein.lst.de>
 <CA+E=qVckHLqRngsfK=AcvstrD0ymEfRkYyhS_kBtZ3YWdE3L=g@mail.gmail.com>
 <20190605101317.GA9345@lst.de> <20190605120237.ekmytfxcwbjaqy3x@flea>
Comments: In-reply-to Maxime Ripard <maxime.ripard@bootlin.com>
 message dated "Wed, 05 Jun 2019 14:02:37 +0200."
MIME-Version: 1.0
Content-ID: <1582.1559829566.1@stardust.g4.wien.funkfeuer.at>
Date: Thu, 06 Jun 2019 15:59:27 +0200
Message-Id: <E1hYsvP-0000PY-Pz@stardust.g4.wien.funkfeuer.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_065938_015021_1657037F 
X-CRM114-Status: GOOD (  21.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 devicetree <devicetree@vger.kernel.org>, Sean Paul <seanpaul@chromium.org>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Torsten Duwe <duwe@lst.de>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thierry Reding <thierry.reding@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Guys, this discussion is getting heated for no reason. Let's put
personal frustrations aside and discuss the issue on its merits:

Maxime Ripard writes:
> On Wed, Jun 05, 2019 at 12:13:17PM +0200, Torsten Duwe wrote:
> > On Tue, Jun 04, 2019 at 08:08:40AM -0700, Vasily Khoruzhick wrote:
> > > On Tue, Jun 4, 2019 at 5:23 AM Torsten Duwe <duwe@lst.de> wrote:
> > > >
> > > > Teres-I has an anx6345 bridge connected to the RGB666 LCD output, and
> > > > the I2C controlling signals are connected to I2C0 bus. eDP output goes
> > > > to an Innolux N116BGE panel.
> > > >
> > > > Enable it in the device tree.
> > > >
> > > > Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> > > > Signed-off-by: Torsten Duwe <duwe@suse.de>
> > > > ---
> > > >  .../boot/dts/allwinner/sun50i-a64-teres-i.dts      | 65 ++++++++++++++++++++--
> > > >  1 file changed, 61 insertions(+), 4 deletions(-)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> > > > index 0ec46b969a75..a0ad438b037f 100644
> > > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> > > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> > > > @@ -65,6 +65,21 @@
> > > >                 };
> > > >         };
> > > >
> > > > +       panel: panel {
> > > > +               compatible ="innolux,n116bge", "simple-panel";
> > >
> > > It's still "simple-panel". I believe I already mentioned that Rob
> > > asked it to be edp-connector.

Actually just dropping the "simple-panel" compatible would be a poor
choice. Even if "edp-connector" is specified as binding and implemented in a
driver, there are older kernel versions and other operating systems to
keep in mind. If the HW works with "simple-panel" driver satisfactorily,
we should definitely keep the compatible as a fall back for cases where
the edp-connector driver is unavailable.

If think valid compatible properties would be:
compatible = "innolux,n116bge", "simple-panel";
compatible = "edp-connector", "simple-panel";
compatible = "innolux,n116bge", "edp-connector", "simple-panel";
compatible = "edp-connector", "innolux,n116bge", "simple-panel";

I can't make up my mind which one I prefere. However neither of these
variants requires actually implmenting an edp-connector driver. And each
of these variants is clearly preferable to shipping DTs without
description of the panel at all and complies with bindings after adding
a stub for "edp-connector".

> And the DT is considered an ABI, so yeah, we will witheld everything
> that doesn't fit what we would like.

I fail to see how the patch in discussion adds new ABI. While I understand
the need to pester contributors for more work, outright blocking DTs, that
properly describe the HW and comply with existing bindings, seems a
bit unreasonable. (Assuming there are no other issues of course.)

Also note that the innolux,n116bge binding suggestes using simple-panel
as fallback.

HTH,
Harald

-- 
If you want to support my work:
see http://friends.ccbib.org/harald/supporting/
or donate via CLAM to xASPBtezLNqj4cUe8MT5nZjthRSEjrRQXN
or via peercoin to P98LRdhit3gZbHDBe7ta5jtXrMJUms4p7w

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
