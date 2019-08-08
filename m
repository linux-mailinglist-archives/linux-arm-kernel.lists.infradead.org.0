Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B465786C36
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 23:19:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q2VF0/ldx7ysRnSnlAKSgY3SUKDTiZxVETQSf3PmJtw=; b=I5PXVvRBncVcA0
	s8kouHaGdr+ulMRCriHMOyGDHKmDKcFXmRxJzbE62IFsbwS+5SfxWXwwuFK91x6r+Tf/f8werpmdY
	tKyKgwBJACudr+MlQ0SDL6mnWJ3MiKyiVVCUpyyQ/o6G8SqK9MbdVCuZoREg0M5Y1k1PTsLB9Kl5O
	c/HUWPzsl9PTIn8pUP6GJkX3oh4OeK4ET1PJL9PfAFI9NP/6TDWDUaMaSOsACvf09VKu11C8nfoJw
	pm8FT2/KSBe0B7JOeLmngsc0bfxYY3vAZRPlmoliAB1MIDQajoi4oos/J9Lf5pVGS/ckY3eZBZuW2
	EiCthHb7/0hUSmiz97Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvpoT-0001vm-Hx; Thu, 08 Aug 2019 21:19:09 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvpoJ-0001u0-1x
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 21:19:00 +0000
Received: by mail-pg1-x541.google.com with SMTP id n190so3891737pgn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 14:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=vwaIEfS1FAZl0r/hGbrJVWd7+Oh098wPSMDgW6Rp92k=;
 b=yVsG+UlRQMtUxQczwRr+tGNXUpgb5JuGIZ9Hfs14iduOWR4txHlXpZxwWUtDpHEICM
 0MfbhxhGzwCJYtqk5hFjfeD7f431qxlD05AvrQtalNSTduDiqTXEzg9UGnLeuDvICMHA
 amsVyPWg0D2y/C8YKdGFbHSa+zooR1bVvWW6htALbJFbSc6XmTp7bdV5UlaBBO7BnVib
 Dw7ZdWKCoPW25wvAOjSzgAlahac71LGMqXF2ZndJhZxbF2KxWBMg6tW8x75BCxGLlWci
 qvlzvbM2kfW6rShIo0jnFME52p2//RFT4yhtncWCGiQOIjt9x5fflNeS7IbAM10OkQf+
 hL4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=vwaIEfS1FAZl0r/hGbrJVWd7+Oh098wPSMDgW6Rp92k=;
 b=qKKJ3G6E4+9ZWnDp/QNlNnVOgeYCZRujmog+M/qQ9h7gr5dkXw+pGB6I6LJTI0RuWb
 ELj7BFLul1B2LoCLTyapxq7OD+4tqlM1x2sWPlM50C9Jqe8f3PZlSjD/3jrNZ7nNMHkM
 vNXyeERBjOXSK7sz6Kj3g4+QR02TN6+rDp2ASOE3vf2C2xz8KSwMFWSqGTpxt24e5g4n
 WpMyqx0H964UP4eOig9+a/VrAQ4ncgk4YI0nKVRc6qDHXKiPa5oj3ONd6odYeqjWCOXI
 eS3P3hnVzgrVE+r47Lvt9BaaC41DQPnMEPfphVQOS1xETPpWqD0Sy8yX7MLn+ghQbvUD
 Wdxg==
X-Gm-Message-State: APjAAAV8oXkdXpYNlnQZeA+UKe2ZMBWRcVikyykDl7UoHpNJc6AuozGR
 /m0h+kHOhFHK6LqSYUuyGRpFcA==
X-Google-Smtp-Source: APXvYqyy4N7d0TMp06csDZZcZzQG4KzhyFYusr8lIgCgQLzqwyDXrb7dFwjXWCDy+6BWpdpaIBvNUw==
X-Received: by 2002:aa7:8705:: with SMTP id b5mr18439724pfo.27.1565299138091; 
 Thu, 08 Aug 2019 14:18:58 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id s5sm79644816pfm.97.2019.08.08.14.18.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 08 Aug 2019 14:18:57 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, sboyd@kernel.org,
 jbrunet@baylibre.com
Subject: Re: [PATCH v2 0/4] clk: meson: g12a: add support for DVFS
In-Reply-To: <20190731084019.8451-1-narmstrong@baylibre.com>
References: <20190731084019.8451-1-narmstrong@baylibre.com>
Date: Thu, 08 Aug 2019 14:18:56 -0700
Message-ID: <7hzhkje4ov.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_141859_126426_F94A1B6A 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> The G12A/G12B Socs embeds a specific clock tree for each CPU cluster :
> cpu_clk / cpub_clk
> |   \- cpu_clk_dyn
> |      |  \- cpu_clk_premux0
> |      |        |- cpu_clk_postmux0
> |      |        |    |- cpu_clk_dyn0_div
> |      |        |    \- xtal/fclk_div2/fclk_div3
> |      |        \- xtal/fclk_div2/fclk_div3
> |      \- cpu_clk_premux1
> |            |- cpu_clk_postmux1
> |            |    |- cpu_clk_dyn1_div
> |            |    \- xtal/fclk_div2/fclk_div3
> |            \- xtal/fclk_div2/fclk_div3
> \ sys_pll / sys1_pll
>
> This patchset adds notifiers on cpu_clk / cpub_clk, cpu_clk_dyn,
> cpu_clk_premux0 and sys_pll / sys1_pll to permit change frequency of
> the CPU clock in a safe way as recommended by the vendor Documentation
> and reference code.
>
> This patchset :
> - introduces needed core and meson clk changes
> - adds the clock notifiers
>
> Dependencies:
> - None

nit: this doesn't apply to v5.3-rc, but appears to apply on
clk-meson/v5.4/drivers, so it appears to be dependent on the cleanups
from Alex.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
