Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E34989265
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 11 Aug 2019 17:44:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fxMk/ripXHnf57XPmlk0L+PiJ+uQ5bJQLLmwcuRNp88=; b=f3ZSFt6OkzvdpY
	WE+LFgbyoECepRPdTB6Vdkc0GJAuPQOoo9Z/BX1+KcCmH0/6aRdu5BTuCZSKktkcjayyQUbgaDtGc
	DXX7nhxIenkH3KL+qzkr5u/zVzzQ3NIpdBCJPpQY+kmkdE8Vx1gBzK9+CeEk3LeTo8oNohbn8rurv
	IoA2kMacXcozPLOL4LXLFVUEuxsGAVeZA6dRrZvexC+mFc0eRao/ovYOhBBjxuMqmP+FKj6hy1VLP
	L3BzVSBg978Gc0w9C1r2cWZH7hLwM/KovjLLqpt2ICeICRfRwgbyAVxw/ucyn/uM3IhnJPr2yGt9I
	Cj6u/wAQzehvheXU7kvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwq0w-0005vo-QH; Sun, 11 Aug 2019 15:44:10 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwq0n-0005uP-Sb; Sun, 11 Aug 2019 15:44:03 +0000
Received: by mail-ot1-x341.google.com with SMTP id b7so100311480otl.11;
 Sun, 11 Aug 2019 08:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RgzDUY8iEdtjWOC/UcjlQu0YWYk/dEALxCJaSLPEEOM=;
 b=o+O/hv48sg3cHwHlW8B8v0viNUMFEX8D2CGWAPNzX9pjzuu/6K7dFO7SSRtt2y1bhV
 7jKQAk4MWx9nG/yoH+SE4caHw/uu9/DzLJy6fjcx0ZiKYbC7E8bWqkIeJPYHSsW5MvOK
 H298XXnhhFWqJ7Ywh1i6i7IaPm9io3SWKnbkSZUCJJiqcjHs9Iwn9wDdqsSnnR5u18Us
 yPwcZGmvwNxzPEDgvOKruL+EDjUeODouMUmA1RobQOVJwCfPqIvEr75T3kD7DKSAth42
 15cgsvRSL3VL1Y4NJI/ChaSumrxgEUXqmeRtgj1yrY4E4Ogo3XWGopCuM3sC623wBrEx
 xGjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RgzDUY8iEdtjWOC/UcjlQu0YWYk/dEALxCJaSLPEEOM=;
 b=gI+zLTonz3IC1puQAQktPqonH57+82N2aB0fTSPGjzyUpC1cpZlqmZqXP4hrZe3hYb
 PI2lp8FTPGc0jLPdKf811RuQB2yATxB8jZlSMTMDns5EQxfDRqAC2xAv9X8ypwlDu3h9
 8i5Lg2nBRaIzyLzSbwp+Oek7GUSH7fXh0k5B9MuRbtrmK9v8XMeK7npINKF5McqcDFW3
 GbfJXRU0lHBf7WiMPPLBgOzwNzgytpxHwoi8tj4ya61Sy2OcUnViwkLKEtfCNn6ceagM
 gAJe0gOnSueFffFOj16xh6/rmrhwHSL/h3U7utPdmY50U4Fr8o1463J2QFAaMQ0IJ3Js
 7uXw==
X-Gm-Message-State: APjAAAVw0fe6i+Srx0aShk2SocaIY7Z+LY6ZQPKneP53n0fQ2wbQeNVa
 plCV61V0bhuyYkjWQi3XNXc7bk0LNiqzeEQY9Ek=
X-Google-Smtp-Source: APXvYqxWNrdwhdZjUN0E+QG+e/rP9vdmU9vDHg66HyoGvwKrC0kqPidAohwxJoPiEC9Es5jTZv3FayaUbUh8NtS3QYo=
X-Received: by 2002:a05:6830:1e5a:: with SMTP id
 e26mr11850575otj.96.1565538240642; 
 Sun, 11 Aug 2019 08:44:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190806130506.8753-1-glaroque@baylibre.com>
 <20190806130506.8753-3-glaroque@baylibre.com>
In-Reply-To: <20190806130506.8753-3-glaroque@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 11 Aug 2019 17:43:49 +0200
Message-ID: <CAFBinCAMjtWTAvVEhMxDx1NPvCp9dU8HewxBxxp1TAtr3ZbKtw@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] thermal: amlogic: Add thermal driver to support
 G12 SoCs
To: Guillaume La Roque <glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_084401_951618_C2DB9394 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org, khilman@baylibre.com,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Guillaume,

[...]
> +struct amlogic_thermal {
> +       struct platform_device *pdev;
> +       const struct amlogic_thermal_data *data;
> +       struct regmap *regmap;
> +       struct regmap *sec_ao_map;
> +       struct clk *clk;
> +       struct thermal_zone_device *tzd;
> +       u32 trim_info;
> +       void __iomem *base;
nit-pick: this is only used in _probe() so you could make it a local
variable there

[...]
> +static const struct of_device_id of_amlogic_thermal_match[] = {
> +       {
> +               .compatible = "amlogic,g12-ddr-thermal",
> +               .data = &amlogic_thermal_g12_ddr_param,
> +       },
> +       {
> +               .compatible = "amlogic,g12-cpu-thermal",
> +               .data = &amlogic_thermal_g12_cpu_param,
> +       },
I assume you are using "g12" to indicate that it's valid for both,
G12A and G12B?
meson-g12-common.dtsi currently does not use any other "amlogic,g12-*"
compatible string (there are some meson-axg-*, meson-gx-* and
meson-g12a-* ones, but no g12-*)
I would like to hear Kevin's and Neil's opinion on this one whether we
should introduce that "amlogic,g12-*" prefix or stick to
"amlogic,g12a-*"

[...]
> +       ret = amlogic_thermal_enable(pdata);
> +       if (ret)
> +               clk_disable_unprepare(pdata->clk);
amlogic_thermal_enable only returns an error-code if clk_prepare_enable() fails
in that case the clock is neither prepared nor enabled so we must not
call clk_disable_unprepare

apart from that it looks good to me (as someone who doesn't know the
thermal framework)


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
