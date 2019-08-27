Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D929F9F5FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 00:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bG00mk4vXVTSSYOUfnzAFvWzvOuFD0PBA+yOkm1xo7Q=; b=Zye7MsihA2n/Pz
	rM/xZqM/ajT0w36zP+MxKgiRXzLKQAxe2YTIZDwdnApI+QYOAu0ydZOmz9HUF+P5UkqKMJ5iuP0nx
	PK/lc3t/BCjxXmGqZEVGsuoCxM8ZorGomsG3XSfJ2+emDTGzISHLmx/A3O78DlhglY6xyIRBcunRs
	C8gFarH2XbBqe+ORJl10OOp0xAQptteyroKnb9F+vW8QmaOKPeqIaMgR8jkgEBbliYSHBM17Opbzy
	UiNQ/SHreCSiWfQ1Q/roS1HkC7j+VMoIB7JH9spfXEsBZIileEURrz2q5dnCfoaY26PBZSVJjVTOE
	ldJgBPL8k57j0VslptXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2jqb-0007G7-9D; Tue, 27 Aug 2019 22:21:53 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2jqK-0007FG-TA
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 22:21:38 +0000
Received: by mail-pf1-x443.google.com with SMTP id d85so310087pfd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 15:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=+QV1lxfro+2xR75kWYH74+2iVl7rk3tcmnqLNLA7fCo=;
 b=iJ+G8JlwHiPuZWkUcHmYZ1wNy1XV+y4WOsqYeulXbySkVPtadrhuD6PODEirTRSnKz
 PcmSWctkTfOPUu2QdZLFCLjZgzPgHst9fW09h2thERpJdEd+shbFxcGg3NxGNiN8VNJj
 j9c6N9CjbAt69F46n4zHU08vNJUrqAYEuBt4Aown2HorEx/NH++awnk3shP7rl07I5Y3
 /uaAKAwkv9sRdPF2Uhz1rrW2zwQt9AGvzdnEJfrhJMjA0hqdBXf2Nq2W9HlLqJNzw2jQ
 HsedPaxYFjjGYIDJ9uW+Nv3LIo/RUfG0ymLrYn+8NxYVgYNYVR14RlELOsfdzTfWzeDM
 mTwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=+QV1lxfro+2xR75kWYH74+2iVl7rk3tcmnqLNLA7fCo=;
 b=JYRyaQh5x9v0BKpW58y2c6hDqZSgIog2Vh7zUbzcM4UFDctTpQ7bFgsJ3KXjqHKo3v
 7kDdQfCbiqxqUC9MsseCPnxnVEd7UYBOzxPudhLo58glmsDwb4TCd1dZrSKpk5qNMxoV
 nXQ4NxaDPbulFoZZ5nlVMmjOaWrEv/XKn8v6+pviTg03Ys35ThqDm3aFthOgKJV2+3Nu
 g6lvnJm3tz/o7Q5XXIOpO7tnIASFWdkeN4yLJaYylK+FX6EsRRHIfWhvSzz5yS+2OahO
 AsazuWIqz2mN1h51vW0qnKe6XmVeW4Ww31i3H7ofKe9z369mdL01a4OL8awSYlUITxyG
 A/aQ==
X-Gm-Message-State: APjAAAUD0srD7X1jtISJsaN/Yff5ostaVDRpVBYeCN1MhvmhKkt+9QuG
 VB1hS+/MDp1ZO5wiX0i0vKs+uQ==
X-Google-Smtp-Source: APXvYqyco51mSNQzAaGPYLSKHmnGSAdHb2J1OzexYesNtAuslu1oxLH/YK/Ojv+o6ZBh9nX/zUeuRA==
X-Received: by 2002:a63:fc09:: with SMTP id j9mr600765pgi.377.1566944496183;
 Tue, 27 Aug 2019 15:21:36 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:cc35:e750:308e:47f])
 by smtp.gmail.com with ESMTPSA id p189sm306576pfb.112.2019.08.27.15.21.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 27 Aug 2019 15:21:35 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, ulf.hansson@linaro.org
Subject: Re: [PATCH v2 0/5] arm64: meson: add support for SM1 Power Domains
In-Reply-To: <20190823090418.17148-1-narmstrong@baylibre.com>
References: <20190823090418.17148-1-narmstrong@baylibre.com>
Date: Tue, 27 Aug 2019 15:21:35 -0700
Message-ID: <7hef16uu4w.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_152136_942870_525EAC4F 
X-CRM114-Status: GOOD (  18.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> This patchset introduces a new "Everything-Else Power Domain Controller"
> designed to handle all the different non-Always On peripherals like :
> - VPU
> - Ethernet Memories
> - USB, PCIe, Audio, NNA on SM1
>
> The current "gx-vpu-pwrc" process has been integrated to support the VPU
> and the other power domains in a single driver.
>
> Support for SoC domains has been made generic and easily extendable.
>
> In order to restart from clean architecture :
> - the PWRC node has been moved into the HHI simple-mfd, this suits much
>   better than beeing in the AO RTI simple-mfd
> - a brand new yaml bindings schemas has been written
> - reset-names has been added to clarify which resets are needed, so we can
>   dispatch them to domains
>
> For G12A, the PWRC now offers support for the ethmac memory power domain.
>
> For SM1, it also offers support for PCIe, USB, NNA, ethmac and Audio power
> domains.
>
> The DOS domains has been excluded for now, but can be added very easily.
>
> GX hasn't been integrated for now, but it would follow the same scheme
> as G12A support.
>
> Changes since v1 at [1]:
> - removed open-coded reset & clock get, enable/assert, disable/deassert
> - moved to clk_bulk and reset_array with count check with a warning
> - removed remaining sm1_pwrc in probe
> - reordered arguments for VPU_PD and TOP_PD
> - added get_power for TOP_PD aswell
> - ported special VPU handling from gx-vpu-pwrc
> - added shutdown driver call to avoid errors on reboot
> - fixed patch 4 commit log
> - collected rob's review tag on patch 1
>
> [1] https://patchwork.kernel.org/cover/11106393/

Series queued for v5.4...

> Neil Armstrong (5):
>   dt-bindings: power: add Amlogic Everything-Else power domains bindings
>   soc: amlogic: Add support for Everything-Else power domains controller

These two in v5.4/drivers,

>   arm64: meson-g12: add Everything-Else power domain controller
>   arm64: dts: meson-sm1-sei610: add HDMI display support
>   arm64: dts: meson-sm1-sei610: add USB support

and these 3 in v5.4/dt64,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
