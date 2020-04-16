Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8C61ACD73
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 18:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HRct3sXwc/EIWSM4vviWuZHSRPgmCBoqkOED+cFrv2U=; b=hehqXZhnUzz3sq
	vrTm1gij5O0htGuk3aliwuY7aB2vmANosXTZUg8PLKd9G4vd3rRaPht+NoAh46njCHEq97bckbx7U
	izbO+6ZxCasMHt6dqmURWtT1gjJjNOhuHmzkjA7PxgBZdLGon6PBXfjtF2fe/02xwX2jlni1hS68b
	4ofuhGEVr1NBnH2Bz1x9j1WWtsXTH6EnNdMtRlhRaJscL6ts8G6E+UWxbgXF6erKgW9gZDO1QUIUS
	x4RcmFKAH3r/j/co61x+y61pJvra1xuKOvFzEY66HG9fsOnxDnD5PUzNhtdd/02mruKPbhf01/QFx
	dM1Ed2aN3shREGrobfeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP7EJ-0002ej-G8; Thu, 16 Apr 2020 16:19:07 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP7E7-0002do-Sa
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 16:18:57 +0000
Received: by mail-oi1-f195.google.com with SMTP id x10so7608183oie.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 09:18:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y4HfSPhfYRgg7hXjXhAC7Y1EeYCA1tKGpq/7RYwzqLQ=;
 b=jing1Gb4bxszKFQ56se+VxSzqSGrmN4Wx7LXd3uj1oRgSHZFcp+w6G8NY72cCRXZh9
 rRHM5cdIjNg1+6SvHLq33vV3WppRef7NjpQrjvfCPFSDKaZC8Wp5mx0Co6uHMjXNbQ6Z
 NZrjKVUvhPHJNH28w5fCYvoQXbniNbbU1vBAF4ZQR+TdGQfo4l595hELEa0m+Oi3Q0Uz
 mdl/+QWSdlzBRbcTJe5tNHwnXa69dD5c4GJBvbZhhSeBB2nIg8+jafAOroFSICgpU0Mg
 CNRxCghX8wNa4xOPhi0BeTXJYEghuRehlLxRj12aqy44eMDuXlN38hajhZi2qKxUBV4G
 fHfg==
X-Gm-Message-State: AGi0PuZxOsoclvp79+9eF0KBzfInEsr6orWfgvrSSh1qrM8gIsd3N9Lx
 OX6JPLuvt/dUtY6/KYR+YTQMM35HazvxFIgq0T0=
X-Google-Smtp-Source: APiQypJ9S7cnz9hITqdHHVyamXCWYRrJVGPFnD+VZ/1EEx7X1+UtJPbyFBYx3JtLlZlLYcDWxZ5vL+tvZA1NAMOzy+c=
X-Received: by 2002:aca:f541:: with SMTP id t62mr3288764oih.148.1587053934205; 
 Thu, 16 Apr 2020 09:18:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200416115658.20406-1-geert+renesas@glider.be>
 <20200416115658.20406-3-geert+renesas@glider.be>
 <20200416125630.GF4987@lakrids.cambridge.arm.com>
 <CAMuHMdWRW4+YLR8fz0hUTAPupRkM4Y5c82XHuOWSvNYOh-BZ0A@mail.gmail.com>
 <20200416155655.GA7155@lakrids.cambridge.arm.com>
In-Reply-To: <20200416155655.GA7155@lakrids.cambridge.arm.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 16 Apr 2020 18:18:42 +0200
Message-ID: <CAMuHMdXO5Qv1XezGW+yELOaTkoFUA4B8SvBpBH=r4mLtbnkBhg@mail.gmail.com>
Subject: Re: [PATCH 2/2] [RFC] arm64: Add dependencies to vendor-specific
 errata
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_091855_923956_3695C247 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Wei Xu <xuwei5@hisilicon.com>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andy Gross <agross@kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On Thu, Apr 16, 2020 at 5:57 PM Mark Rutland <mark.rutland@arm.com> wrote:
> On Thu, Apr 16, 2020 at 05:38:07PM +0200, Geert Uytterhoeven wrote:
> > And perhaps you do want to enable some platform-specific drivers for
> > VFIO pass-through?  Hence having ARCH_* dependencies on those drivers
> > means they cannot be enabled :-( Hmm...
>
> IIRC platform device passthrough requires an corresponding VFIO platform
> driver in the host to handle reset and so on, but it does seem a shame

If your SoC has a reset controller, that problem has been solved in a generic
way, cfr. "[PATCH v5] vfio: platform: Add generic reset controller support"
(https://lore.kernel.org/lkml/20181113131508.18246-1-geert+renesas@glider.be/).
Unfortunately not yet upstream.

Combine with "hw/arm/sysbus-fdt: Add support for instantiating generic devices"
(https://github.com/geertu/qemu/commit/180318003c08594e8e852b2285a98184f905bfa9)
and you're set ;-)

> to not allow the user to select a driver if they really want it.

I forgot you can add "|| VIRTIO_MMIO" to the dependencies of drivers for
devices that can be used with VFIO pass-through.

> I guess there might be platform-specific PCIe drivers too, which might
> work with VFIO regardless.

Indeed. PCI is business as usual.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
