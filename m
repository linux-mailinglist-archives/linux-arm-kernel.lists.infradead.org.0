Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51592982C1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 20:29:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ydgfw+AQnkPbIADYxuwhN74t5Qw5txvTtOkUitzDA/0=; b=SygN3/bCE4h/iI
	T2uFPZM3QI7xHgQTZkcVyKomm2+tARWMiWluoh4PWECKCmQnr6GbofFUq6YO6VJUkBkkoWrTmkHnE
	DopVviLNAKH9dYWDr3O490UAubMNyNaJ89Xzjktg+dQMkHF0HbfhV4y4E0Qr4v7nU6iv39oZPk+p3
	CTi1qFpGgerB0aPDRLp/mYY3a3duQAwmfmddm/nTWin5OtxjTXqMenwoALouwSh30AV1jwad86Ew5
	Mhvtwh9lDhDlpkRbAro70OAjUDiFA1JVQh7HwjYzhUQ7t0FS08OWEN1qhBAlA0UPAnVcQV51L9865
	N00I7qysh32LUdfYZpgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0VM4-0002Iu-7k; Wed, 21 Aug 2019 18:29:08 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0VLw-0002IV-0c
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 18:29:01 +0000
Received: by mail-oi1-f195.google.com with SMTP id 16so2358680oiq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 11:28:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IlBQAnr7SqK4vmV2hECCA6HOV9bFnSuAK7Tq5FMjjA8=;
 b=rytR06Iy2V2M0q+HR0l4GMtR9m3y1S0/aJBymG7ljjRghI8RtC6Bmt97zEI7pCtzMK
 IIbMvNPyDJ38KDZulOGjPIrRv6mUuvW3E6+iVg7FUmek5x8yOogKNtKkQr96fFz9r+7G
 ltJbU2eSqRpyeD6YuXWOL8GnEMxNveE60ekSq8sWEps9hlXyVUj1JN+YvLXdTcQk89t3
 +JPAlXvTMJdbVdZDXde1joYhmm/pXVE9T9rGUYkiOwvuvogsf5y7dztxr1zEjYmqZM6W
 +w1DQw++SPT/b8wHhMlqnkvKZwnOws9D8n5i2WrJ+FZKsOqXdEn5RLzkELJQssC0ZfqY
 GsMA==
X-Gm-Message-State: APjAAAXbIXAlH2I/3SfAt8qHcHd8dymedP5MrRhlB1FwJYGX2KAYI+K5
 0+pREidgrQZFN0enw3c+jg==
X-Google-Smtp-Source: APXvYqzZ2kL4eV9GHI+LzLFqZpeECnpk4G/fNpQj05SXOgQowMQ4kWdCir2tFQluy3kAlHyAIGe2zw==
X-Received: by 2002:aca:bc06:: with SMTP id m6mr1044042oif.65.1566412138589;
 Wed, 21 Aug 2019 11:28:58 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c11sm6726816otr.54.2019.08.21.11.28.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 11:28:58 -0700 (PDT)
Date: Wed, 21 Aug 2019 13:28:57 -0500
From: Rob Herring <robh@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v3 14/19] dt-bindings: pci: add PHY properties to Armada
 7K/8K controller bindings
Message-ID: <20190821182857.GA9660@bogus>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
 <20190731122126.3049-15-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731122126.3049-15-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_112900_061125_843478F8 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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

On Wed, Jul 31, 2019 at 02:21:21PM +0200, Miquel Raynal wrote:
> Armada CP110 PCIe controller can have from one to four PHYs for
> configuring SERDES lanes (PCIe x1, PCIe x2 or PCIe x4). Describe the
> phys and phy-names properties in the bindings.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  Documentation/devicetree/bindings/pci/pci-armada8k.txt | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/pci-armada8k.txt b/Documentation/devicetree/bindings/pci/pci-armada8k.txt
> index 9e3fc15e1af8..7cf12162aa4e 100644
> --- a/Documentation/devicetree/bindings/pci/pci-armada8k.txt
> +++ b/Documentation/devicetree/bindings/pci/pci-armada8k.txt
> @@ -17,6 +17,12 @@ Required properties:
>     name must be "core" for the first clock and "reg" for the second
>     one
>  
> +Optional properties:
> +- phys: phandle(s) to PHY node(s) following the generic PHY bindings.
> +	Either 1, 2 or 4 PHYs might be needed depending on the number of
> +	PCIe lanes.
> +- phy-names: names of the PHYs.

You need to enumerate what the names are. Based on your example in v2, I 
don't think the names are really valuable unless you can skip lanes.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
