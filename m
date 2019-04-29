Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2B8EC60
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 23:59:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sT1I7a/6zT7ElYMf5g9ooU1Q/HEDmUhHUSRnQuA3mAU=; b=Yg1UKMXJAaZTDh
	zLKuM9BXR3Ys3y7MW9Tg6hx423eSIBUlDt2PooDkC3yHAWmn0yMSPd3u8pmXVzf9E+cLOU1yjb8gr
	pbRlsrs9G26QF4/NHhjdHamOMgKUXk+Zar31vAPT0Pu0PFMlLhHG9fEWT/J1loGgukAusow1XyP9H
	HeZOwomoDgglWdRSz1AX/dYZXS36FyUwzqw4AA0xkf9pSIJM0poGlzzLeB6V1k9S/NNOAzIF3EwYf
	Ou5uchQRam6JHGRiDd4MYYTpvRjzbRGzTGCLJPcNU9xKAbVReDtwCHp3kd2Bg0kQlVcePDYSZ5r3f
	yo4e0cf7nOteOa7URjcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLEJ7-0002sQ-HR; Mon, 29 Apr 2019 21:59:29 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLEIz-0002ry-U4
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 21:59:24 +0000
Received: by mail-io1-xd42.google.com with SMTP id u12so10453516iop.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 14:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=indmq07XFWS4gXjaJZT+iAAcr9a+9V4LSWqr6LCFENs=;
 b=Mgqmlk1qtdpemtyR8SiKe74oQes1kP9UrcFgu+l5KDcESXqvN3uaPaBvlrMsQRub5s
 hvYjr0p9EdV6dg3qSo4djhR+x0EH3cYlgAjgnqtytlUbrxQ7XXnx2HCosUyBPJkJz+Qq
 vcuEnK1GPMiB0f9kkZs/PRwPvpPoIBDYHBiXjyYKYMX/B2X3CI2i4jJxamQtrZTywBQ+
 i67e1hEGNtLmv4nE8NywOsPt0p1D6xNISzGBny5dV7/5/GtOPvMYN88UVwcG7rBwLucv
 WGFusyQc1ipj8gZa5CnYO5/nJmQ+JbcbDDQHtOw7p2A7jAPpgivazeaNmnO7BoHnZmKR
 tZKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=indmq07XFWS4gXjaJZT+iAAcr9a+9V4LSWqr6LCFENs=;
 b=ezzsrXIecIiasHMCYhBVgTPoFpT4GwMAt8AxtppU4ri5lKpyx1GzPEe0guggCzjkeX
 MeHxIkpjHPWeHWWevpfhZgFp2fglbZf6r75dDU5o3vwl/XyOe4CDqdfo3p+cc3jme+er
 H6SiMCBdzX6F2H+m5SxAADBI0mSVoz6Wjxh8p4EJnPL4+YFAhEEcXZm0JjGejQ4xzxYf
 /s316Euw8cO24sdjhZjjvYqw/vqwjf/1DgC0ywYG6ltU5WIpS3nWQ3LVeCR6kc9VPuIA
 0bZQsrC5acF63TFW1NhW0HI0XWDAjGtIs38umLOL0qZfPGpbFoTROw9D8+IsufHlFCqV
 7TcQ==
X-Gm-Message-State: APjAAAV75lAIXdPxKuLFLzZY/gf8vxcgTCbwhhWzQ2s4MkTqEgphQ/iq
 GUgSU+xAldG2utpfIHRygm7VKrI3iQV3BI//RWPXaRjc
X-Google-Smtp-Source: APXvYqxG1GzcRB+vFWGBoNZIqNnICyueduhcBwZKb6PRheekulHycP3vvBlFYcIgl9rbtXqUXGmWqoU2Wg7d9cNvmhs=
X-Received: by 2002:a5d:97cd:: with SMTP id k13mr808132ios.11.1556575160884;
 Mon, 29 Apr 2019 14:59:20 -0700 (PDT)
MIME-Version: 1.0
References: <1555768835-68555-1-git-send-email-shiwanglai@hisilicon.com>
 <20190421124606.GA12134@leoy-ThinkPad-X240s>
In-Reply-To: <20190421124606.GA12134@leoy-ThinkPad-X240s>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 29 Apr 2019 15:59:09 -0600
Message-ID: <CANLsYkwGyX0RJ0QVgpqXquT0exRDv3FfUHGBgo6LUUSj4K-Xhw@mail.gmail.com>
Subject: Re: [PATCH v4] arm64: dts: hi3660: Add CoreSight support
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_145921_979658_BDA06540 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Wanglai Shi <shiwanglai@hisilicon.com>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 Suzhuangluan <suzhuangluan@hisilicon.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 xuwei <xuwei5@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 21 Apr 2019 at 06:46, Leo Yan <leo.yan@linaro.org> wrote:
>
> On Sat, Apr 20, 2019 at 10:00:35PM +0800, Wanglai Shi wrote:
> > This patch adds DT bindings for the CoreSight trace components
> > on hi3660, which is used by 96boards Hikey960.
> >
> > Signed-off-by: Wanglai Shi <shiwanglai@hisilicon.com>
>
> Reviewed this patch and tested on my Hikey960 board, FWIW:
>
> Reviewed-and-tested-by: Leo Yan <leo.yan@linaro.org>

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>
> > ---
> >  .../arm64/boot/dts/hisilicon/hi3660-coresight.dtsi | 456 +++++++++++++++++++++
> >  arch/arm64/boot/dts/hisilicon/hi3660.dtsi          |   2 +
> >  2 files changed, 458 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/hisilicon/hi3660-coresight.dtsi
> >
> > diff --git a/arch/arm64/boot/dts/hisilicon/hi3660-coresight.dtsi b/arch/arm64/boot/dts/hisilicon/hi3660-coresight.dtsi
> > new file mode 100644
> > index 0000000..d607f2f
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/hisilicon/hi3660-coresight.dtsi
> > @@ -0,0 +1,456 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +
> > +/*
> > + * dtsi for Hisilicon Hi3660 Coresight
> > + *
> > + * Copyright (C) 2016-2018 Hisilicon Ltd.
> > + *
> > + * Author: Wanglai Shi <shiwanglai@hisilicon.com>
> > + *
> > + */
> > +/ {
> > +     soc {
> > +             /* A53 cluster internals */
> > +             etm@ecc40000 {
> > +                     compatible = "arm,coresight-etm4x", "arm,primecell";
> > +                     reg = <0 0xecc40000 0 0x1000>;
> > +                     clocks = <&crg_ctrl HI3660_PCLK>;
> > +                     clock-names = "apb_pclk";
> > +                     cpu = <&cpu0>;
> > +
> > +                     out-ports {
> > +                             port {
> > +                                     etm0_out: endpoint {
> > +                                             remote-endpoint =
> > +                                                     <&cluster0_funnel_in0>;
> > +                                     };
> > +                             };
> > +                     };
> > +             };
> > +
> > +             etm@ecd40000 {
> > +                     compatible = "arm,coresight-etm4x", "arm,primecell";
> > +                     reg = <0 0xecd40000 0 0x1000>;
> > +                     clocks = <&crg_ctrl HI3660_PCLK>;
> > +                     clock-names = "apb_pclk";
> > +                     cpu = <&cpu1>;
> > +
> > +                     out-ports {
> > +                             port {
> > +                                     etm1_out: endpoint {
> > +                                             remote-endpoint =
> > +                                                     <&cluster0_funnel_in1>;
> > +                                     };
> > +                             };
> > +                     };
> > +             };
> > +
> > +             etm@ece40000 {
> > +                     compatible = "arm,coresight-etm4x", "arm,primecell";
> > +                     reg = <0 0xece40000 0 0x1000>;
> > +                     clocks = <&crg_ctrl HI3660_PCLK>;
> > +                     clock-names = "apb_pclk";
> > +                     cpu = <&cpu2>;
> > +
> > +                     out-ports {
> > +                             port {
> > +                                     etm2_out: endpoint {
> > +                                             remote-endpoint =
> > +                                                     <&cluster0_funnel_in2>;
> > +                                     };
> > +                             };
> > +                     };
> > +             };
> > +
> > +             etm@ecf40000 {
> > +                     compatible = "arm,coresight-etm4x", "arm,primecell";
> > +                     reg = <0 0xecf40000 0 0x1000>;
> > +                     clocks = <&crg_ctrl HI3660_PCLK>;
> > +                     clock-names = "apb_pclk";
> > +                     cpu = <&cpu3>;
> > +
> > +                     out-ports {
> > +                             port {
> > +                                     etm3_out: endpoint {
> > +                                             remote-endpoint =
> > +                                                     <&cluster0_funnel_in3>;
> > +                                     };
> > +                             };
> > +                     };
> > +             };
> > +
> > +             funnel@ec801000 {
> > +                     compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> > +                     reg = <0 0xec801000 0 0x1000>;
> > +                     clocks = <&crg_ctrl HI3660_PCLK>;
> > +                     clock-names = "apb_pclk";
> > +
> > +                     out-ports {
> > +                             port {
> > +                                     cluster0_funnel_out: endpoint {
> > +                                             remote-endpoint =
> > +                                                     <&cluster0_etf_in>;
> > +                                     };
> > +                             };
> > +                     };
> > +
> > +                     in-ports {
> > +                             #address-cells = <1>;
> > +                             #size-cells = <0>;
> > +
> > +                             port@0 {
> > +                                     reg = <0>;
> > +                                     cluster0_funnel_in0: endpoint {
> > +                                             remote-endpoint = <&etm0_out>;
> > +                                     };
> > +                             };
> > +
> > +                             port@1 {
> > +                                     reg = <1>;
> > +                                     cluster0_funnel_in1: endpoint {
> > +                                             remote-endpoint = <&etm1_out>;
> > +                                     };
> > +                             };
> > +
> > +                             port@2 {
> > +                                     reg = <2>;
> > +                                     cluster0_funnel_in2: endpoint {
> > +                                             remote-endpoint = <&etm2_out>;
> > +                                     };
> > +                             };
> > +
> > +                             port@3 {
> > +                                     reg = <3>;
> > +                                     cluster0_funnel_in3: endpoint {
> > +                                             remote-endpoint = <&etm3_out>;
> > +                                     };
> > +                             };
> > +                     };
> > +             };
> > +
> > +             etf@ec802000 {
> > +                     compatible = "arm,coresight-tmc", "arm,primecell";
> > +                     reg = <0 0xec802000 0 0x1000>;
> > +                     clocks = <&crg_ctrl HI3660_PCLK>;
> > +                     clock-names = "apb_pclk";
> > +
> > +                     in-ports {
> > +                             port {
> > +                                     cluster0_etf_in: endpoint {
> > +                                             remote-endpoint =
> > +                                                     <&cluster0_funnel_out>;
> > +                                     };
> > +                             };
> > +                     };
> > +
> > +                     out-ports {
> > +                             port {
> > +                                     cluster0_etf_out: endpoint {
> > +                                             remote-endpoint =
> > +                                                     <&combo_funnel_in0>;
> > +                                     };
> > +                             };
> > +                     };
> > +             };
> > +
> > +             /* A73 cluster internals */
> > +             etm@ed440000 {
> > +                     compatible = "arm,coresight-etm4x", "arm,primecell";
> > +                     reg = <0 0xed440000 0 0x1000>;
> > +                     clocks = <&crg_ctrl HI3660_PCLK>;
> > +                     clock-names = "apb_pclk";
> > +                     cpu = <&cpu4>;
> > +
> > +                     out-ports {
> > +                             port {
> > +                                     etm4_out: endpoint {
> > +                                             remote-endpoint =
> > +                                                     <&cluster1_funnel_in0>;
> > +                                     };
> > +                             };
> > +                     };
> > +             };
> > +
> > +             etm@ed540000 {
> > +                     compatible = "arm,coresight-etm4x", "arm,primecell";
> > +                     reg = <0 0xed540000 0 0x1000>;
> > +                     clocks = <&crg_ctrl HI3660_PCLK>;
> > +                     clock-names = "apb_pclk";
> > +                     cpu = <&cpu5>;
> > +
> > +                     out-ports {
> > +                             port {
> > +                                     etm5_out: endpoint {
> > +                                             remote-endpoint =
> > +                                                     <&cluster1_funnel_in1>;
> > +                                     };
> > +                             };
> > +                     };
> > +             };
> > +
> > +             etm@ed640000 {
> > +                     compatible = "arm,coresight-etm4x", "arm,primecell";
> > +                     reg = <0 0xed640000 0 0x1000>;
> > +                     clocks = <&crg_ctrl HI3660_PCLK>;
> > +                     clock-names = "apb_pclk";
> > +                     cpu = <&cpu6>;
> > +
> > +                     out-ports {
> > +                             port {
> > +                                     etm6_out: endpoint {
> > +                                             remote-endpoint =
> > +                                                     <&cluster1_funnel_in2>;
> > +                                     };
> > +                             };
> > +                     };
> > +             };
> > +
> > +             etm@ed740000 {
> > +                     compatible = "arm,coresight-etm4x", "arm,primecell";
> > +                     reg = <0 0xed740000 0 0x1000>;
> > +                     clocks = <&crg_ctrl HI3660_PCLK>;
> > +                     clock-names = "apb_pclk";
> > +                     cpu = <&cpu7>;
> > +
> > +                     out-ports {
> > +                             port {
> > +                                     etm7_out: endpoint {
> > +                                             remote-endpoint =
> > +                                                     <&cluster1_funnel_in3>;
> > +                                     };
> > +                             };
> > +                     };
> > +             };
> > +
> > +             funnel@ed001000 {
> > +                     compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> > +                     reg = <0 0xed001000 0 0x1000>;
> > +                     clocks = <&crg_ctrl HI3660_PCLK>;
> > +                     clock-names = "apb_pclk";
> > +                     out-ports {
> > +                             port {
> > +                                     cluster1_funnel_out: endpoint {
> > +                                             remote-endpoint =
> > +                                                     <&cluster1_etf_in>;
> > +                                     };
> > +                             };
> > +                     };
> > +
> > +                     in-ports {
> > +                             #address-cells = <1>;
> > +                             #size-cells = <0>;
> > +
> > +                             port@0 {
> > +                                     reg = <0>;
> > +                                     cluster1_funnel_in0: endpoint {
> > +                                             remote-endpoint = <&etm4_out>;
> > +                                     };
> > +                             };
> > +
> > +                             port@1 {
> > +                                     reg = <1>;
> > +                                     cluster1_funnel_in1: endpoint {
> > +                                             remote-endpoint = <&etm5_out>;
> > +                                     };
> > +                             };
> > +
> > +                             port@2 {
> > +                                     reg = <2>;
> > +                                     cluster1_funnel_in2: endpoint {
> > +                                             remote-endpoint = <&etm6_out>;
> > +                                     };
> > +                             };
> > +
> > +                             port@3 {
> > +                                     reg = <3>;
> > +                                     cluster1_funnel_in3: endpoint {
> > +                                             remote-endpoint = <&etm7_out>;
> > +                                     };
> > +                             };
> > +                     };
> > +             };
> > +
> > +             etf@ed002000 {
> > +                     compatible = "arm,coresight-tmc", "arm,primecell";
> > +                     reg = <0 0xed002000 0 0x1000>;
> > +                     clocks = <&crg_ctrl HI3660_PCLK>;
> > +                     clock-names = "apb_pclk";
> > +
> > +                     in-ports {
> > +                             port {
> > +                                     cluster1_etf_in: endpoint {
> > +                                             remote-endpoint =
> > +                                                     <&cluster1_funnel_out>;
> > +                                     };
> > +                             };
> > +                     };
> > +
> > +                     out-ports {
> > +                             port {
> > +                                     cluster1_etf_out: endpoint {
> > +                                             remote-endpoint =
> > +                                                     <&combo_funnel_in1>;
> > +                                     };
> > +                             };
> > +                     };
> > +             };
> > +
> > +             /* An invisible combo funnel between clusters and top funnel */
> > +             funnel {
> > +                     compatible = "arm,coresight-static-funnel";
> > +                     clocks = <&crg_ctrl HI3660_PCLK>;
> > +                     clock-names = "apb_pclk";
> > +
> > +                     out-ports {
> > +                             port {
> > +                                     combo_funnel_out: endpoint {
> > +                                             remote-endpoint =
> > +                                                     <&top_funnel_in>;
> > +                                     };
> > +                             };
> > +                     };
> > +
> > +                     in-ports {
> > +                             #address-cells = <1>;
> > +                             #size-cells = <0>;
> > +
> > +                             port@0 {
> > +                                     reg = <0>;
> > +                                     combo_funnel_in0: endpoint {
> > +                                             remote-endpoint =
> > +                                                     <&cluster0_etf_out>;
> > +                                     };
> > +                             };
> > +
> > +                             port@1 {
> > +                                     reg = <1>;
> > +                                     combo_funnel_in1: endpoint {
> > +                                             remote-endpoint =
> > +                                                     <&cluster1_etf_out>;
> > +                                     };
> > +                             };
> > +                     };
> > +             };
> > +
> > +             /* Top internals */
> > +             funnel@ec031000 {
> > +                     compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> > +                     reg = <0 0xec031000 0 0x1000>;
> > +                     clocks = <&crg_ctrl HI3660_PCLK>;
> > +                     clock-names = "apb_pclk";
> > +
> > +                     out-ports {
> > +                             port {
> > +                                     top_funnel_out: endpoint {
> > +                                             remote-endpoint =
> > +                                                     <&top_etf_in>;
> > +                                     };
> > +                             };
> > +                     };
> > +
> > +                     in-ports {
> > +                             #address-cells = <1>;
> > +                             #size-cells = <0>;
> > +
> > +                             port@0 {
> > +                                     reg = <0>;
> > +                                     top_funnel_in: endpoint {
> > +                                             remote-endpoint =
> > +                                                     <&combo_funnel_out>;
> > +                                     };
> > +                             };
> > +                     };
> > +             };
> > +
> > +             etf@ec036000 {
> > +                     compatible = "arm,coresight-tmc", "arm,primecell";
> > +                     reg = <0 0xec036000 0 0x1000>;
> > +                     clocks = <&crg_ctrl HI3660_PCLK>;
> > +                     clock-names = "apb_pclk";
> > +
> > +                     in-ports {
> > +                             port {
> > +                                     top_etf_in: endpoint {
> > +                                             remote-endpoint =
> > +                                                     <&top_funnel_out>;
> > +                                     };
> > +                             };
> > +                     };
> > +
> > +                     out-ports {
> > +                             port {
> > +                                     top_etf_out: endpoint {
> > +                                             remote-endpoint =
> > +                                                     <&replicator_in>;
> > +                                     };
> > +                             };
> > +                     };
> > +             };
> > +
> > +             replicator {
> > +                     compatible = "arm,coresight-static-replicator";
> > +                     clocks = <&crg_ctrl HI3660_PCLK>;
> > +                     clock-names = "apb_pclk";
> > +
> > +                     in-ports {
> > +                             port {
> > +                                     replicator_in: endpoint {
> > +                                             remote-endpoint =
> > +                                                     <&top_etf_out>;
> > +                                     };
> > +                             };
> > +                     };
> > +
> > +                     out-ports {
> > +                             #address-cells = <1>;
> > +                             #size-cells = <0>;
> > +
> > +                             port@0 {
> > +                                     reg = <0>;
> > +                                     replicator0_out0: endpoint {
> > +                                             remote-endpoint = <&etr_in>;
> > +                                     };
> > +                             };
> > +
> > +                             port@1 {
> > +                                     reg = <1>;
> > +                                     replicator0_out1: endpoint {
> > +                                             remote-endpoint = <&tpiu_in>;
> > +                                     };
> > +                             };
> > +                     };
> > +             };
> > +
> > +             etr@ec033000 {
> > +                     compatible = "arm,coresight-tmc", "arm,primecell";
> > +                     reg = <0 0xec033000 0 0x1000>;
> > +                     clocks = <&crg_ctrl HI3660_PCLK>;
> > +                     clock-names = "apb_pclk";
> > +
> > +                     in-ports {
> > +                             port {
> > +                                     etr_in: endpoint {
> > +                                             remote-endpoint =
> > +                                                     <&replicator0_out0>;
> > +                                     };
> > +                             };
> > +                     };
> > +             };
> > +
> > +             tpiu@ec032000 {
> > +                     compatible = "arm,coresight-tpiu", "arm,primecell";
> > +                     reg = <0 0xec032000 0 0x1000>;
> > +                     clocks = <&crg_ctrl HI3660_PCLK>;
> > +                     clock-names = "apb_pclk";
> > +
> > +                     in-ports {
> > +                             port {
> > +                                     tpiu_in: endpoint {
> > +                                             remote-endpoint =
> > +                                                     <&replicator0_out1>;
> > +                                     };
> > +                             };
> > +                     };
> > +             };
> > +     };
> > +};
> > diff --git a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
> > index a4a3d08..8f2fede 100644
> > --- a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
> > +++ b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
> > @@ -1246,3 +1246,5 @@
> >               };
> >       };
> >  };
> > +
> > +#include "hi3660-coresight.dtsi"
> > --
> > 2.7.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
