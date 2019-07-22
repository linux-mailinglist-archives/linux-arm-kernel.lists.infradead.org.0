Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B47046F975
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 08:21:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BFflU7nLXsgL0ccnlDpg0fbGuXAQnmQ+RbJrpfetBoA=; b=J2FrSRIuxujVCa
	DZWQv6tSCeEoRqoVTKzUnbNhoq0vu1zk/E7rz0o6ULDIToxCLIKDGghmIdUdLZIw8Ma+XXxOYzCR0
	eHaWTdQuDvwkIMLS8sHskxHl4j9DQqjJly1LvLCzKKQi6rMMSzkLYSfuk8kpMqG0Rqu9AHZIkemHC
	+q5fA7q7FwRQ7xtwrceV+x6LiR+jfRaU+BqgDGWz6AwVVLcAHQZ4D7BSrjLiDKbnY9DiHcScBy6QS
	TzY6TmK0ufPj8TD7CK0q/xosKAzOQDCUH2h7eafjcxVKtK8G9stbhxCBZTDRGiuuFA/hILKvRJvJZ
	Bxqwz3twz54+eJYTnL7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpRhP-0001vK-CQ; Mon, 22 Jul 2019 06:21:27 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpRh5-0001uT-1k
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 06:21:08 +0000
Received: by mail-pl1-x642.google.com with SMTP id y8so18703350plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 21 Jul 2019 23:21:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=em1xDbBG2V868fnaJ310Xoyx4Wy4FPOvg/qDb7nS9HE=;
 b=J3TUjk9XltjIzYh10bMRGW13tchJ4DbhtCiQjCOGMrq6A29PXJCg6Zo8DWFqk6S1hu
 TfSyYjB8QrgN9eSlN9czUZlJfOZh9LXs8hClja8N3oX3Ys+3LRbZR+Tit2cfySWe+Vcw
 kJFJJkDHMjbc5hpyToknouy/tPw75+1J2S553IqdWei6JYqo7nEbh8tP5R+DlAw/qt8I
 qeI6yFSjLrfI6EEoRtvAwJW5xzJ9XeAd1Ri5NZmgvQBy0onENztmxYxVQmShh/MppR1R
 QpBFafxhot15/SjuuyfpCeu5IT5dGFDGW+FzOK9DIFx44tR+V3sfEAh+e2cmHuHeMIJ4
 I+aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=em1xDbBG2V868fnaJ310Xoyx4Wy4FPOvg/qDb7nS9HE=;
 b=KF9QJ8Fw0hVwKrQbzcg5QRGv8ABqGcQmzPVIeHDmJiyPxBqdJyrfqLjDw3cl4OpSgn
 wGNjT9kGO2boraWYZkb210d4+79hdtMt7HLANg6BAS4MAM+A0DJQNcgB2UnW1O1Wy1Y6
 Pb+lyPpbKXV6X7hbJ5exkTpAm4SJcdkwlHQ5xQsXJSuH9Cs5TRUaNwSKtF9ez1MXXTNU
 P6lRovHwTeB1P4w1rua5SnKtR9EDHLn3Vd2Mno8u/YUaW/IJ6hhq2f0WwwPMglH6Krb1
 Q7MhTdCloMerbR8EeEw1qQPVnXwKBQ+1J5Afp69Qhn+j93NfOuhxwn9gCHAuYho5Bsoy
 FPDA==
X-Gm-Message-State: APjAAAVOWIZ3dStAtqGdvgp8Jz1KQH42xGEQLE2JeSK7viRPokpO2UIA
 XIj0RQR40u9sS+M9z7kkNtm5cMLvow==
X-Google-Smtp-Source: APXvYqx/P8ROIwjOfYJZUiLmueKG0CpXvl26zSTX4l6j88jxpCjb5sbY+HThfXwbPZMTrfHsVPhHNQ==
X-Received: by 2002:a17:902:2983:: with SMTP id
 h3mr74032905plb.45.1563776465833; 
 Sun, 21 Jul 2019 23:21:05 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:72cd:b527:a1c8:8495:bea7:a059])
 by smtp.gmail.com with ESMTPSA id g92sm45161537pje.11.2019.07.21.23.20.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 21 Jul 2019 23:21:04 -0700 (PDT)
Date: Mon, 22 Jul 2019 11:50:56 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org, mturquette@baylibre.com, robh+dt@kernel.org
Subject: Re: [PATCH 0/5] Add Bitmain BM1880 clock driver
Message-ID: <20190722062056.GA3715@Mani-XPS-13-9360>
References: <20190705151440.20844-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190705151440.20844-1-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_232107_105685_51CAD9C0 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, darren.tsao@bitmain.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 fisher.cheng@bitmain.com, alec.lin@bitmain.com, linux-clk@vger.kernel.org,
 haitao.suo@bitmain.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 05, 2019 at 08:44:35PM +0530, Manivannan Sadhasivam wrote:
> Hello,
> 
> This patchset adds common clock driver for Bitmain BM1880 SoC clock
> controller. The clock controller consists of gate, divider, mux
> and pll clocks with different compositions. Hence, the driver uses
> composite clock structure in place where multiple clocking units are
> combined together.
> 
> This patchset also removes UART fixed clock and sources clocks from clock
> controller for Sophon Edge board where the driver has been validated.
> 

Ping on this series.

Thanks,
Mani

> Thanks,
> Mani
> 
> Manivannan Sadhasivam (5):
>   dt-bindings: clock: Add Bitmain BM1880 SoC clock controller binding
>   arm64: dts: bitmain: Add clock controller support for BM1880 SoC
>   arm64: dts: bitmain: Source common clock for UART controllers
>   clk: Add driver for Bitmain BM1880 SoC clock controller
>   MAINTAINERS: Add entry for Bitmain BM1880 SoC clock driver
> 
>  .../bindings/clock/bitmain,bm1880-clk.txt     |  47 +
>  MAINTAINERS                                   |   2 +
>  .../boot/dts/bitmain/bm1880-sophon-edge.dts   |   9 -
>  arch/arm64/boot/dts/bitmain/bm1880.dtsi       |  27 +
>  drivers/clk/Kconfig                           |   6 +
>  drivers/clk/Makefile                          |   1 +
>  drivers/clk/clk-bm1880.c                      | 947 ++++++++++++++++++
>  include/dt-bindings/clock/bm1880-clock.h      |  82 ++
>  8 files changed, 1112 insertions(+), 9 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.txt
>  create mode 100644 drivers/clk/clk-bm1880.c
>  create mode 100644 include/dt-bindings/clock/bm1880-clock.h
> 
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
