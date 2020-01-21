Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A471443C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 18:58:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sCc94Z6sJuiSZAFNcCUxvCyQdwUZBA9159xfzyeE4io=; b=Q0szcb4K8Sw7UF
	3TayTkiJOOkjI4v5NhINeF5gkmrQjuKsygd7xFLoOfn1HG+YhIpre6TeV6LsrcMwOwqdz5J70bBRz
	VNoie7EDJuB0isG7GJHuKy6GCUucG0BRf+7fD2hG/1e+KBS/rk/GruoYh2LMVEhqrWhGbvmWfKRpx
	SM4PTlHn+f7Qa4avG4t5ZmubNlAixBhWqRhp/uKSlW2S4NXt12ewP9Jzz7LYArQ49ZBv61LamPHOi
	NRgU1VGqBMOKXdzl/CijN0h2iMVM3voucdn3iGq6wte4bBB+59KC0niJY5E7Y3z1tDm6FuTQ05Oo/
	3OHm8AhI9NZER34VL7IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itxmg-0001lt-VG; Tue, 21 Jan 2020 17:57:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itxmN-0001X5-NV
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 17:57:36 +0000
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E485024125
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 17:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579629451;
 bh=N1ByJboh9etCauJIpBnoIxPYjFw6LrjcIDQeMUgD/0I=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=qos0rbbiJj3cgXk//m1aSZmk9oIDKZ3rgaN9BM/PN8+gxyZACjeaa5Ix+gapZTu8s
 4+pFOS1KisXJErzfyisirnX3Ov1ARIfrRxu4xSpB8HtWo1JfgXPjDoSgECUcbHgOZR
 6Ico5ulbmJ/LWoXHPQ/RQZty0L1Am9v9kwbBmP+E=
Received: by mail-qk1-f179.google.com with SMTP id k6so3619279qki.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 09:57:30 -0800 (PST)
X-Gm-Message-State: APjAAAUpOzhle5hADXwThKz018DjwOf2OHRz+IR3mCzbkYiShpsdQyzk
 hbTrMbjvyRtpbgfKN/DRqEOkYGerFX0JR810gw==
X-Google-Smtp-Source: APXvYqyRmUYoX+Rv5wUpjNRs1vQFxqO3DHQ3ad4AHZ0Q+B/L9k1IDRQlZN802njJ44dzDDj2PCkQc+TLozLvMqX3he8=
X-Received: by 2002:a05:620a:135b:: with SMTP id
 c27mr5347069qkl.119.1579629450069; 
 Tue, 21 Jan 2020 09:57:30 -0800 (PST)
MIME-Version: 1.0
References: <20200108111830.8482-1-rogerq@ti.com>
 <20200108111830.8482-3-rogerq@ti.com>
 <20200115014724.GA20772@bogus> <1c55f0a8-99e3-934f-e8b8-d090df06a12e@ti.com>
In-Reply-To: <1c55f0a8-99e3-934f-e8b8-d090df06a12e@ti.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 21 Jan 2020 11:57:18 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLfJDN2LnqWHehFiM-SQyeqQAk2wjoKRbBiPy4tc5OkMQ@mail.gmail.com>
Message-ID: <CAL_JsqLfJDN2LnqWHehFiM-SQyeqQAk2wjoKRbBiPy4tc5OkMQ@mail.gmail.com>
Subject: Re: [PATCH 2/5] arm64: dts: ti: k3-j721e-main: Add serdes_ln_ctrl
 node to select SERDES lane mux
To: Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_095731_826550_D7B68E23 
X-CRM114-Status: GOOD (  18.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Vignesh R <vigneshr@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 11:10 PM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
> Hi Rob,
>
> On 15/01/20 7:17 AM, Rob Herring wrote:
> > On Wed, Jan 08, 2020 at 01:18:27PM +0200, Roger Quadros wrote:
> >> From: Kishon Vijay Abraham I <kishon@ti.com>
> >>
> >> Add serdes_ln_ctrl node used for selecting SERDES lane mux.
> >>
> >> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> >> Signed-off-by: Sekhar Nori <nsekhar@ti.com>
> >> Signed-off-by: Roger Quadros <rogerq@ti.com>
> >> ---
> >>  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 26 +++++++++++
> >>  include/dt-bindings/mux/mux-j721e-wiz.h   | 53 +++++++++++++++++++++++
> >>  2 files changed, 79 insertions(+)
> >>  create mode 100644 include/dt-bindings/mux/mux-j721e-wiz.h
> >>
> >> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> >> index 24cb78db28e4..6741c1e67f50 100644
> >> --- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> >> +++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> >> @@ -5,6 +5,8 @@
> >>   * Copyright (C) 2016-2019 Texas Instruments Incorporated - http://www.ti.com/
> >>   */
> >>  #include <dt-bindings/phy/phy.h>
> >> +#include <dt-bindings/mux/mux.h>
> >> +#include <dt-bindings/mux/mux-j721e-wiz.h>
> >>
> >>  &cbass_main {
> >>      msmc_ram: sram@70000000 {
> >> @@ -19,6 +21,30 @@
> >>              };
> >>      };
> >>
> >> +    scm_conf: scm_conf@100000 {
> >
> > Don't use '_' in node names.
>
> Okay.
> >
> >> +            compatible = "syscon", "simple-mfd";
> >
> > Needs a specific compatible especially since the child node doesn't have
> > one.
>
> Child node has "mmio-mux" as compatible no? Are you referring to
> something else here?

I'm referring to exactly what I quoted, but that's also a generic
compatible, so you'd never be able to match any of this block to a
specific driver or handle any quirks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
