Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0305CFD0F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jgaRt/MDObf5hFNthcdB/sbOSEXZgnRUYvTDyfP6zio=; b=els3yLtwH83RSH
	wEFJ7Du4nZzdbo64HAte/Q8KmWtgBWuopSrmnUL+tRhSRUVstzGf0Av7PMZB7mIxgVKisi50aDdhC
	BeUTobeeIc4WiyOTleP5fLeW72mZB+5C8yK9h5MzSkrqwQilayzatrUaP+DapjV/yPC1Q099w4qVL
	+MgChu/6M9wxF33osPupAECBy5B95EyarRY6VgaIv3vEhVA4cmH7Fv7M6uKfh0zyZnLl9JpFgyLYg
	qJoVZdSTfx9WBYK3/TVCmRkxdmYMJHXAaQanFhSrRBYIybm5adaQJYzzwtsLNs8vKietvbzLLeliz
	kBq0RR3rwkiM2Qqiigew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHr16-0007pt-A2; Tue, 08 Oct 2019 15:03:12 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHr0w-0007nx-6f
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:03:03 +0000
Received: by mail-yb1-xb43.google.com with SMTP id h202so5987084ybg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 08:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nZTSIKqLe1Xh/tE/i1buAM4aJM5s7zBbM3sshp8Umhc=;
 b=dhhnvkQgwFWhCMKQ+XWonnecZzsSaVFVBPrCxe2TMcLGkg5PNZb0wW8wLsONDEKG/Q
 rWf9Ir2IRavbsOX42BgmynaM/qEn8Yc2zJputvpdjVW9LWkzzHYFFfirCWRbAopX8LR3
 o3ugcF8CWEoDnsZPD0YhgVQyISOrfeIXK3IPVnVGgbrqr8CEv15mHvpjHW4yG6IDped1
 kBKP4vmgM+mwB+FUgy5nEQRmPz1iGWJMYeCW9q4MW9WqXOrPbXO2tdQjUSS7XpZZFI2m
 u4c5UPYbjez2vEFAV0S81/W069RicABkUfiH9j5Ce9Y9XC1138v0KD83LSj/NpnHXOOu
 Wk6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nZTSIKqLe1Xh/tE/i1buAM4aJM5s7zBbM3sshp8Umhc=;
 b=fA+m1aAfoFmyfV4qOqsExb0k3rFQERE8se4n0/vbdMZrzMlok5ZGaq0jYJw9k/kAb/
 P+gN32DOVn5w3awJ8GUuJUt4REzS5PY04DOj51yWWNGOZHTGkRogjhogpItmE374zrMZ
 pikYeRNHxmCA9Dr8IlcgbgbckPMjj2ev/iSWH9AbbYPcqduX88AaiNs717APs4EFMMRV
 9v/clTztSD+jcanjyzsqgaLjFmdoKb5PFg5hCnmtMlCW+7ebWckpQHfxC/VqVQX/0e0z
 4Xh8BbZksW/BXNZD7Nhar0C1ZVqSrKu5Sb+opjOlHhizs6yfOB0GtOehsXNQPQBacXV4
 Vdgw==
X-Gm-Message-State: APjAAAUhjr3H67NAM6cST3IrGzRw/vbuhURltX0Fu79DNGcC8vLVixy/
 KLTcCH6Mt44ib6MuMiA0X//Ppg==
X-Google-Smtp-Source: APXvYqy39p5S3WFZZT7NiYaub1fXy7Bu93rQKzD9kNuqH+MdsdnurfzRi4Ts2yLz/4adcpC4DJClcA==
X-Received: by 2002:a25:c504:: with SMTP id v4mr14307259ybe.375.1570546978393; 
 Tue, 08 Oct 2019 08:02:58 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id g20sm4699956ywe.98.2019.10.08.08.02.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 08:02:57 -0700 (PDT)
Date: Tue, 8 Oct 2019 11:02:57 -0400
From: Sean Paul <sean@poorly.run>
To: "dbasehore ." <dbasehore@chromium.org>
Subject: Re: [v8,2/4] drm/panel: set display info in panel attach
Message-ID: <20191008150257.GB85762@art_vandelay>
References: <20190925225833.7310-3-dbasehore@chromium.org>
 <20190929052307.GA28304@jamwan02-TSP300>
 <CAGAzgspEA0mcEHwgxyWWh3Gn-iC+a21g5GUrhsRJrTHQ_OAYqQ@mail.gmail.com>
 <20191007164441.GB126146@art_vandelay>
 <CAGAzgsoGNNTeYTmRyC5YNGDHL+SBB2oCFaHFubYa=dnPst=f8Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGAzgsoGNNTeYTmRyC5YNGDHL+SBB2oCFaHFubYa=dnPst=f8Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_080302_244048_3981E8BA 
X-CRM114-Status: GOOD (  22.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Sam Ravnborg <sam@ravnborg.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 David Airlie <airlied@linux.ie>, Thierry Reding <thierry.reding@gmail.com>,
 "james qian wang \(Arm Technology China\)" <james.qian.wang@arm.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 nd <nd@arm.com>, Sean Paul <sean@poorly.run>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

/snip

> > > > > diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> > > > > index d16158deacdc..f3587a54b8ac 100644
> > > > > --- a/include/drm/drm_panel.h
> > > > > +++ b/include/drm/drm_panel.h
> > > > > @@ -141,6 +141,56 @@ struct drm_panel {
> > > > >        */
> > > > >       const struct drm_panel_funcs *funcs;
> > > > >
> > > >
> > > > All these new added members seems dupliated with drm_display_info,
> > > > So I think, can we add a new drm_plane_funcs func:
> > > >
> > > > int (*set_display_info)(struct drm_panel *panel,
> > > >                         struct drm_display_info *info);
> > >
> > > I don't disagree personally, since I originally wrote it this way, but
> > > 2 maintainers, Daniel Vetter and Thierry Reding, requested that it be
> > > changed. Unless that decision is reversed, I won't be changing this.
> > >
> >
> > Reading back the feedback on v1, I don't think anyone said they were against
> > storing a drm_display_info struct in drm_panel (no one really weighed in on
> > it one way or another). IMO duplicating a bunch of fields feels pretty icky.
> 
> Thanks for the review. Should we duplicate the entire struct, or just
> create a sub-struct, say, physical_properties that will be part of
> drm_display_info and drm_panel?

That's a good idea, but I think you can use the entire struct. Everything has
reasonable default values and I think it might be difficult to draw a line in
the sand as to which fields will or won't be useful for panels going forward.
Best for drivers to just treat the info in drm_display_info as best effort and
have good defaults IMO.

Sean

> 
> >
> > I think most fields in drm_display_info have pretty reasonable defaults, so I'd
> > recommend just storing a copy in drm_panel. As Thierry suggests, we can
> > populate the dt parts in probe (orientation) and then copy over all or a subset
> > of the struct to connector on attach.
> >
> > Sean
> >
> > > >
> > > > Then in drm_panel_attach(), via this interface the specific panel
> > > > driver can directly set connector->display_info. like
> > > >
> > > >    ...
> > > >    if (panel->funcs && panel->funcs->set_display_info)
> > > >                 panel->funcs->unprepare(panel, connector->display_info);
> > > >    ...
> > > >
> > > > Thanks
> > > > James
> > > >
> > > > > +     /**
> > > > > +      * @width_mm:
> > > > > +      *
> > > > > +      * Physical width in mm.
> > > > > +      */
> > > > > +     unsigned int width_mm;
> > > > > +
> > > > > +     /**
> > > > > +      * @height_mm:
> > > > > +      *
> > > > > +      * Physical height in mm.
> > > > > +      */
> > > > > +     unsigned int height_mm;
> > > > > +
> > > > > +     /**
> > > > > +      * @bpc:
> > > > > +      *
> > > > > +      * Maximum bits per color channel. Used by HDMI and DP outputs.
> > > > > +      */
> > > > > +     unsigned int bpc;
> > > > > +
> > > > > +     /**
> > > > > +      * @orientation
> > > > > +      *
> > > > > +      * Installation orientation of the panel with respect to the chassis.
> > > > > +      */
> > > > > +     int orientation;
> > > > > +
> > > > > +     /**
> > > > > +      * @bus_formats
> > > > > +      *
> > > > > +      * Pixel data format on the wire.
> > > > > +      */
> > > > > +     const u32 *bus_formats;
> > > > > +
> > > > > +     /**
> > > > > +      * @num_bus_formats:
> > > > > +      *
> > > > > +      * Number of elements pointed to by @bus_formats
> > > > > +      */
> > > > > +     unsigned int num_bus_formats;
> > > > > +
> > > > > +     /**
> > > > > +      * @bus_flags:
> > > > > +      *
> > > > > +      * Additional information (like pixel signal polarity) for the pixel
> > > > > +      * data on the bus.
> > > > > +      */
> > > > > +     u32 bus_flags;
> > > > > +
> > > > >       /**
> > > > >        * @list:
> > > > >        *
> > >
> > > Thanks for the review
> >
> > --
> > Sean Paul, Software Engineer, Google / Chromium OS

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
