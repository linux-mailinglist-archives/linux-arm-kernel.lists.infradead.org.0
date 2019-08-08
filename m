Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 114B88685A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 19:58:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=wrG4f9Bg7i1GlZUEKSCaYJD4+q+/RnxXwh0hEYPofgc=; b=lHc
	az5KHeWLf/l+0IlC0C9gcvrdPo6tB2EDgKmy0eHGsFWdQ5ZYvGEBQVzlPaPM04lF1ubPM3UR/LQAm
	RdY6lTAxApDeWu8s6cuze2acP3Ye8cedU3KeqZaZ5ZOvaiMv+438kizNTFF0z6Mll/tFVA2U+d1P6
	2euv0VzjhIB6SezQSiCCuSuj0YXLN4RLS3b8BF8P0OKjlCJ1F8kDyF/DMa93huVcYnbOkyTBqp+MZ
	9AMXvnwvBYycsK8WLWYbVQB4Qiykck4uB+idHRhnZmT1eaM45tyObZLxslnnaKnSeGPgxWaXs+MDx
	M6dmLi06XusvVdISvutarGE8ZgnwqLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvmft-0007xM-S4; Thu, 08 Aug 2019 17:58:05 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvmfj-0007w7-RP
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 17:57:59 +0000
Received: by mail-pg1-x544.google.com with SMTP id l21so44444655pgm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 10:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:date:message-id:mime-version;
 bh=dlAMDaen95qV2UTyBXZtIHRtvI1SXwxJ2LQmY5Uh0zs=;
 b=2D6xPvfGrZOu7k7cMvY57yHcMqEPpzgyC3LjZsj0+wycBUR53jHzXW2/dRAb7Tjh9l
 MOsBWg1KHVxkbrJtbEDPZbcaL3D/Cx1MmYEGn6PPFO/F6B5n2L3hNxRE9YrBj6XXiTp1
 AsqcRTjU7oORT279g88Lv1Afie2AeB0n3kg6jCii5bY6ryVuKsePMW+GU4+PQGReG01I
 iUr6Skj2nmRDY+5iUL/N23Qc/jCjSdxaZtF+MdHDau84vI+5cEgEvfNbSs85BBC/WE59
 KXZJ6135QBqHpFgtJo6FSWoH1gYfVV0NwL/PEJaBBbRjSkEJmm6AZIja+gzYeSBhWYxR
 8yQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:date:message-id
 :mime-version;
 bh=dlAMDaen95qV2UTyBXZtIHRtvI1SXwxJ2LQmY5Uh0zs=;
 b=qHyi0bIAbXBTUwQ8Me0GEbfKNrDAfY8qvLwQC983gzzjOB8jX0TEqxXdd0N7zExuuj
 iqey+7PY1ATfWJOlPNtl3lnzOEm8/bEVAWzU2czrIkgnXeqDXlNC1D6W1/KvoO9q4eTH
 Ak+sWDv5mAFUE9sFcXaiHTwOCHSdgmkMnM7za8riKeYnkrgLQcSq5hyQ/DlzXwBn69wV
 NgzmVI/CLLD+h0Ayg5Dg7X+yQP/5X6LkrQhM324bKdpr7esRLyfPgwd0yXVLsvq74YCf
 aeci+834iEGmyYYA9zRJnbONnjZUILqHxWc1FDbscNxwoP6nQkBPsEQt2Fwv3hNYjfyM
 NZrA==
X-Gm-Message-State: APjAAAUYDtJIA0K+b8cjKuYu/c2QPDGnWnO5KRzanzQ4RaLkcvOBeGBm
 VD9AIU2tp7pKlx9cMgQK3SszRw==
X-Google-Smtp-Source: APXvYqxqWxI19xhZ4NNLIkIIuu5ZgI5/xUh8viSAx5HhgIax1wserqOX54QOEDrSA48PXB6+dxkL8A==
X-Received: by 2002:a62:ce8e:: with SMTP id y136mr17048236pfg.29.1565287075043; 
 Thu, 08 Aug 2019 10:57:55 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id 65sm97022232pff.148.2019.08.08.10.57.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 08 Aug 2019 10:57:54 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 0/6] arm64: add support for the Khadas VIM3
In-Reply-To: <20190731124000.22072-1-narmstrong@baylibre.com>
Date: Thu, 08 Aug 2019 10:57:53 -0700
Message-ID: <7h4l2rfske.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_105755_959736_D9706F29 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Cc: linux-amlogic@lists.infradead.org, christianshewitt@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> The Khadas VIM3 uses the Amlogic S922X or A311S SoC, both based on the
> Amlogic G12B SoC family, on a board with the same form factor as the
> VIM/VIM2 models. It ships in two variants; basic and
> pro which differ in RAM and eMMC size:
>
> - 2GB (basic) or 4GB (pro) LPDDR4 RAM
> - 16GB (basic) or 32GB (pro) eMMC 5.1 storage
> - 16MB SPI flash
> - 10/100/1000 Base-T Ethernet
> - AP6398S Wireless (802.11 a/b/g/n/ac, BT5.0)
> - HDMI 2.1 video
> - 1x USB 2.0 + 1x USB 3.0 ports
> - 1x USB-C (power) with USB 2.0 OTG
> - 3x LED's (1x red, 1x blue, 1x white)
> - 3x buttons (power, function, reset)
> - IR receiver
> - M2 socket with PCIe, USB, ADC & I2C
> - 40pin GPIO Header
> - 1x micro SD card slot
>
> First of all, the S922X and A311D are now specified since they differ
> by some HW features and the capable operating points.
>
> A common meson-g12b-khadas-vim3.dtsi is added to support both S922X and
> A311D SoCs supported by two variants of the board.
>
> Odroid-N2 is changed to use the s922x.dtsi include.
>
> Dependencies:
> - patch 5 & 6: "arm64: g12a: add support for DVFS" at [1]

And patch 6 on the clock series (specificly the new CPU_CLKB id)

> [1] https://patchwork.kernel.org/cover/11063837/
>
> Christian Hewitt (4):
>   soc: amlogic: meson-gx-socinfo: add A311D id

Queued in v5.4/drivers

>   dt-bindings: arm: amlogic: add support for the Khadas VIM3
>   arm64: dts: meson-g12b: support a311d and s922x cpu operating points

Queued in v5.4/dt64

>   arm64: dts: meson-g12b-khadas-vim3: add initial device-tree

This one I've left off for now due to the clock dependency and some
suggestions from Martin.

> Neil Armstrong (2):
>   dt-bindings: arm: amlogic: add bindings for G12B based S922X SoC
>   dt-bindings: arm: amlogic: add bindings for the Amlogic G12B based
>     A311D SoC

Queued in v5.4/dt64

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
