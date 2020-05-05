Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6676C1C5C7A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:49:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k639RxqtUmWnHdkX2jFz02ri13HcyT3ahm56KDKVyBk=; b=uJYOzCP7B1/eFQ
	PoSgt8xqLlaigFGl4jqPlaaVqKf80R5UJCse9X/t53XqjPo9UiSS+UDmVrVxGd/tBk4G7s34S97lF
	c2N+x2dL/JzI/zYS1vjF1QJ7samBHmec2LhHF6iAzaqNjlVIGHhAQ8A1Ryo7nQ0AZ+CFePMSCm2Mz
	kwc4XOlMABnRqLT7mYJWih4XhyxqNmbG0JAD1O05otEhjJUKGyV9sb/zmoj4SjzcSeK1iI5idB6VF
	OpHIgrIGfUUaGjcRuyEP9lKZ+VMCrEWBzDLjZQyyU5X2oKvlWvH1Ousbjwy/L7qVfzb/Zc8m7kenk
	x4x1Ad/lkiZxrMZMpGbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzp3-0000x4-13; Tue, 05 May 2020 15:49:29 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzoq-0000vt-0p
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:49:17 +0000
Received: by mail-ot1-f66.google.com with SMTP id m18so2020575otq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 08:49:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kCQr2A1yVRSlZqXHXQYGpMp329yMREeOZVsfc6fgXVk=;
 b=ULErG0JrpiTMN4EonGjECLHTwRcAY/TLB40iPcorqJl4u4HzF7cTcjNHA6NOcn0mtE
 3l92n+EEdLS5bPDwazfDRavvuCMEvQc5CuanGogfdjQjWC60trH7lW5xy3dsXs8H0xRi
 9/TGRH05I8FjA18PWK8lYgCztOoWZfZJaF0Ur8Jd1pnhcRFaoFc2UWHSzc1Tzye7IS7w
 cacrFIksWiGMaEiamse1rPKUY8xuI9E1hFQrbWAkAeHiAuR38T2l89nMqR9bGdc6N+3O
 fay61PZOGLCV+HvzYcD2PoTs1zTvh/2d2ce9G4fyvwMd6V05SpKLkknNunD5e5CobmTT
 fm2Q==
X-Gm-Message-State: AGi0PuZX+IiEu/jYiCCII+UH1TEyZUbjivuqUpjOIl6EyKI0iZJHXedY
 QWK94mCdIkJK+iH1h5usCw==
X-Google-Smtp-Source: APiQypI+Ez39Hrf4Q/bsebTZ68LQuPy7DpmQgJdv0Xsn4eo11httcQIjp0lYLFxRt3XsSqKHyhk0yw==
X-Received: by 2002:a9d:7858:: with SMTP id c24mr2655285otm.163.1588693755099; 
 Tue, 05 May 2020 08:49:15 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i5sm629069oik.11.2020.05.05.08.49.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 08:49:14 -0700 (PDT)
Received: (nullmailer pid 17500 invoked by uid 1000);
 Tue, 05 May 2020 15:49:13 -0000
Date: Tue, 5 May 2020 10:49:13 -0500
From: Rob Herring <robh@kernel.org>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [PATCH v10 1/3] media: dt-bindings: ov8856: Document YAML bindings
Message-ID: <20200505154913.GA17438@bogus>
References: <20200505100129.104673-1-robert.foss@linaro.org>
 <20200505100129.104673-2-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505100129.104673-2-robert.foss@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_084916_059774_B877E9D6 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Marco Felsch <m.felsch@pengutronix.de>, Robert Foss <robert.foss@linaro.org>,
 linux-kernel@vger.kernel.org, Ben Kao <ben.kao@intel.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Maxime Ripard <maxime@cerno.tech>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  5 May 2020 12:01:29 +0200, Robert Foss wrote:
> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> 
> This patch adds documentation of device tree in YAML schema for the
> OV8856 CMOS image sensor.
> 
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> ---
> 
> - Changes since v9:
>   * Remove remote-endpoint property
>   * Marco: Make port property required again
>   * Sakari: Remove Ben as a maintainer
>   * Sakari: Replace data-lanes with const items
>   * Sakari: Remove clock-lanes property
>   * Sakari & Rob Herring: Change type of link-frequency
>     work around dt-schema bug
> 
> - Changes since v8:
>   * Maxime: Added r-b
> 
> - Changes since v7:
>   * Marco: Make 'port' property optional
>   * Maxime & Sakari: Add 'link-frequencies' property to dt binding
>   * robher: Improve description for 'port' property
> 
> - Changes since v6:
>   * Marco: remove qcom specifics from DT example
>    
> - Changes since v5:
>   * Add assigned-clocks and assigned-clock-rates
>   * robher: dt-schema errors
> 
> - Changes since v4:
>   * Fabio: Change reset-gpio to GPIO_ACTIVE_LOW, explain in description
>   * Add clock-lanes property to example
>   * robher: Fix syntax error in devicetree example
> 
> - Changes since v3:
>   * robher: Fix syntax error
>   * robher: Removed maxItems
>   * Fixes yaml 'make dt-binding-check' errors
> 
> - Changes since v2:
> 
> - Changes since v1:
>   Fixes comments from Sakari, Tomasz
>   * Add clock-frequency and link-frequencies in DT
> 
>  .../devicetree/bindings/media/i2c/ov8856.yaml | 142 ++++++++++++++++++
>  MAINTAINERS                                   |   1 +
>  2 files changed, 143 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
