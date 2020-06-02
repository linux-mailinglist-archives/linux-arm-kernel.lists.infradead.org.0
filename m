Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E11D01EBEAB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 17:03:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m6A0jCcK6hijjX8S14t7jV102vBGuR23jhRx5EuhSUM=; b=Wu0NY4q8qS6ASN
	zF3awshJk9QAMzRpCSeNJrjUDMt+S+vO+VJOC59GxTooRx1ZXgk44VfQ8WtSAt7LK0XKP2eX2QOvp
	XgS5oyj9KpaNxPDoHapnQopxGQAXz069pBlWHvWg7jfx23Sn5ZoDWt1K/2tIlknY257HH4BECrzrq
	zH/wefy3c+o0NUEA7jDv82FkcYPYAYeNtsJObktMdBy0ErYuCxno5OHNmCdNCA77UU8UV0El+r5h7
	NeXRX0v1asBoPQFgf2RJcrEIv+YnpGTm4DA+Rl1jJLe9eOJQ+6SsR6/Int5iFM++/sBeOmLk/Tg4j
	NLUjuvJXS2I9wjuff/SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg8Ra-0000Px-IF; Tue, 02 Jun 2020 15:03:10 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg8RD-0000EY-8f
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 15:02:48 +0000
Received: by mail-wm1-x343.google.com with SMTP id k26so3468271wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 08:02:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ie4XwPUUWuHUs6FpQc71seJRalOxPBnrHjEeZHur870=;
 b=rcV8xvqQ9pPbeXXUaiQ/IjScOQcZmPZgnBs587oPVmCd3+x1Ol79xSWBWAkedejyog
 avM37VtRjXAmg1llx2WbnE0Bc2LRYohlI/hp6EaqXOo5OlFJ6HREm4XxCFvpA3MYRoeE
 4v4sIWbUUqGgKydRX315TGSREnqTA8r57cXrvVxcWngHLMpdtFVSiuCKeaWv+2IG8Jk3
 FyA2tUj1kGPE99oxoNNjsIPXVPxdUShKlY5qjAiV4ZR5Ug6LI0ay8NpiPNSHr3VTuk4n
 iCBZEeEYjuryK4ouCKVKYCfPkxG4uUHEYu67H+aEf1AFloavvIhZVSzJtXN+0E/wH7Wv
 MjRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ie4XwPUUWuHUs6FpQc71seJRalOxPBnrHjEeZHur870=;
 b=JsV9dXprFLAHrDfGRS2SkjwMBp4NfTvPCAMJ2TP5PemSpi7s/AykMv0FjGdFIw9vOX
 wnICA6ehhS1KM4WfI17WaPaZD/njhjyMNLtZmVhY+rObpRyQnOD4UKF5E8XcuDcydex2
 GTxCIBd9pVdp8AluMgQe68rk4xgbwsIeP06PkboPfcY0pfzU7i0hLftD65WRoPPJBG5T
 bTAuxPHttylUQJewVbJCcb3pAqcxkqKblaI9Dtv3GPOQTJY8cQ9uhfLWFZDcWbXAiWLn
 qM+vPQo/r4wLB+3ympSNWLwDpsIAZyaOjihjceAn+sHPzLBmV57uwECsHCDBvyCJH1Zq
 XjNw==
X-Gm-Message-State: AOAM532Q46yemMfq9v3pVkGkYrvU/dNETL1aWrOa+x76DVVomiJdWxJR
 1iclul2PdQDW07BC2ciAh1evlCmm2wm9+WVwgUcSMw==
X-Google-Smtp-Source: ABdhPJw+qlivYu2F8CIkQRiCrVBEGIQXfJye4OGlUJ/N4SBalG1P/TzpCkBTffuFw04vbpL4M63++mj+iMJssStM1iQ=
X-Received: by 2002:a7b:c186:: with SMTP id y6mr4835128wmi.82.1591110165044;
 Tue, 02 Jun 2020 08:02:45 -0700 (PDT)
MIME-Version: 1.0
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <d2c1850e38e14f3def4c0307240e6826e296c14b.1590594512.git-series.maxime@cerno.tech>
 <CADaigPU7c=1u47R9GzvGCH_Z2fywY1foGYEy=KbBikjUQpwUFg@mail.gmail.com>
 <20200602141228.7zbkob7bw3owajsq@gilmour>
In-Reply-To: <20200602141228.7zbkob7bw3owajsq@gilmour>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Tue, 2 Jun 2020 16:02:28 +0100
Message-ID: <CAPY8ntDZWJeu14mL5a0jqUWHFOEWm2OOBBkh4yjjP0oLU83UCQ@mail.gmail.com>
Subject: Re: [PATCH v3 032/105] drm/vc4: crtc: Enable and disable the PV in
 atomic_enable / disable
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_080247_364117_4AE23DD8 
X-CRM114-Status: GOOD (  19.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime and Eric

On Tue, 2 Jun 2020 at 15:12, Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi Eric
>
> On Wed, May 27, 2020 at 09:54:44AM -0700, Eric Anholt wrote:
> > On Wed, May 27, 2020 at 8:50 AM Maxime Ripard <maxime@cerno.tech> wrote:
> > >
> > > The VIDEN bit in the pixelvalve currently being used to enable or disable
> > > the pixelvalve seems to not be enough in some situations, which whill end
> > > up with the pixelvalve stalling.
> > >
> > > In such a case, even re-enabling VIDEN doesn't bring it back and we need to
> > > clear the FIFO. This can only be done if the pixelvalve is disabled though.
> > >
> > > In order to overcome this, we can configure the pixelvalve during
> > > mode_set_no_fb, but only enable it in atomic_enable and flush the FIFO
> > > there, and in atomic_disable disable the pixelvalve again.
> >
> > What displays has this been tested with?  Getting this sequencing
> > right is so painful, and things like DSI are tricky to get to light
> > up.
>
> That FIFO is between the HVS and the HDMI PVs, so this was obviously
> tested against that. Dave also tested the DSI output IIRC, so we should
> be covered here.

DSI wasn't working on the first patch set that Maxime sent - I haven't
tested this one as yet but will do so.
DPI was working early on to both an Adafruit 800x480 DPI panel, and
via a VGA666 as VGA.
HDMI is obviously working.
VEC is being ignored now. The clock structure is more restricted than
earlier chips, so to get the required clocks for the VEC without using
fractional divides it compromises the clock that other parts of the
system can run at (IIRC including the ARM). That's why the VEC has to
be explicitly enabled for the firmware to enable it as the only
output. It's annoying, but that's just a restriction of the chip.

  Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
