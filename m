Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E273B1575
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 22:34:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gqzYawu+PaPmKg0ZELG5FZUE7aJZ1PeeHQDJn2tj7f0=; b=XeItA2iB9FKedT
	v2vyAOBlHuzHmbAn3W92qQhLKDiByXQnKzPOALQ1vNf3R9Gz3bIjqvKOZzHW7dYolGeUNGMAybHMD
	dfm5PnhAzPVwLAFRq53j3REMsVb5m0741fog9NwM7V3uzSv65aun22EeSb1cXk+hnv90JbcfZlIw0
	SMLwH89EHkP+52edqoIoCAkoeqCBVWfW+MnJ0UDEKznizQPCGz7yg8qZDO1NS018ZUXNOWPO1ZAsD
	oOFCi/IhY9Xn+v1A/5ezX9AeWKNvqAYA4K4iCO/1hHcpEh7233YHrlHzXA7MBDy+Ay423ZAgHR47f
	61RS8fCjI0qJPdn6mDZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8VnM-0001Tg-3a; Thu, 12 Sep 2019 20:34:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Vm4-0001ST-2W
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 20:33:06 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1B7142081B;
 Thu, 12 Sep 2019 20:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568320383;
 bh=CB2XpztpavJGy3dm3AoMm+FcqVmWK1TrOXf41F5cmwg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=caMq8O9OoJzYXInTCWtgcByNPiOWIaps2AzQGUoA3ebFQRsv7lBeXZ/lwMjbntD1H
 ReskcFFUIqcNtmZmgQ3lVrJJJwrn62/H+099nba/6y6v27Gd2ZShStQ0aaQu/8Rb4B
 kGjSRuutTV4HzCssIjjdbgN+Pdpk7Qzg4iQ57Ko8=
Date: Thu, 12 Sep 2019 22:33:01 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH 3/9] dt-bindings: crypto: Add DT bindings documentation
 for sun8i-ce Crypto Engine
Message-ID: <20190912203301.is4ubixhk64dl5t7@localhost.localdomain>
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
 <20190906184551.17858-4-clabbe.montjoie@gmail.com>
 <20190907040116.lib532o2eqt4qnvv@flea> <20190911183158.GA8264@Red>
 <20190912093737.s6iu63sdncij2qib@localhost.localdomain>
 <CAGb2v678WGQm5PNy8GhOTpz+fYeLP3k0dnR0F00yyZpSRcA4yA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v678WGQm5PNy8GhOTpz+fYeLP3k0dnR0F00yyZpSRcA4yA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_133304_418617_5E362952 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 devicetree <devicetree@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, Russell King <linux@armlinux.org.uk>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-crypto@vger.kernel.org,
 David Miller <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 09:26:27PM +0100, Chen-Yu Tsai wrote:
> > >
> > >   clock-names:
> > >     items:
> > >       - const: ahb
> > >       - const: mod
> > >       - const: mbus
> >
> > And here as well
> >
> > Something I missed earlier though was that we've tried to unify as
> > much as possible the ahb / apb / axi clocks around the bus name, it
> > would be great if you could do it.
> 
> I think we also want to standardize "mbus" as "dram"?

Do we? The only user so far seems to be sun9i-de, while mbus has more
users. I don't really care though, both mbus and dram are pretty
generic to me. What makes you prefer dram over mbus?

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
