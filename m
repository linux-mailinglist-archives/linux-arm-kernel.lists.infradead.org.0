Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EEC707E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 19:52:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l6PSyZe0FSRZL0Ba8ha4a+YGBYMZMHHsUZ/2PtJetEM=; b=JJVi3c6aak+Ppz
	CUg3/6DTD60cPj5sMpIjUmiXn0RRkhQ9a9DdmMTldLCuwqlwIiWFF1ZGVAUh7vSOdX+fB1n2dVLl1
	xL4BeMdO7Ki69/Lkr4GBP725ULsStMhXM4fI73HZ9tXz0I6gCxSVRdcPR5VCcQpBH1mS1TlyhlAQU
	GlNEADk3WjJwsAnAE/nyELvpdVyc8PEzneGwKlkBVuxfvm2qIty7rufzMBUSG+fJMua1scrYNNSkI
	i6n3xQDgqAqbO5js9qhCjAjDORNntN9IhqeJOgDnjft8C8TDQQFHMjNAcxR+4CZfhtpOvQBGJjnkM
	Ju4tFAH4m+D5G8RU6RMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpcUP-0005Ud-Ro; Mon, 22 Jul 2019 17:52:46 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpcU7-0005UE-PS
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 17:52:29 +0000
Received: by mail-io1-f68.google.com with SMTP id j5so71703333ioj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 10:52:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cA+zVaQ6viNNjn5xSPMVzFdoWxdqyNVcvHNcRVwNmsA=;
 b=GDdXcI9GYNwrhcfMACOof/ZNt7AvAPeYsbky8BADibKe2xEW72kGesIS8vf1EiXZe7
 YbKsYV3nzTJY0T/jZldWFqgbwClY8JrgzYmfUVuRRm7UDzm+O8vzLKlzx0BDy2eSpptV
 VLspnIEpkLxjCC+VE8hoMRR+tAXag0EgmoF5HSD81BqxdjZP1OZAIFiCU0fcctRsCfD1
 HAjuoUg82eIZ40Jpg9IzuNy6F860GH0R7SjAqzqmRg9HmNvXMpOXgkKFCThAyqkagiN1
 TMO6iVEoSaZbiR1GrGDcu+wXQv2ZFpxYbmeYgLF/3SHAWGDP9ksBksr0FIxM/JN4LJx3
 oryg==
X-Gm-Message-State: APjAAAWk+6M01ZUX++LFcvRVYEHsNWCOQ+tAX5nD07bZQkV6tvs9UBcx
 N0uPllgWjwqPCvAtrt6m2g==
X-Google-Smtp-Source: APXvYqx9gF6qMvoMUPkC54EXe6V87cgv3SgKF9Y6tDCMBu5hgbQxlxQpS+avy5PJLLAEZ0UqVEvsHg==
X-Received: by 2002:a02:69d1:: with SMTP id
 e200mr19169849jac.138.1563817946697; 
 Mon, 22 Jul 2019 10:52:26 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id y18sm40525187iob.64.2019.07.22.10.52.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 10:52:26 -0700 (PDT)
Date: Mon, 22 Jul 2019 11:52:25 -0600
From: Rob Herring <robh@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 14/19] dt-bindings: pci: add PHY properties to Armada
 7K/8K controller bindings
Message-ID: <20190722175225.GA13801@bogus>
References: <20190627095104.22529-1-miquel.raynal@bootlin.com>
 <20190627122505.25774-1-miquel.raynal@bootlin.com>
 <20190627122505.25774-2-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627122505.25774-2-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_105227_822994_539F680F 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 devicetree@vger.kernel.org, Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 02:25:00PM +0200, Miquel Raynal wrote:
> Armada CP110 PCIe controller can have a PHY (for configuring SERDES
> lanes). Describe these two properties in the bindings.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  Documentation/devicetree/bindings/pci/pci-armada8k.txt | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/pci-armada8k.txt b/Documentation/devicetree/bindings/pci/pci-armada8k.txt
> index 9e3fc15e1af8..a373a80524db 100644
> --- a/Documentation/devicetree/bindings/pci/pci-armada8k.txt
> +++ b/Documentation/devicetree/bindings/pci/pci-armada8k.txt
> @@ -17,6 +17,10 @@ Required properties:
>     name must be "core" for the first clock and "reg" for the second
>     one
>  
> +Optional properties:
> +- phys: phandle to the PHY node (generic PHY bindings).
> +- phy-names: names of the PHYs.

How many? If only 1, you don't really need phy-names.

> +
>  Example:
>  
>  	pcie@f2600000 {
> -- 
> 2.19.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
