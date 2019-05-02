Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A168123C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 22:59:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hNZfvhLRM05Rpam24d7RcdvEY2pjvXAGIMO8pbAbRIg=; b=MtFNE7uyk9MXm+
	HechKHdDbxe5Ak6c5fPvC8a7A4uX6NwuCt40wKjZF81TBMdYd2H7qrMkuSeql55iPjTPWI2/wrrmi
	1taQT8L+zZiqS/egpBIb9NGQQxsNczm+NcP/jccAQp1EBhJULQImk7Wq7JVyY4xQyaK3VwxUiQ6Ol
	GrMYoSxK18CsNJjgTM3Q/6EsDmzDgEoLlQxR2NJeQtHs3+6V8dPXgx1FHjVhgG9nXy5h75IUXkWsF
	oNbzKMDmltEhGXdijDBffz6EhXxfElkMU1DSOR0PjBD9VjqBG5x5QemL62nurXUZuFiVETnPbxcf5
	SPhS4mC7navP2Xh9GOFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMInO-0008PX-Ip; Thu, 02 May 2019 20:59:10 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMInI-0008PB-Ed
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 20:59:05 +0000
Received: by mail-ot1-f67.google.com with SMTP id b18so3435828otq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 13:59:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ek4e6lQQ8IdAaOrNfkdfcyOxoi7Phm/pJmbpKGyfvy8=;
 b=fJqJA2XrpIc/riVmCmhllGHtozlPw2GI+32rzYpj83p502bnT2OIxiLsMvX6aaFL+I
 D4/Cdon3WctYLciP2vGmUZ482E6T9Pq4S3bb72Cy4l9+1qTJOwNNm6AO/GHiD5x52NeS
 nFtrW6NjZS6WPnTcQasACps8thbUvobInbUcOCd7Hnz9gm4mR1+4Az5fqTrW+t/bVvP7
 g24CNnASMSiLVZUNVYO84YFxhF5RedzXaZCNlufREDz3rOFIcDic23Us7nwQFIjxdq6f
 I0J+UjhymszE0sy852m4k2y0TwyUU43v8y96CViUlszsYKsHIpNcWmSu4g1YV4/vzVHM
 iTnQ==
X-Gm-Message-State: APjAAAV9cHWiCZxPXrKGIaJKOkcpOHigoCcRi/lz5B8FFQ6XIagaPcUK
 QTw0RnCbUGePIhAZSk5upQ==
X-Google-Smtp-Source: APXvYqyb+W0LF2urvrVH+CnR4Gxihh+0ucEOZSP/69wdKuINEJLDCa9oqekneXLyTMa5VpRVNUsUVg==
X-Received: by 2002:a9d:5e02:: with SMTP id d2mr3965264oti.222.1556830743357; 
 Thu, 02 May 2019 13:59:03 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k65sm184077oia.16.2019.05.02.13.59.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 May 2019 13:59:02 -0700 (PDT)
Date: Thu, 2 May 2019 15:59:01 -0500
From: Rob Herring <robh@kernel.org>
To: Chuanhua Han <chuanhua.han@nxp.com>
Subject: Re: [PATCH 1/3] dt-bindings: i2c: add optional mul-value property to
 binding
Message-ID: <20190502205901.GA24224@bogus>
References: <20190430043242.29687-1-chuanhua.han@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430043242.29687-1-chuanhua.han@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_135904_493914_0517DCAC 
X-CRM114-Status: GOOD (  17.70  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sumit.batra@nxp.com,
 eha@deif.com, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 wsa+renesas@sang-engineering.com, l.stach@pengutronix.de,
 linux-i2c@vger.kernel.org, kernel@pengutronix.de,
 u.kleine-koenig@pengutronix.de, linux@rempel-privat.de, shawnguo@kernel.org,
 peda@axentia.se, linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 12:32:40PM +0800, Chuanhua Han wrote:
> NXP Layerscape SoC have up to three MUL options available for all
> divider values, we choice of MUL determines the internal monitor rate
> of the I2C bus (SCL and SDA signals):
> A lower MUL value results in a higher sampling rate of the I2C signals.
> A higher MUL value results in a lower sampling rate of the I2C signals.
> 
> So in Optional properties we added our custom mul-value property in the
> binding to select which mul option for the device tree i2c controller
> node.
> 
> Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-imx.txt | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-imx.txt b/Documentation/devicetree/bindings/i2c/i2c-imx.txt
> index b967544590e8..ba8e7b7b3fa8 100644
> --- a/Documentation/devicetree/bindings/i2c/i2c-imx.txt
> +++ b/Documentation/devicetree/bindings/i2c/i2c-imx.txt
> @@ -18,6 +18,9 @@ Optional properties:
>  - sda-gpios: specify the gpio related to SDA pin
>  - pinctrl: add extra pinctrl to configure i2c pins to gpio function for i2c
>    bus recovery, call it "gpio" state
> +- mul-value: NXP Layerscape SoC have up to three MUL options available for
> +all I2C divider values, it describes which MUL we choose to use for the driver,
> +the values should be 1,2,4.

Needs a vendor prefix. I don't find 'value' to add anything nor do I 
understand what MUL is.

If it is determined by SoC rather than board, then it should perhaps be 
implied by compatible.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
