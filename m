Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F80F062E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 20:43:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TntMbhLkijjweBvcJUtWJKcRrFfyA12ZcvdSs2BJ9T0=; b=pjhqvd+HzruLgn
	PslASKc0JddzJCF+OEGo749Fe3V6L4Jz0Q/GZXL2OHSYwvLpOy3dEFENd4EmuY85mwXvTLUCH0aac
	xmxv9WIB0EsxU98mDp3cJK8u2djuRCMs7xeCYEvRYLUBW4/NUK7MtzoBRNK8q55P92dr2cHKF28Lf
	l/tSOvfTgfQi4eD48m+uWWUvn0W5PZqdRPXHaTgnre15lWVgdebx+yWme/94rXGVkYpw5Lcfw+4sG
	1AMTkT0C9brg+VlXcihWpg1JuACaCiLDCg4OIPL/A43g5rEx1uqgNZdqDqSqunaUjqgwrsUakV2tC
	XpT70yvVvsFjEVQdyHtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS4jM-0003fN-Qz; Tue, 05 Nov 2019 19:43:08 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS4jF-0003eb-LB
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 19:43:02 +0000
Received: by mail-oi1-f193.google.com with SMTP id 22so557148oip.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 11:43:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5Pu4OrE4K395x5nbpd+Cxz5TnD1x0ZYI5bC4xcqiIR0=;
 b=HGGB0CfwORtdjj8fJ3W7onmLPL5H3KpiyQxmxEcAgvMubNASF3Q8gr+79wUrAZfBON
 xFJ9L//QorM4uiUeAJ/G6vPTK18kwVAi01KfsHmiL8/leCcucIxu2EleIiwGx1K/J4eF
 r1QkEwNTOVxKbIQXdcnTwpELX1VRvwIV23KFD3YF4qyOahX1RNX4wc+Ipc9xQqQBKhuW
 5AdlY+wNK4Vnv/SJN1soF0yTLzeb16B+j8ufMG1gmLtUWWNcYP3oq25INEb8+/e0mc6m
 XSB6zXkO8sIB28+v0MWPPcm3pzCW9aArvWCu0TUMwpYXA2DgLxhmE+AaczS/dDHY5mty
 er0Q==
X-Gm-Message-State: APjAAAUrPXnD+FncSBz+zWaLSUlj5tqivpDDWJ+Fcwrp/9NhRRUg1MnU
 DIlj/cfMokll6WixRjb2kQ==
X-Google-Smtp-Source: APXvYqwYe+tnDrfr4RSjoqyyhwqH3QE61rOcmw20rYatfALydaTmRWxeZcywYJxSB7Lbx0p2zYxoqw==
X-Received: by 2002:aca:f1c5:: with SMTP id p188mr536700oih.125.1572982979431; 
 Tue, 05 Nov 2019 11:42:59 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 32sm6576711ott.43.2019.11.05.11.42.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 11:42:58 -0800 (PST)
Date: Tue, 5 Nov 2019 13:42:58 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: power: Convert Generic Power Domain
 bindings to json-schema
Message-ID: <20191105194257.GA16066@bogus>
References: <20191030173216.5993-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030173216.5993-1-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_114301_693636_5303C874 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
 linux-samsung-soc@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 30 Oct 2019 18:32:15 +0100, Krzysztof Kozlowski wrote:
> Convert Generic Power Domain bindings to DT schema format using
> json-schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
> Acked-by: Stephen Boyd <sboyd@kernel.org>
> 
> ---
> 
> Changes since v2:
> 1. Keep description of consumers in power-domain.txt,
> 2. Rename power_domain.txt to power-domain.txt,
> 3. Indent example with four spaces (more readable).
> 
> Changes since v1:
> 1. Select all nodes for consumers,
> 2. Remove from consumers duplicated properties with dt-schema,
> 3. Fix power domain pattern,
> 4. Remove unneeded types.
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  .../devicetree/bindings/arm/arm,scmi.txt      |   2 +-
>  .../devicetree/bindings/arm/arm,scpi.txt      |   2 +-
>  .../bindings/arm/freescale/fsl,scu.txt        |   2 +-
>  .../bindings/clock/renesas,cpg-mssr.txt       |   2 +-
>  .../bindings/clock/ti/davinci/psc.txt         |   2 +-
>  .../firmware/nvidia,tegra186-bpmp.txt         |   2 +-
>  .../bindings/power/amlogic,meson-gx-pwrc.txt  |   2 +-
>  .../devicetree/bindings/power/fsl,imx-gpc.txt |   2 +-
>  .../bindings/power/fsl,imx-gpcv2.txt          |   2 +-
>  .../{power_domain.txt => power-domain.txt}    |  95 +------------
>  .../bindings/power/power-domain.yaml          | 133 ++++++++++++++++++
>  .../bindings/power/renesas,sysc-rmobile.txt   |   2 +-
>  .../bindings/power/xlnx,zynqmp-genpd.txt      |   2 +-
>  .../bindings/soc/bcm/brcm,bcm2835-pm.txt      |   2 +-
>  .../bindings/soc/mediatek/scpsys.txt          |   2 +-
>  .../bindings/soc/ti/sci-pm-domain.txt         |   2 +-
>  MAINTAINERS                                   |   2 +-
>  17 files changed, 149 insertions(+), 109 deletions(-)
>  rename Documentation/devicetree/bindings/power/{power_domain.txt => power-domain.txt} (51%)
>  create mode 100644 Documentation/devicetree/bindings/power/power-domain.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
