Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25ACC1E53DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 04:25:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EpRgkK1GQ1CT/fT4MQI6pUA0lyosOImO6wDmXCr1eQc=; b=Q4eXU7DMJFYC36
	LK2UoWE8fWUmllN8W4s1rvUqTzsx3SnyXUr0ic1GO7YnodbH+HyiWCUMBS5nw9IbA81KhuIRDC8VW
	7+ruf79KsEqRHx/dKdoV3cDOxQTM6a7jgBdIQ2oAz53r8+rmoUEln50qWzISnc0DPbfeDr/tCLdjF
	BJALMC/J/oIDt6CC6YtlOC3ypRs3CQ5lyelbADoLDcN6NfHFs/oxXHAcPajZqFTRY/VjJK6gsq67s
	7eNwhzYUSjh93+PTc3o78gF+Ujxc83VOBHZO193PJBEq8UwOp7IDtz5rD4NpqWUsUbUl5UkRKnID1
	bpeD4uCPNt9YF1PSBq+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je8ET-0007YY-1T; Thu, 28 May 2020 02:25:21 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je8ED-0006EZ-7e
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 02:25:07 +0000
Received: by mail-il1-f193.google.com with SMTP id 17so26169258ilj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 19:25:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TWK/yt8wEPtAEh5uiWmORMzf8N+47TheQbGehNEJTNo=;
 b=PoX17yVAq8DOXruX9cORa2w2S9+QrKbnAXXe3tO31DkcoYdypjCveduWeNz158k8PY
 EZGEU19U2PFhY6ta0yAaMx233SVHWn6ApniBRKwNwTqzYltWmJacA8NNVKTocaGWR3vA
 VaDB2NETKofIbYEg8VTLfZxIdelQItpkzrj8bCyyfrfhX/jGVgj5w7+NLT4mXj1bcla2
 X+qoTQWPPLrvVvt0OXCBWLyZmG3NmULLLhyHnAC9aG88zx7NUFYL9u4wsNPl0MA3pXB9
 nUJIOaQXS+yrpEXzMWN3GzRgt53e11SlWyRZwIUt3VRCYlD1l94IbM/xuLHZM2mS9gx0
 DjSQ==
X-Gm-Message-State: AOAM532RFjgQrOlTqUpkSXq8u7pkr8zBGI6TgJEnrKXWWKOc+KDU1dSp
 PjoA0KkMe5TPjAHKt8CLKA==
X-Google-Smtp-Source: ABdhPJznBK7J4jfTRRptgmH6VfuihabhXQkH6wzIbabFHPxNfhYIn/vanUVmodLM98GWZsQkpBEuAw==
X-Received: by 2002:a05:6e02:6cd:: with SMTP id
 p13mr994377ils.188.1590632703884; 
 Wed, 27 May 2020 19:25:03 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id y15sm2477235ila.13.2020.05.27.19.25.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 19:25:03 -0700 (PDT)
Received: (nullmailer pid 3238161 invoked by uid 1000);
 Thu, 28 May 2020 02:25:02 -0000
Date: Wed, 27 May 2020 20:25:02 -0600
From: Rob Herring <robh@kernel.org>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH 3/5] dt-bindings: reset: ocelot: Add documentation for
 'microchip,reset-switch-core' property
Message-ID: <20200528022502.GA3234572@bogus>
References: <20200513130842.24847-1-lars.povlsen@microchip.com>
 <20200513130842.24847-4-lars.povlsen@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513130842.24847-4-lars.povlsen@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_192505_305081_6ECDD707 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 SoC Team <soc@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 03:08:40PM +0200, Lars Povlsen wrote:
> This documents the 'microchip,reset-switch-core' property in the
> ocelot-reset driver.
> 
> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
> ---
>  .../devicetree/bindings/power/reset/ocelot-reset.txt        | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/power/reset/ocelot-reset.txt b/Documentation/devicetree/bindings/power/reset/ocelot-reset.txt
> index 4d530d8154848..20fff03753ad2 100644
> --- a/Documentation/devicetree/bindings/power/reset/ocelot-reset.txt
> +++ b/Documentation/devicetree/bindings/power/reset/ocelot-reset.txt
> @@ -9,9 +9,15 @@ microchip Sparx5 armv8 SoC's.
>  Required Properties:
>   - compatible: "mscc,ocelot-chip-reset" or "microchip,sparx5-chip-reset"
> 
> +Optional properties:
> +- microchip,reset-switch-core : Perform a switch core reset at the
> +  time of driver load. This is may be used to initialize the switch
> +  core to a known state (before other drivers are loaded).

How do you know when other drivers are loaded? This could be a module 
perhaps. Doesn't seem like something that belongs in DT.

Can this behavior be implied with "microchip,sparx5-chip-reset"?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
