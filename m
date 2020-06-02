Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E56301EC2C6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 21:32:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OVGX2drrZn9gck1LdS+RwlCpUIYN21P/+gcVOqLtHao=; b=kqQsHod7hRcje3
	G0RPYcUS4BQhuJaVSUk2MN47cTADK8G2ciQusjCOubojRXfmksZXV/TSrq9Zfj8Jb/KbBr4jWHawx
	lyVqirfBbNcB29rojvw3HOVVHkzl6EOK8eIx5Dt0a4hOX4VplPPoSmXBCYMjQuKRcceuFJNmpxc2D
	Yqy00hYTe8HWV69NGe/dv2uBDC4ULaEnao8ifXEfjXcBU5qcPwpDDNFT+x/F92Eq5I3WY/SBkM3/e
	uZd/PdRizJLvBbY3yAtmKT1vQpNoq2E4iDh2hEKSG9zeS4QTH4tQQyWQUCvDMpZ/F/lQVtcppXYOq
	aSRpN+K0h+yX/ZypZt8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgCdh-0005ig-JA; Tue, 02 Jun 2020 19:31:57 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgCda-0005ht-KW
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 19:31:52 +0000
Received: by mail-lj1-x243.google.com with SMTP id n24so3493294lji.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 12:31:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IQbEYa0oW0Il8mjfCzR4SoEfB7EUDs8d+32KPqK0uG4=;
 b=VG2CJ5t+FQePnvjuONDwr6Dql0NvazBNVRqadOsYgGBHsWUl15Ct8FtXwYihJnDz4P
 roesHC2nlZ1W+rf0yu/PrUqwzwy9amDLGR8maWs7F7LOLxt51R6tgnYvEXzcAPzEY5/C
 A3syAi0TEP9TFKGEiO5g+0hlkjSzNyG6QQG+3cF+LfRsQdyWyzrXblFKTUdRm84VvTRM
 90fejGTEfsQCFOcBHCCd2S/eQs0TKYCv7mMunvHHl4cPh9vJDYMGI2Qj6UNQZhNYyl4A
 6YKeBUUuielCOD2+N2SFexpH6ft4bMjwWpo58iuHfwApd6/fnY69lPErh6E1cNhXyw4o
 9R7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IQbEYa0oW0Il8mjfCzR4SoEfB7EUDs8d+32KPqK0uG4=;
 b=rGnv+mCZOKtOxQNNvmcWu74zGDh4XL4tdGKi1Usv5qK/98HhNARY+h8N0lG6azbNQl
 EaZpwiK2vNoYUaPHAiY4RJ957Quh9wvzv3PBmAcuLtFpNI1g8UvkZ+pkQjSp1DXoy4U2
 Ny0uWWNStiFPzaqs/dVoWHgDiqnFIapNgnYs835N0Hg567Bzhq6oPYnIeorySPpUjUan
 fTLiCCKRyT6C5AoDpZ0nrOJPOqGIBUPf7Am+QrWBCcOW4AUQo+OD81aiaxyM0Y7pPq9o
 zzlXIQMW0SsJ0326H/bUjUE2+iei+STJKMZ2g8HGKOsf7CPStG4AYGS51X99RWpchNKB
 wCYQ==
X-Gm-Message-State: AOAM532q2v1L/jZZchupoA7VW8XPMFrn5gh+b3hoVYnrjEtbDDKsh6Dg
 s3NDSFQowENpSK4Unn+gak4X3PhJm3lEVeGKUleR9A==
X-Google-Smtp-Source: ABdhPJxA2pW7yh8mSs3AzE0QrgE8KUJRrdHsiJaMgBJ2xDsVXK8ITtIHOEPS1WjP3x7YzPtQAVEFE55uqBSjObbn8hU=
X-Received: by 2002:a2e:9147:: with SMTP id q7mr326807ljg.430.1591126308681;
 Tue, 02 Jun 2020 12:31:48 -0700 (PDT)
MIME-Version: 1.0
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <d2c1850e38e14f3def4c0307240e6826e296c14b.1590594512.git-series.maxime@cerno.tech>
 <CADaigPU7c=1u47R9GzvGCH_Z2fywY1foGYEy=KbBikjUQpwUFg@mail.gmail.com>
 <20200602141228.7zbkob7bw3owajsq@gilmour>
 <CAPY8ntDZWJeu14mL5a0jqUWHFOEWm2OOBBkh4yjjP0oLU83UCQ@mail.gmail.com>
In-Reply-To: <CAPY8ntDZWJeu14mL5a0jqUWHFOEWm2OOBBkh4yjjP0oLU83UCQ@mail.gmail.com>
From: Eric Anholt <eric@anholt.net>
Date: Tue, 2 Jun 2020 12:31:37 -0700
Message-ID: <CADaigPUHPhdrt9JkTfaw0iT7Z8z3Si-v2VJ-s+dhnFQaDNkAaA@mail.gmail.com>
Subject: Re: [PATCH v3 032/105] drm/vc4: crtc: Enable and disable the PV in
 atomic_enable / disable
To: Dave Stevenson <dave.stevenson@raspberrypi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_123150_740735_114E29D4 
X-CRM114-Status: GOOD (  22.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tim Gover <tim.gover@raspberrypi.com>, LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com, Maxime Ripard <maxime@cerno.tech>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 2, 2020 at 8:02 AM Dave Stevenson
<dave.stevenson@raspberrypi.com> wrote:
>
> Hi Maxime and Eric
>
> On Tue, 2 Jun 2020 at 15:12, Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > Hi Eric
> >
> > On Wed, May 27, 2020 at 09:54:44AM -0700, Eric Anholt wrote:
> > > On Wed, May 27, 2020 at 8:50 AM Maxime Ripard <maxime@cerno.tech> wrote:
> > > >
> > > > The VIDEN bit in the pixelvalve currently being used to enable or disable
> > > > the pixelvalve seems to not be enough in some situations, which whill end
> > > > up with the pixelvalve stalling.
> > > >
> > > > In such a case, even re-enabling VIDEN doesn't bring it back and we need to
> > > > clear the FIFO. This can only be done if the pixelvalve is disabled though.
> > > >
> > > > In order to overcome this, we can configure the pixelvalve during
> > > > mode_set_no_fb, but only enable it in atomic_enable and flush the FIFO
> > > > there, and in atomic_disable disable the pixelvalve again.
> > >
> > > What displays has this been tested with?  Getting this sequencing
> > > right is so painful, and things like DSI are tricky to get to light
> > > up.
> >
> > That FIFO is between the HVS and the HDMI PVs, so this was obviously
> > tested against that. Dave also tested the DSI output IIRC, so we should
> > be covered here.
>
> DSI wasn't working on the first patch set that Maxime sent - I haven't
> tested this one as yet but will do so.
> DPI was working early on to both an Adafruit 800x480 DPI panel, and
> via a VGA666 as VGA.
> HDMI is obviously working.
> VEC is being ignored now. The clock structure is more restricted than
> earlier chips, so to get the required clocks for the VEC without using
> fractional divides it compromises the clock that other parts of the
> system can run at (IIRC including the ARM). That's why the VEC has to
> be explicitly enabled for the firmware to enable it as the only
> output. It's annoying, but that's just a restriction of the chip.

I'm more concerned with "make sure we don't regress pre-pi4 with this
series" than "pi4 displays all work from the beginning"

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
