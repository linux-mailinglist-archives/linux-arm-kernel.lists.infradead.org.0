Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20220198134
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 18:28:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XF+rwGlpF9sR0zDLJAfisW1xdJ7x/zuEs2Apr3/E4z0=; b=gUh6Ct7vPw9LX/
	IIYgExlBkJFDzbURr63K4b0MukdMZZSzRyyql59EDYFiOOFVuKnA+NuCcNkqFet6M9SounEhvTkTI
	Jf6ZhzB9B3q9jhcBUFzDqvMZ6R15xjoEMYj5lOe0Xil/qHAtMDIJGHH17nCoN4x8UaTu0C2IfWtFz
	1z1Y/TADI1az9f+HAT687PquV2LpNGQevRRXAoHSUQ3xQM/x2tfbqeOPY6+3H8tQcCTs0DBP2jwTm
	Bl2MBsGIUcy0yGebu4OLx14tfGGBBL0qJAImzbDCOa4K2nPy/PaQPUQNOkBT74uhxMeKFyRn9JviW
	lzQSqgw9sd7z4ADXUrYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIxGt-0002qo-CA; Mon, 30 Mar 2020 16:28:19 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIxGj-0002pf-60; Mon, 30 Mar 2020 16:28:10 +0000
Received: by mail-io1-f65.google.com with SMTP id i3so9251330ioo.13;
 Mon, 30 Mar 2020 09:28:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=g4xE6WgRPY/ofYo+AU3gHyBfgox1LqQ8FIlPCkJQGyk=;
 b=DTFjZM4waWImd5bY4n2xxPeK3bzzplkj0+LLz2SA/p3+kbSTykySpxUMCv/aQMn09D
 bN3zugMWS+zNOAZ/Ndd7V6luZSY9aQdiAEL7+QFEt183WW6b8hpxYlCSF28rhzKUOjW7
 MwuDgPHJqstcidWM9PnaAVYWn1px5gDnj3k4SA/CFo7BWpHTFYbZL73fhKOhZQQPRoY4
 5oVRB1PyjoABwzhkbVH/S/LlpNQkb3pDcKtWXBeXOY6ipLONvsajuPd4VdYnsx+qNqhK
 5TFc/AYeUFGp+VaxDltAa1WEsXqygM1HtRJgv8TvlwLpJnCsCoiYxtAGD6FYWJC4qqzc
 tS4A==
X-Gm-Message-State: ANhLgQ1kPAK5a61N0JxuKqGNw/zBrzdDfvvHNann2MG/S+VWiOJmE7Ad
 K7Yg4me8dYgUWKPjAkcWtg==
X-Google-Smtp-Source: ADFU+vtqY4AfJ9Mj+w3Ew+uvBRq1gXk3qUFKAIQJlsvqmcTWMhltCzJINAWQvEG/UaLUJ+dp7lTSjQ==
X-Received: by 2002:a02:a85:: with SMTP id 127mr11347531jaw.51.1585585686698; 
 Mon, 30 Mar 2020 09:28:06 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id s66sm5031561ilc.9.2020.03.30.09.28.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 09:28:05 -0700 (PDT)
Received: (nullmailer pid 28168 invoked by uid 1000);
 Mon, 30 Mar 2020 16:28:04 -0000
Date: Mon, 30 Mar 2020 10:28:04 -0600
From: Rob Herring <robh@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH v5 1/3] dt-bindings: mmc: Document the Amlogic Meson SDHC
 MMC host controller
Message-ID: <20200330162804.GA27288@bogus>
References: <20200328003249.1248978-1-martin.blumenstingl@googlemail.com>
 <20200328003249.1248978-2-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200328003249.1248978-2-martin.blumenstingl@googlemail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_092809_222343_7BDD909B 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 jianxin.pan@amlogic.com, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, yinxin_1989@aliyun.com,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Mar 28, 2020 at 01:32:47AM +0100, Martin Blumenstingl wrote:
> This documents the devicetree bindings for the SDHC MMC host controller
> found in Meson6, Meson8, Meson8b and Meson8m2 SoCs. It can use a
> bus-width of 1/4/8-bit and it supports eMMC spec 4.4x/4.5x including
> HS200 mode (up to 100MHz clock). It embeds an internal clock controller
> which outputs four clocks (mod_clk, sd_clk, tx_clk and rx_clk) and is
> fed by four external input clocks (clkin[0-3]). "pclk" is the module
> register clock, it has to be enabled to access the registers.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  .../bindings/mmc/amlogic,meson-mx-sdhc.yaml   | 83 +++++++++++++++++++
>  .../dt-bindings/clock/meson-mx-sdhc-clkc.h    |  8 ++
>  2 files changed, 91 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.yaml
>  create mode 100644 include/dt-bindings/clock/meson-mx-sdhc-clkc.h

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
