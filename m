Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 908A39667E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 18:34:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0bgsIDN5eAbV0MxEnTlsUCtY3bZLoVwOkyUhw0OJl6I=; b=AtdxPWHbeCtx+Q
	ONWd3Mpv1xcRzn9o/X+V0CO6jemNJ17fB0s/ZRh7QrhKGnP91ZnFcLgoKzk6BrPUh9/Llr0Y+o1IW
	1J2caSJw7qBC+NMj3FTYKXQweMxa1qcSswOVgU7tZ65DHZ/qMwqDIM+LspZsWyB+P6LKFCKizsvk1
	BMUoJ59NgCB3wb5nsROxHaVhxwnT0mPp6OS4YAvMp2tJXdH7Z2PXdpXjiPTQhHYzTFUrIZkO6CiPV
	r0P+iSC1oG0gIYUzHXPpb1RHDoJU1g8lcrkVcu1/5vc3osSUxBQuj5VODOz37IKqNRdSlilsHVrEI
	qqLS++u7vJeoZIjnmx2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i075p-0000K6-F8; Tue, 20 Aug 2019 16:34:45 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i075f-0000Jb-4N
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 16:34:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566318873; bh=3EWCt3iq/B/vjAGtGo7IXhuRxxDcIZbWkjIAdRe7UbM=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=py9/BlWS5YpsBC+Ob1OADS/v6gNrFJh+2R35taWE4l0I08LKPhR6sIH0qcyRfrwtM
 D+LAbXmPoRgIIHlVbnEhG9sWzKZjHzCiCDJvoT0n1SFpumVjMj9nJcsicSkkJYd2KT
 z9lPeAk6WE7kRV2NWjKB/Q62TU5tZqBALJK8kweQ=
Date: Tue, 20 Aug 2019 18:34:33 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 2/6] dt-bindings: net: sun8i-a83t-emac: Add phy-io-supply
 property
Message-ID: <20190820163433.sr4lvjxmmhjtbtcb@core.my.home>
Mail-Followup-To: Rob Herring <robh+dt@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 netdev <netdev@vger.kernel.org>, devicetree@vger.kernel.org,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com
References: <20190820145343.29108-1-megous@megous.com>
 <20190820145343.29108-3-megous@megous.com>
 <CAL_JsqLHeA6A_+ZgmCzC42Y6yJrEq6+D3vKn8ETh2D7LJ+1_-g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqLHeA6A_+ZgmCzC42Y6yJrEq6+D3vKn8ETh2D7LJ+1_-g@mail.gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_093435_346693_46115F87 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>, netdev <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 11:20:22AM -0500, Rob Herring wrote:
> On Tue, Aug 20, 2019 at 9:53 AM <megous@megous.com> wrote:
> >
> > From: Ondrej Jirman <megous@megous.com>
> >
> > Some PHYs require separate power supply for I/O pins in some modes
> > of operation. Add phy-io-supply property, to allow enabling this
> > power supply.
> 
> Perhaps since this is new, such phys should have *-supply in their nodes.

Yes, I just don't understand, since external ethernet phys are so common,
and they require power, how there's no fairly generic mechanism for this
already in the PHY subsystem, or somewhere?

It looks like other ethernet mac drivers also implement supplies on phys
on the EMAC nodes. Just grep phy-supply through dt-bindings/net.

Historical reasons, or am I missing something? It almost seems like I must
be missing something, since putting these properties to phy nodes
seems so obvious.

thank you and regards,
	Ondrej

> >
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > ---
> >  .../devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml    | 4 ++++
> >  1 file changed, 4 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
