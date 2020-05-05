Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DE41C5C73
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:49:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k639RxqtUmWnHdkX2jFz02ri13HcyT3ahm56KDKVyBk=; b=P72tVybX90DjbG
	a17sG+IAQpm0+OIeY/FNKIvgvUDBi52UKjqpjJiXQ9GpJxflawdRAhb8fXoo5i3Zo7wIOVQFjhNAr
	8LPkvBwg9K2Dv5y0m5CCcf+X1qNbFutUAkrtKwOLe4pbGKF23405VlTiH3oCRZktelxXIQOYJikfu
	eZ0f6QCPJ8eVxEYgm8TUNEdZ0UhsW16hFrec95MrWuIggw3xTw3pbNGzSdsM4lOg4tt8PxXIec55O
	H1VY95eLBESHmvc2eSU2f01ZlIXrtvA+P+4f8fpO8Zfs+vM9HdYwFAXFCHQkf4gyUr8Ld5yvPDMHF
	+sDhEEWUPgI0dLdIlo7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzoV-0000bd-2H; Tue, 05 May 2020 15:48:55 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzoI-0000Zp-3g
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:48:43 +0000
Received: by mail-ot1-f67.google.com with SMTP id j26so2066361ots.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 08:48:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kCQr2A1yVRSlZqXHXQYGpMp329yMREeOZVsfc6fgXVk=;
 b=bSxN3mGDUzN+rxZrq0JCGQK9LANDqfEfGIvZlGfxApELAZCx0Z5oIw6n6wmUOnCi/G
 EHpzl3p1fFJTQyXpmGZPIKJxdKmY+PxIqHMZAvmnomEbFEvs4hK9IXuB1HMpnJz+n0Ph
 Bu9PPjA1NyOQmyVhg2xxf4jSUzzcLUhdgyB0cXVjZB2tXCbMTFZUMn0f6vhC1QGW0tHM
 sLzSbN4Fe30l4aPj0dFuLnOP173Yr1MHy3eTJ6XOmKFU/Dh7y/Gej9eq3MhQLVixU1HH
 GPJVYSKCYlh5o/mqDqna6Jckl7647tx74hRpWyLI4Ou9l8oYGB8sJTtaYMZMmoM/S+7S
 wn/w==
X-Gm-Message-State: AGi0Pubo6Lg3K6cTiEcnYX7xbV4zgWsBHBxgKfNIrjeRULxaEflrw88r
 4NjgKp/GruGFYszyLjeD/g==
X-Google-Smtp-Source: APiQypJCQ6L9Z5niSmW5s26himlp5zzFw8N3HJiPoMh8Mhq/be6p7Kqv2MO27rDACBO141zFh4YN5A==
X-Received: by 2002:a9d:a55:: with SMTP id 79mr2843947otg.295.1588693719487;
 Tue, 05 May 2020 08:48:39 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r6sm657754oom.26.2020.05.05.08.48.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 08:48:38 -0700 (PDT)
Received: (nullmailer pid 16464 invoked by uid 1000);
 Tue, 05 May 2020 15:48:38 -0000
Date: Tue, 5 May 2020 10:48:38 -0500
From: Rob Herring <robh@kernel.org>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [PATCH v10 1/3] media: dt-bindings: ov8856: Document YAML bindings
Message-ID: <20200505154837.GA16403@bogus>
References: <20200505100129.104673-1-robert.foss@linaro.org>
 <20200505100129.104673-2-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505100129.104673-2-robert.foss@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_084842_183983_753128C4 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
