Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B876C3D46D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 19:41:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1EBiuS0s2CMzZ7uATbhjreWpQObXx1AovXqiGCRGEXw=; b=f3xC6mHRP0IyyH
	b+PYP0w13MJr0K/YCFOuJnrrnBQDC+VXjqZkYd2lqs65M4gMBr3gkyyW+VHJBFfcvvBjv3Z2PjZiQ
	HlLDNgGYZ01JXg+IAAO7vXSX/7M2EuR9ZkEttUEMii99M5sOXHgMiVUjJLvXx9XOCWK+77ZTqRGAx
	r/qnlclyh1O9ZURX7jMew98ZaXuQL6DrZTZrC2M7g0p8AveOMb9/GERFbIh2kVwdCFXFcSRyHqsTN
	9GETErqXAJcMr66oT3exBdVVvdy4Tn83qOBaAHob0b0K3WZ3pXTRyd9EAk8fHM02B41PwJX/G5YLB
	9whOGLB6pFeHf5oWKGkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hakle-00087v-KI; Tue, 11 Jun 2019 17:41:06 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haklT-00087M-LM
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 17:40:56 +0000
Received: by mail-oi1-f195.google.com with SMTP id g7so6420633oia.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 10:40:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E6Szud1QEL0uh5kFNy/KSdJS6Ul+00nLiWCBMgcVJGg=;
 b=a30DHznLcvv08crkRIHb4VBg/MzAfdZwjVGie+yfhJxU/wqFl3+zQhF9EtgM3SBKHA
 hNp5WVPl7IILtLqJWVX5krMrr6qxGbiygV4187FmuDCUOp1f0iQVq15UglZUjZ34DSOl
 g6YbqKdMb+Sx0NSywAq3qPlSHlmZ1VGVTUrsUiAhoDWsmz1Z0olMaL54Dfq3CF4DKVSD
 erqx118AxDvw62xydTEXKcKrUnDz+ILpzDmnkcG2leKGJjoYOZrY7pcBoROP/mmoTslj
 5vBJy+Xv2mYDddaqCmQJmUlO6AXi6+kti8D4a5Yqorj4pBsgEDW6o6LddUjPq0xWhE5x
 eoWw==
X-Gm-Message-State: APjAAAWqfH7vdvsWx+BvNWNw0OAlOalKzOhVrt7/GG9fE9k5nYdfbAk8
 3V5J1QJIpNE+FG+ABsVmbihRzY4Q
X-Google-Smtp-Source: APXvYqwUiq4qsRwbdCFg1nDEY3ya8FuSMfWjiid0W8c/2dBySprjTijDhsYoNQ0hubjNQrYLxk9JJg==
X-Received: by 2002:aca:5346:: with SMTP id h67mr15533847oib.55.1560274854045; 
 Tue, 11 Jun 2019 10:40:54 -0700 (PDT)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com.
 [209.85.210.52])
 by smtp.gmail.com with ESMTPSA id w140sm1703700oie.32.2019.06.11.10.40.53
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 10:40:53 -0700 (PDT)
Received: by mail-ot1-f52.google.com with SMTP id b7so12686824otl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 10:40:53 -0700 (PDT)
X-Received: by 2002:a05:6830:1192:: with SMTP id
 u18mr30452660otq.74.1560274853474; 
 Tue, 11 Jun 2019 10:40:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190517045753.3709-1-ran.wang_1@nxp.com>
 <20190523085104.GP9261@dragon>
In-Reply-To: <20190523085104.GP9261@dragon>
From: Li Yang <leoyang.li@nxp.com>
Date: Tue, 11 Jun 2019 12:40:42 -0500
X-Gmail-Original-Message-ID: <CADRPPNRa11z98Rw5cgApn-2ZFMSTGj-h73wZThmgp9w8dQD4iw@mail.gmail.com>
Message-ID: <CADRPPNRa11z98Rw5cgApn-2ZFMSTGj-h73wZThmgp9w8dQD4iw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: ls1028a: Fix CPU idle fail.
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_104055_698922_4C5F9E74 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Bhaskar Upadhaya <bhaskar.upadhaya@nxp.com>,
 lkml <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Ran Wang <ran.wang_1@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 3:52 AM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Fri, May 17, 2019 at 12:57:53PM +0800, Ran Wang wrote:
> > PSCI spec define 1st parameter's bit 16 of function CPU_SUSPEND to
> > indicate CPU State Type: 0 for standby, 1 for power down. In this
> > case, we want to select standby for CPU idle feature. But current
> > setting wrongly select power down and cause CPU SUSPEND fail every
> > time. Need this fix.
> >
> > Fixes: 8897f3255c9c ("arm64: dts: Add support for NXP LS1028A SoC")
> > Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
>
> Leo, Bhaskar,
>
> Do you guys agree with it?

Sorry that I missed this email previously.  I agree with this change.
CPU idle should use a low power state that could be waked up by
interrupts and that should be PW20. And Ran is right that both PW20
and PH20 are actually not power down state.

- Leo

>
> Shawn
>
> > ---
> >  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi |   18 +++++++++---------
> >  1 files changed, 9 insertions(+), 9 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > index b045812..bf7f845 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > @@ -28,7 +28,7 @@
> >                       enable-method = "psci";
> >                       clocks = <&clockgen 1 0>;
> >                       next-level-cache = <&l2>;
> > -                     cpu-idle-states = <&CPU_PH20>;
> > +                     cpu-idle-states = <&CPU_PW20>;
> >               };
> >
> >               cpu1: cpu@1 {
> > @@ -38,7 +38,7 @@
> >                       enable-method = "psci";
> >                       clocks = <&clockgen 1 0>;
> >                       next-level-cache = <&l2>;
> > -                     cpu-idle-states = <&CPU_PH20>;
> > +                     cpu-idle-states = <&CPU_PW20>;
> >               };
> >
> >               l2: l2-cache {
> > @@ -53,13 +53,13 @@
> >                */
> >               entry-method = "arm,psci";
> >
> > -             CPU_PH20: cpu-ph20 {
> > -                     compatible = "arm,idle-state";
> > -                     idle-state-name = "PH20";
> > -                     arm,psci-suspend-param = <0x00010000>;
> > -                     entry-latency-us = <1000>;
> > -                     exit-latency-us = <1000>;
> > -                     min-residency-us = <3000>;
> > +             CPU_PW20: cpu-pw20 {
> > +                       compatible = "arm,idle-state";
> > +                       idle-state-name = "PW20";
> > +                       arm,psci-suspend-param = <0x0>;
> > +                       entry-latency-us = <2000>;
> > +                       exit-latency-us = <2000>;
> > +                       min-residency-us = <6000>;
> >               };
> >       };
> >
> > --
> > 1.7.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
