Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 739C89CD63
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 12:39:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K4rhRjH6zrNFErKZ9ZbaM/5dW+65CwvRP2fMV7VuWiw=; b=Ni9/J+t5oE+a4d
	pKMqTT5XE2yNQk/pf1MSgZ2TVPli6PN/ZRb0IvK0MJO1LXs0UmQO09XLgrb5r3Em1ptD7LX+ue5s3
	3iVSRXGjqiqB7FrTSxF6SCWPUGO0po+RGjyLhPBEDMr1wB4//O0yTnhezkKSs3rnYnEdOuhkAkBKR
	EBI1gpyex5TyBpzNkqmH+CGktp6mSaFKgkM04LvBvIxebeMb06rZ5nFyXyFkQpHw29Atd0/vN0Kz1
	b58TB7QrqfUICrRU0CRIKw2OtWBjODW5jJsGr+n/9gvD/OypphT65gDuV/PVEzH/mKA5IZvHKEEvJ
	O6OQvVPRBg2yIDFs9bEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2COs-0007h3-4Z; Mon, 26 Aug 2019 10:39:02 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2COk-0007g0-JZ
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 10:38:56 +0000
Received: by mail-wm1-x343.google.com with SMTP id d16so15327185wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 03:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=Kf8u4CCd/0S9O2So6myGgJK9LXtHBggKOGNILgyNsuQ=;
 b=zQ8qmx05qaOIOKB3nVfxXqNCv+sn45uHFoupchU/B5zmHCN7P03HHPRLrUjbmJmnhx
 IpyiotKwMSMCJbdLA9LfMV32TI6cVrpw+aoiguzXU9TCxD84ovcOUzc/yHq2RzLjkOwh
 V6qOJdCIhgChbe7pPv77ONsJFBRDFa3bl91/LcGbmlZBM/ki7UAsHZzDqDR5Z7AkAkIQ
 e55qpjmV2NWd/xbpvPP3DnV0donLR7jFVICnLZkeFV19/9R2kmIW99MIPIwW8mmLs50T
 /tCRnjIzaS3Ez4vOpUw1ZnZZUCN9Z8QTxRF95FpldE71mQQRFb6fqa51UjkMk84x3r8C
 qxJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Kf8u4CCd/0S9O2So6myGgJK9LXtHBggKOGNILgyNsuQ=;
 b=NQhPbT2j2TllINyg5JMid6mljtgANXo55hB0gVNA0Q1ro7ZgqFizilcsa0fIRVwSE/
 03U9DjWvmKJfqlIz2i/HBxMQvzeaHolUD7L7ADPeAjl6mtpbmwBUFztWitoF95bJ80xF
 W7cQNBklhulInFt1HbguGmanSBn165BSQd9WVb+JOYQk3L9rzFtE7oO7r9EtXfdmAnsJ
 WT/UPbr6CFwgAIvx4pkRJJ04rAIUreAUeYB7++oFmqa8s0f+9S9YsI6vwZXUUeDTbkl2
 eeB8kv0ucaujBd+oWE9xlj7GMa0HbEW4S3kwYtSbe4u0hgSDUnSNnv1V7yY0/SE1QRss
 7PKw==
X-Gm-Message-State: APjAAAUm6OhalxmXU6lcCA8mi1cBn53tPzx0awUA/6O2gxTJX2qESBEN
 v14LGuRb2Z5VBERU0U6q8ljjIw==
X-Google-Smtp-Source: APXvYqx71Hht1gZQHsv1/FmSYQIlLLq0ghiFPtdJ3K9r2UYbesJhnRhD20ID9r47y8tLV2cTZB7m2w==
X-Received: by 2002:a7b:c198:: with SMTP id y24mr20738869wmi.131.1566815931702; 
 Mon, 26 Aug 2019 03:38:51 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id e11sm32044884wrc.4.2019.08.26.03.38.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 03:38:50 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, khilman@baylibre.com
Subject: Re: [PATCH v2 0/5] 0/6] arm64: meson-sm1: add support for DVFS
In-Reply-To: <20190826072539.27725-1-narmstrong@baylibre.com>
References: <20190826072539.27725-1-narmstrong@baylibre.com>
Date: Mon, 26 Aug 2019 12:38:49 +0200
Message-ID: <1jblwc6wjq.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_033854_709100_028C52A3 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 26 Aug 2019 at 09:25, Neil Armstrong <narmstrong@baylibre.com> wrote:

> Following DVFS support for the Amlogic G12A and G12B SoCs, this serie
> enables DVFS on the SM1 SoC for the SEI610 board.
>
> The SM1 Clock structure is slightly different because of the Cortex-A55
> core used, having the capability for each core of a same cluster to run
> at a different frequency thanks to the newly used DynamIQ Shared Unit.
>
> This is why SM1 has a CPU clock tree for each core and for DynamIQ Shared Unit,
> with a bypass mux to use the CPU0 instead of the dedicated trees.
>
> The DSU uses a new GP1 PLL as default clock, thus GP1 is added as read-only.
>
> The SM1 OPPs has been taken from the Amlogic Vendor tree, and unlike
> G12A only a single version of the SoC is available.
>
> Dependencies:
> - patch 6 is based on the "arm64: meson: add support for SM1 Power Domains" serie,
> 	but is not a strong dependency, it will work without
>
> Changes since v1:
> - exposed GP1, DSU and CPU 1,2,3 clock in patch 1
>
> Neil Armstrong (5):
>   dt-bindings: clk: meson: add sm1 periph clock controller bindings
>   clk: meson: g12a: add support for SM1 GP1 PLL
>   clk: meson: g12a: add support for SM1 DynamIQ Shared Unit clock
>   clk: meson: g12a: add support for SM1 CPU 1, 2 & 3 clocks
>   arm64: dts: meson-sm1-sei610: enable DVFS
>
>  .../bindings/clock/amlogic,gxbb-clkc.txt      |   1 +
>  .../boot/dts/amlogic/meson-sm1-sei610.dts     |  59 +-
>  arch/arm64/boot/dts/amlogic/meson-sm1.dtsi    |  69 +++
>  drivers/clk/meson/g12a.c                      | 544 ++++++++++++++++++
>  drivers/clk/meson/g12a.h                      |  24 +-
>  include/dt-bindings/clock/g12a-clkc.h         |   5 +
>  6 files changed, 697 insertions(+), 5 deletions(-)

Applied 1 to 4

Nitpick: two checkpatch warnings regarding 75 char line wrap fixed in place.

>
> -- 
> 2.22.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
