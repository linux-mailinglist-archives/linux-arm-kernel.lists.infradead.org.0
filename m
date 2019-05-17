Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFE021F72
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 23:14:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R0mbZOb1vHhHLxezov1ZhegxOAADytA7aNvFQhlLUss=; b=u0gvkyxvswPInE
	I3s1SggtjqGH3eS18Drjjzo447kYOWYWHLLlbquYIanZLIi7yDBH/V5wmEG1SkPEbRlRclwTQn35p
	CmQbB4lhRq5+f/L+kyOWjYkcapjjU7r1McQiUlfKkvJSt5vRs5NpI7gdELw+8W41XBLK1oxESRa7f
	FvK4sAGM18RrMJbWFI6E/p+UAWNktj3T0m6jc8kfGR9rS8I8tEfyNBiSVRJI7mCxhWsImxa+WrdZl
	gIX33d7RyspjwX5VK1h0IB1HY9D2hUETkMdhZ33DmqlpCHh3UUAOGWcC8mcdDba/pRGFzJ+JKTGLS
	fg1qnL885n3pRDBw5KDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRkB0-00079x-1E; Fri, 17 May 2019 21:14:02 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRkAs-00079e-WB
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 21:13:56 +0000
Received: from localhost (lfbn-1-3034-80.w90-66.abo.wanadoo.fr [90.66.53.80])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 069E0240004;
 Fri, 17 May 2019 21:13:36 +0000 (UTC)
Date: Fri, 17 May 2019 23:13:36 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH v3 2/4] clk: at91: sckc: add support to specify registers
 bit offsets
Message-ID: <20190517211336.GB7685@piout.net>
References: <1557487388-32098-1-git-send-email-claudiu.beznea@microchip.com>
 <1557487388-32098-3-git-send-email-claudiu.beznea@microchip.com>
 <20190510213242.GE7622@piout.net>
 <b99b1782-30be-b6b9-0df2-f14125be22ac@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b99b1782-30be-b6b9-0df2-f14125be22ac@microchip.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_141355_185185_2BC68B9C 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/05/2019 08:10:34+0000, Claudiu.Beznea@microchip.com wrote:
> >> @@ -69,10 +80,11 @@ static int clk_slow_osc_prepare(struct clk_hw *hw)
> >>  	void __iomem *sckcr = osc->sckcr;
> >>  	u32 tmp = readl(sckcr);
> >>  
> >> -	if (tmp & (AT91_SCKC_OSC32BYP | AT91_SCKC_OSC32EN))
> >> +	if (tmp & (AT91_SCKC_OSC32BYP(osc->bits) |
> >> +		   AT91_SCKC_OSC32EN(osc->bits)))
> > 
> > I still find that:
> > 
> > 	if (tmp & (osc->bits->cr_osc32byp | osc->bits->cr_osc32en))
> > 
> > would be shorter and easier to read and still fits on one line.
> 
> Agree, but I thought to use the same interface everywhere. Anyway, tell me
> if you want to resend with these changes.
> 
My comment applies to all the AT91_SCKC_.*() macros. I don't feel that
the macros make the code clearer, accessing bits->cr_.* is self
documenting enough (and makes the code shorter).

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
