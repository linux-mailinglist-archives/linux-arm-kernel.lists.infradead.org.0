Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9F7FC6C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 13:59:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4YE1SmTanSjJ1LJ+Svw5sacP3Bm3IMBaX4CJIYStXM=; b=F2qtFYUPwHslsl
	hD3r8dJUzVJwHw8eslEfZTBbFvzbN0OSQuzOorEgtsib/GSqHza/nQ0OxQpCbAN4YtNDAyncDCvcE
	hJ9RuI7OFLcepDVpA4JfO2dw2Scjmqpw5ThYG0iHZLVJRqBt5Qe0CNWRQ8KSRseO+nzjkTBUB42Uk
	zkuiH8EeNPdCo4qtoHZvTGyoz//qRLVTBdgXDl7RJWnnE3FXmfwT2IU0cu0IC6hmVadwp34E+/9H4
	SglpX64UeM9pgqyFk+gWNO6XpzsIBGQKeH/3vZZSLlsu37rTSDDaEENkJiCl4BX8UN7/ZDY+2DNP5
	YYKsEwAWzsDFMTXDb5kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVEis-00051u-7X; Thu, 14 Nov 2019 12:59:42 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVEih-00050x-Uf
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 12:59:33 +0000
Received: by mail-pg1-f194.google.com with SMTP id r18so3725140pgu.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 04:59:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eyKWSvEw/hHVLWaUJkadxXa/8l2eJMrdGGE4pWIJliM=;
 b=ctLxhhbN9oreA1iXHp2pFaiCBVLarOlTN7A1AsJXgwB6NIYDB5DEMV+Gy0BdrDjGGK
 znZc+q2zqFM5AsMrvZi7pIKYIrO4qco8VWW7ZFzNwAZwMJ88GTe18P9y+9n/21vHzdK1
 SvMLAT5VaQmkEqap3KddUseTB/fYq/ywaOEOJuYzGaegZQy9OV6G8S0IAEYcKPT5f9xT
 VqvwwU1PFxnmFUtC8bmE597VNnuybt3+BHKJAPNgFQ9RNsMiZuGYl6dtWfRIURPJyPdW
 Q5uH+OfD3F9TItSdKe0oF2CPkFHCJ39syDUf/4mtyV3RAfZoinwT1de9DM2Kc7+Bo30a
 QzgQ==
X-Gm-Message-State: APjAAAVSBnKoW57A67/6KvuNRBy/SeDfVU6KHAv89qwgiIldU28rbYpU
 snYMfzv62kjdroxPSxY8CygK+roq
X-Google-Smtp-Source: APXvYqypkUITYjtWoFXC49sMS4ND2xYVEJsgTYpdYWvHtnOJ7HXqn3ErH7iuf53NGeK+feek5fBlSA==
X-Received: by 2002:a62:ce41:: with SMTP id y62mr10844056pfg.34.1573736367900; 
 Thu, 14 Nov 2019 04:59:27 -0800 (PST)
Received: from kozik-lap ([118.189.143.39])
 by smtp.googlemail.com with ESMTPSA id k66sm3257235pgk.16.2019.11.14.04.59.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 14 Nov 2019 04:59:27 -0800 (PST)
Date: Thu, 14 Nov 2019 13:59:23 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: power: Convert Generic Power Domain
 bindings to json-schema
Message-ID: <20191114125923.GA3084@kozik-lap>
References: <20191030173216.5993-1-krzk@kernel.org>
 <20191105194257.GA16066@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105194257.GA16066@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_045931_986885_61E80597 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 linux-samsung-soc@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 01:42:58PM -0600, Rob Herring wrote:
> On Wed, 30 Oct 2019 18:32:15 +0100, Krzysztof Kozlowski wrote:
> > Convert Generic Power Domain bindings to DT schema format using
> > json-schema.
> > 
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
> > Acked-by: Stephen Boyd <sboyd@kernel.org>
> > 
> > ---
> > 
> > Changes since v2:
> > 1. Keep description of consumers in power-domain.txt,
> > 2. Rename power_domain.txt to power-domain.txt,
> > 3. Indent example with four spaces (more readable).
> > 
> > Changes since v1:
> > 1. Select all nodes for consumers,
> > 2. Remove from consumers duplicated properties with dt-schema,
> > 3. Fix power domain pattern,
> > 4. Remove unneeded types.
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > ---
> >  .../devicetree/bindings/arm/arm,scmi.txt      |   2 +-
> >  .../devicetree/bindings/arm/arm,scpi.txt      |   2 +-
> >  .../bindings/arm/freescale/fsl,scu.txt        |   2 +-
> >  .../bindings/clock/renesas,cpg-mssr.txt       |   2 +-
> >  .../bindings/clock/ti/davinci/psc.txt         |   2 +-
> >  .../firmware/nvidia,tegra186-bpmp.txt         |   2 +-
> >  .../bindings/power/amlogic,meson-gx-pwrc.txt  |   2 +-
> >  .../devicetree/bindings/power/fsl,imx-gpc.txt |   2 +-
> >  .../bindings/power/fsl,imx-gpcv2.txt          |   2 +-
> >  .../{power_domain.txt => power-domain.txt}    |  95 +------------
> >  .../bindings/power/power-domain.yaml          | 133 ++++++++++++++++++
> >  .../bindings/power/renesas,sysc-rmobile.txt   |   2 +-
> >  .../bindings/power/xlnx,zynqmp-genpd.txt      |   2 +-
> >  .../bindings/soc/bcm/brcm,bcm2835-pm.txt      |   2 +-
> >  .../bindings/soc/mediatek/scpsys.txt          |   2 +-
> >  .../bindings/soc/ti/sci-pm-domain.txt         |   2 +-
> >  MAINTAINERS                                   |   2 +-
> >  17 files changed, 149 insertions(+), 109 deletions(-)
> >  rename Documentation/devicetree/bindings/power/{power_domain.txt => power-domain.txt} (51%)
> >  create mode 100644 Documentation/devicetree/bindings/power/power-domain.yaml
> > 
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

The patches should apply cleanly in top of your tree so maybe you can
pick them up?

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
