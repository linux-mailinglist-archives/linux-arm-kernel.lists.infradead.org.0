Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BFE524F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 09:37:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HUzeLCcgv+eYbyUgX/dF/sYYU6mBwAJ4Uv4tGFJLy3E=; b=R/MFwZ4pIotZTE
	k1Bhjrd9hFsHye132D4OxsRel6b/BNvsBdQy0PjaxDg+/152aMx/WExtfVZgIYW1+leWYEpGOLqY0
	IbqAWKffeM4UJcIe02JsLulXEsYJhNLOOqzgAz7EmTAj14HfrXz+sDXaBXjx93BEBvVESghVQ6Ed7
	WzEAtbYa/HzwNrCezC6WQZqJ2LiPoOY2RYdckXTGQcNn0aGx/wSNsQx4sJFWFE9EesRT8scparMgH
	Ohd4VOnSZBSSZsT8KwbDR63O+MCC4TrbkjY5n3L6P5lZEX9QiMGIVbvil3FXBTfCeOFM4LZNyZTC6
	kEj40chT1wzsCNzX52RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfg0x-0000Ik-7t; Tue, 25 Jun 2019 07:37:15 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfg0a-0000Gr-0B; Tue, 25 Jun 2019 07:36:54 +0000
Received: by mail-io1-xd42.google.com with SMTP id m24so458208ioo.2;
 Tue, 25 Jun 2019 00:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JbpPj0DCLr6TgvcwaNhaVYyXQ1KtwFBdw/kdmuK8GW4=;
 b=pPX8Qgg874Yumj7c0y5ur24FUEXPWCgxpDsMnYp6jx0h5kSd1MqxFUmEs6iagKx/qM
 +Y3XsLVKgCWaLp3PsHrW2poj8ZX3YoSA6zrV08AAeBXyNL11sqax69vsLKXQP4IltrUo
 rsNMoAq734jMXmBvv3MTvY/qY22Uzh34YXflbCLhgh+pagFwMZ1PZnZPbVLQiV3lcRXV
 a89+fgpAKM8TALIKtqRPkpqXScRh1B2/JuHcMVo8xTDOr1XhtlQ3xZf3Kl0eZDNtuicZ
 bkmyoOOB5w7gSqk447wT0LPwu5WiOg91owKnoxGD4DEu4ME/tsrDJTUKfEoY4AN+Yimo
 nDBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JbpPj0DCLr6TgvcwaNhaVYyXQ1KtwFBdw/kdmuK8GW4=;
 b=Eq9Gti5OEARP6LkCk3w6FfiO0IbUFXxnzsgRkH1uAaV9Rj5EeXTNXyNHt2EvkrRCed
 G9SdeNZBo4mT5x1x2SNgKv973p3vCMYuzO8ahkm7vsLCrzFF+kKSc4qrDxAB6xYS7aMc
 uAW+JRvguFeTscWnZ0X/T3B+i13jnZukb1qIkOU8wWoLixvEuiTUwlCz8it9kKV9taQE
 Hh+kUn0rdNg+YiExpJEYGQtqjA09OJFRiKzK7j0es9FqgyA2Yn9dcMIf6j+FnNrQZbGi
 mcK3odBvQOicxeg0zQ+944KtRR+NvCS/pWfLAHgRWyujN8uR6awWCZCOq+sLO1nSb3mk
 2PDg==
X-Gm-Message-State: APjAAAU4FAnEX9Jsfn1OBTKU2AL0eaEkJLzB9Dv9EADp2ijLPRDhcIie
 Iy476cDx/ozpLmouHPOG5C3Gb4L98lTsrRiniwk=
X-Google-Smtp-Source: APXvYqzlNc8rPqW74Hlogp+mli1EBGgu59A9C7b23BB+Z+foqlfatmCvmK1IOjih1XYlpah/0XcRBaMZRIW26tDWv9k=
X-Received: by 2002:a6b:f90f:: with SMTP id j15mr35859348iog.43.1561448210575; 
 Tue, 25 Jun 2019 00:36:50 -0700 (PDT)
MIME-Version: 1.0
References: <1561414395-12518-1-git-send-email-wahrenst@gmx.net>
In-Reply-To: <1561414395-12518-1-git-send-email-wahrenst@gmx.net>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Tue, 25 Jun 2019 08:36:39 +0100
Message-ID: <CALeDE9N-j_mSubddpsQ24905Ti3YHfPAECsRaxdW4sQv3K6w+Q@mail.gmail.com>
Subject: Re: [PATCH] staging: bcm2835-camera: Restore return behavior of
 ctrl_set_bitrate()
To: Stefan Wahren <wahrenst@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_003652_046604_D0DEF4E8 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pbrobinson[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>, Eric Anholt <eric@anholt.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 11:13 PM Stefan Wahren <wahrenst@gmx.net> wrote:
>
> The commit 52c4dfcead49 ("Staging: vc04_services: Cleanup in
> ctrl_set_bitrate()") changed the return behavior of ctrl_set_bitrate().
> This breaks probing of bcm2835-camera:
>
>     bcm2835-v4l2: mmal_init: failed to set all camera controls: -3
>     Cleanup: Destroy video encoder
>     Cleanup: Destroy image encoder
>     Cleanup: Destroy video render
>     Cleanup: Destroy camera
>     bcm2835-v4l2: bcm2835_mmal_probe: mmal init failed: -3
>     bcm2835-camera: probe of bcm2835-camera failed with error -3
>
> So restore the old behavior and fix this issue.
>
> Fixes: 52c4dfcead49 ("Staging: vc04_services: Cleanup in ctrl_set_bitrate()")
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Tested-by: Peter Robinson <pbrobinson@gmail.com>

Thanks Stefan, I can confirm this resolves the issue I have seen with
the camera on 5.2 but hadn't had the time to bisect it yet.

Tested with a v2.1 camera module attached to a RPI3A+

Regards,
Peter

> ---
>  drivers/staging/vc04_services/bcm2835-camera/controls.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
> index d60e378..1c4c9e8 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
> @@ -610,9 +610,11 @@ static int ctrl_set_bitrate(struct bm2835_mmal_dev *dev,
>
>         encoder_out = &dev->component[MMAL_COMPONENT_VIDEO_ENCODE]->output[0];
>
> -       return vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
> -                                            mmal_ctrl->mmal_id, &ctrl->val,
> -                                            sizeof(ctrl->val));
> +       vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
> +                                     mmal_ctrl->mmal_id, &ctrl->val,
> +                                     sizeof(ctrl->val));
> +
> +       return 0;
>  }
>
>  static int ctrl_set_bitrate_mode(struct bm2835_mmal_dev *dev,
> --
> 2.7.4
>
>
> _______________________________________________
> linux-rpi-kernel mailing list
> linux-rpi-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
