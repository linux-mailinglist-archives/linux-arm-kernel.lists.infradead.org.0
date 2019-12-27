Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCD912B607
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 18:05:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ymSPvNWk79NeWp8q0KDJEROFvJTiTlyh65wmi6rsNH8=; b=jP9cM/qACFAKYB
	H2VqvWw3NaoDgR2pqrqmwhUo3rUJEw7hM8mJB9wIQ2TkvOyUhUe3pWY5tNbFDB+rQBZ4X4tKi9Pop
	PhIZtgrGWjeG3gnmrWij7Wo8EpSbXLLt04a076dNd+JvfVWkIHF5pqIFdaWtra6+uza9s/7qajSad
	2V7kEUgoWHcLrjSmJ1tBsjHlC2zEsrResxPNYmqH+gRBfuAqfBganIw8/1i91hQDlujfPZ9W3nVyA
	yrZ+Lxk1FLCAP7Z57Gee6PJXoz78glp2JTSXHmf5Tcn2F6X2A1StgVt2zrr00k85xqLHGnDzzOmxA
	BgAwhmKT51Y4KMwwoa4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikt2n-0002rC-Dy; Fri, 27 Dec 2019 17:04:57 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikt2c-0002pw-9O; Fri, 27 Dec 2019 17:04:47 +0000
Received: by mail-ed1-x544.google.com with SMTP id j17so25789328edp.3;
 Fri, 27 Dec 2019 09:04:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BoVbc5pFxgDga02d7WpROu4QcXo0Jnx36QL7mAbHE+o=;
 b=GKlBMroYHKZ+NeE9hZTwNpzDD2un2MsXbWFiIqXLUAlw4zHJf04GITHmWpvNDseB8q
 Bqz59shO329cyZVFllXLlGDUGpRZYX76XIM7ABBWAWEPOeZL32U3z/idBD0dKFyhDWiQ
 oIcbi38+6nV4daU80bI/u+HYvi2+fCTk3D0hIiCeD6wauLvlZxum7/KLwq9Xx2tMR9Ld
 0oUIE7SNzoo8g+yibPu98/Ks5OOEhrRUQ1t4uBWXMiOq45e+PkJJnFlZXbOn/CPOeISi
 c8sDROdDLLtOZtVqSAzwODofVPqJfrD9YGnYQ01cLL5KTF4tjMFXDEsJQPiDqxUsgBT6
 LJfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BoVbc5pFxgDga02d7WpROu4QcXo0Jnx36QL7mAbHE+o=;
 b=EopZ8TD3LxYg+499/Q49ypa4fHixcKWFO3X4fcDMNz8ZbSLAn4pAvCU6aihWlwFyIu
 D3pKnPiDbP4P1ufq0ykEngFFX1TCvsRNWUuTNMDqX7lLvbPyQNYN6DyueBr3WTb/jHeu
 kwqjqTJA3yhnnHh3k+hYDeoJqlVBUNyIXfNqAjIHYJlviqLSF2vSbN/1uUIG8OEEOYdR
 B2eTJpV+6t+wmX3/co8E37n+WxwuAWi1jIgBilbd7ov9bx+k71RHQ1WFEhL62cIJHV31
 7aOSvvanmgPQk7J+bA8MB0ydI2WtMvgyfwLB6EvchRz3qSIwIlPXDDTa5GqMCZ6tCFD+
 QKLQ==
X-Gm-Message-State: APjAAAWB1iHe90HDss+jFSxE0CSVd5HUF9f5Z4L5fo0e7qkhgPGo3CaX
 K34JFIkU0PrSfzpkki07ojzXOR74xaqhzGWBedM=
X-Google-Smtp-Source: APXvYqxb40zU5q6fp02+uSgYoDnGWDNjt9ky8oUSBuCmkdvIsTYbQe34JEzsFayd1/qdz0Dqt0rB7GiW2uX4tkdpQik=
X-Received: by 2002:a17:906:cc8b:: with SMTP id
 oq11mr56006300ejb.193.1577466284880; 
 Fri, 27 Dec 2019 09:04:44 -0800 (PST)
MIME-Version: 1.0
References: <20191227094606.143637-1-jian.hu@amlogic.com>
 <20191227094606.143637-4-jian.hu@amlogic.com>
In-Reply-To: <20191227094606.143637-4-jian.hu@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Fri, 27 Dec 2019 18:04:33 +0100
Message-ID: <CAFBinCB2XF1unfEGbApuoXR3ZBRMwgc4EuqSjgKWKm_2G16S5g@mail.gmail.com>
Subject: Re: [PATCH v5 3/5] clk: meson: a1: add support for Amlogic A1 PLL
 clock driver
To: Jian Hu <jian.hu@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_090446_353114_30B4929A 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Qiufang Dai <qiufang.dai@amlogic.com>, Chandle Zou <chandle.zou@amlogic.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jian,

On Fri, Dec 27, 2019 at 10:46 AM Jian Hu <jian.hu@amlogic.com> wrote:
[...]
> +               .parent_data = &(const struct clk_parent_data){
> +                       .fw_name = "xtal_fixpll",
> +               },
in the Meson8b and G12A (I assume it's the same on GXBB, I didn't
check it) we have a space between " clk_parent_data)" and "{"
this applies to at least one more occurrence below

[...]
> +               /*
> +                * This clock is used by APB bus which setted in Romcode
nit-pick: I'm not sure about the grammar here: setted -> "is set"?
and to make sure I understand this correctly: do you mean the "boot
ROM" with "Romcode"?

[...]
> +static int meson_a1_pll_probe(struct platform_device *pdev)
> +{
> +       const struct meson_eeclkc_data *data;
what do you need this "data" variable for?

> +       struct device *dev = &pdev->dev;
> +       struct resource *res;
> +       void __iomem *base;
> +       struct regmap *map;
> +       int ret, i;
> +
> +       data = of_device_get_match_data(dev);
> +       if (!data)
> +               return -EINVAL;
> +
> +       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +
> +       base = devm_ioremap_resource(dev, res);
> +       if (IS_ERR(base))
> +               return PTR_ERR(base);
> +
> +       map = devm_regmap_init_mmio(dev, base, &clkc_regmap_config);
> +       if (IS_ERR(map))
> +              return PTR_ERR(map);
> +
> +       /* Populate regmap for the regmap backed clocks */
> +       for (i = 0; i < data->regmap_clk_num; i++)
> +               data->regmap_clks[i]->map = map;
why can't we use a1_pll_regmaps directly here?

> +
> +       for (i = 0; i < data->hw_onecell_data->num; i++) {
> +               /* array might be sparse */
> +               if (!data->hw_onecell_data->hws[i])
> +                       continue;
> +
> +               ret = devm_clk_hw_register(dev, data->hw_onecell_data->hws[i]);
and why can't we use a1_pll_hw_onecell_data directly here?

[...]
> +static const struct meson_eeclkc_data a1_pll_data = {
> +               .regmap_clks = a1_pll_regmaps,
> +               .regmap_clk_num = ARRAY_SIZE(a1_pll_regmaps),
> +               .hw_onecell_data = &a1_pll_hw_onecell_data,
> +};
if _probe would access these directly then you can drop meson_eeclkc_data
that is a good thing in my opinion because I was confused by the
"eeclk" since the patch description says that there's no EE or AO
domain on the A1 SoCs


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
