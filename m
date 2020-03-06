Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A7E17B9ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 11:13:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=keLFnu5m9+m5c7id2MyfzBslC8Ly/cw/yuYb+TnPyG0=; b=iOE6bYtnaDUPyz
	f+fnOxl3XATCKcVp+Ehg2/inF1FPIfvml/9z4hheo0xcjHZAicbkRM9MUDIaDNO4nP3c2VEuHb7XZ
	p4e/DSrHEsQJMW5QT7GuQMqLr1NtS3vBEOzNYKSFHC7Su+ktMy+4MzdUMAxSrXZ40XU4AgNagKSPJ
	hdxXwUbSJO1eSReIEBUQAPSanVN/ELNdBb2ciwMGMYww3+LAAObql4jjhXQLc0bO6Uft0G4WIaSbg
	EJthUiaRKZexmOoqDdT1gg1q7ENrnmZnLpFIaAL3wdpS5usGE+31qqAV2XuPWCzqnGz70nr5bYgtW
	hW5ibJl7/ErFn93svo+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA9zE-0005x1-BL; Fri, 06 Mar 2020 10:13:44 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA9z3-0005wE-8F
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 10:13:35 +0000
Received: by mail-wm1-x341.google.com with SMTP id p9so1725750wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 02:13:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=/vDIlGX0meuTJ9u7QAn+s4nQf3ELnqI9FgEEknuOygI=;
 b=AAfF9D4sZdaDyHWigxkTcwEDeh5nBGLUDWGgd5LZtuAzONxa2cPUAHBORz22PRi9lz
 Pl3EcbK0XCqqaO2WaOwCIqPFhQ07s9kLBSdp/V4UP4Xu6nzdPF7txuYTxYXhFyPwwxDJ
 8ay6PSuPsESmDluAoK+L41ohhu0BOEi+SKVh0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=/vDIlGX0meuTJ9u7QAn+s4nQf3ELnqI9FgEEknuOygI=;
 b=XLFMiM1OEtd81NkAkNXyMPj836uqDAcxIktD0fhrtT6Sr2+r6mo9TvadTQ9jQkUA2U
 8CB3Je4XYjFhDJkENl2BiF1J6SNP1pVmy3ye7/rE86jGfIJf3RBcMfyPDa/bVysItGmg
 Nu7G1Qh2uXZavoBG5rR/hVcx0L61mMIweccTsiTNMF+fFbPvmPYAttSJdqXNxusX1dpR
 c0D/rFl/MQNesCXUNJmtwf7j/n8CSKhK0AosrdH2eR9Oe9sR1+nunaUENnZ7Evxtx46v
 Cf+oNwak0drNh0S2BpKLGRVBsSJvj4io4wW/ChE0BkC3kRRuEIVYDTEoDvTRBTRmgtom
 tieg==
X-Gm-Message-State: ANhLgQ3ZIbV657rmKPPD5UjTOVJOFlmMZXelrlvgrx2VU1W9n/o97PGz
 +8h0JFouyRDICPLngyWurnKf7g==
X-Google-Smtp-Source: ADFU+vt7yOW1im8q9ywyGWVPyTSOpVuRYwEPRoCyv4+cUol7N1/VZo0VFbhdrlnn8cytwSvI5VFNdA==
X-Received: by 2002:a1c:3281:: with SMTP id y123mr3334559wmy.104.1583489611295; 
 Fri, 06 Mar 2020 02:13:31 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 19sm14643940wma.3.2020.03.06.02.13.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 02:13:30 -0800 (PST)
Date: Fri, 6 Mar 2020 11:13:28 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Pekka Paalanen <ppaalanen@gmail.com>
Subject: Re: [PATCH 1/4] drm/fourcc: Add modifier definitions for describing
 Amlogic Video Framebuffer Compression
Message-ID: <20200306101328.GR2363188@phenom.ffwll.local>
Mail-Followup-To: Pekka Paalanen <ppaalanen@gmail.com>,
 Brian Starkey <brian.starkey@arm.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-amlogic@lists.infradead.org, nd <nd@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <20200221090845.7397-1-narmstrong@baylibre.com>
 <20200221090845.7397-2-narmstrong@baylibre.com>
 <20200303121029.5532669d@eldfell.localdomain>
 <20200303105325.bn4sob6yrdf5mwrh@DESKTOP-E1NTVVP.localdomain>
 <CAKMK7uFgQGrnEkXyac15Wz8Opg43RTa=5cX0nN5=E_omb8oY8Q@mail.gmail.com>
 <20200303152541.68ab6f3d@eldfell.localdomain>
 <20200303173332.1c6daa09@eldfell.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303173332.1c6daa09@eldfell.localdomain>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_021333_288018_4BDD51EC 
X-CRM114-Status: GOOD (  32.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amlogic@lists.infradead.org, nd <nd@arm.com>,
 Brian Starkey <brian.starkey@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 03, 2020 at 05:33:32PM +0200, Pekka Paalanen wrote:
> On Tue, 3 Mar 2020 15:25:41 +0200
> Pekka Paalanen <ppaalanen@gmail.com> wrote:
> 
> > On Tue, 3 Mar 2020 12:37:16 +0100
> > Daniel Vetter <daniel@ffwll.ch> wrote:
> > 
> > > On Tue, Mar 3, 2020 at 11:53 AM Brian Starkey <brian.starkey@arm.com> wrote:  
> > > >
> > > > Hi,
> > > >
> > > > On Tue, Mar 03, 2020 at 12:10:29PM +0200, Pekka Paalanen wrote:    
> > > > > On Fri, 21 Feb 2020 10:08:42 +0100
> > > > > Neil Armstrong <narmstrong@baylibre.com> wrote:
> > > > >    
> ...
> > > > > > +/*
> > > > > > + * Amlogic Video Framebuffer Compression modifiers
> > > > > > + *
> > > > > > + * Amlogic uses a proprietary lossless image compression protocol and format
> > > > > > + * for their hardware video codec accelerators, either video decoders or
> > > > > > + * video input encoders.
> > > > > > + *
> > > > > > + * It considerably reduces memory bandwidth while writing and reading
> > > > > > + * frames in memory.
> > > > > > + * Implementation details may be platform and SoC specific, and shared
> > > > > > + * between the producer and the decoder on the same platform.    
> > > > >
> > > > > Hi,
> > > > >
> > > > > after a lengthy IRC discussion on #dri-devel, this "may be platform and
> > > > > SoC specific" is a problem.
> > > > >
> > > > > It can be an issue in two ways:
> > > > >
> > > > > - If something in the data acts like a sub-modifier, then advertising
> > > > >   support for one modifier does not really tell if the data layout is
> > > > >   supported or not.
> > > > >
> > > > > - If you need to know the platform and/or SoC to be able to interpret
> > > > >   the data, it means the modifier is ill-defined and cannot be used in
> > > > >   inter-machine communication (e.g. Pipewire).
> > > > >    
> > > >
> > > > Playing devil's advocate, the comment sounds similar to
> > > > I915_FORMAT_MOD_{X,Y}_TILED:
> > > >
> > > >  * This format is highly platforms specific and not useful for cross-driver
> > > >  * sharing. It exists since on a given platform it does uniquely identify the
> > > >  * layout in a simple way for i915-specific userspace.    
> > > 
> > > Yeah which we regret now. We need to now roll out a new set of
> > > modifiers for at least some of the differences in these on the
> > > modern-ish chips (the old crap is pretty much lost cause anyway).
> > > 
> > > This was kinda a nasty hack to smooth things over since we have epic
> > > amounts of userspace, but it's really not a great idea (and no one
> > > else really has epic amounts of existing userspace that uses tiling
> > > flags everywhere, this is all new code).
> > > -Daniel
> > >   
> > > > Isn't the statement that this for sharing between producer and decoder
> > > > _on the same platform_ a similar clause with the same effect?
> > > >
> > > > What advantage is there to exposing the gory details? For Arm AFBC
> > > > it's necessary because IP on the SoC can be (likely to be) from
> > > > different vendors with different capabilities.
> > > >
> > > > If this is only for talking between Amlogic IP on the same SoC, and
> > > > those devices support all the same "flavours", I don't see what is
> > > > gained by making userspace care about internals.    
> > > 
> > > The trouble is if you mix&match IP cores, and one of them supports
> > > flavours A, B, C and the other C, D, E. But all you have is a single
> > > magic modifier for "whatever the flavour is that soc prefers". So
> > > someone gets to stuff this in DT.
> > > 
> > > Also eventually, maybe, perhaps ARM does grow up into the
> > > client/server space with add-on pcie graphics, and at least for client
> > > you very often end up with integrated + add-in pcie gpu. At that point
> > > you really can't have magic per-soc modifiers anymore.  
> > 
> > Hi,
> > 
> > I also heard that Pipewire will copy buffers and modifiers verbatim
> > from one machine to another when streaming across network, assuming
> > that the same modifier means the same thing on all machines.[Citation needed]
> > 
> > If that is something that must not be done with DRM modifiers, then
> > please contact them and document that.
> 
> Sorry, it's waypipe, not pipewire:
> https://gitlab.freedesktop.org/mstoeckl/waypipe/

I do think this is very much something we want to make possible. They
might pick a silly modifier (compression modifiers only compress bw, by
necessity the lossless ones have to increase storage space so kinda dumb
thing to push over the network if you don't add .xz or whatever on top).

I'm also hoping that intel's modifiers are definitely the one and only
that we ever screwed up, and we should be getting those fixed in the near
future too.

So maybe what we should do instead is add a comment to the modifier docs
that this stuff _is_ supposed to be transferrable over networks and work.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
