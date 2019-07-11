Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8864B65943
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 16:45:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3TuZPGg/SfWHjiThzRQQwJzHGaRz1Y9lJKtEMfQO1Ec=; b=OYIc3hWgbQzzDo
	Ls38IkE04g8IlztgeBswjQ5kza9/BP6lTX0z+FScbuVqi5L38uEjxwUrzP5JOfEpo9NO1yeiwYKf6
	j5KgL2c+7w5so+R9rEZVaXvhImap2gICNuDqWODFwE70dxD1IuNmeQ1+4FcQacHPyNvTL4BaTuceQ
	Fg6csxu3ZeOIEFcVnA+zf09YmTUeVlCYVt7zczEvbaKRhsvwvQfDmNLt/Z2oLSOyPnH6T+igLUdHI
	honbdbewV5mxDBFovHaxHT3rAF+P8V+kWDyW6uHu9VxQ2/ZSQxszcTEuSNMmC/gh4GgmvbBv7Qpo+
	Xj4gvtanH3/WS5bYepSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlaJk-0003vq-Ez; Thu, 11 Jul 2019 14:45:04 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlaJU-0003uw-4q
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 14:44:49 +0000
Received: by mail-pg1-x541.google.com with SMTP id p10so3062437pgn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 07:44:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=AeWgNBL0vGG9Q0W1XyAtTTadhrtMpodZjMiQ47VNvNo=;
 b=jAcuVEQQIMZ8TtPCtZhvvkOswtz9kMXpu3/fl/zZ8r2p4lBere/WDYW8TgghDn2afu
 Fl6E9jUg+eQKbEvv/wdRFpHjhczPrnpR5mV+JSSzuFvBpBnBvIeuSylHd1+G+y4gm8m/
 WHejBbnCV+/tD3TGRTKQo0gCHz786gypWQuMPD6gZ5PqSYfzSg8ZJONaxqVNSimqfhfr
 z/qYC+ij9SNjlI/oFpP5tVSy2t785VOBlar9uPk9Q2NnaKVczX3MfmeWMQplMkOxL8FU
 rrVL4yRhgm7uTQBxiRofM6yk/8gBYjhhjLfj9GmvY5rUUnPYIc4CCwVzDDRjF12o1f8j
 DE/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AeWgNBL0vGG9Q0W1XyAtTTadhrtMpodZjMiQ47VNvNo=;
 b=SZFmNI+Vt1ON91axyijAlou2g7jg6OArzlWVduiLBk9MhUBpJGwr7ku+FnZHB1W2k8
 OHdutc0GHcOefiiZaB1xd0omzyqnHucp275fu3bFZ92MReIA8bHe7qitdHXcTk3QpD7a
 b8iqB883zLwKBvvwS6mdox7a4eLI6isYCOIgSjp1IuGlWd9PVjnU38ilQTEGefhj72I4
 mf2zNIZa4PefvABSADsZZPluuPSp68UkrgcSxbtMeumMtJuyHCXxXqDlyPzkc9BeW+Iq
 McICavkXWiFzbQa9vP480wFl/Hvr/Kxettw0VNfI+KtxZGIFeOIsb+Rtm0xqOqaXPZhB
 TUNQ==
X-Gm-Message-State: APjAAAXewXheeD6SJGde1Zomz/GHd/XrFPL0TKcFbBx9dcr0rAzcftsc
 sRjHURe4UibMi1juW4FadyoYtw==
X-Google-Smtp-Source: APXvYqzZnI4QvrJWH5nNTwi3+akS6nULSvCsZQrVF3PWvIzD3Iw3lEJpqz8SxmHZU7/6w9TFNAqhAA==
X-Received: by 2002:a17:90a:23ce:: with SMTP id
 g72mr5299751pje.77.1562856287236; 
 Thu, 11 Jul 2019 07:44:47 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id a5sm4953523pjv.21.2019.07.11.07.44.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 07:44:46 -0700 (PDT)
Date: Thu, 11 Jul 2019 07:45:57 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Subject: Re: [PATCH v3 04/14] dt-bindings: mailbox: qcom: Add clock-name
 optional property
Message-ID: <20190711144557.GE7234@tuxbook-pro>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
 <20190625164733.11091-5-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625164733.11091-5-jorge.ramirez-ortiz@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_074448_189599_D2446467 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, heiko@sntech.de, mturquette@baylibre.com,
 will.deacon@arm.com, david.brown@linaro.org, linux-clk@vger.kernel.org,
 jassisinghbrar@gmail.com, sibis@codeaurora.org, jagan@amarulasolutions.com,
 devicetree@vger.kernel.org, niklas.cassel@linaro.org, arnd@arndb.de,
 linux-arm-msm@vger.kernel.org, olof@lixom.net, robh+dt@kernel.org,
 horms+renesas@verge.net.au, linux-arm-kernel@lists.infradead.org,
 sboyd@kernel.org, linux-kernel@vger.kernel.org, amit.kucheria@linaro.org,
 vkoul@kernel.org, khasim.mohammed@linaro.org, enric.balletbo@collabora.com,
 georgi.djakov@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 25 Jun 09:47 PDT 2019, Jorge Ramirez-Ortiz wrote:

> When the APCS clock is registered (platform dependent), it retrieves
> its parent names from hardcoded values in the driver.
> 
> The following commit allows the DT node to provide such clock names to
> the platform data based clock driver therefore avoiding having to
> explicitly embed those names in the clock driver source code.
> 
> Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
> Reviewed-by: Rob Herring <robh@kernel.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  .../mailbox/qcom,apcs-kpss-global.txt         | 24 ++++++++++++++++---
>  1 file changed, 21 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.txt b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.txt
> index 1232fc9fc709..b69310322b09 100644
> --- a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.txt
> +++ b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.txt
> @@ -18,10 +18,11 @@ platforms.
>  	Usage: required
>  	Value type: <prop-encoded-array>
>  	Definition: must specify the base address and size of the global block
> +
>  - clocks:
> -	Usage: required if #clocks-cells property is present
> -	Value type: <phandle>
> -	Definition: phandle to the input PLL, which feeds the APCS mux/divider
> +	Usage: required if #clock-names property is present
> +	Value type: <phandle array>
> +	Definition: phandles to the two parent clocks of the clock driver.
>  
>  - #mbox-cells:
>  	Usage: required
> @@ -33,6 +34,12 @@ platforms.
>  	Value type: <u32>
>  	Definition: as described in clock.txt, must be 0
>  
> +- clock-names:
> +	Usage: required if the platform data based clock driver needs to
> +	retrieve the parent clock names from device tree.
> +	This will requires two mandatory clocks to be defined.
> +	Value type: <string-array>
> +	Definition: must be "aux" and "pll"
>  
>  = EXAMPLE
>  The following example describes the APCS HMSS found in MSM8996 and part of the
> @@ -65,3 +72,14 @@ Below is another example of the APCS binding on MSM8916 platforms:
>  		clocks = <&a53pll>;
>  		#clock-cells = <0>;
>  	};
> +
> +Below is another example of the APCS binding on QCS404 platforms:
> +
> +	apcs_glb: mailbox@b011000 {
> +		compatible = "qcom,qcs404-apcs-apps-global", "syscon";
> +		reg = <0x0b011000 0x1000>;
> +		#mbox-cells = <1>;
> +		clocks = <&gcc GCC_GPLL0_AO_OUT_MAIN>, <&apcs_hfpll>;
> +		clock-names = "aux", "pll";
> +		#clock-cells = <0>;
> +	};
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
