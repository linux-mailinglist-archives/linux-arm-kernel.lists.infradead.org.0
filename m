Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91ADCCC22B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 19:54:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Knt5fqkMq6lWztvTXLOZm5Lyq2N7rBzURk+ArU0YTo=; b=O5cLTN1ZWZQ9Sr
	r6K9gNYsrOBxIvxIfAkwFtxXC2+C/cC3Wr3OeCz19SmvQw9xU3Ciu9ZPjJGk8m3qJ+ebN1wDHyrwB
	rPRyk2NUZQ14GeDZ6W3yyUN20IiOOzyTjAxBfas8ThsMy0Ak+CGB7m4CK0wJdpJ+ILv64TyelElD4
	ATZTbb3BrBQZ3q+daxpiFmlUndo2rbla3/Lpm6+U75HBI+z/yBZkkrAk6OR8R6YjWGvi1TxRi6X/H
	AuRkhDTsB3STnD7QqGusNy6XvzZ635uAmtKvIdpGSivp0p24GVO6TPi0tAWnoJxwyVOAYm0uezRb0
	D5zM63IvgLiBeex07Skw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGRmU-0006VH-Sg; Fri, 04 Oct 2019 17:54:18 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGRlQ-0005aj-A6
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 17:53:14 +0000
Received: by mail-wm1-x342.google.com with SMTP id v17so6731730wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 10:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=SiYnbzF7WkjqWKJjUmGyqc1k8qogotE1jvdb1MCejmk=;
 b=rqFfmPBjt5rNehUrfCoog3sBIjQKw8DOTHfqANDdbh6jLSdp3Jt4BHH2BqNPxDJkPf
 X9GmB0XLf5OILRwmuglpo4UHl9sJPPoTlrXu6ADQEiAZEetGw2XgIlzniuQdX8DCAHje
 4USGkdxGIrdT0zkJ87uc27k538trG28T3Jo3c7cZE6FYXI40/vp3QY58vrjZGd7tCFBJ
 16gdzjIHv+UtYdOz1n2+9TbrnQfQYNT/a8cPNeyboqCehSOnkRQGg67jSRVJ3pIhxflF
 IY8/P91g35XLJfSnbnjHsfQW0c/ML1NcmgXpv6KFcWdfqjbcKsZ5yTQioEB+YWCTH+gM
 oWUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SiYnbzF7WkjqWKJjUmGyqc1k8qogotE1jvdb1MCejmk=;
 b=EZyCWNpVrJftT6EBCRNQdcmSI0Vl1xK+hPa7T+EihpVkT0wnDyBewwKk8PHrQtPkeO
 VuyIycnJugazbRynuuUKu1EXmflltLC9tnAIfpKtuNTYXfvNk7HjN5l+cGt3kvzZtrcm
 j5uV6HDctmFt8fj52PfZiRO7c1pS8mIlqb977Jie9wmXrbevRgBHsVE4rvqEzDmplA8S
 IoXHO9RZ5v7txXPohJY1vKAzLUKQaWoaMUsua7aMHnBXogcn6yQuAouTX7dukUXK3ww8
 C/6mvbZo7/+tsMdw9Lzydr8wqmPkkG7MoJtzDaH5caQ0IAS+oY6Ke6qOaqUY9/8IqNN+
 dgCQ==
X-Gm-Message-State: APjAAAWQf9d/J454hfz4MsT2V400ftYjr+SKIzOeHLNkUjTqkIJZSUrr
 mqszdlvDCD4BUXHePDOAYFwBkGss
X-Google-Smtp-Source: APXvYqyyUV/AKwxAyN9TZuMCT9wd+X8T76PBdPNUsiucJS6dHYCgcxvSYkeRlQ7nwRaHVXmuaanUnw==
X-Received: by 2002:a05:600c:2252:: with SMTP id
 a18mr5967972wmm.141.1570211590660; 
 Fri, 04 Oct 2019 10:53:10 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id e9sm17598865wme.3.2019.10.04.10.53.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Oct 2019 10:53:09 -0700 (PDT)
Date: Fri, 4 Oct 2019 19:53:07 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v2 03/11] dt-bindings: crypto: Add DT bindings
 documentation for sun8i-ce Crypto Engine
Message-ID: <20191004175307.GB11208@Red>
References: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
 <20191001184141.27956-4-clabbe.montjoie@gmail.com>
 <20191002055458.zo2vdbxodj3ch53g@gilmour>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002055458.zo2vdbxodj3ch53g@gilmour>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_105312_383518_04DE9A2D 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 herbert@gondor.apana.org.au, catalin.marinas@arm.com,
 linux-sunxi@googlegroups.com, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, will@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 07:54:58AM +0200, Maxime Ripard wrote:
> On Tue, Oct 01, 2019 at 08:41:33PM +0200, Corentin Labbe wrote:
> > This patch adds documentation for Device-Tree bindings for the
> > Crypto Engine cryptographic accelerator driver.
> >
> > Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> > ---
> >  .../bindings/crypto/allwinner,sun8i-ce.yaml   | 92 +++++++++++++++++++
> >  1 file changed, 92 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
> > new file mode 100644
> > index 000000000000..9bd26a2eff33
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
> > @@ -0,0 +1,92 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/crypto/allwinner,sun8i-ce.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Allwinner Crypto Engine driver
> > +
> > +maintainers:
> > +  - Corentin Labbe <clabbe.montjoie@gmail.com>
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - allwinner,sun8i-h3-crypto
> > +      - allwinner,sun8i-r40-crypto
> > +      - allwinner,sun50i-a64-crypto
> > +      - allwinner,sun50i-h5-crypto
> > +      - allwinner,sun50i-h6-crypto
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: Bus clock
> > +      - description: Module clock
> > +      - description: MBus clock
> > +    minItems: 2
> > +    maxItems: 3
> > +
> > +  clock-names:
> > +    items:
> > +      - const: bus
> > +      - const: mod
> > +      - const: ram
> > +    minItems: 2
> > +    maxItems: 3
> > +
> > +  resets:
> > +    maxItems: 1
> > +
> > +  reset-names:
> > +    const: bus
> > +
> > +if:
> > +  properties:
> > +    compatible:
> > +      items:
> > +        const: allwinner,sun50i-h6-crypto
> > +then:
> > +  properties:
> > +      clocks:
> > +        minItems: 3
> > +      clock-names:
> > +        minItems: 3
> > +else:
> > +  properties:
> > +      clocks:
> > +        maxItems: 2
> > +      clock-names:
> > +        maxItems: 2
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - clock-names
> > +  - resets
> > +
> > +additionalProperties: true
> 
> I guess you meant false here?
> 

Yes. i wil fix that.

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
