Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 349C4112C6A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 14:14:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lfdz6Le7YlkOs1l5EN1Z6S2nl3q0X2bK/TsJVZzgESY=; b=kylSqk0MC9VWoU
	Gjg/LDHDM1Lb2TL5PcWXQWqjG0guQbxiVK/+TOpOyZsgYHhCV6c3LTlMKYnGM1ARaiFkKwhxgrW5x
	sjADEC7J8qZv9ZV0XJN4FvUju4U7trHRYlHmqo0Wvd4g71JiNYPv+ZS82tUA/ZDb/o0+5xx6M57XK
	v2dJRL7kWJFvEQeKLNweFfKErqUjkf4KImQdwCTnqB+YLpdgAxooF0rTXb79nvlRWEc1ukfB9nHuG
	nLolEaE6rG5rFU1GII2UwevuyHCyDIbCoZ7EddgZuGD1yxubokEa8fHJ1a5RfI3NRiElNwGklkkhG
	rlE/RBfCo6hvkJkYsE7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icUUE-0000pp-Ch; Wed, 04 Dec 2019 13:14:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icUTz-0000pU-B2
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 13:14:20 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6F622077B;
 Wed,  4 Dec 2019 13:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575465258;
 bh=xl+BgZikPZ3S+p4qh8p4csjvgehmP3T3fZ5LJMF7bxI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tejZatGaBwPto/vJPb2ZmY5UwQ44Wyg8wvdwP3PLS6KqJYMGkA1DbjnZ514Uzpozv
 Sd2JcwuEOPxk8SxpXWjxFoNtKfV7DG7r7q993pUfxBi7A22EYAfBj9N8NOrp3XJrLN
 pCN0QaEpmym124GP2ZlFwB9mFgYKeY95PMCAPTh0=
Date: Wed, 4 Dec 2019 21:14:07 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [PATCH v2 0/2] ARM: dts: ls1021a: define and use external
 interrupt lines
Message-ID: <20191204131404.GN3365@dragon>
References: <20191114110254.32171-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191114110254.32171-1-linux@rasmusvillemoes.dk>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_051419_400506_E807CAC8 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Andrew Lunn <andrew@lunn.ch>, Marc Zyngier <maz@kernel.org>,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, netdev@vger.kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 12:02:51PM +0100, Rasmus Villemoes wrote:
> A device tree binding documentation as well as a driver implementing
> support for the external interrupt lines on the ls1021a has been
> merged into irqchip-next, so will very likely appear in v5.5. See
> 
> 87cd38dfd9e6 dt/bindings: Add bindings for Layerscape external irqs
> 0dcd9f872769 irqchip: Add support for Layerscape external interrupt lines
> 
> present in next-20191114.
> 
> These patches simply add the extirq node to the ls1021a.dtsi and make
> use of it on the LS1021A-TSN board. I hope these can be picked up so
> they also land in v5.5, so we don't have to wait a full extra release
> cycle.

Sorry.  I usually send queued patches around -rc6 timeline to my
arm-soc maintainers.  Patches coming later than that will be scheduled
for the next release unless critical fixes.
> 
> v2: fix interrupt type in 2/2 (s/IRQ_TYPE_EDGE_FALLING/IRQ_TYPE_LEVEL_LOW/).
> 
> Rasmus Villemoes (1):
>   ARM: dts: ls1021a: add node describing external interrupt lines
> 
> Vladimir Oltean (1):
>   ARM: dts: ls1021a-tsn: Use interrupts for the SGMII PHYs

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
