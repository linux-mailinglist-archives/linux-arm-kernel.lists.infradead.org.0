Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF549136F96
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 15:36:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGd71FcKpHUWC2u9Qo/HKDtTrefxvkYJ+gJTxv0IVVA=; b=ZCc5hrd8Rw1Byf
	mDaggidcSKUDduoSRr3Enr3v9noOpg13XxtowedBBNhnjr6jKjYQ7RhwiNQXdk21PJXC5J96Uy/on
	gkKV3ssSnDDl1ouWCfRZVTB9b/23SWgXLRwtkdJe7U+4gk6QdkIq7GortF08uNHwTCDxX6Vzkxj1d
	AyoMkkekbawsGwt36Poc7WjefJfWozOu0gm7r303SymBAd3wHHital6oNX/iJi+w8fBLSa5UmtY7y
	KkIW4Sfn69k7iIfCO8cObPnUNQZmJBiT5TtHv29ZYmc352oqoduyZx7K8W2HNHV0OcsA9/7I8uOyS
	RpD3tiJno64JzmNNIIlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipvOS-0003s9-Q7; Fri, 10 Jan 2020 14:36:08 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipvOL-0003r5-9S
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 14:36:02 +0000
Received: by mail-wr1-x443.google.com with SMTP id t2so2050645wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 06:35:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fR6lP1zgvDKu/Vk7f95tLyKjHNECmLy4ZODwU6XXvRk=;
 b=oMKyFTUnPn8RNJpLhn1q02KOjxZJlZZ9VPykA25mq7Qu2JP+ihwHk0gSWGLtpxMDz2
 /AQfwwbC0TD/nXTTKi57chkFmPcoxO7vB8UkXx8YLSu1qkSDKVXKAIQHE4L4mtNkUK6B
 EEQjSgImvLDw8OhHqbgHe4K+SgwLMVLzgxRjolX/wSuQyynOf587dS5kGTkkrmHUIHlM
 /B/MDdLk0zENjZMUh1aBEDzP1Bbb2VgndUwbPqka0QYTdhNNZNEaKohUSiUYK8Bwh1uh
 hZTG7FonKTzkOi85mDmfoak7tBoRe7uxQ/W+MYnSKt+ABcPjCvy048Uy1gZbt/SUVS7z
 OCZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fR6lP1zgvDKu/Vk7f95tLyKjHNECmLy4ZODwU6XXvRk=;
 b=YDmeAkckTOGL17tMoBW9hr+1Kmhy7S86W8rup8IJpDYZ/BQw+L/hyAIdQw1cCGBTMs
 Doa9nK+cUC7VjPthovgtPLyTpTK9b95fqzPxqreT6qder5TR5D3/pQDNY7ZMeys5deOI
 HxJSiBu8TWpT/wIIje93bxvoyyH0tWE8EZYIhCHmSNFwB4CMTvZyUtaPMScrX1+BrhcW
 hyTb9TAiMlDDCEg2/6uytxiLW+jANQE2d/9X5bUwiSiIROTvGg+7iuOIQMZRA1Dgr3J/
 HYUhql6pJBRtobymCLBX4Cggibq6akLrq6AvZRb3VjZyQmrR4Ys/h/v5qSCN7Wd+aM1d
 S/Mg==
X-Gm-Message-State: APjAAAXikNk8DCIYQ+/P6FfR19gEbwq+6amrBTUUdhnM/1Eip50PO3fH
 N17Gqiq1JDYWBoGrQ9WfHo1S8SGo9lBpKZWdoXQbrQ==
X-Google-Smtp-Source: APXvYqxEFT4t6ci312y+/g7e9vAaR90TUgHTNowFXe9gfh6DUIG6dMP98qv1vvSieZtNtI/KYxW53dyyPKyUy7ah+Nk=
X-Received: by 2002:adf:fc4b:: with SMTP id e11mr3904527wrs.326.1578666956616; 
 Fri, 10 Jan 2020 06:35:56 -0800 (PST)
MIME-Version: 1.0
References: <20191206085432.19962-1-michael.kupfer@fau.de>
 <3db2350b-0a6d-0693-258c-9d47f71c0627@xs4all.nl>
In-Reply-To: <3db2350b-0a6d-0693-258c-9d47f71c0627@xs4all.nl>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 10 Jan 2020 14:35:38 +0000
Message-ID: <CAPY8ntALS7Em42457fsHmUuQLD5vokKLc0RHn3a-T7amgS1Kvg@mail.gmail.com>
Subject: Re: [PATCH] staging/vc04_services/bcm2835-camera: distinct numeration
 and names for devices
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_063601_370679_9183B9B6 
X-CRM114-Status: GOOD (  23.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, f.fainelli@gmail.com, sbranden@broadcom.com,
 Michael Kupfer <michael.kupfer@fau.de>, linux-kernel@i4.cs.fau.de,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, eric@anholt.net,
 daniela.mormocea@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, Dave Stevenson <dave.stevenson@raspberrypi.org>,
 rjui@broadcom.com, mchehab+samsung@kernel.org, linux-media@vger.kernel.org,
 Kay Friedrich <kay.friedrich@fau.de>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hans

On Fri, 10 Jan 2020 at 13:25, Hans Verkuil <hverkuil-cisco@xs4all.nl> wrote:
>
> Hi Michael, Kay,
>
> On 12/6/19 9:54 AM, Michael Kupfer wrote:
> > Create a static atomic counter for numerating cameras.
> > Use the Media Subsystem Kernel Internal API to create distinct
> > device-names, so that the camera-number (given by the counter)
> > matches the camera-name.
> >
> > Co-developed-by: Kay Friedrich <kay.friedrich@fau.de>
> > Signed-off-by: Kay Friedrich <kay.friedrich@fau.de>
> > Signed-off-by: Michael Kupfer <michael.kupfer@fau.de>
> > ---
> >  .../vc04_services/bcm2835-camera/bcm2835-camera.c        | 9 ++++++---
> >  1 file changed, 6 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > index beb6a0063bb8..be5f90a8b49d 100644
> > --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > @@ -60,6 +60,9 @@ MODULE_PARM_DESC(max_video_width, "Threshold for video mode");
> >  module_param(max_video_height, int, 0644);
> >  MODULE_PARM_DESC(max_video_height, "Threshold for video mode");
> >
> > +/* camera instance counter */
> > +static atomic_t camera_instance = ATOMIC_INIT(0);
> > +
> >  /* global device data array */
> >  static struct bm2835_mmal_dev *gdev[MAX_BCM2835_CAMERAS];
> >
> > @@ -1870,7 +1873,6 @@ static int bcm2835_mmal_probe(struct platform_device *pdev)
> >
> >               /* v4l2 core mutex used to protect all fops and v4l2 ioctls. */
> >               mutex_init(&dev->mutex);
> > -             dev->camera_num = camera;
> >               dev->max_width = resolutions[camera][0];
> >               dev->max_height = resolutions[camera][1];
> >
> > @@ -1886,8 +1888,9 @@ static int bcm2835_mmal_probe(struct platform_device *pdev)
> >               dev->capture.fmt = &formats[3]; /* JPEG */
> >
> >               /* v4l device registration */
> > -             snprintf(dev->v4l2_dev.name, sizeof(dev->v4l2_dev.name),
> > -                      "%s", BM2835_MMAL_MODULE_NAME);
> > +             dev->camera_num = v4l2_device_set_name(&dev->v4l2_dev,
> > +                                                    BM2835_MMAL_MODULE_NAME,
> > +                                                    &camera_instance);
> >               ret = v4l2_device_register(NULL, &dev->v4l2_dev);
> >               if (ret) {
> >                       dev_err(&pdev->dev, "%s: could not register V4L2 device: %d\n",
> >
>
> Actually, in this specific case I would not use v4l2_device_set_name().
>
> Instead just use:
>
>                 snprintf(dev->v4l2_dev.name, sizeof(dev->v4l2_dev.name),
>                          "%s-%u", BM2835_MMAL_MODULE_NAME, camera);
>
> It would be even better if there would be just one top-level v4l2_device used
> for all the camera instances. After all, there really is just one platform
> device for all of the cameras, and I would expect to see just a single
> v4l2_device as well.
>
> It doesn't hurt to have multiple v4l2_device structs, but it introduces a
> slight memory overhead since one would have been sufficient.

Doesn't that make all controls for all cameras common? The struct
v4l2_ctrl_handler is part of struct v4l2_device.

Or do we:
- ditch the use of ctrl_handler in struct v4l2_device
- create and initialise a ctrl_handler per camera on an internal
structure so we retain the control state
- assign ctrl_handler in struct v4l2_fh to it every time a file handle
on the device is opened?

And if we only have one struct v4l2_device then is there the
possibility of the unique names that Michael and Kay are trying to
introduce?

I'm a little confused as to whether there really is a gain in having a
single v4l2_device. In this case the two cameras are independent
devices, even if they are loaded by a single platform driver.

  Dave

> v4l2_device_set_name() is meant for pci-like devices. And it really
> is a bit overkill to have it as a helper function.
>
> Regards,
>
>         Hans

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
