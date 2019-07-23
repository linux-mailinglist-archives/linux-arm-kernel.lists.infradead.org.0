Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9CC71DEA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 19:41:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dLMSFVxzwZ6QzSov1FOxPViUeNpJrDQQTS3vrC4KiTI=; b=uRxir9Fe+SHP5U
	0DsgPwW76dFgQIQ5xyS43TXKQiw+s6b5eL1zvk62KMU6MXYcKyZR+VbP8bNErlgdpbE7OLJSoiHgv
	y+D0yMCcsZIJkvLp3YUSH916aKRfgKbalHQ0cer8d4/lzo55dRGm2yX32Z4/Os6HSveZuZtOpZQa5
	oSzfk+bdMMAVlxPbFKudcO2GajNZrX+v54x5yIg7sAl7Q79fafL4h6qP5D6WTIuIwqhQcn2ZJHJXt
	LsyBcKqy7mjM0leR+GCfo+mYTYM6oXaVqKy6eHQM9tzGLSOnZNJPl7awXoEyov7efOSabDzFy6rex
	8CGhIqgCwhaBGPhScuYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpymx-0006IO-Ly; Tue, 23 Jul 2019 17:41:23 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpymk-0006I1-DD
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:41:11 +0000
Received: by mail-ed1-x542.google.com with SMTP id i11so44746265edq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 10:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nogcB6tU7ggTUc1+z4/fMorc4784ohsjEsA0VkxE4cQ=;
 b=WEgbUlOwKq7FDIuwTpjXkL4hd+FxqB9iuHFupSLPSi3UKeNHLWZaKkOW15zx5J2/ZZ
 iq8eueW8GsDMgV/SbuUXl849uTeoFKSwBk97/PL1K/GdP6IyScS7KKhmTtjPG885+diA
 cRUhcWbQIOTDvi+ETBdb+Wqw2Qr4IRYtifiZNbdb+omqbkcvelRLhYOPCx/6rm/PP0pV
 P+9LzpxJAoz7157KwdoGgBOShLoYyKMiSjWxLv9D/XFnc9iFg6nX+umbM8UXpX5no5ET
 JVjO2MbiOlIMGOzoTAoU0AVnUrhsIVWYyNovjrnEKyh1nIO5ieSGxSZldsbMVW1fftUE
 9PQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nogcB6tU7ggTUc1+z4/fMorc4784ohsjEsA0VkxE4cQ=;
 b=M5QkNUJHncKuq7tQ49+wWWrX/nykH5jJzqOoo8mJEUTQo+Z04wk44HBGBjiFCRped6
 W9fmpVWRc8MYpGoc0jAPBHKNC5HwiOV0hXB9Ir2NYJY6blZXJUZiAUozCfUwfoCAolL+
 0lPft+yYdqdFZUaSjLdEtk/29jAHDhtpXvd+ziFlDVosUWq4UfSvUFyGcLbPB8pQaI04
 xVm4GZbInsQgmm/w+W1rVGdj2jSB66v66hK3k5BcxQBcFU3/VHaZ+uA1rIoSDjRLMmcZ
 66HIA9QbW2MWGLCttKCV+rw8T7XF3Sf6njb3LOQNDKjbqjoyj+R7lPwBoCRPDCf2bATQ
 NzlQ==
X-Gm-Message-State: APjAAAV4uDH8pfPJE8sHcaBGCOkvrM8RlfSFdprhYSey4whVgVBuZmjA
 OQiSTnOnRatkk0jq/7qpuHD7Lk8dLHkhiHl3D+g=
X-Google-Smtp-Source: APXvYqzemPNRUI4Dv8rCDS7Y3Atwe1foT+6Dyv7m4pV5WgS2/fMuH1KImSCRDazCl+5WCpEBG93Sr1jOHq4wKAJmBc8=
X-Received: by 2002:a17:906:f85:: with SMTP id
 q5mr60032126ejj.192.1563903667438; 
 Tue, 23 Jul 2019 10:41:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190702202631.32148-2-robdclark@gmail.com>
 <20190710182844.25032-1-robdclark@gmail.com>
 <20190722142833.GB12009@8bytes.org>
 <CAF6AEGvJc2RK3GkpcXiVKsuTX81D3oahnu=qWJ9LFst1eT3tMg@mail.gmail.com>
 <20190722154803.GG12009@8bytes.org>
 <CAF6AEGvWf3ZOrbyyWjORuOVEPOcPr+JSEO78aYjhL-GVhDZnTg@mail.gmail.com>
 <20190723153822.gm4ossn43nvqbyak@willie-the-truck>
In-Reply-To: <20190723153822.gm4ossn43nvqbyak@willie-the-truck>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 23 Jul 2019 10:40:55 -0700
Message-ID: <CAF6AEGtL6gqtbmtksf7zCSGrFOEj0ynq-2nwvizLLiS0FTwHpg@mail.gmail.com>
Subject: Re: [PATCH v2] iommu: add support for drivers that manage iommu
 explicitly
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_104110_451725_1A32951A 
X-CRM114-Status: GOOD (  22.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Clark <robdclark@chromium.org>, aarch64-laptops@lists.linaro.org,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, Joerg Roedel <joro@8bytes.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Joe Perches <joe@perches.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, Bartosz Golaszewski <brgl@bgdev.pl>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 8:38 AM Will Deacon <will@kernel.org> wrote:
>
> On Mon, Jul 22, 2019 at 09:23:48AM -0700, Rob Clark wrote:
> > On Mon, Jul 22, 2019 at 8:48 AM Joerg Roedel <joro@8bytes.org> wrote:
> > >
> > > On Mon, Jul 22, 2019 at 08:41:34AM -0700, Rob Clark wrote:
> > > > It is set by the driver:
> > > >
> > > > https://patchwork.freedesktop.org/patch/315291/
> > > >
> > > > (This doesn't really belong in devicetree, since it isn't a
> > > > description of the hardware, so the driver is really the only place to
> > > > set this.. which is fine because it is about a detail of how the
> > > > driver works.)
> > >
> > > It is more a detail about how the firmware works. IIUC the problem is
> > > that the firmware initializes the context mappings for the GPU and the
> > > OS doesn't know anything about that and just overwrites them, causing
> > > the firmware GPU driver to fail badly.
> > >
> > > So I think it is the task of the firmware to tell the OS not to touch
> > > the devices mappings until the OS device driver takes over. On x86 there
> > > is something similar with the RMRR/unity-map tables from the firmware.
> > >
> >
> > Bjorn had a patchset[1] to inherit the config from firmware/bootloader
> > when arm-smmu is probed which handles that part of the problem.  My
> > patch is intended to be used on top of his patchset.  This seems to me
> > like the best solution, if we don't have control over the firmware.
>
> Hmm, but the feedback from Robin on the thread you cite was that this should
> be generalised to look more like RMRR, so there seems to be a clear message
> here.
>

Perhaps it is a lack of creativity, or lack of familiarity w/ iommu vs
virtualization, but I'm not quite seeing how RMRR would help.. in
particular when dealing with both DT and ACPI cases.  So I kinda
prefer, when possible, if arm-smmu can figure out what is going on by
looking at the hw state at boot (since that approach would work
equally well for DT and ACPI).

I *think* (but need to confirm if Bjorn hasn't already) that the
memory for the pagetables that firmware/bootloader sets up is already
removed from the memory map efi passes to kernel, so we don't need to
worry about kernel stomping in-use pagetables.

BR,
-R

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
