Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08122A3426
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:39:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+1dzc9Kv0FHpmCjy7m/Ahk1jkG9lpRq6eD3CH1vs49M=; b=lDVHODilX72s4h
	0p5THPxSnf8n1hp4aIpkyNpgXjknHsTatnhmqrn/1VPtsKGqYoPNw0Ezczi7tTnsBfLtQmK1i3HjL
	NKWn2YmN/sQsWN5ItBopAxmrPtDW3/JYZnK83XJyUpVF/2YNFYB1znCfjrWNYuVUbv+rc6F5ER8m5
	8jr6FjRY/6ouFyj7dpriPySYxy7/xCnUoCwdnyzW6mR6NSgnGprl0m72uO5gheYCIGE7e9X4xakL6
	lTRwHh4057kNiG+lQ5LD2VPSA/wXpHcC8MIzf1V3rtWXEqMY+7qh7JRTqFVeGnABile81ClONRQXW
	xIYZK0coV3EEyIRqnAuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3dMw-0000CR-3M; Fri, 30 Aug 2019 09:38:58 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3dMm-0000C1-3H
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:38:49 +0000
Received: by mail-ot1-x341.google.com with SMTP id z17so6295044otk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 02:38:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hfIr0oG7zkjfTylZRL1EmDdcoClxx4OzN+k3Fa69QOk=;
 b=JZSzfjCV+OzEP0NKiy064AMNbZCphzNNPFXwQYxpUoxKno8taFSuAONsfm81PEzvhQ
 qaCbe4ObT5UHEJBtWQSMdiRygC0gFb4piQ27RfDvbgjt1MFHx4FUZYcXKDJ16XhUnr/e
 s1OWlBpt4sKcZVLl+qYpSVUn0vbanGsamHLos=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hfIr0oG7zkjfTylZRL1EmDdcoClxx4OzN+k3Fa69QOk=;
 b=Njy1uW5ROs0ZeYorAh3TmkKP25GNAtE/YDwBdfTpOK9GBV7M5r8n7X23p81wdpn3VH
 Pn3ybzU1mbu52BcFIstpM1NeI5zF9Z81g5od7hguwtSApTZphDKFbQ5+ccj9ogwPPavB
 sIgT1hTSMz3fgXV53VFzy5GB3b1x3tBrf86Snhu5ARlAJpoDn1RwW3iQKlbfuswzg9zz
 sO9hWh31cxf8/7hpgz4E3/iA7PwP0RHVqZm1HSqtIsP/AbqLzYGWr3g5HBw+Vxk5eTFf
 QOQ/zZEk5fAuXiThbSkjhppPMt0soWgfQz8n3+pjv4ePOkfGhefCwW84ryh7JWPrwrVr
 SyUA==
X-Gm-Message-State: APjAAAWzSPzhVB4h5e39KLT54k/cWEaP4LBgr4q9b2bokhvv95Mw8Bm2
 nYLyR89C46Cft/Zz3s2ptdcvfuZKU34=
X-Google-Smtp-Source: APXvYqzfZM6OODQNxNLCfnOPyRWQDVFz8/ylxuZU+/wh6i/TyrkXAIpmlUUUGkbvBCONNCJn8dKsmw==
X-Received: by 2002:a9d:66c5:: with SMTP id t5mr11993485otm.255.1567157926511; 
 Fri, 30 Aug 2019 02:38:46 -0700 (PDT)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com.
 [209.85.210.52])
 by smtp.gmail.com with ESMTPSA id j19sm1780362otk.46.2019.08.30.02.38.45
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 30 Aug 2019 02:38:45 -0700 (PDT)
Received: by mail-ot1-f52.google.com with SMTP id r20so6347169ota.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 02:38:45 -0700 (PDT)
X-Received: by 2002:a9d:c67:: with SMTP id 94mr11849012otr.33.1567157924626;
 Fri, 30 Aug 2019 02:38:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190822194500.2071-1-jernej.skrabec@siol.net>
 <20190822194500.2071-3-jernej.skrabec@siol.net>
In-Reply-To: <20190822194500.2071-3-jernej.skrabec@siol.net>
From: Alexandre Courbot <acourbot@chromium.org>
Date: Fri, 30 Aug 2019 18:38:32 +0900
X-Gmail-Original-Message-ID: <CAPBb6MUChtZcNSTa2uT50k6uPU9T68wofLYGUFRJntDhjH8+iw@mail.gmail.com>
Message-ID: <CAPBb6MUChtZcNSTa2uT50k6uPU9T68wofLYGUFRJntDhjH8+iw@mail.gmail.com>
Subject: Re: [PATCH 2/8] videodev2.h: add V4L2_DEC_CMD_FLUSH
To: Jernej Skrabec <jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_023848_166545_C2FEA8C4 
X-CRM114-Status: GOOD (  23.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
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
Cc: devel@driverdev.osuosl.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Pawel Osciak <pawel@osciak.com>, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 Chen-Yu Tsai <wens@csie.org>, mripard@kernel.org,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, LKML <linux-kernel@vger.kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 4:45 AM Jernej Skrabec <jernej.skrabec@siol.net> wrote:
>
> From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
>
> Add this new V4L2_DEC_CMD_FLUSH decoder command and document it.
>
> Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst | 11 ++++++++++-
>  Documentation/media/videodev2.h.rst.exceptions      |  1 +
>  include/uapi/linux/videodev2.h                      |  1 +
>  3 files changed, 12 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst b/Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst
> index 57f0066f4cff..0bffef6058f7 100644
> --- a/Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst
> +++ b/Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst
> @@ -208,7 +208,16 @@ introduced in Linux 3.3. They are, however, mandatory for stateful mem2mem decod
>         been started yet, the driver will return an ``EPERM`` error code. When
>         the decoder is already running, this command does nothing. No
>         flags are defined for this command.
> -
> +    * - ``V4L2_DEC_CMD_FLUSH``
> +      - 4
> +      - Flush any held capture buffers. Only valid for stateless decoders,
> +        and only if ``V4L2_BUF_CAP_SUPPORTS_M2M_HOLD_CAPTURE_BUF`` was set.
> +       This command is typically used when the application reached the
> +       end of the stream and the last output buffer had the
> +       ``V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF`` flag set. This would prevent
> +       dequeueing the last capture buffer containing the last decoded frame.
> +       So this command can be used to explicitly flush that last decoded
> +       frame.

Just for safety, can we also specify that it is valid to call this
command even if no buffer was held (in which case it is a no-op), as
this can help make user-space code simpler?

>
>  Return Value
>  ============
> diff --git a/Documentation/media/videodev2.h.rst.exceptions b/Documentation/media/videodev2.h.rst.exceptions
> index adeb6b7a15cb..a79028e4d929 100644
> --- a/Documentation/media/videodev2.h.rst.exceptions
> +++ b/Documentation/media/videodev2.h.rst.exceptions
> @@ -434,6 +434,7 @@ replace define V4L2_DEC_CMD_START decoder-cmds
>  replace define V4L2_DEC_CMD_STOP decoder-cmds
>  replace define V4L2_DEC_CMD_PAUSE decoder-cmds
>  replace define V4L2_DEC_CMD_RESUME decoder-cmds
> +replace define V4L2_DEC_CMD_FLUSH decoder-cmds
>
>  replace define V4L2_DEC_CMD_START_MUTE_AUDIO decoder-cmds
>  replace define V4L2_DEC_CMD_PAUSE_TO_BLACK decoder-cmds
> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
> index 4fa9f543742d..91a79e16089c 100644
> --- a/include/uapi/linux/videodev2.h
> +++ b/include/uapi/linux/videodev2.h
> @@ -1978,6 +1978,7 @@ struct v4l2_encoder_cmd {
>  #define V4L2_DEC_CMD_STOP        (1)
>  #define V4L2_DEC_CMD_PAUSE       (2)
>  #define V4L2_DEC_CMD_RESUME      (3)
> +#define V4L2_DEC_CMD_FLUSH       (4)
>
>  /* Flags for V4L2_DEC_CMD_START */
>  #define V4L2_DEC_CMD_START_MUTE_AUDIO  (1 << 0)
> --
> 2.22.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
