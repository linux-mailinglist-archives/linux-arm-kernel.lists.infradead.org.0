Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D4373119
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 16:06:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TT1+UfxL5fZ+OenXERLJ//cD/srmyvI9RmVrxjfzq4E=; b=avKIDGOr5y/2qR
	rp31dbhwibOxJCHPBnNpTSEu2TEFN7jHFBEZr+s0bEx3NBtuk/Lyi9CTG92yON944U/LioVIgb4wO
	OsK7DFnp7a1kL1lNbKTdvsl5XiKrPyNH0VDGpWTRnkNPWIeTlWrQvUFDW+wimkL6MhuMElUYI2P8z
	r6nQiR9YeYF67Enhb/k9gedy1hSxd3ekHLd31aM3862H+vFodlkQGglAO1PT/feNadJ34PWExvTpd
	0fN4+EyO3nmx3Kfo08V8juwxigwjAuW4xryQBW0KrvnDPRglYRbW39lmWFR0P8FNHkTMZEpC/yZqn
	TQF3HaIp2FQ9icbPriFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHux-0001oR-Bp; Wed, 24 Jul 2019 14:06:55 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHum-0001nr-Mo
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 14:06:46 +0000
Received: by mail-ot1-x344.google.com with SMTP id d17so48006187oth.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 07:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DEYp0YxduQGOfY7WWApm8IsqDG6fUqF40iSsz1XHLks=;
 b=GsgR1k8kTRAEEbGPoBRYvBF6i3EU6Jie/p7Mc3CYvtjyL9M1BIaF0s7/3JPMvM8M1Q
 MugvctIyhNj3mlmlJK0I2LUNxnbU38zxmwNEfDPLgmNmOH1tdO5AYQThEzEH+NwnC4Fp
 W53VWqlbF7zg8kHR6RnTdFTEo5LOkzG9TMe1E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DEYp0YxduQGOfY7WWApm8IsqDG6fUqF40iSsz1XHLks=;
 b=p++x6pPLc6btjiFhsxHeoMGkN48lZEzYUlC9rDUQSL6ykPXyLHQcWgsolcJy874DXq
 Vy+uaUfjuK+bje5RaDjQBfcM08UMvt0yqqaMFGM3PXz7m8cI/LA/IpUKGzVcyd76TfXI
 /bhSJEeG8WpOJmnD8pEavcvrAte3a06aybpWAqgALI6/FplQgDEuF+6Fom4GOtl0YwTU
 ZpOiZiD2vt/HJF6OBvEFkZwDCA62ROGDR2VjwQue84ZHXvY7rnJDJwyOjL09Leth9FvH
 fiqr+FrWxqRR9en6OCryipmVSvWMFPGWE7Jrlvviom43IBMnKvjwF3hBXRyJ6BrFhq6P
 vshA==
X-Gm-Message-State: APjAAAWzMwp+za/rozcAB13OdjFVDBUaLmFMAdBhJ4RHICyOnQMhN8Y6
 cGknKLVNyG2cUil8UCKkRpnFtwje2cAEC4UjtFM=
X-Google-Smtp-Source: APXvYqzFzReA/hyFoPjOeoGuvfR+2vWathsB0GNtrrwtqfdPmKpclGbt1XanPoA/Zct58VB1Yn7KLzKakI4FxlJ0j5g=
X-Received: by 2002:a9d:6e8d:: with SMTP id a13mr11250856otr.303.1563977203703; 
 Wed, 24 Jul 2019 07:06:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190723133755.22677-1-linus.walleij@linaro.org>
 <20190723133755.22677-2-linus.walleij@linaro.org>
 <9c9b77b3b76e7a7e87c7c3d9076a8339362157bd.camel@redhat.com>
 <CAKMK7uHVudGdTzQS3Q6qVTZtDU-UsSQ2K04M9VvZHxzXo0DHOw@mail.gmail.com>
 <CACRpkdZWpRFN7=m+XRUbYLjAUxygwHZ6ehKEK+7nmPxSKY0o9w@mail.gmail.com>
In-Reply-To: <CACRpkdZWpRFN7=m+XRUbYLjAUxygwHZ6ehKEK+7nmPxSKY0o9w@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 24 Jul 2019 16:06:31 +0200
Message-ID: <CAKMK7uEpL1wfEUm4nVMk+te9bs7a2=Gh1fxWbAC7WvN-oa_DxA@mail.gmail.com>
Subject: Re: [PATCH 1/3] RFT: drm/pl111: Support grayscale
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_070644_812841_CA75D264 
X-CRM114-Status: GOOD (  25.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Fabian Vogt <fabian@ritter-vogt.de>, Daniel Tang <dt.tangr@gmail.com>,
 Adam Jackson <ajax@redhat.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 2:52 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Tue, Jul 23, 2019 at 11:07 PM Daniel Vetter <daniel@ffwll.ch> wrote:
> > On Tue, Jul 23, 2019 at 7:25 PM Adam Jackson <ajax@redhat.com> wrote:
> > >
> > > On Tue, 2019-07-23 at 15:37 +0200, Linus Walleij wrote:
> > > > Migrating the TI nspire calculators to use the PL111 driver for
> > > > framebuffer requires grayscale support for the elder panel
> > > > which uses 8bit grayscale only.
> > > >
> > > > DRM does not support 8bit grayscale framebuffers in memory,
> > > > but by defining the bus format to be MEDIA_BUS_FMT_Y8_1X8 we
> > > > can get the hardware to turn on a grayscaling feature and
> > > > convert the RGB framebuffer to grayscale for us.
> > >
> > > What's wrong with DRM_FORMAT_R8? Yes the hardware is not really
> > > "redscale", but it's still a single color channel and there's not
> > > really any ambiguity.
> >
> > Yeah, I think with a comment or an aliasing #define to _Y8 (or both)
> > this is good to go.
>
> Is there something really wrong with just biting the bullet and do this:
>
> /* 8 bpp grayscale */
> #define DRM_FORMAT_Y8 fourcc_code('Y', '8', ' ', ' ') /* [7:0] Y */
>
> It's quite an embarrasement for my OCD tendencies to talk about
> black-and-white TV as if it was 256 Shades of Red (good title
> for a novel by the way).
>
> I don't know how these FOURCC things work, possibly new
> fourcc:s can only be defined by some especially enlightened
> cabal of standardization?
>
> (It beats me how it can not already exist in that case.)

The drm subsystem cabal owns drm_fourcc.h. And yeah I guess we can
also add Y version of all these, I think the R/RG was added since that
matches modern GL, where your texture contents are entirely up to
interpretation by shaders. Y also exists in GL, but only in legacy
contexts and is kinda discouraged. That was the idea behind just
making them aliasing (since I just can't come up with any reason why
you'd actually want a red-only texture). In a way R = red = the first
channel in GL shaders, which happens to be called r for red !=
actually red color channel on the display.

Hence we might as well state that if you give a kms driver a
single-channel fourcc code, then that should be interpreted as
greyscale. Plus add a huge comment about why this single channel is
called R :-)
-Daniel

> > You probably still want to expose the rgb format since too much
> > userspace just assumes that xrgb8888 works. Same reason why the
> > tinydrm drivers do the sw conversion.
>
> Yes this is what we do on PL111 now, we just run it through
> the hardware grayscaler.
>
> This hardware graciously supports reading black-white and
> grayscale bitmaps with 1 (monochrome), 2, 4 and 8 bits per
> pixel which would be Y1, Y2, Y4 and Y8. But we only have
> hardware supporting Y8 at least on the other side so
> I don't see any need for the others ATM.
>
> I suspect the Y1 etc could be useful for people doing not
> only Hercules video drivers (hah!) but also for ePaper
> displays of say, some random Kindle.

I guess if we bother with Y (whether aliased to R or new ones) we
might as well roll out all of them.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
