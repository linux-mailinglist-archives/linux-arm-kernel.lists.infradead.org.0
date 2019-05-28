Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 122932C184
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 10:41:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z4z7cZKNFNxYpZ0QSbQiSSctwxqdcKzsKAlgphtDymQ=; b=quVBHBQJvPqYTR
	8xkPyyc+2rScWplCmWgPeOuRf+WgkETatuVNGPpFCKtY7qU22qganKqSzsqSYBBxBtMvSaJ2U4DoA
	5ZcBEX7DqVexT6wESmcCfa35vqGURho5WHHgk2WYphlB6KfV+PgV2K2cz2C729Xnu5L8aOVFeqHra
	QbUUn7nZF/t3tQrr1CUbIDTFfh4MVsNss/b4RBoWVRwR3AZvho6Hjh0a1mf3yn9KEXIntFseNEPRL
	8GC4lUWdCjD76xGOuLlfOBLcVkPWLHxDO5FcIYDLRSX1+ZKVfTN+71uqBGaoT0KmuQOco9s0z6XDK
	ftE280CjHIPVlfVdJJsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVXfK-0003oe-Ku; Tue, 28 May 2019 08:41:02 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVXfB-0003nX-Oz
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 08:40:55 +0000
Received: by mail-vk1-xa43.google.com with SMTP id p24so4460916vki.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 01:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L1gEe0Qo8uUw419whddZefVmtI1Y7WOAQp/Jh1nRbBY=;
 b=GgRPe8E23Cer8Df2SQau1m/3AEgbXMJIUf9Mzz4H1Om4WYidE64+qFE0cnf2/qjdNf
 nKzLE1aUuA7hdhVAZe14ZNmicWNfhS1TTTf5mBvhC7KDo66j5v/uS1D8RXfibCDbLeV7
 tXRUgxh9BcrEvkxi36Qg9Wbw9z+Yw8Px/cW0AQ5a1Dk3rPxG64mXomNtsK7uTlKcWNYt
 gaBEsdD968TJcWOLIRFic9Kp+v7xkMoS/oHh/8MkM79TkCssqljli4Hl71gkjer7ydLp
 dLGjYQlGrdurQYJsGv4mLcyblN9hl5NEF0wVIgI9ES+8Gm84uPI6v72NFa4dNnEqocjE
 t9/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L1gEe0Qo8uUw419whddZefVmtI1Y7WOAQp/Jh1nRbBY=;
 b=dqdQeAZTFesLfZOXMa7rxt30TnnR+rQjOdWMqvr9b+J8Cz00/Wxtu6yLh7CAAlQHww
 iPTdeBtKWyL4dMk4+uTZHcf1JcyYb5r1D2KQdFZej5Eqsc6DabCeX57R0rO0z77vSxsf
 DrrdQ3AjeW1Q2Xn7wrTwLueDKEC9dXrzTx1wz/mc5fVE5onxy5nifmz2gH5IR5WK7oSd
 G1ZuZudWeqDGD6m01IJ0YFusTvnqMtWPEglC9YfcVtEUn2TukYvPr/zGtyvFtp4U49Ad
 KSASq3ixNfROw5pXjdVR3CCVIOoKhb6XyJ86fRTO2snT08urorBslY6nK95FAATcMVuU
 qL+Q==
X-Gm-Message-State: APjAAAVFveIl1I4SDi2PY8/ZZdYE7Ib0+j60ebzPbHzXtfBvD/fn1+aV
 /eT/9Prg2OAHv0W3xsXJmZl9d52djhqzbgeWaLU3oA==
X-Google-Smtp-Source: APXvYqx7LhK72f0luzwT93lolmN9FxjSTp2ZQy1E52COyZc/gaMuKcVA6k4ogJNFhunQ6qfXUyFIxCroR3vUPGJZ9Zw=
X-Received: by 2002:a1f:bc4b:: with SMTP id m72mr2400696vkf.36.1559032852442; 
 Tue, 28 May 2019 01:40:52 -0700 (PDT)
MIME-Version: 1.0
References: <c6b8789d71ce1970be77387c066a262dca0a0dec.1558340089.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <c6b8789d71ce1970be77387c066a262dca0a0dec.1558340089.git-series.maxime.ripard@bootlin.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 28 May 2019 10:40:16 +0200
Message-ID: <CAPDyKFrs6f4_Xr=ATay_wDYNPa+-jdZvP4XSB55B-EFMAETN1Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: mmc: Add YAML schemas for the generic
 MMC options
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_014053_814345_428150D6 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

> +patternProperties:
> +  "^.*@[0-9]+$":
> +    properties:
> +      reg:
> +        items:
> +          - minimum: 0
> +            maximum: 7
> +            description:
> +              Must contain the SDIO function number of the function this
> +              subnode describes. A value of 0 denotes the memory SD
> +              function, values from 1 to 7 denote the SDIO functions.
> +
> +      broken-hpi:
> +        $ref: /schemas/types.yaml#/definitions/flag
> +        description:
> +          Use this to indicate that the mmc-card has a broken hpi
> +          implementation, and that hpi should not be used.
> +
> +    required:
> +      - reg
> +

[...]

> -Use of Function subnodes
> -------------------------
> -
> -On embedded systems the cards connected to a host may need additional
> -properties. These can be specified in subnodes to the host controller node.
> -The subnodes are identified by the standard 'reg' property.
> -Which information exactly can be specified depends on the bindings for the
> -SDIO function driver for the subnode, as specified by the compatible string.
> -
> -Required host node properties when using function subnodes:
> -- #address-cells: should be one. The cell is the slot id.
> -- #size-cells: should be zero.
> -
> -Required function subnode properties:
> -- reg: Must contain the SDIO function number of the function this subnode
> -       describes. A value of 0 denotes the memory SD function, values from
> -       1 to 7 denote the SDIO functions.
> -
> -Optional function subnode properties:
> -- compatible: name of SDIO function following generic names recommended practice
> -

I think most of the information of how we use sub(child) nodes
disappeared in this conversion - or at least gets harder to
understand. Could we perhaps keep some of this?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
