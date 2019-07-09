Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0916382B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 16:49:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+G8f02Lkto7mkkMxX0nBDZygLE+zofFGQjceQm/RhQ=; b=iSwvHBD1Ylr6XV
	CtLDPLkTLSjbbnOkt+Yb63yBpnAiqFUu16xhpvY1JOfP8j5pVoXG20gyXsA3g8DdZs0K8s4PxxYVE
	bioN6Mo2uGYQUnyZpb8eLI6CEIJLyzeagANM7YjiL9dhrMvMkZScpRltBke34igdt9TGbk0vA/UXq
	wJpZptGvWbRGtwoQ/9XWEzFzqRBmy/FWA6fXa+mN626gwGDjkyZOfV+QGEkpTIW05rLgeOeFj6ZdS
	QMQMMVQIgcftdhjg7fRlC96+n4ThW77EaRI/E+igXQij0/3M73LABMjRnBUcRekR3v4SOog+FBY3V
	MCi4XDUCSXrHBqDIx9RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkrRA-0006Y3-1g; Tue, 09 Jul 2019 14:49:44 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkrQw-0006Lw-JS
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 14:49:32 +0000
Received: by mail-io1-f68.google.com with SMTP id z3so28772680iog.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 07:49:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NBos5KwAP2Y9O9kzC0Y3x26RLLeEVK2uJfPnwG/7Y9E=;
 b=EQCC7g7ZrvowNSW6Juseiar/TJ4nqfIatWtndIBakqru3PH4SOuCZxe1PimCMH814f
 wIghmY2i+lQV7suzikPqIrCab3m9D85pW+A3XHKOAejY32PcFV6aJ8rPrko86FSJweHy
 eakEwsl1kgcvAbfsZdb7s4MpvhFtlRm5UIfv0eKBxd38LaXMbOQphX9Hd1D4Bwc0Us4a
 +U0XG2SYfscRWV1i1XIoVJFN7yGEKoAWdgbjy2HpWZkw2A6yryTjSMwZdDr5Y3DN0h4H
 Fh3SU2fXJjYOuxe0ZKioW/i0t2uBVyfSx7B2cicCNYeHeyWIRFaZZzU0yPsjpWLvjfgH
 DQLg==
X-Gm-Message-State: APjAAAUGD2wt+khiklOl+K3A9ajCj5EmYesqOI4uCu4283kHSzk3B1ma
 UxfCo1ty/vjFUAIas+XCCvaiXAYWYA==
X-Google-Smtp-Source: APXvYqyE5RmuWhStelgqyIGOf6PvzmyOg1Fsspjxojnp3v8t3CgCwImQuOBGdwN4EusPvXDRomJhDg==
X-Received: by 2002:a02:230a:: with SMTP id u10mr28541580jau.117.1562683769810; 
 Tue, 09 Jul 2019 07:49:29 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id s2sm15034890ioj.8.2019.07.09.07.49.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 07:49:29 -0700 (PDT)
Date: Tue, 9 Jul 2019 08:49:28 -0600
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v2 1/9] dt-bindings: display: Add TCON LCD compatible for
 R40
Message-ID: <20190709144928.GA31407@bogus>
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
 <20190614164324.9427-2-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614164324.9427-2-jagan@amarulasolutions.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_074930_640047_DB0E3DB5 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>, Chen-Yu Tsai <wens@csie.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 14 Jun 2019 22:13:16 +0530, Jagan Teki wrote:
> Like TCON TV0, TV1 allwinner R40 has TCON LCD0, LCD1 which
> are managed via TCON TOP.
> 
> Add tcon lcd compatible R40, the same compatible can handle
> TCON LCD0, LCD1.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Acked-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  Documentation/devicetree/bindings/display/sunxi/sun4i-drm.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
