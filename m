Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D792E892E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 14:16:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6BebfAggQUgJOtRsrfHOteYfe1yIinUPK2o4OUBgIEM=; b=AmDJCwNse+Zb0G
	24MLE0rSczzYpt2WPIlTcuMDclKk/0Mj93cjXYg4iZFU4Z87bJ3kIQCPPe7jLIiax9koIG3PxH3lp
	0HosC0xiOEsADrVDO3Bj4uOkUJCIU9KZ0T5uVAKm+EXdHhzVy3zMUqyOeCGgO5Abmbu1ok94D320w
	SXigiM5QSlzsqF0YYHKzrDOcCqtgUpXI2bKtbXPKB2OA5WCgS+FIwZStM58eZH5dqbfkFHKr9jLOI
	ENXJdap71DmsowwZdPUTIYBNarNndSh0b0hF8qQ7dw7GiKjHbfL5G4spV8VjpU4tQ9Y+zrgrWXVJB
	IcnY1OJKlnUg7Zow/UjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPRM7-0004rI-Uo; Tue, 29 Oct 2019 13:16:15 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPRLx-0004qY-0o
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 13:16:06 +0000
Received: by mail-pg1-x543.google.com with SMTP id p1so9574918pgi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 06:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rDAR1qdS022RvDkmF/JnXqxkZXLKSYyvZ7xcekyeQEQ=;
 b=eFGkqYc9CHYLgbmA3fBDUR1b/S/CZSuonfyOXIMsqiMhbvkZHuIooxlXyn0gs9U7VL
 R+F0FX1Onv2Lp04JJ+tfAH4Oe1iwhW2HIyHFzIQTjhfK+Ual3E5OKVEwDpIN4ZllRZT4
 valJ+V1d+e3oYEm+Le38OCeDKuPzD5w3j01+dfPvRltNESEOodVpZz9GJ/ouQjOEzrJ7
 fqzkKjZgN6849koIqlr5cODaGYOa2NUipVjGP1B6mx2i64HP9bjAx63zUTjDTsaFlFWb
 p637UTy1OKl9fFRCOvHOYrB/x9N23wr/ZMNH42opv72gVaBXqwlYpfYBVeyVIyE5+1dY
 8GRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=rDAR1qdS022RvDkmF/JnXqxkZXLKSYyvZ7xcekyeQEQ=;
 b=jZiTCmMzh9mUQhLfhkGI7dqX0QjgvI+dd9dpZrpssQrbXncveZ72OnqpmltVsqDhE7
 Kj4z5/4pFn4g3/43T0AGE8WWiH3Cgm6IrnnggTsdUNb1u7gBAbNcfM0jtMQaJ10WIdhv
 iN2hRRAHKT1wiHKIsgJtJLXmyQJAcZAQEVbicLgMoHWS+FFUs3teOKhsuOB+wyGTEaiU
 2xzQZ3sA2fpBwDFRsT4g4UpZFK+19n420q8RWDyIHepi4mtCo7RHjNHYJj8P2HOa6aHZ
 6C75MqIX0owncZnLyITtdYloNvYxJustsnEQFORL+wIT06DWYEb5QIIeMMa+Huq2bCev
 yHeg==
X-Gm-Message-State: APjAAAUejJL/dpH68LFo053skrfzaVqXIUFTn+FvLKaIcukdxhtX0vRC
 g1pwYx3vX6FAujnc3yU8sJA=
X-Google-Smtp-Source: APXvYqwk+TvBib/ARH05rzylFT0CcwN0b5rW/UeVrjgST/fD4Hn45Ia/UxXDOz4CLpn9Rqlnwb2VZA==
X-Received: by 2002:a63:234c:: with SMTP id u12mr10783800pgm.384.1572354964074; 
 Tue, 29 Oct 2019 06:16:04 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id 16sm10728832pfc.21.2019.10.29.06.16.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 29 Oct 2019 06:16:03 -0700 (PDT)
Date: Tue, 29 Oct 2019 06:16:02 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH v2 1/2] dt-bindings: watchdog: sama5d4_wdt: add
 microchip,sam9x60-wdt compatible
Message-ID: <20191029131602.GA8372@roeck-us.net>
References: <1571648890-15140-1-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571648890-15140-1-git-send-email-eugen.hristev@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_061605_265528_5E2AFC79 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, wim@linux-watchdog.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 09:14:05AM +0000, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> The Atmel sama5d4_wdt needs to be compatible with microchip,sam9x60-wdt
> The sama5d4_wdt driver is updated to work with both hardware blocks
> (sama5d4/sama5d2 and sam9x60 based blocks)
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> Acked-by: Rob Herring <robh@kernel.org>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  Documentation/devicetree/bindings/watchdog/atmel-sama5d4-wdt.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/atmel-sama5d4-wdt.txt b/Documentation/devicetree/bindings/watchdog/atmel-sama5d4-wdt.txt
> index 4fec1e3..44727fc 100644
> --- a/Documentation/devicetree/bindings/watchdog/atmel-sama5d4-wdt.txt
> +++ b/Documentation/devicetree/bindings/watchdog/atmel-sama5d4-wdt.txt
> @@ -1,7 +1,7 @@
>  * Atmel SAMA5D4 Watchdog Timer (WDT) Controller
>  
>  Required properties:
> -- compatible: "atmel,sama5d4-wdt"
> +- compatible: "atmel,sama5d4-wdt" or "microchip,sam9x60-wdt"
>  - reg: base physical address and length of memory mapped region.
>  
>  Optional properties:

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
