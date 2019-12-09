Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E58116839
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 09:32:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3HhbOCLhcW9noFOfN/9m7I41RS6XHgjiWYIuujEkFLI=; b=FdyQwF7LLGAVdBHhgyNy+AQTqB
	pm7OIVA6xLRJEr+4DQioV9+Q5NgMDvW/bvv9WLw9erSjEmXHO5EhdXPBUehCMgqUNZ8fRATey6qX4
	As2gk0cHA6oNysyoPCGFYp5lFU8Njr7T1CtZOFHmcZQ/sEpK2suWuqg4B6s6p9gFl3G9CT06rCL+Y
	/6x1wIfqkEGu1SF4rxzqJwiXgolKk1JUNzQPQROxj/ui6dydwFWWwNgFtgJib95VFrsX7QaYubjVu
	6W7NzXm39hXjkhJbPxcHYk4TcJ3Uu3NNN1HAnl/aRnSp79PMDdxoAGDLL2E+bv5eGOZOUJbAKTA15
	g+I0/ogg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieET0-0005Ho-9E; Mon, 09 Dec 2019 08:32:30 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieESs-0005H2-PC
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 08:32:24 +0000
Received: by mail-wm1-x341.google.com with SMTP id p17so13883444wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 00:32:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=emf4IJEEMsmxfQFP3fayTObEfLJTqttr7F9XFtfzuqY=;
 b=l2RINiniKcey/jhYyNEjboTgQuFh87XyROBMa0gj84/Vm4tnZlbyZamK6aJYwRdYBn
 uqHL+5kmm95wY5dB41OWQXTWCUveOtySqUfhMwfer/v8Zb1TYo9st7wgVs1pPSWwjQnE
 CTWybUczEiNtygy24UTDLkRuDSYBdDwHu6Rw5oEQYbRCuQN3N1sOmM/QgTGJrqYK/+gd
 ZsBs5IBMow3rG8I+aOTopBP+NLYSYP93vryqBdFCNpkC9MIh76Nwq73qdxpBNEwpOy40
 MLrjAHDJQUIoyS8+q75zjNhm3Z0PuAC7sNYZQKTbpnxuI+nQ0TAGdRfv5aoeVP8gz0BD
 SLmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=emf4IJEEMsmxfQFP3fayTObEfLJTqttr7F9XFtfzuqY=;
 b=akkp8lElBL9LldSBeRNkYh+rpSmy9h9MlKwLCxG6f4QJJP9iLCxoX8P8+n72C6w+8y
 bVX38tnrKHNLvRUEBpwVnO/pxBodfbEdQ4M9EuoS87KRPxxqnFKHNuzNfg3q+k7x1auU
 JBi29iLPxhfzH3B0kYjAr/aVnBQJ98RlLQV0bG0ahMKHypxSj8zr4lY5l8n6WTNIHchr
 9Am7liY1lKG0fAWsPcHt8EL6MzF8o8YciS5rp2YPEg91IvSAno9AocMhoyHLEANTygvk
 NfqKF4MyEIkx7XKO942gJeS7QG0WJ8fgUkozXnUpxNmLP3tchhgGY3OnZuCAFuif/dnX
 twgA==
X-Gm-Message-State: APjAAAVUg2gI6ZMuilRmQ0VKUQRGn8S5GOl01qC0IegRCegadvwDjbN+
 B5xg4niAiRT5ZpSgHh2YBiPaEQ==
X-Google-Smtp-Source: APXvYqzCeYkH/XjSzuD2xv6U2QTFu/p0/ipUgx0/xb5fgeGV8FOzVH5MhgwTY08LUaCdUwXNjXg2fA==
X-Received: by 2002:a05:600c:2144:: with SMTP id
 v4mr22522732wml.141.1575880340584; 
 Mon, 09 Dec 2019 00:32:20 -0800 (PST)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id v188sm13242989wma.10.2019.12.09.00.32.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 00:32:19 -0800 (PST)
References: <20191208210320.15539-1-repk@triplefau.lt>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Remi Pommarel <repk@triplefau.lt>, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, Yue Wang <yue.wang@Amlogic.com>
Subject: Re: [PATCH 0/2] PCI: amlogic: Make PCIe working reliably on AXG
 platforms
In-reply-to: <20191208210320.15539-1-repk@triplefau.lt>
Date: Mon, 09 Dec 2019 09:32:18 +0100
Message-ID: <1jpngxew6l.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_003222_868185_EAAB497A 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-pci@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Sun 08 Dec 2019 at 22:03, Remi Pommarel <repk@triplefau.lt> wrote:

> PCIe device probing failures have been seen on some AXG platforms and were
> due to unreliable clock signal output. Setting HHI_MIPI_CNTL0[26] bit
> solved the problem. After being contacted about this, vendor reported that
> this bit was linked to PCIe PLL CML output.

Thanks for reporting the problem.

As Martin pointed out, the CML outputs already exist in the AXG clock
controller but are handled using HHI_PCIE_PLL_CNTL6. Although
incomplete, it seems to be aligned with the datasheet I have (v0.9)

According to the same document, HHI_MIPI_CNTL0 belong to the MIPI Phy.
Unfortunately bit 26 is not documented

AFAICT, the clock controller is not appropriate driver to deal with this
register/bit

>
> This serie adds a way to set this bit through AXG clock gating logic.
> Platforms having this kind of issue could make use of this gating by
> applying a patch to their devicetree similar to:
>
>                 clocks = <&clkc CLKID_USB
>                         &clkc CLKID_MIPI_ENABLE
>                         &clkc CLKID_PCIE_A
> -                       &clkc CLKID_PCIE_CML_EN0>;
> +                       &clkc CLKID_PCIE_CML_EN0
> +                       &clkc CLKID_PCIE_PLL_CML_ENABLE>;
>                 clock-names = "pcie_general",
>                                 "pcie_mipi_en",
>                                 "pcie",
> -                               "port";
> +                               "port",
> +                               "pll_cml_en";
>                 resets = <&reset RESET_PCIE_PHY>,
>                         <&reset RESET_PCIE_A>,
>                         <&reset RESET_PCIE_APB>;

A few remarks for your future patches:

* You need to document any need binding you introduce:
  It means that there should have been a patch in
  Documentation/devicetree/... before using your newclock name in the
  pcie driver. As Martin pointed out, dt-bindings should be dealt with
  in their own patches

>
>
> Remi Pommarel (2):
>   clk: meson: axg: add pcie pll cml gating

Whenever possible, patches intended for different maintainers should be
sent separately (different series)

>   PCI: amlogic: Use PCIe pll gate when available
>
>  drivers/clk/meson/axg.c                | 3 +++
>  drivers/clk/meson/axg.h                | 2 +-
>  drivers/pci/controller/dwc/pci-meson.c | 5 +++++
>  include/dt-bindings/clock/axg-clkc.h   | 1 +
>  4 files changed, 10 insertions(+), 1 deletion(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
