Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1269CE1A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 13:26:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CMrTqUyD5cAeSfEtxZbE+lLLSEKsKrALMfBI38MGB3k=; b=KAJiOhBV+BQk1Q
	pHwsc67lVPD4Wq3mgfovZrvJaJOyCQ4+zGW+ghCbg/Zm6Wm5pPT8y4xF7DnCyjUJeM59wPg9pujc8
	zuPFn4uEKZv2F0DM1ej50nC6bBmZQCmScWpeglOaGIgyOdPRXvw9aB03AVDznO16dq2eH7QVNrVDt
	ZcPU3D9ByJ/ZZMvSHmBBnu+Co7ZV6VsvfgDUrinY8/wdaNe+JBBQN0gf95wLeBke9HXlWbm3C+c3T
	1YaNsUIy7+HGiy3dfekcNy2aNQzQVGyOBA8gPDu5P/48dj/KFI0C875BLlWxZR8rncZyutUVMl5Q6
	vkVG48+v8fDDBNgDbjmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2D8T-000535-Hm; Mon, 26 Aug 2019 11:26:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2D8L-00052c-3M
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 11:26:04 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0688320828
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 11:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566818760;
 bh=+fXhBoV3XoXFJXbmFYt1JnaExIkAJtARzjPEGayT5QE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=W+JhO28faytRxkR01BpmD3xQ0SLFisGlTfAHYUH5U5tvO8lEXDhf+7uk4Lgy4Deop
 kM0XXilgvWbCIJTrmZ/JYNWlJRcdZtSNkuKdmtNL5b6zVEvvMj8qhABLmohejC/0lN
 e3vnwo0aRmJ6ClEfBMuhXEaW4rlaXVCAmIL1vT3k=
Received: by mail-qt1-f176.google.com with SMTP id i4so17404767qtj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 04:25:59 -0700 (PDT)
X-Gm-Message-State: APjAAAVSm/FergY9ytCYwTIzpUNM1sKrOwA/4z8DHYuWi+95u/TPopUS
 O+hbdZllbwTZI3zO/vVFbxfgFZ7f0im2y+rk6Q==
X-Google-Smtp-Source: APXvYqwVSHUzvW1aqou+M9OekO609XNKUgfgglRIqoHtf6kZSH40aebGSx2wdYu9Nkuxgdf7crX95Zj0JXvLQ7mws0w=
X-Received: by 2002:a0c:9782:: with SMTP id l2mr15081337qvd.72.1566818759166; 
 Mon, 26 Aug 2019 04:25:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190809082947.30590-1-lokeshvutla@ti.com>
 <20190809082947.30590-6-lokeshvutla@ti.com>
 <20190821210232.GA22578@bogus> <da0286cb-8e4c-e12c-240c-b6de72bdd0ee@ti.com>
In-Reply-To: <da0286cb-8e4c-e12c-240c-b6de72bdd0ee@ti.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 26 Aug 2019 06:25:47 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKpWhmKJUEWD-hKzmxLnHG4VVZbFR04BeQevP0zOoHKiw@mail.gmail.com>
Message-ID: <CAL_JsqKpWhmKJUEWD-hKzmxLnHG4VVZbFR04BeQevP0zOoHKiw@mail.gmail.com>
Subject: Re: [PATCH 5/6] dt-bindings: pinctrl: k3: Introduce pinmux
 definitions for J721E
To: Lokesh Vutla <lokeshvutla@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_042601_187119_3FE0A91D 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nishanth Menon <nm@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Keerthy <j-keerthy@ti.com>, Linus Walleij <linus.walleij@linaro.org>,
 Tero Kristo <t-kristo@ti.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 5:27 AM Lokesh Vutla <lokeshvutla@ti.com> wrote:
>
> Hi Rob,
>
> On 22/08/19 2:32 AM, Rob Herring wrote:
> > On Fri, Aug 09, 2019 at 01:59:46PM +0530, Lokesh Vutla wrote:
> >> Add pinctrl macros for J721E SoC. These macro definitions are
> >> similar to that of AM6, but adding new definitions to avoid
> >> any naming confusions in the soc dts files.
> >>
> >> Acked-by: Nishanth Menon <nm@ti.com>
> >> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> >> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> >> ---
> >>  include/dt-bindings/pinctrl/k3.h | 3 +++
> >>  1 file changed, 3 insertions(+)
> >>
> >> diff --git a/include/dt-bindings/pinctrl/k3.h b/include/dt-bindings/pinctrl/k3.h
> >> index 45e11b6170ca..499de6216581 100644
> >> --- a/include/dt-bindings/pinctrl/k3.h
> >> +++ b/include/dt-bindings/pinctrl/k3.h
> >> @@ -32,4 +32,7 @@
> >>  #define AM65X_IOPAD(pa, val, muxmode)               (((pa) & 0x1fff)) ((val) | (muxmode))
> >>  #define AM65X_WKUP_IOPAD(pa, val, muxmode)  (((pa) & 0x1fff)) ((val) | (muxmode))
> >>
> >> +#define J721E_IOPAD(pa, val, muxmode)               (((pa) & 0x1fff)) ((val) | (muxmode))
> >> +#define J721E_WKUP_IOPAD(pa, val, muxmode)  (((pa) & 0x1fff)) ((val) | (muxmode))
> >
> > checkpatch reports a parentheses error:         (((pa) & 0x1fff) ((val) | (muxmode)))
>
> This was left intentionally as this macro is giving out two entries in DT like
> below:
>
>         pinctrl-single,pins = <
>                 J721E_IOPAD(0x0, PIN_INPUT, 7)
>         >;
>
> comes out as
>
>         pinctrl-single,pins = <
>                 0x0 (PIN_INPUT | 7)
>         >;
>
> If parenthesis are added for the whole macro, the following build error occurs:
>   DTC     arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dtb
> Error: arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts:41.24-25 syntax error
> FATAL ERROR: Unable to parse input tree

Okay, NM.

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
