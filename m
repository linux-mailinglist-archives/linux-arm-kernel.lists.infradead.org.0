Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC37516817D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 16:25:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fPH5emDXx1c3waJh/xx5/NlKG6EaYWp5mqOdxc356pc=; b=pHCS8ELnBwHKI9
	4Gs347QGVmJ7x7iZuBrUZbTDDI64rFoEa3AZR8A27XSzJUD7DnAkTh2ZxKiZHxIbRZiGDJfCbXmY+
	gr1cXmJDFyLIEb6eK8qXEh+vykaczujpwuEo0IMshtUMk2kZJjD3t4UfkogBdrSHVT9CY9CwJ+TyO
	rbhT8BpABfmeOa69/+I1Oo4iBxTOLIjN1XWv86PMLBL4pJT0OZ/eFyOwdX7+MCb/Zq/kF50KUHk23
	wl9A824Wo1KnsdaKK08PBqH7JJcd73mTfRSuNzBHlFe0ZF9EzayPZ11K6qXxi0Tgu8gk1D1RUwrXV
	kgFP7L242ne4QzRlMjxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5ABh-0001JC-W8; Fri, 21 Feb 2020 15:25:58 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5ABZ-0001IR-BD
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 15:25:50 +0000
Received: by mail-oi1-f195.google.com with SMTP id q81so1946852oig.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 07:25:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iSM0EyjvmfxoFHCod2p0l5Pl9JBcuIkD94e/FTwKMK4=;
 b=bVqUmoVWqe5T6aglbEKfMWB5nCr+weIFhGHXIxvin/vQRzQthp4TP2gc2/+lXKh1Id
 CA57BFxk/QbBiUiLi8gm4m9hQa7OB+al1K1vvJplJXzPHRE0KU55qRkchWkfoVtf1iC3
 v8b/Z9FnA3YY/vcxvu2xztr0THQaNRr3lxYx/wrEcZWVcVZpiwMeMn3PytTah30AdsjG
 0Q76fI1Uq8hXt1tFQ+p50Ila9XJz2IcjZ4i6yK01nyLf2uwM1rWdms0bTTHKh+DHEG8r
 ekoKcGGd8vKCO6T1M7/2EWNxR8+6KvbmBe/U+p2QkGY6ZSV10zD6PZIVjNbio264FQhF
 pT2g==
X-Gm-Message-State: APjAAAV3R5JyKLt5wLJZvbXQ9aeMegL59DQTr+fmxWH8ryj1ZBZYM4vI
 fkBLo4Yf80rJSVIOxvRxYA==
X-Google-Smtp-Source: APXvYqwAPapyWF61DOlIKdFT1cYJ5jK5jFsvyQonr/MrRrIlZGCawUtzEC7o3L2NKwc64wuonBhk2A==
X-Received: by 2002:aca:f242:: with SMTP id q63mr2466113oih.72.1582298748045; 
 Fri, 21 Feb 2020 07:25:48 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i20sm1131503otp.14.2020.02.21.07.25.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 07:25:47 -0800 (PST)
Received: (nullmailer pid 1560 invoked by uid 1000);
 Fri, 21 Feb 2020 15:25:46 -0000
Date: Fri, 21 Feb 2020 09:25:46 -0600
From: Rob Herring <robh@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm: Convert UniPhier board/SoC
 bindings to json-schema
Message-ID: <20200221152546.GA1327@bogus>
References: <20200221021002.18795-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221021002.18795-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_072549_389545_0760C2CA 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 21 Feb 2020 11:10:00 +0900, Masahiro Yamada wrote:
> Convert the Socionext UniPhier board/SoC binding to DT schema format.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
>  .../bindings/arm/socionext/uniphier.txt       | 47 -------------
>  .../bindings/arm/socionext/uniphier.yaml      | 70 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 71 insertions(+), 48 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/socionext/uniphier.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
Error: Documentation/devicetree/bindings/arm/socionext/uniphier.example.dts:18.9-10 syntax error
FATAL ERROR: Unable to parse input tree
scripts/Makefile.lib:300: recipe for target 'Documentation/devicetree/bindings/arm/socionext/uniphier.example.dt.yaml' failed
make[1]: *** [Documentation/devicetree/bindings/arm/socionext/uniphier.example.dt.yaml] Error 1
Makefile:1263: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1241745
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
