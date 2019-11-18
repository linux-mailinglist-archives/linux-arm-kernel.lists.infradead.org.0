Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEC31001E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 10:56:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EjzOiYEylQVEWnsIR6Jh4NenFB2qzX+UpG7TUZYuO1g=; b=IVvyO5o3K5bXPb9Ht2mlgOpi8V
	/u0jNmzNE6V90c2wDW5i8e6O3gSkY7gujhWqVVti+3504KlCpvvuo3Y+5VitLGUaPQ+WFaWidsrP/
	XavVUVnsfdQJpzJS4tbipVu2/gc3t2ksCqwZJVsu0LOfkuSH5EBTgVYagMM8h9oUJcj9m5NhpRrbs
	/1INgzgstj/SwgVHABBpwFEQFxh1QpiV2PMJCIze3qi7C8t2xTPNQ+B/rG6KAF/Dpb2tbZBG4xMxi
	fYfnjpFE7yCEpvxTX5aixFm7wXIZNRgu6eKsxkLzLzjGqUK+2IaU51bFXNUbI/emghsjdSiaDXZNq
	0rIEhXMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWdlV-0005CB-0G; Mon, 18 Nov 2019 09:56:13 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWdl9-0004vR-Hf
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 09:55:53 +0000
Received: by mail-wm1-x344.google.com with SMTP id c22so17999297wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 01:55:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=1GoIOtsIzWbvDocOsz/C2x/FxA2jWzeW8mPBcgPBynw=;
 b=yHeksfB0yCZEYO2eOK8ptMeVrZeueoVGg2UOO3ATiBA0aaaPP1hEmqdWzLWIKpumnx
 AzIer1O0dyWnixlqwzzL+pQ1hkGYLzp8LV2SQ4ot9cTiavfn9FAk9fW06DTqOLfO8sDN
 8T4MMA8HY9MJ48TR9vQzPmD74VqGahXlpKc9doJLxRZEy6IGj+DkATdKYkTDjx3CtuaB
 U6nH9b2l3Kf/bV+R0zAp+0fwePmiZc3FFkqyRZJ/94dtnOWzn8yjC/PN48OhZh7APRK4
 vuSeOZI9+/hG3r9PD/W4x7Kc23+DAM6byQLhoSFoaPBs1C7ucdIVFqtKIP8sFjUr96rS
 o5/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=1GoIOtsIzWbvDocOsz/C2x/FxA2jWzeW8mPBcgPBynw=;
 b=rxQm7pxseifs4iEd99YgK/g73XsvhRdNR3AiOkAL0tzMHlfK4nLAojJ00/NDUX50Z8
 QoSp9swZfsLGCYjppk5MEtHHNz6eNzZ3MGVB1AH2FiUBm1iAaOIokmw7Eby8oUnIxuzy
 +DGknS3JcdRA8kI9sJVqeemAO9+U8yBVwhHEy/omZMOgiQNp4YTvzjVLJWW/kvqtlRw6
 nL+tr7xCME8PM5NPjVa1sdVhpor2VB9wijYZjEDIp9RWphO/6ux/pSQSO+tV73EdunYw
 Z/2ga4Gme5+FFVU/jiDI9iXF7tkibAfzs+QQK5SaGn/erpr8SXYEdLN/NEwdc2xv2MpV
 gRJw==
X-Gm-Message-State: APjAAAV0HKwn0kjs0DNkod2MpbA6AgaCPZneDpnxsfzNum+P1VHRDZTF
 bYQjHdcVnPU1Cc7tOMx8r3Bxxw==
X-Google-Smtp-Source: APXvYqxLgDYsf/Ba6F+JNYjp/kbm2QlRkLDQTC8CZz5yMHMikquk5MbQttgoLDz2TMet+HxQblEKzg==
X-Received: by 2002:a05:600c:3cf:: with SMTP id
 z15mr28202920wmd.76.1574070949878; 
 Mon, 18 Nov 2019 01:55:49 -0800 (PST)
Received: from localhost ([2a01:e34:eeb6:4690:ecfa:1144:aa53:4a82])
 by smtp.gmail.com with ESMTPSA id o189sm21154823wmo.23.2019.11.18.01.55.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 01:55:49 -0800 (PST)
References: <20191117135927.135428-1-martin.blumenstingl@googlemail.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 narmstrong@baylibre.com, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH v3 0/5] provide the XTAL clock via OF on Meson8/8b/8m2
In-reply-to: <20191117135927.135428-1-martin.blumenstingl@googlemail.com>
Date: Mon, 18 Nov 2019 10:55:47 +0100
Message-ID: <1j5zjhpkyk.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_015551_623657_983950DC 
X-CRM114-Status: GOOD (  20.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Sun 17 Nov 2019 at 14:59, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> So far the HHI clock controller has been providing the XTAL clock on
> Amlogic Meson8/Meson8b/Meson8m2 SoCs.
> This is not correct because the XTAL is actually a crystal on the
> boards and the SoC has a dedicated input for it.
>
> This updates the dt-bindings of the HHI clock controller and defines
> a fixed-clock in meson.dtsi (along with switching everything over to
> use this clock).
> The clock driver needs three updates to use this:
> - patch #2 uses clk_hw_set_parent in the CPU clock notifier. This drops
>   the explicit reference to CLKID_XTAL while at the same time making
>   the code much easier (thanks to Neil for providing this new method
>   as part of the G12A CPU clock bringup!)
> - patch #3 ensures that the clock driver doesn't rely on it's internal
>   XTAL clock while not losing support for older .dtbs that don't have
>   the XTAL clock input yet
> - with patch #4 the clock controller's own XTAL clock is not registered
>   anymore when a clock input is provided via OF
>
> This series is a functional no-op. It's main goal is to better represent
> how the actual hardware looks like.
>
>
> Changes since v2 at [1]:
> - add .fw_name in addition to .name in patch #3 as suggested by Jerome
> - dropped the dts patch so this whole series targets clk-meson
> - moved patch #5 from another series to this one because once we drop
>   .name = "xtal" the clocks need to be aware of the OF node
>
> Changes since v1 at [0]:
> - add Rob's Reviewed-by to the dt-bindings patch
> - check that "xtal" clock is actually passed via OF instead of checking
>   that there's any parent at all (which in the worst case may not be the
>   xtal clock) as suggested by Jerome
>   
>
> [0] https://patchwork.kernel.org/cover/11155515/
> [1] https://patchwork.kernel.org/cover/11214189/
>
>
> Martin Blumenstingl (5):
>   dt-bindings: clock: meson8b: add the clock inputs
>   clk: meson: meson8b: use clk_hw_set_parent in the CPU clock notifier
>   clk: meson: meson8b: change references to the XTAL clock to use
>     [fw_]name
>   clk: meson: meson8b: don't register the XTAL clock when provided via
>     OF
>   clk: meson: meson8b: use of_clk_hw_register to register the clocks
>
>  .../bindings/clock/amlogic,meson8b-clkc.txt   |   5 +
>  drivers/clk/meson/meson8b.c                   | 113 ++++++++++--------
>  2 files changed, 67 insertions(+), 51 deletions(-)

Applied for v5.6
Please note this will get rebased once v5.5-rc1 is out

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
