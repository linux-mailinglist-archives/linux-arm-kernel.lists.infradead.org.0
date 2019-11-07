Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D46F239F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 01:53:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yy9OKYXtVVdELpJeXBbIOfr3F2R4Z7K7nDBSnCtsgMw=; b=ASyozcfLNF7bwl
	mI2y2DSudsXzm10vqHSLE9jNXVj0aTvxqZQ72SAxotCCMejVsSxADPAvcfp+/4Ekv+WInJmSPvY0Y
	BBFXjhlcVBatUAZixwGhjIa5K2PB9dgDPK3+t1vWBa7yj7qYjc6M8FwTj0yGpvqkXIOgOWCDuFtEl
	BJKaCzVdNaPalAFHtJLEQrkgYBXh7RCg70VTjyqxZJEI03xhuDWzRSIKOWO4+M9/26zg2shzAnYWN
	Ux4U5byMO13E/9pNmkSt4LMg86hoieS+OgLC3xkCSusHGWBeXyD0nSVVl9u9OMrrNDOUm9aB7n7AA
	448QkvesXlzsUnqzn4SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSW2k-00085S-Tc; Thu, 07 Nov 2019 00:52:58 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSW2e-00084t-2r
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 00:52:53 +0000
Received: by mail-oi1-f194.google.com with SMTP id l20so424688oie.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 16:52:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bNBnmiV/O0F2tV/c5hmPcF5IquwvqitpsBpHKXWwdd8=;
 b=dZTqUnoyJQRT8AmOSm7jLuloRPA0Ij3WOzbiaY7e9VJ92KtB7SDdVNcNUrIxr3Toef
 M0bydP3TxCjhG9M+n3ZgPjJQvG/FlHDaC+Qhs9Rb5W1UZfxRLIMa4VHZC2lQPaLKN2F6
 w14eQ3CWrbvY1Ul6xAnortM9gMxZfHRqeA8dzZzvBnpILgHbu8YtaRTKvzpnPfefwA/l
 5NU6fD1BfqjCx/C3fXtSLHHK9OoagrDM23UOp7Ump9dCpLo1EsNCaY9grPoqsuaqQGzP
 bMEJQhTFKJHyUVg3vahGbIycMIgEi024OeA5WwnVYP/fvZXepGYlm6M1rEFxbEWe4ptj
 zizg==
X-Gm-Message-State: APjAAAWlZqWyOdxqNgRLLxWrpCzIaJmO2JWgc7+/eszFDtH4EQD7YgGy
 fOtCRgiv3HMxK25+KYnG0A==
X-Google-Smtp-Source: APXvYqyCY4nQynNp+n6/6pCwXxB4zCgESl1l11DWbSH0BoeflOM/MjfcnsL93dCEW+0DsG7lf8PZsw==
X-Received: by 2002:aca:5b89:: with SMTP id p131mr856276oib.52.1573087970613; 
 Wed, 06 Nov 2019 16:52:50 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w33sm214006otb.68.2019.11.06.16.52.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 16:52:49 -0800 (PST)
Date: Wed, 6 Nov 2019 18:52:49 -0600
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH 2/6] dt-bindings: phy: socionext: Add Pro5 support and
 remove Pro4 from usb3-hsphy
Message-ID: <20191107005249.GA26022@bogus>
References: <1573035979-32200-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1573035979-32200-3-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573035979-32200-3-git-send-email-hayashi.kunihiko@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_165252_127390_7AEC3607 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  6 Nov 2019 19:26:15 +0900, Kunihiko Hayashi wrote:
> This adds compatible string for Pro5 SoC that needs to manage gio clock
> and reset. And Pro4 SoC uses USB2 PHY instead of USB3 HS-PHY, so this
> removes Pro4 description from usb3-hsphy.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  Documentation/devicetree/bindings/phy/uniphier-pcie-phy.txt | 13 +++++++++----
>  .../devicetree/bindings/phy/uniphier-usb3-hsphy.txt         |  6 +++---
>  .../devicetree/bindings/phy/uniphier-usb3-ssphy.txt         |  5 +++--
>  3 files changed, 15 insertions(+), 9 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
