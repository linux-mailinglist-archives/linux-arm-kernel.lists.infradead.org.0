Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FAA12FEC9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 23:29:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6tkmNH5tNpcHce8LMQ9yrM7qiKo1d2ZcLPS4HEifxOQ=; b=ggbuHKwCLmu/xo
	7ABf3TkUfYw13/uxUfhIf0XIQCLVb1KvY4cPTjMvTwYYk3MkdYhdmfFNN/6Hy87YnOCMt2xwP8yEX
	y3iFbgXVxarwFpsLxl4UtJqEIhN+UFhMBhNVnyMpcz1uupQ7D5xWhy+4tVV1B15Y2gdxRS2eL81ex
	m0ocpCgu4qysGR0BjoCM1T0773+SMQyx1fGYFqLUozoS++rjBNX6OcxMC1J6pODTbUGPA4i//7sAs
	sFPP6Ifhy1gc5f14gP+mSSOF33lZ8TwhtRiNq/9/iF4JXZhJPxO0Reqq/aOoau3yxEFAGbXp/JBYb
	BhYRZY4Lq0iuLCTZPf/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inVRy-0001WJ-Tx; Fri, 03 Jan 2020 22:29:46 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inVRi-0001Qz-0N
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 22:29:31 +0000
Received: by mail-io1-f67.google.com with SMTP id z193so42906860iof.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 14:29:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TFDz39ekdeb/43sN0oag/MOWFARZHq5KPLmY9cO79x8=;
 b=ISUvSS7Ww8WjXh6hsGW/+VSK5hK2o512uAwodJCdel7r6p7t7BxN8gf0FGRt4C5kyu
 c9BHJx0fQIG43WL0IlU72kDTR7uv/N99zRPZIRuzIZWT9sPm9CiQK2yxo7WnCER/JzJB
 Khf/xsqA2rOcUxW1fuPE/1q3jBlzqMRji9gSWfD4nzfblHTMSRZDjENghH7De1LFIX/L
 5b9fNTb3BpoKRYl7BUvF0snmR7Eh867eztNCO0mD8s2qhNI9RYXWdAB4tFzi69QUBarH
 sS2S4k4/NWiCH+RuyqitwEsR9jln4Q2lnThORUkSywxBEGfVYE//7Lu/GifimaaL2w+7
 tU1w==
X-Gm-Message-State: APjAAAXXx71/fNG96f/YrGtrW1CYQM9K4i7UdARE4hraHUGHn1j2kUYb
 i7qGln/Da40oW/0r5B365G1yKnw=
X-Google-Smtp-Source: APXvYqwv7sE0wukDiruUblG1Q+70fWqKDjrZjExPcSk3wImUswWHq1wWBNDh6dUCEjpCVE9MI1G0rg==
X-Received: by 2002:a5e:9907:: with SMTP id t7mr61125951ioj.72.1578090568817; 
 Fri, 03 Jan 2020 14:29:28 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id 16sm15214855ioe.84.2020.01.03.14.29.26
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 14:29:28 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219b7
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Fri, 03 Jan 2020 15:29:25 -0700
Date: Fri, 3 Jan 2020 15:29:25 -0700
From: Rob Herring <robh@kernel.org>
To: Jian Hu <jian.hu@amlogic.com>
Subject: Re: [PATCH v5 1/5] dt-bindings: clock: meson: add A1 PLL clock
 controller bindings
Message-ID: <20200103222925.GA654@bogus>
References: <20191227094606.143637-1-jian.hu@amlogic.com>
 <20191227094606.143637-2-jian.hu@amlogic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191227094606.143637-2-jian.hu@amlogic.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_142930_048557_9EC60055 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
 Jian Hu <jian.hu@amlogic.com>, linux-arm-kernel@lists.infradead.org,
 Qiufang Dai <qiufang.dai@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, Chandle Zou <chandle.zou@amlogic.com>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 27 Dec 2019 17:46:02 +0800, Jian Hu wrote:
> Add the documentation to support Amlogic A1 PLL clock driver,
> and add A1 PLL clock controller bindings.
> 
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
> ---
>  .../bindings/clock/amlogic,a1-pll-clkc.yaml   | 54 +++++++++++++++++++
>  include/dt-bindings/clock/a1-pll-clkc.h       | 16 ++++++
>  2 files changed, 70 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,a1-pll-clkc.yaml
>  create mode 100644 include/dt-bindings/clock/a1-pll-clkc.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
