Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EF11EF41B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 11:28:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=up6YMqCm6hCmNI5cqDL31tozPamNgHASwmG5vzbQWcg=; b=bLRqT77Yj99Hst
	GF+PrInDrsxRwo1i6KMGAcQybpezAWl2fmrfcclUqWgavg2G/jlVCLvze3CJV59BbA+zegImj7zE/
	0L9wlVD4OHKQdoSHIZ7HF5Y8oYgQ0mCycc+phEKRaSe3hPUPumRWu3P3Q5/l9gHc6Gb8jOnVMkBl7
	8IApwxovMmXrriQ9pZXZ/59G+9K8zDbScncSclGXMR/5fCv9dJwvdIRHpr9eUtSCqAyaDStVa1RR7
	uG4BKq7K6pMLOH+znVe9fNurG9QBPOEVsmaGXIpmEm7UodmF5dPIR+cXFR6ZPDjybdxlceiwwN5XM
	kL+bwBjBLb2n/bKqiFxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh8eQ-000634-Lq; Fri, 05 Jun 2020 09:28:34 +0000
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh8e5-0005sG-AZ; Fri, 05 Jun 2020 09:28:15 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 16D90993;
 Fri,  5 Jun 2020 05:28:07 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 05 Jun 2020 05:28:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-transfer-encoding:in-reply-to; s=fm3; bh=u
 ayn6jo7ImJYjdlSiOadfkn6my1yynKqoqutqre9njM=; b=gGxoGVWl0d10b8/67
 usbzFBkOj/G/QK+zNYA8TYPV7Z2PlS/qBKPwwFa2/nrW0WV8N+/kNGjuuZbglrj6
 zIoAdkeLWWhiFlp++ritI5YhEU0MQs8LLW5ePiFzmpblMDmFbz1ZEvoYS4HoAJ3N
 GJFHMnj5EFp4DeXfRt6HIxVmbtvjw+hThVbSOlQKvL67WjtAJuiHpl9VCbty1wTr
 MOAAJ+VIFBnb6As+0/1lVGOZAD0BCVp2rE7dTWIfM0HhkBP5iG5anh0zVr1vDVcZ
 9y8o+5XXYbWuTCTOpSl/HkJbd7JYqUKkU4i5VKhJKSZOEnzzjmFNHJlsSL205myh
 1JPWA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; bh=uayn6jo7ImJYjdlSiOadfkn6my1yynKqoqutqre9n
 jM=; b=U/9yUmptNwqwVmCPjAst3HBHXETZDP+uL5Yev9vm1VxuyBioL7R6diOSo
 hXw6RAy3nC8s22mUIHdM3FRKJWAPLNHeXpkZtLBSYO8N/2UtQ3dccKkTCya4YD8U
 cx0MJELjtLOXKNMQMTm5JkN5xL0AZ4IJN8dmpWOE4sPNuv4aNGjIEnSoAcjqMwSO
 xOZTgYxhOcKKrRI21+ptmF84vCSNnHCC4Ia4ZJIZ/LAWSDiNVszJOBm5SnWTWoNK
 Ccyt5wDA6l/ZkjcrFacbXEScIkaaDEt/UEXxEOd2eZTY2RWQQoi8iBEZcaXO/+Wh
 pc6b6+UHJAw6kdFQ8+gxEjRfkOycA==
X-ME-Sender: <xms:JRDaXuAKr8Ogo62ytZyauPnyo69Vi6jiywu5itziUN7DylK7Fe3iSA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudegfedgudefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtugfgjgesthhqredttddtvdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpefgjeettdejgffgffdvteeutdehtdehgeehueetkeefgefhtdetjeekledu
 gedvudenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:JRDaXoj9wiOQt19b5WF0PoAAJsnbvZF3pYYJaNYdTm-s0tlV-n-SdQ>
 <xmx:JRDaXhl7jgqAoNciri9gqOlxTeU7z2xy-u2O-A5HJc0ocvRLHhExjw>
 <xmx:JRDaXsxLMu_khGHBGXF7Ko-GqovTsduIsjrc4vPb4OWwG8Twcq0t2w>
 <xmx:JhDaXhNPxAZUb-c7SZMCVJA_hjJP7qkcdLVl3F8rJugAU1-hFvDTmA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 351523280060;
 Fri,  5 Jun 2020 05:28:05 -0400 (EDT)
Date: Fri, 5 Jun 2020 11:28:02 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v3 12/25] clk: bcm: rpi: Use CCF boundaries instead of
 rolling our own
Message-ID: <20200605092802.xkoazjnin7xyqkoy@gilmour.lan>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
 <eb1b2838f1c3c006c24bcb9816f75e1351c63b05.1590594293.git-series.maxime@cerno.tech>
 <e096d89ab881d69b2477b209838a308f9de114b1.camel@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e096d89ab881d69b2477b209838a308f9de114b1.camel@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_022813_471930_DEF02AB0 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [64.147.123.19 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

On Thu, Jun 04, 2020 at 08:02:22PM +0200, Nicolas Saenz Julienne wrote:
> On Wed, 2020-05-27 at 17:45 +0200, Maxime Ripard wrote:
> > The raspberrypi firmware clock driver has a min_rate / max_rate clamping by
> > storing the info it needs in a private structure.
> > 
> > However, the CCF already provides such a facility, so we can switch to it
> > to remove the boilerplate.
> > 
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > ---
> >  drivers/clk/bcm/clk-raspberrypi.c | 18 ++++++++----------
> >  1 file changed, 8 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-
> > raspberrypi.c
> > index a20492fade6a..e135ad28d38d 100644
> > --- a/drivers/clk/bcm/clk-raspberrypi.c
> > +++ b/drivers/clk/bcm/clk-raspberrypi.c
> > @@ -36,9 +36,6 @@ struct raspberrypi_clk {
> >  	struct rpi_firmware *firmware;
> >  	struct platform_device *cpufreq;
> >  
> > -	unsigned long min_rate;
> > -	unsigned long max_rate;
> > -
> >  	struct clk_hw pllb;
> >  };
> >  
> > @@ -142,13 +139,11 @@ static int raspberrypi_fw_pll_set_rate(struct clk_hw
> > *hw, unsigned long rate,
> >  static int raspberrypi_pll_determine_rate(struct clk_hw *hw,
> >  					  struct clk_rate_request *req)
> >  {
> > -	struct raspberrypi_clk *rpi = container_of(hw, struct raspberrypi_clk,
> > -						   pllb);
> >  	u64 div, final_rate;
> >  	u32 ndiv, fdiv;
> >  
> >  	/* We can't use req->rate directly as it would overflow */
> > -	final_rate = clamp(req->rate, rpi->min_rate, rpi->max_rate);
> > +	final_rate = clamp(req->rate, req->min_rate, req->max_rate);
> >  
> >  	div = (u64)final_rate << A2W_PLL_FRAC_BITS;
> >  	do_div(div, req->best_parent_rate);
> > @@ -215,12 +210,15 @@ static int raspberrypi_register_pllb(struct
> > raspberrypi_clk *rpi)
> >  	dev_info(rpi->dev, "CPU frequency range: min %u, max %u\n",
> >  		 min_rate, max_rate);
> >  
> > -	rpi->min_rate = min_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
> > -	rpi->max_rate = max_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
> > -
> >  	rpi->pllb.init = &init;
> >  
> > -	return devm_clk_hw_register(rpi->dev, &rpi->pllb);
> > +	ret = devm_clk_hw_register(rpi->dev, &rpi->pllb);
> > +	if (!ret)
> > +		clk_hw_set_rate_range(&rpi->pllb,
> > +				      min_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE,
> > +				      max_rate *
> > RPI_FIRMWARE_PLLB_ARM_DIV_RATE);
> 
> Isn't there a potential race here? Albeit unlikely, cpufreq could show
> up and call clk_round_rate() in between the registration and you
> setting the ranges.

IIRC, driver's probe are not called in parallel but in sequence, so we
should be covered here.

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
