Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 978ABBB16B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 11:29:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IoG0yHBJ9XHOd7u5DFzcDEcRjvjLlNZL4QI/Wgext7c=; b=kDEASBWU53L/BW
	fPgSpwbVy/hmhPFQBjZV4c7OqKusMsU3lxWbul4V3WiyrKTv30Mfjlyy7hOoVX0o3G7DEaujGfk9v
	hsZ/zbwUYXPj2lMv5E9PLbmHD2oFp7ej+CH2LPWlSEJBuEBA6Qbl/4QqsEaArBYyHIuSXxHAvOAxR
	kEfLNDqoOVVJMPDt53zvN0zwfXnkyjAsp0OXzuVpjGRbxZjayNEn26medkfj/XzVpZxXFciycMjcG
	mZuDJIICefGXXyOthWSWmd/P/sIXhzKDd4iyxILh4NiND/98vhhCt81rrfVmhybdSxGP1wBHBPlOP
	VnfNqCAWjBHLC6t6lTgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCKek-0007Nu-UK; Mon, 23 Sep 2019 09:29:18 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCKeX-0007MD-3C
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 09:29:06 +0000
Received: by mail-wm1-x343.google.com with SMTP id 3so8443032wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 02:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=GEpINich1yHe3dgZoPsu7jVZJFRHWW9gHMhxo+QabyU=;
 b=i37B/ZflJfkoKuajMXjNBpIfwnDxpv2aCG8IlKdAD2ERPODOixf2OFXEjZMczk7Rbg
 uQLUHo8E1xjO/JL9H0/3eszTjCSzplCQRPgPQnJFhFCFiLcxFh48ai1/KWwFfNWe0vZB
 2nrg6RtcVBh9xq04+xtpyxGbxKhLWFyJ4PXvghuAvXqJK4fpELjI22nwS8Br6ZJFSEqI
 0Ob7+mzq5cLJcSN5kyfDi7lNDh8b0gVoLhy9eaKKdUmbIvj+hR6PfTnwpEU9Y7Jf++bk
 5cVo/4ER7i0Dsz5syGQl5IQvxwpNc1yKuo5BPmbMtu+q2DyJIZpwObIkNpcSG+Gsvx+B
 0qRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=GEpINich1yHe3dgZoPsu7jVZJFRHWW9gHMhxo+QabyU=;
 b=Z+wECinEcbKThabXLj+0MWZcW3bPC8fLqa20Zl6oFLoAJvFXkG0EMWUqt6QBON7p1t
 Exx/WmvqftXjU+juTIk6W76p0MMAnqc/x+HCLgHHKpUrEUMF4IwveHCAvTV7kYdJv/VS
 c4S1x1ohorSuWM0CLQX+TPb5IV6ZNDJl9SYJYzjtI6bFeVCyJIsBz+VRyUmSaKoq/tyV
 LOspLL1x3I+lLkdse4QnRJyYObpt4OrIkK+X3bxEmY8Gzm+m72MWs4fxAKnrkIQ2g8+T
 5MHDFl23NptHe47zOybWNyqX4PJ2RWm/C0Q3b9dXNh8HiFBa9LVCAnIW0VsoTFpZqwbW
 ZKtg==
X-Gm-Message-State: APjAAAWgwRsBPIsMwI9Of1iI6DqKJ7gG2HVLUsD9zBUNFuKeXCDrJuH7
 BNzoo9dfT3EyXwPQu8r1PY8LQQ==
X-Google-Smtp-Source: APXvYqzJCTFPvn4OkSp1B7p5RsJXP7ouCiApbSz9+KpAzUBc/BCRGheeUmLPmjYjv5eRZC9qVVnXRA==
X-Received: by 2002:a1c:4384:: with SMTP id
 q126mr14214521wma.153.1569230943323; 
 Mon, 23 Sep 2019 02:29:03 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id b194sm18418427wmg.46.2019.09.23.02.29.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 02:29:02 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 narmstrong@baylibre.com, robh+dt@kernel.org, mark.rutland@arm.com,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
 khilman@baylibre.com
Subject: Re: [PATCH 0/5] provide the XTAL clock via OF on Meson8/8b/8m2
In-Reply-To: <20190921151223.768842-1-martin.blumenstingl@googlemail.com>
References: <20190921151223.768842-1-martin.blumenstingl@googlemail.com>
Date: Mon, 23 Sep 2019 11:29:01 +0200
Message-ID: <1jzhivs6n6.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_022905_134904_C2BF9661 
X-CRM114-Status: GOOD (  19.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat 21 Sep 2019 at 17:12, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

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

I'm a bit unsure about this series.

On one hand, I totally agree with you ... having the xtal in DT is the
right way to do it ... when done from the start

On the other hand, things have been this way for years, they are working
and going for xtal in DT does not solve any pending issue. Doing this
means adding complexity in the driver to support both methods. It is
also quite a significant change in DT :/

I'll defer this one to Kevin

>
>
> Martin Blumenstingl (5):
>   dt-bindings: clock: meson8b: add the clock inputs
>   clk: meson: meson8b: use clk_hw_set_parent in the CPU clock notifier
>   clk: meson: meson8b: change references to the XTAL clock to use the
>     name
>   clk: meson: meson8b: don't register the XTAL clock when provided via
>     OF
>   ARM: dts: meson: provide the XTAL clock using a fixed-clock
>
>  .../bindings/clock/amlogic,meson8b-clkc.txt   |   5 +
>  arch/arm/boot/dts/meson.dtsi                  |   7 ++
>  arch/arm/boot/dts/meson6.dtsi                 |   7 --
>  arch/arm/boot/dts/meson8.dtsi                 |  15 +--
>  arch/arm/boot/dts/meson8b-ec100.dts           |   2 +-
>  arch/arm/boot/dts/meson8b-mxq.dts             |   2 +-
>  arch/arm/boot/dts/meson8b-odroidc1.dts        |   2 +-
>  arch/arm/boot/dts/meson8b.dtsi                |  15 +--
>  drivers/clk/meson/meson8b.c                   | 106 +++++++++---------
>  9 files changed, 87 insertions(+), 74 deletions(-)
>
> -- 
> 2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
