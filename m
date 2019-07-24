Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A11472F3A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 14:52:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cMkLcowMnTEpHR+BYsftigAx6vD7VOTpIL9VU/UJUy0=; b=DMvAPDBKnvUfym
	UtsDz8PF/k9aZ+ulATT0amjHtabEs6eTkGmYyio1+62bU26VqA02vTThzdAJ+ys0w2a2spsGhAZS/
	WvPvPjel7/gY+4dI8Pvf/fcc+tMNMQBHJNEWTPCT2KtDHt3uR8rthsxnTq7WcncajPI7CEe3N5pgH
	ZAtBz1E4TkkOaqaIORW5SGGAr8GtgR6pxDkuXU8ikbfFy+B00JNMul1X6+rFa75oFCmLmYj9N0AWk
	02IQTdlPM5z03aJsx3fIt8B9YeHY+j7OE0ZaTnQOLbc/zdg/5jCa7BQZXCMvKAfXulRhlyfoB15DP
	vOMpGy6PUoTNNzvDb+kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqGl7-0000Ix-0o; Wed, 24 Jul 2019 12:52:41 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqGky-0000Ic-Kq
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 12:52:34 +0000
Received: by mail-lf1-x142.google.com with SMTP id h28so31854925lfj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 05:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qHv399UMvKmjBUhICvXu9ZcLkXJpNhyDQbmeOYvi/us=;
 b=zIkNBt1oiaYdHbqQmoPWFDOqdeXEMdP0Gfihv9qP2HCt9xdrhbe6Yx0K9+6afLNiD8
 W24oV8N8NBvHjLMQ+h4NL4Ocu/Bg8WmYsZwYPIw371iOH6a5A4zo8y6SUncOAz1uOYj7
 MJMPK5vx5kmyG45kVVe12aCdB6VT9ye7a/wCkD8y92avs1CCY9/4ndQd8I029MDa6EEY
 5neB32DWbdafhdIelNbN75hSr/nqSHus0gEc1yU4Cucdil742idfQTYVC6DJKJGnmA3v
 QGpgxltqytrVz4+UQf5b2GmQbTQV+v7ha5FMzLS+W4E6wkwUalVGvH8+HRMcQd23NtQq
 84iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qHv399UMvKmjBUhICvXu9ZcLkXJpNhyDQbmeOYvi/us=;
 b=eMdsobIV6X4C9/VP7v/+d/y4c7gYlhG/CE8U361ORqQ1C+uMfU0liiiFflNqbNwLIW
 dTFYmwfOflD50zIyX1vuIBRGsw/ivWDu2EkhOpRt5WnA3ZPIEmKy8P41kIOsEk5SeQhB
 GUeeeirIuwhn135g13/EhyDxDGQaFvQedHQnnfUovIGnyQQKaQGO2HJ9kxQYRRsyrJL8
 PpFqs51N9tiRPl70/Szc2HqEjWWm8V33JljVPDHFB9OdFUWHzlfKfj+AGZoyfvrO/5uN
 b6P0AQD8T50HGtZ+/ttqwl0kvwCLEbVlQSCzaOQlSPDCbH+A8Mh6IWmXLTpFlS/VQlXU
 1cpQ==
X-Gm-Message-State: APjAAAUS0Dq0qcQFVqKo+AL6NhmUfBeeGnuoq0SpzIbZ+YQLkMv2eqOj
 78LrHGj/NYBhoutwC7UoZIGnxRmI0zLnGHNMDkDzB1L/McQ=
X-Google-Smtp-Source: APXvYqx7ok3vKGTE6pvikYTLe5JQi+JRtOUMWS2eTVmv7HEpUj+ZPg+oss7sKY2J8CzaCQe10KiSRVRX2w5u+ZqLQNs=
X-Received: by 2002:ac2:5382:: with SMTP id g2mr37074528lfh.92.1563972750695; 
 Wed, 24 Jul 2019 05:52:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190723133755.22677-1-linus.walleij@linaro.org>
 <20190723133755.22677-2-linus.walleij@linaro.org>
 <9c9b77b3b76e7a7e87c7c3d9076a8339362157bd.camel@redhat.com>
 <CAKMK7uHVudGdTzQS3Q6qVTZtDU-UsSQ2K04M9VvZHxzXo0DHOw@mail.gmail.com>
In-Reply-To: <CAKMK7uHVudGdTzQS3Q6qVTZtDU-UsSQ2K04M9VvZHxzXo0DHOw@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 24 Jul 2019 14:52:19 +0200
Message-ID: <CACRpkdZWpRFN7=m+XRUbYLjAUxygwHZ6ehKEK+7nmPxSKY0o9w@mail.gmail.com>
Subject: Re: [PATCH 1/3] RFT: drm/pl111: Support grayscale
To: Daniel Vetter <daniel@ffwll.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_055232_688477_F836EB09 
X-CRM114-Status: GOOD (  20.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Tue, Jul 23, 2019 at 11:07 PM Daniel Vetter <daniel@ffwll.ch> wrote:
> On Tue, Jul 23, 2019 at 7:25 PM Adam Jackson <ajax@redhat.com> wrote:
> >
> > On Tue, 2019-07-23 at 15:37 +0200, Linus Walleij wrote:
> > > Migrating the TI nspire calculators to use the PL111 driver for
> > > framebuffer requires grayscale support for the elder panel
> > > which uses 8bit grayscale only.
> > >
> > > DRM does not support 8bit grayscale framebuffers in memory,
> > > but by defining the bus format to be MEDIA_BUS_FMT_Y8_1X8 we
> > > can get the hardware to turn on a grayscaling feature and
> > > convert the RGB framebuffer to grayscale for us.
> >
> > What's wrong with DRM_FORMAT_R8? Yes the hardware is not really
> > "redscale", but it's still a single color channel and there's not
> > really any ambiguity.
>
> Yeah, I think with a comment or an aliasing #define to _Y8 (or both)
> this is good to go.

Is there something really wrong with just biting the bullet and do this:

/* 8 bpp grayscale */
#define DRM_FORMAT_Y8 fourcc_code('Y', '8', ' ', ' ') /* [7:0] Y */

It's quite an embarrasement for my OCD tendencies to talk about
black-and-white TV as if it was 256 Shades of Red (good title
for a novel by the way).

I don't know how these FOURCC things work, possibly new
fourcc:s can only be defined by some especially enlightened
cabal of standardization?

(It beats me how it can not already exist in that case.)

> You probably still want to expose the rgb format since too much
> userspace just assumes that xrgb8888 works. Same reason why the
> tinydrm drivers do the sw conversion.

Yes this is what we do on PL111 now, we just run it through
the hardware grayscaler.

This hardware graciously supports reading black-white and
grayscale bitmaps with 1 (monochrome), 2, 4 and 8 bits per
pixel which would be Y1, Y2, Y4 and Y8. But we only have
hardware supporting Y8 at least on the other side so
I don't see any need for the others ATM.

I suspect the Y1 etc could be useful for people doing not
only Hercules video drivers (hah!) but also for ePaper
displays of say, some random Kindle.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
