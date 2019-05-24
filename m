Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 857012969A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 13:07:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=daEnhSiDsH9xti3fvpl5grYAn06O5kkQdFyKVLTmrSc=; b=motw5B4FsP13oP
	KRnjC/JUJ50N0RHP+fCNsjik0mN+daCG2YhRvGE2FMKzHufwhRYjOF5JC+IYj+b4l9mKhI2eRvh+J
	56WtbV+srZRzAWdRliGkFVT1Ru7+BEa338GFAH4nDNmoTbX8GqlvkcceT8DcRVoZdPWEyMLyZe7aV
	yQEHXGVp0PTo7RK+DsWV9zWra4oyfg2clr8cn/XI/VEbN5HS0HNRfOHudATMFOXznWjdAojnZDdwM
	b1gLsdfBKdc8BC0XyA4YNYNq8WCkxtgaISvTwTmdzf5W4+KTumqv+FVyuOGrry2QBW7gsWFtPtNlb
	FgfB2H2Vqt9f0fRFrG9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU82b-0003XI-R2; Fri, 24 May 2019 11:07:13 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU82U-0003WT-RD
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 11:07:08 +0000
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 4D254200012;
 Fri, 24 May 2019 11:06:50 +0000 (UTC)
Date: Fri, 24 May 2019 13:06:49 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 2/8] dt-bindings: net: Add a YAML schemas for the generic
 PHY options
Message-ID: <20190524110649.56o7g7xkgdb5loyk@flea>
References: <74d98cc3c744d53710c841381efd41cf5f15e656.1558605170.git-series.maxime.ripard@bootlin.com>
 <aa5ec90854429c2d9e2c565604243e1b10cfd94b.1558605170.git-series.maxime.ripard@bootlin.com>
 <CAL_JsqJvgUAmON5Vew-mnwkFjNuRkx_f7quiy_7Rv_55JpzOOA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqJvgUAmON5Vew-mnwkFjNuRkx_f7quiy_7Rv_55JpzOOA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_040707_030124_66FFBBAB 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Antoine =?utf-8?Q?T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Thu, May 23, 2019 at 09:44:51AM -0500, Rob Herring wrote:
> > +  reg:
> > +    maxItems: 1
> > +    minimum: 0
> > +    maximum: 31
>
> min/max need to be under 'items'. I don't think these would ever be
> valid if the type is an array.
>
> I've modified the meta-schema to catch this.

Have you pushed it already?

Using:
  reg:
    maxItems: 1
    items:
      minimum: 0
      maximum: 31

is creating this error when running dtbs_check

ethernet-phy.yaml: properties:reg: {'maxItems': 1, 'items': {'minimum': 0, 'maximum': 31}, 'description': 'The ID number for the PHY.'} is not valid under any of the given schemas

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
