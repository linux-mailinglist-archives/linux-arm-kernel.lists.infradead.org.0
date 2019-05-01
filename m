Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3463B108BB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 16:04:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oq+fE0shU1F7r87jkLYmmv0YBC+sKs9GKAM8QJ5R9lw=; b=agpbw9LQs5SmIr
	QKEyiPcw9v3t/eZerODE90mabpdUBOK6bQzmpPhYyf8XRTeWdZmUoIRKX/OZmY4fRD/PxMB3rGmCV
	prakb9D0SETWKszZpwx6UohaxTYsWmYZ01a/jZR0nBYeZDYknO0wU4gryDVLaxycp+tlXkAPFyC3M
	BpqExd801QUCmlne3ro5eAVEPTxSVthHAxxL6LLh1TRfpI2ysslReTmbuTDDXEi/t/ReQ9En6DmtL
	7ieXtA2EY5/igm4sARZ3JUp/LBduGucR2BgJJrQGCZgCtL1FpYpiLeOzyNN2Oz9hoWSo8QCPxvkxF
	Oj/tGXYzYZ69gmSXTozg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLpqd-0003D6-DW; Wed, 01 May 2019 14:04:35 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLpqX-0003C3-GU
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 14:04:30 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id B144D805C;
 Wed,  1 May 2019 14:04:42 +0000 (UTC)
Date: Wed, 1 May 2019 07:04:22 -0700
From: Tony Lindgren <tony@atomide.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH v8 00/14] Add support for TISCI Interrupt controller
 drivers
Message-ID: <20190501140422.GJ8007@atomide.com>
References: <20190430101230.21794-1-lokeshvutla@ti.com>
 <30f5c877-a4dc-8ad9-0ad0-c172a60dc853@arm.com>
 <7edd8582-ce51-60a0-24e1-c45fe6725705@ti.com>
 <86pnp29tlv.wl-marc.zyngier@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <86pnp29tlv.wl-marc.zyngier@arm.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_070429_584382_DC0A010E 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Nishanth Menon <nm@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, jason@lakedaemon.net,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, linus.walleij@linaro.org,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Santosh Shilimkar <ssantosh@kernel.org>, tglx@linutronix.de,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Marc Zyngier <marc.zyngier@arm.com> [190501 13:45]:
> On Wed, 01 May 2019 14:23:41 +0100,
> Lokesh Vutla <lokeshvutla@ti.com> wrote:
> > 
> > Hi Marc,
> 
> [...]
> 
> > > Lokesh,
> > > 
> > > Thanks for having respun this quickly.
> > > 
> > > I've applied the first 13 patches to irqchip-next (after tidying up some
> > > of the commit messages). I've left the last patch for armsoc to take,
> > > unless you guys insist on me taking it.
> > 
> > I prefer if everything goes as a single bundle, unless arm-soc maintainers
> > object. Want to start posting DT nodes.
> 
> Santosh, Tony: what do you prefer? I don't care either way, but I need
> a word from either of you.

Best to keep the series together IMO, and it's a tiny patch unlikely
to conflict with anything. Here's an ack from me for patch 14 from me:

Acked-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
