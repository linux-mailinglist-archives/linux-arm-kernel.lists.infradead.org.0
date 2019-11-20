Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 803FF103B8E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 14:34:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Ay2IQQqkACrm/2xGqoXDJ3ZtVwuD4w3uq4GS08rDoE=; b=YK945a77Ptui0+
	oJd4HVMhAsGLJWpugLB3FWkjQbTFgcQGaSm5lLPZ3EZjy4bBo0qksr0L6+JbTcX3LDFajONaIMd+3
	xtHdE+Y6Rtj2M/0dA5olI1EPvmkjDa1yH6SRMxhDcWDni3EL/HL1KabeuA7D4r1G0yUWf9eAGFlRc
	eqaT0XXCZ+SbwV0ggcfmrY1Z0AcznASmSiedqBcdSg7ieQTfw0SvNz19bJBi+aut+zaYfECWfOHoj
	SaY374TQ2gWIAZr5GHBVIyxe/La+3Iw9dkLQtKeEPtxgteVzUQxAqySPcytX/S8FLBdtyZu5fvg7F
	u/R5V7ODT9deF/+sB1og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXQ7Q-0007xF-Vd; Wed, 20 Nov 2019 13:34:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXQ6h-0007RZ-NA
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 13:33:21 +0000
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
 [209.85.219.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2345622525
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 13:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574256798;
 bh=fUd3tZx87qdnG6CwilRNMyUR8d2QluCbndXsUwHsrKo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=n6zizZh2Ogrr7jK95g8XBlS4G/sFVvXPPu1bz5ZrWk5Csxwu/ysU31PfNzk6MLFxB
 2xQ9VCyLVkHtrh6b+UsdQ7SkDo6EOh0xKPKC+oHcwRA0RiLHEW7QyZ5+fUSjfoRcMq
 W/Yui2vNYyc5iCpIquvBd3FnhEXMWuvaPrzf/vKQ=
Received: by mail-qv1-f41.google.com with SMTP id g12so9670771qvy.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 05:33:18 -0800 (PST)
X-Gm-Message-State: APjAAAWoXJyo2+V7Gqt3889LJ7fP6EcuD/hcQhblSfctR9TZ03kMPVsJ
 betPdM82xlCvI9AYs7pVMyWHKM+3n+olSeFh/Q==
X-Google-Smtp-Source: APXvYqwbpzn2fJraSCYad28+nndI8XWhSNe0EYjVvJZpgDz4z7+/dr0W/0EkM+wEC57Uvdy13UVXGH7HREtILCij3Ig=
X-Received: by 2002:a0c:ca06:: with SMTP id c6mr2416351qvk.136.1574256797274; 
 Wed, 20 Nov 2019 05:33:17 -0800 (PST)
MIME-Version: 1.0
References: <20191120121720.72845-1-stephan@gerhold.net>
In-Reply-To: <20191120121720.72845-1-stephan@gerhold.net>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 20 Nov 2019 07:33:05 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+a3zLhRpTYXOOoOt2Ct4SUeiYsPz=QvJXUm1w2aoMEGA@mail.gmail.com>
Message-ID: <CAL_Jsq+a3zLhRpTYXOOoOt2Ct4SUeiYsPz=QvJXUm1w2aoMEGA@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add yet another for
 ST-Ericsson
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_053319_802266_D42091E2 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 6:19 AM Stephan Gerhold <stephan@gerhold.net> wrote:
>
> Unfortunately the vendor prefix for ST-Ericsson is used very
> inconsistently. "ste," and "stericsson," are already documented,
> but some things in the kernel use "st-ericsson," which is not
> documented yet.
>
> st-ericsson,u8500 is documented in bindings/arm/ux500/boards.txt,
> and is used to match the machine code and the generic DT cpufreq
> driver.
>
> Add it to the list of vendor prefixes.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 967e78c5ec0a..c9b0bab8ed23 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -909,6 +909,8 @@ patternProperties:
>      description: ST-Ericsson
>    "^stericsson,.*":
>      description: ST-Ericsson
> +  "^st-ericsson,.*":
> +    description: ST-Ericsson

Please add 'deprecated: true' to the 2 that are not preferred. Looks
like 'stericsson' should be preferred as it is used the most.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
