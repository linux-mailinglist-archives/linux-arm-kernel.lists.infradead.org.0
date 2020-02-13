Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD17F15CC94
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 21:48:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nTOAEItTabI39ZjvobrIuQ5gocnYDGBXyX0RFHloYj8=; b=VwzaAcvM+uPdBG
	AfrUwR7hrfVurM+GxOum6EpOm2eAmf/QlLEoxC9GDchmrxYF+E1X85BuwIcI9s5NyPf7vqPWaP5Od
	MUwGTVQiUBsi1OaINPZn6a2DQZgsOl5pwvzXjhVhvvjSpA0pJyTTFP/CiYXXG57GDU8NV/YZMjJll
	xvTMAqliK44AvEjOiOOKQY1ZlF5RERO4NkqoYQQt/ZybSDePV/sBbnD1R9EeU+e6r+6Uet/im0cyL
	A4rDD4LXflitmRsmQndECkxvYo83Z/pFZbZPaJOYLD0lheuQrEwapKck/GKKXNc23Z/+od1MOJQQx
	u3Q8Bm6zza9IGqhjU8TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2LPI-0007lt-Aj; Thu, 13 Feb 2020 20:48:20 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2LPA-0007lU-Lp
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 20:48:14 +0000
Received: by mail-oi1-f195.google.com with SMTP id p125so7197810oif.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 12:48:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=g23uUEX59uGCYRgNVfEjNd/uv394+mhBP8SG+Rxtig0=;
 b=d7dBIyeu7WS3kB7UzxHfdDqfcRrYHGO04vw1xCBcOyFj2ywOjBNJEHwSh1ZvSsj+mj
 hbcBBdsG4tH+2X/HDuiYailJik8AOvKDaPUWvtfkwxPfrjtbLx8AZXGVkL50WMcrHAHF
 qp7LLqSfWCr37YChukkMz4g+ZNYin4kz1U8jW7aDFfUN49g/sBgrdakY0R6X7XYo5eIt
 7Ga1rLTDg9+ckIQo1qciRWrYvbiOQ2sA5Z6D2FpVU1vmw28Kq0XYokQGbDSyz34bLAKa
 418pp8QpmooFvaH8iRWBYbhULQ8y1MLWAOsO2WDn85IkqFK5SkF0UeeolzqiIqnRz1Kf
 52cw==
X-Gm-Message-State: APjAAAWDx+W7kSoFkeGMv0195O6dv0d2kDdNO1xcYnmmoFktel+knDlv
 ZStrCg80tLsw/8TUQBxi5A==
X-Google-Smtp-Source: APXvYqxWrnb6ehqImVDwDcCsvZFQ3yUG6DrXv86xot7Alj3fpLbd+jZmZ5DG6VdMU6v72fNb4SxN3A==
X-Received: by 2002:a05:6808:8fc:: with SMTP id
 d28mr4348781oic.152.1581626892044; 
 Thu, 13 Feb 2020 12:48:12 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p24sm1172493oth.28.2020.02.13.12.48.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 12:48:11 -0800 (PST)
Received: (nullmailer pid 4686 invoked by uid 1000);
 Thu, 13 Feb 2020 20:48:10 -0000
Date: Thu, 13 Feb 2020 14:48:10 -0600
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 1/2] bus: Add DT bindings for Integrator/AP logical modules
Message-ID: <20200213204810.GA4058@bogus>
References: <20200213124620.34982-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213124620.34982-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_124812_711315_9FE67B74 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 13 Feb 2020 13:46:19 +0100, Linus Walleij wrote:
> This adds YAML device tree bindings for the Integrator/AP
> logical modules. These are plug-in tiles used typically for
> FPGA prototyping.
> 
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  .../bindings/bus/arm,integrator-ap-lm.yaml    | 89 +++++++++++++++++++
>  1 file changed, 89 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.example.dt.yaml: im-pd1@0,0: $nodename:0: 'im-pd1@0,0' does not match '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.example.dt.yaml: uart@c0100000: $nodename:0: 'uart@c0100000' does not match '^serial(@[0-9a-f,]+)*$'

See https://patchwork.ozlabs.org/patch/1237467
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
