Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 699E312852B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 23:45:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EU0WVsibLoQbc89gainPLYaqi89fpAgYR9Bt8uzZ50o=; b=EEIKNGkFnqzPCV
	JdaaCGlJj8LtofbSlfpzqY8YogSiJiAmI6wWKRUf78JMoCfJgnxDc0XzH3HvHh3Sh1osC/tgj5Qbv
	J6lle6P3Zwpy2F1kihiXbwgfpKfunDZI707GUHSFilh10bd7xgi9LqBsQtRfXK7C5LNyBelQcQWlg
	2fwqpopBG7MwzHDNTzAMYCSpJK/ZNlw/teBhntGZN6afLblrI68fIeS2WmcqoaFwutgFQ0vETW/jJ
	No3nEUN+jrSGLJBAvSKLEzrkJP+RGvAveTPauPhjrDp3gRQRsConOr3T9jFyX+x8rBVgKN2y5URSj
	tibdQ08PwqCpaJmpx5OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiR1X-0001Pt-Fi; Fri, 20 Dec 2019 22:45:31 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiR1F-0001HS-3O
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 22:45:14 +0000
Received: by mail-io1-f65.google.com with SMTP id r13so902441ioa.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 14:45:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GrzZQAIvU13tZUBnamTdgJp1IR4Bvtox0FpOX5n6y60=;
 b=AfgZCkeKYN42afOC4feLK1FemIfwoWubwVDz8bGq67CoODnoHpQYp8ivKpaBoQiuTp
 z1xjhAoI8Vh72xVIlveAnPVXb2gAAoZCPn7nWIAmlgDF15pbKWeMKptZSut5m1QQO+Z/
 NOnwtKlrmS+3R9MA8sP0ATt+rJ8V5QaQc9SUBKgpRcfEBtARuGh5IlPtF2IdM57CLqIA
 qxfBpQSh5+wDrcpzdkDnSz68xYJAS4ti70PsgwCu3A5e36pcnYZtbSFyassTaLoDGkBs
 otVo4K4rJX3G2XP0yjOQI8ehnGl1e9oP/FyeYQY+oPlw+dUfvSnLE19sKzzHe79t3WTx
 m8hA==
X-Gm-Message-State: APjAAAUqETpt3XmTnBXGyZG7sdG8lrvMFRd69GYk+4Fv3eTo+HAbfY2H
 BHlP1fMYTllx4UsNrThHmNVdQo0=
X-Google-Smtp-Source: APXvYqzBx9Q9+Q54FCK7VbIfQprJ91z305BhSeASttR/gPnnX5RkKwNQsiLkQM5DQNqMVxCsp4IJYw==
X-Received: by 2002:a02:cc75:: with SMTP id j21mr13923008jaq.113.1576881912130; 
 Fri, 20 Dec 2019 14:45:12 -0800 (PST)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id p5sm5427227ilg.69.2019.12.20.14.45.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 14:45:11 -0800 (PST)
Date: Fri, 20 Dec 2019 15:45:10 -0700
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 2/3] dt-bindings: mfd: Convert Allwinner legacy PRCM
 bindings to schemas
Message-ID: <20191220224510.GA19564@bogus>
References: <20191219090712.947490-1-maxime@cerno.tech>
 <20191219090712.947490-2-maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219090712.947490-2-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_144513_225015_5F4E5521 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>,
 Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
 p.zabel@pengutronix.de, lee.jones@linaro.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Dec 2019 10:07:11 +0100, Maxime Ripard wrote:
> The Allwinner SoCs have a legacy set of bindings (and a drivers to
> support it in Linux) to support the PRCM unit found in most recent SoCs.
> 
> Now that we have the DT validation in place, let's split into separate file
> and convert the device tree bindings for those controllers to schemas, and
> mark them all as deprecated.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../mfd/allwinner,sun6i-a31-prcm.yaml         | 219 ++++++++++++++++++
>  .../mfd/allwinner,sun8i-a23-prcm.yaml         | 200 ++++++++++++++++
>  .../devicetree/bindings/mfd/sun6i-prcm.txt    |  59 -----
>  3 files changed, 419 insertions(+), 59 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mfd/allwinner,sun6i-a31-prcm.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/allwinner,sun8i-a23-prcm.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mfd/sun6i-prcm.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
