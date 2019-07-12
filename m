Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAAC166FE9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 15:21:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QLu95L9b/VsXJugYEWQ2cj+Gp+1g5kdV/ooHtEUCK8g=; b=hurvcYgS6HdJdz
	k3+YF7DoB2dCkkiC9T7gJh8D60W5xmsWg20fVTxjufz1spwbW/jJ4znWrl5GBNqW7Q1Kl6nmL6gTm
	Tiga6k+T0oqyH/8YnvLURF9VAoHfE2bAihmyQuFJh+fsZmGfwagw8EHeje6TeV6PbNeJq2c9uqUf5
	ST8byiRDkkjhtjA5X6/DbsndxGmqgnepz3r77ULhv9oTBdbACUEr0P5fSQ5W3QxiSNAx8Q4UcUDvY
	WCOrkZLz8otqVAP3Zl0yqK2teCiAGXz8iOA24S2xSacJ70T0lPnQyT6jj/JZ+d7V5iB+R0JziCRHB
	gBQD+YOAE7lt52T+PrOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlvU9-0004HY-QQ; Fri, 12 Jul 2019 13:21:13 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlvU0-0004Gx-S5
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 13:21:07 +0000
Received: by mail-io1-f68.google.com with SMTP id i10so20174554iol.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 06:21:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2UL2mnZCPkCTZV6CESXKITDWEo89BRhgftonMWCOO2w=;
 b=UTL5q9Tys5JRe5g6s4x5W2MBHLLZS33s+KRyYRdcWmDZ8ACDCjebfTmZKS8fQuUxFE
 u0DebmilJdmMukThw9Cm4aTLfBaxRLtU4d0lT9cJ9x3P6A8YBU+ws2gZsI0tOQoVEXAQ
 fFm9PkjmWJ59FeH8Xrfv9/hZEcehwphXNZChMZb3iEfr/WYtwu9ZIEXiLPgNaNjJL62Z
 2H4OZQiS+85xbJfvRvTWRHN8W9p99+jJVUmY+9elKukC+cuvM2qGBreCYKy0TvoooZQp
 AzY15RjJmDWD4ZGqJAfGLm/OzCVL4ANXisSCCoKcA7wwIeIB08DnLxbDNQY+oxB8Mrdb
 Y8qA==
X-Gm-Message-State: APjAAAUPJWALsvek0CvnBx+fSOdAr6ZITZ0w8b07nQj4mltLagwHK99s
 3iQV7gimbLSJRXbWi9fgQw==
X-Google-Smtp-Source: APXvYqwUoy6UABopNKNR3d8AK3hktAfMGC3cBS4c0ekTlwdNS08IyL6BP+rsgMImFLqeDLBme67yfg==
X-Received: by 2002:a6b:b985:: with SMTP id
 j127mr10700748iof.186.1562937663053; 
 Fri, 12 Jul 2019 06:21:03 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id v13sm7594326ioq.13.2019.07.12.06.21.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 12 Jul 2019 06:21:02 -0700 (PDT)
Date: Fri, 12 Jul 2019 07:21:00 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH] dt-bindings: input: Convert Allwinner LRADC to a schema
Message-ID: <20190712132100.GA6212@bogus>
References: <20190711093835.20663-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190711093835.20663-1-maxime.ripard@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_062104_917738_5C10B6AA 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-input@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 11 Jul 2019 11:38:35 +0200, Maxime Ripard wrote:
> The Allwinner SoCs have an LRADC used to report keys and supported in
> Linux, with a matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../input/allwinner,sun4i-a10-lradc-keys.yaml | 95 +++++++++++++++++++
>  .../bindings/input/sun4i-lradc-keys.txt       | 65 -------------
>  2 files changed, 95 insertions(+), 65 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/input/allwinner,sun4i-a10-lradc-keys.yaml
>  delete mode 100644 Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
