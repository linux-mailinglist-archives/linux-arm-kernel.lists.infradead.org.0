Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1302CD98
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 19:27:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZW8LuDhPuWAI+VKwdAPxcOD+olp9vDEdMnVDvSopofw=; b=s2tbFr9LP3hlYR
	NU9Nu1iFo9b13RF3oXV58WXTEeMhP0gnVBiyvwlxvWMouEc9CCnnLFwkTthe99GSjWy14G179tGmU
	C2oMTpV0cQ8FNSksNQsb+7FuR7rTdyj7Er1h6qSQyi16sgR4YJDwFO0ZsfryPZA6bDIL5lyH/ULPX
	sHyZ8hdTgko25Ul+uuHp+HxvLJPVXkpXI4Ihb/2zjx1UfImmfQOERyyWER9DX1zZSirq2PMcZhvXq
	Ft9qvy41EPpVp6lkztrLY0HAFAfuoHXN/x33tjve5TJ7O9Oa7SKkIrgZk3R3+M1wfpnX6/JLHpVC+
	+3p23Oc1oBBLEjv4PHeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfsR-0004ow-E6; Tue, 28 May 2019 17:27:07 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfsK-0004oc-NP
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 17:27:02 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id CAF27200009;
 Tue, 28 May 2019 17:26:49 +0000 (UTC)
Date: Tue, 28 May 2019 19:26:49 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: mmc: Add YAML schemas for the
 generic MMC options
Message-ID: <20190528172649.6mkdkscnu5d2rybi@flea>
References: <c6b8789d71ce1970be77387c066a262dca0a0dec.1558340089.git-series.maxime.ripard@bootlin.com>
 <CAPDyKFrs6f4_Xr=ATay_wDYNPa+-jdZvP4XSB55B-EFMAETN1Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFrs6f4_Xr=ATay_wDYNPa+-jdZvP4XSB55B-EFMAETN1Q@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_102700_922414_BA1571A8 
X-CRM114-Status: GOOD (  17.19  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Rob Herring <robh@kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ulf,

On Tue, May 28, 2019 at 10:40:16AM +0200, Ulf Hansson wrote:
> > +patternProperties:
> > +  "^.*@[0-9]+$":
> > +    properties:
> > +      reg:
> > +        items:
> > +          - minimum: 0
> > +            maximum: 7
> > +            description:
> > +              Must contain the SDIO function number of the function this
> > +              subnode describes. A value of 0 denotes the memory SD
> > +              function, values from 1 to 7 denote the SDIO functions.
> > +
> > +      broken-hpi:
> > +        $ref: /schemas/types.yaml#/definitions/flag
> > +        description:
> > +          Use this to indicate that the mmc-card has a broken hpi
> > +          implementation, and that hpi should not be used.
> > +
> > +    required:
> > +      - reg
> > +
>
> [...]
>
> > -Use of Function subnodes
> > -------------------------
> > -
> > -On embedded systems the cards connected to a host may need additional
> > -properties. These can be specified in subnodes to the host controller node.
> > -The subnodes are identified by the standard 'reg' property.
> > -Which information exactly can be specified depends on the bindings for the
> > -SDIO function driver for the subnode, as specified by the compatible string.
> > -
> > -Required host node properties when using function subnodes:
> > -- #address-cells: should be one. The cell is the slot id.
> > -- #size-cells: should be zero.
> > -
> > -Required function subnode properties:
> > -- reg: Must contain the SDIO function number of the function this subnode
> > -       describes. A value of 0 denotes the memory SD function, values from
> > -       1 to 7 denote the SDIO functions.
> > -
> > -Optional function subnode properties:
> > -- compatible: name of SDIO function following generic names recommended practice
> > -
>
> I think most of the information of how we use sub(child) nodes
> disappeared in this conversion - or at least gets harder to
> understand. Could we perhaps keep some of this?

Sure, what would you like to keep in particular?

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
