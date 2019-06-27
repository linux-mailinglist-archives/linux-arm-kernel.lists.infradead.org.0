Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2F15835C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 15:22:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gm/zGAd53OUYGZhovzgi46IMpMFgSR3MvBlz9gm8ifU=; b=etbTfcIeE2YGRT
	tmbdITjt0D3nn2RgS5lIz8RJDr3THtQB+Vwtu5kPadz2Fr+4Td34UElYLPOdHROH3umB1mfEGYb5z
	v+vjTMu+vbpVdINf7zLBRaC3gAUnyTLyUbv6LqJBu8xfYHxCDNxbLBYwkXgXVmN3Z80xA+gaA67tq
	712GDUT0Fnm5RcDz6iAKN/C8iAputvuD2pV4WYTIgxcmBKnimL9PrQwSssQYKAfD5s7EKEdXYsks6
	8WupgQqpD7SWpeIRKB2lTsvTlvW14HvP6cH5lHYTM8dXum9NogyC4U6QisKs34NlDO+Z4YgtppEkE
	NjG6xsPU82AsM8ZLbU7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgUMM-0005nf-Ag; Thu, 27 Jun 2019 13:22:42 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgUM7-0005n3-7s
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 13:22:29 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id BD3BD1C0011;
 Thu, 27 Jun 2019 13:22:00 +0000 (UTC)
Date: Thu, 27 Jun 2019 15:22:00 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: I2C filtering (was Re: [PATCH v2 6/9] dt-bindings: i2c: at91:
 add binding for enable-ana-filt)
Message-ID: <20190627132200.GK3692@piout.net>
References: <1561449642-26956-1-git-send-email-eugen.hristev@microchip.com>
 <1561449642-26956-7-git-send-email-eugen.hristev@microchip.com>
 <4e81d3c9-25f3-ca6e-f2d5-17fad5905bb8@axentia.se>
 <84628b5e-bea7-7d91-f790-f3a2650040fa@microchip.com>
 <20190625093156.GF5690@piout.net> <20190625095533.GC1688@kunai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625095533.GC1688@kunai>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_062227_439493_DD80ED16 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 Eugen.Hristev@microchip.com, peda@axentia.se,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25/06/2019 11:55:33+0200, Wolfram Sang wrote:
> On Tue, Jun 25, 2019 at 11:31:56AM +0200, Alexandre Belloni wrote:
> > On 25/06/2019 09:14:13+0000, Eugen.Hristev@microchip.com wrote:
> > > > Perhaps
> > > > 
> > > > 	microchip,digital-filter;
> > > > 	microchip,analog-filter;
> > > > 
> > > > ?
> > > 
> > > Hi Peter,
> > > 
> > > Thanks for reviewing. The name of the property does not matter much to 
> > > me, and we have properties prefixed with vendor, and some are not.
> > > 
> > > @Alexandre Belloni: which name you think it's best ?
> > > 
> > 
> > I'm not sure, it depends on whether Wolfram thinks it is generic enough
> > to be used without a vendor prefix.
> 
> I could imagine that we design a generic property for filters. The ones
> above make me wonder, though, because they are bool. I'd think you can
> configure the filters in some way, too?
> 

Apart from enabling the filter there is indeed one configuration
setting, the maximum pulse width of spikes to be suppressed by the input
filter.

> I never used such filtering, so I am unaware of the parameters needed /
> suitable. Quick grepping through I2C master drivers reveals that
> i2c-stm32f7.c also handles filters, but only with default values. Maybe
> DT configuration would be benefitial to that driver, too?
> 
> Adding some people to CC.
> 



-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
