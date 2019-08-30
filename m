Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09787A3484
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSbcOLum94t1PvBRAUO3on4tyHO/zcMvenoerp18Wb0=; b=Vr0ndgLwsODQhz
	u2/r7yEAeFl+EvWKOiXs6/BZ333sLqTHpZMz/dmR0QW2H9kmLvLQLe44Zv2SmQFquQLgkCvqEEmdZ
	p+lQkqnRSmCO+jRibBTgZdV/JQTLaoU9n/wjZnLdr+KXSJNDUDbga+kWvTKEXcUNetV2TZ04ZdBi6
	V8ARQE6vA67DmhnRSJOpdkgIUXjrBhadFIN9UfqITjR5Q7Y0n3krfyik6f6JuX6+9gbKmWH7xl75a
	EOoHTBVc0BcIBKMGxRRw4MRRDwMdnXtsZ6Q1JEYfZr2yUZ1tDSIqpuhaO8dTkXZ/2dpTr93yVv9Oe
	LTyjE0G6PtqUjvTLP8FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3de2-0002YU-G2; Fri, 30 Aug 2019 09:56:38 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3ddr-0002YB-T0
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:56:29 +0000
Received: by mail-oi1-x242.google.com with SMTP id y8so4888303oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 02:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=opPJo7Zv4ht/hnWpVSpz0d5Vp3/hOswmpsE3zretzJE=;
 b=EoqZX1Vsy9Szxp+b2Sg//tUs6kcL4ZoTGUwdLa+NeVeQfQf7IVynklZrNliG7NbW3c
 BqTTvlkqs6KgPDc2/MsnL7jzP3HCSBgEPj3iAcwf3MaoLg8C9MgHhZhnJloMTNHx7gHf
 ehsnc475CaxsOCW2n9iAALHDplUCtX23vexks=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=opPJo7Zv4ht/hnWpVSpz0d5Vp3/hOswmpsE3zretzJE=;
 b=cA7JbnsKA2JEGaL5Pgw83eAoXvOJ6IA5P9yDWMpCmwv1GjLreC7YxA+oAFBYhIShPT
 RRJ9wE7lbAj1DKK8LjruWx/DHcHSlSh/3FHrleCsPBakFtXFuHQkPfFHUkNmsDSjyU4r
 lzE7lAJPqHHIRexefEjqV8EA3CD6wgUuNOWvpLD64o629/BnTBf11KLdjfU40Bt0XDWe
 FZzj+7RcfIs5+dffo0fRioH+Dvm0MWTCTN1ELg28RtqgA8NGLHaya+eJCgBXSH7crQQl
 r5Z6bl9jPZccFK1YDAoo3JSfPCCS/j4EVa+arjMlVjqNbSEOy/2daz8dgogXhEUyHahB
 cSfw==
X-Gm-Message-State: APjAAAWT4WFzqA0cDPOW5RV4QeRWtN8HtJA8g1zVdhhZqD4nFLmO4uzO
 0Nr8/IY2rD9/dtud5PjxUK7tgZONj8k=
X-Google-Smtp-Source: APXvYqyc06G1MqdxZNGXo7WgeUFe18JrALeT37WtgkrIfCW7bQz51ojKkn6OTytpLkBepisKAidBsg==
X-Received: by 2002:aca:6701:: with SMTP id z1mr9057742oix.164.1567158985928; 
 Fri, 30 Aug 2019 02:56:25 -0700 (PDT)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com.
 [209.85.210.50])
 by smtp.gmail.com with ESMTPSA id f197sm1733464oib.20.2019.08.30.02.56.25
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 30 Aug 2019 02:56:25 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id 100so6418435otn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 02:56:25 -0700 (PDT)
X-Received: by 2002:a9d:4817:: with SMTP id c23mr10736054otf.97.1567158529318; 
 Fri, 30 Aug 2019 02:48:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190822194500.2071-1-jernej.skrabec@siol.net>
 <20190822194500.2071-3-jernej.skrabec@siol.net>
 <CAPBb6MUChtZcNSTa2uT50k6uPU9T68wofLYGUFRJntDhjH8+iw@mail.gmail.com>
 <907f3c43-b994-f1c7-a15b-116566e19003@xs4all.nl>
In-Reply-To: <907f3c43-b994-f1c7-a15b-116566e19003@xs4all.nl>
From: Alexandre Courbot <acourbot@chromium.org>
Date: Fri, 30 Aug 2019 18:48:36 +0900
X-Gmail-Original-Message-ID: <CAPBb6MV979V4BpOyYRGr4oAJOeqSmn-w1V3TRRhWePtqpzzWeQ@mail.gmail.com>
Message-ID: <CAPBb6MV979V4BpOyYRGr4oAJOeqSmn-w1V3TRRhWePtqpzzWeQ@mail.gmail.com>
Subject: Re: [PATCH 2/8] videodev2.h: add V4L2_DEC_CMD_FLUSH
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_025627_966174_336E8A8C 
X-CRM114-Status: GOOD (  24.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Pawel Osciak <pawel@osciak.com>, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 Chen-Yu Tsai <wens@csie.org>, mripard@kernel.org,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, LKML <linux-kernel@vger.kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 6:45 PM Hans Verkuil <hverkuil-cisco@xs4all.nl> wrote:
>
> On 8/30/19 11:38 AM, Alexandre Courbot wrote:
> > On Fri, Aug 23, 2019 at 4:45 AM Jernej Skrabec <jernej.skrabec@siol.net> wrote:
> >>
> >> From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
> >>
> >> Add this new V4L2_DEC_CMD_FLUSH decoder command and document it.
> >>
> >> Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
> >> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> >> ---
> >>  Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst | 11 ++++++++++-
> >>  Documentation/media/videodev2.h.rst.exceptions      |  1 +
> >>  include/uapi/linux/videodev2.h                      |  1 +
> >>  3 files changed, 12 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst b/Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst
> >> index 57f0066f4cff..0bffef6058f7 100644
> >> --- a/Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst
> >> +++ b/Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst
> >> @@ -208,7 +208,16 @@ introduced in Linux 3.3. They are, however, mandatory for stateful mem2mem decod
> >>         been started yet, the driver will return an ``EPERM`` error code. When
> >>         the decoder is already running, this command does nothing. No
> >>         flags are defined for this command.
> >> -
> >> +    * - ``V4L2_DEC_CMD_FLUSH``
> >> +      - 4
> >> +      - Flush any held capture buffers. Only valid for stateless decoders,
> >> +        and only if ``V4L2_BUF_CAP_SUPPORTS_M2M_HOLD_CAPTURE_BUF`` was set.
> >> +       This command is typically used when the application reached the
> >> +       end of the stream and the last output buffer had the
> >> +       ``V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF`` flag set. This would prevent
> >> +       dequeueing the last capture buffer containing the last decoded frame.
> >> +       So this command can be used to explicitly flush that last decoded
> >> +       frame.
> >
> > Just for safety, can we also specify that it is valid to call this
> > command even if no buffer was held (in which case it is a no-op), as
> > this can help make user-space code simpler?
>
> Ah yes, thanks for the reminder.
>
> Jernej, when you post the next version of this series, can you change the text
> above to:
>
> - Flush any held capture buffers. Only valid for stateless decoders.
>   This command is typically used when the application reached the
>   end of the stream and the last output buffer had the
>   ``V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF`` flag set. This would prevent
>   dequeueing the capture buffer containing the last decoded frame.
>   So this command can be used to explicitly flush that final decoded
>   frame. This command does nothing if there are no held capture buffers.

With the above,

Reviewed-by: Alexandre Courbot <acourbot@chromium.org>

Thanks!

>
> Regards,
>
>         Hans
>
> >
> >>
> >>  Return Value
> >>  ============
> >> diff --git a/Documentation/media/videodev2.h.rst.exceptions b/Documentation/media/videodev2.h.rst.exceptions
> >> index adeb6b7a15cb..a79028e4d929 100644
> >> --- a/Documentation/media/videodev2.h.rst.exceptions
> >> +++ b/Documentation/media/videodev2.h.rst.exceptions
> >> @@ -434,6 +434,7 @@ replace define V4L2_DEC_CMD_START decoder-cmds
> >>  replace define V4L2_DEC_CMD_STOP decoder-cmds
> >>  replace define V4L2_DEC_CMD_PAUSE decoder-cmds
> >>  replace define V4L2_DEC_CMD_RESUME decoder-cmds
> >> +replace define V4L2_DEC_CMD_FLUSH decoder-cmds
> >>
> >>  replace define V4L2_DEC_CMD_START_MUTE_AUDIO decoder-cmds
> >>  replace define V4L2_DEC_CMD_PAUSE_TO_BLACK decoder-cmds
> >> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
> >> index 4fa9f543742d..91a79e16089c 100644
> >> --- a/include/uapi/linux/videodev2.h
> >> +++ b/include/uapi/linux/videodev2.h
> >> @@ -1978,6 +1978,7 @@ struct v4l2_encoder_cmd {
> >>  #define V4L2_DEC_CMD_STOP        (1)
> >>  #define V4L2_DEC_CMD_PAUSE       (2)
> >>  #define V4L2_DEC_CMD_RESUME      (3)
> >> +#define V4L2_DEC_CMD_FLUSH       (4)
> >>
> >>  /* Flags for V4L2_DEC_CMD_START */
> >>  #define V4L2_DEC_CMD_START_MUTE_AUDIO  (1 << 0)
> >> --
> >> 2.22.1
> >>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
