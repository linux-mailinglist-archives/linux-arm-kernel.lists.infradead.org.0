Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAE98E055
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 00:06:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=myz3u/ImXVeQa+j57TbUNH/ujTCE45Na2JnvT5gHFhA=; b=u47Ym3i/1I6kxf
	9mOuDd6WUM1AOje/3LCRSvTRtFqBlr7E9gYsHq4l2KrgTJP2o5O6VQ0bx1uHtrO+gGPNHJRePHUMM
	whiFicC7iKtuOJZIoYdfgRc2WexMpRTn3oTdC3EKQQx8QpZd/uOJTxNJua+r0TCbbWDo3MMjH5mQI
	6VZBwUlPfA3n+jaEfHgFPrDuQe5sFS4Wh/hTwIaTGUEsFfc66hZ1qEgTJp+7Vz6MRrw6TAIdWPmma
	6CQB5wAg2joLNBcAMrkQPuPmX4awG4rA9g9MPX6KL61cwR+01TsCjd3ArODfACugB15CezK5vy1IQ
	pD1nqAN4z7DAhhDEW+mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy1Pm-0003ir-7b; Wed, 14 Aug 2019 22:06:42 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy1PZ-0003iQ-NJ
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 22:06:31 +0000
Received: by mail-pg1-x543.google.com with SMTP id e11so289682pga.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 15:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FLFblGnxzQ1wI2QM5HelENy2vNVHmhf51uAkZDB+jpI=;
 b=T6rUo53R9JDRHIkMfoGdrnDrsfMPkMGgqRTP3o5lVIOOcp2qrBarQDVb1rpfBmja8n
 hb29IYPLiS+4SjkOcCclg6MMZoxlIVyTqswgEgSR7V8KdraVWdIS/Y9f7EuAGynkNAUW
 q7mxLhX+gUtvRob9dALNvXjLvJG5SmqDsEzgqhzg+mcldPILPgMEgQ9DisII1gmhy1CL
 btdIuPVtWn3qLlsf15RY2HYGl/QYNwAKfpBflkrRimTHbAPcEzBdlCUpDqEI8N1wIQSP
 Xy9dZAyXPOS14n1PtzcJdAys2fGt8RKD+ZON5r/jZSwRi0T4BB1FTRf33dgs6plfiXK6
 LSHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FLFblGnxzQ1wI2QM5HelENy2vNVHmhf51uAkZDB+jpI=;
 b=W6Cv3LSkyNwaHqnUkZ8/r6fuyMWxID2TXj4+rj/4uxCXWXDipbLpgTx5wSaAlH8oJv
 q5leszqkJshWeZyRDkfYLXZ5SRm8ty2f9H1qFdpKSLwPLVRqZ+wPY67PD6f47Qt9PqmG
 lyxcCJct5SDB6mYEkNyGvOr77ACIB125G2RvsWdX2qto+PUYmvAareT3Wy5Y41F3UsC6
 QTQiLSeh4iHLQgSKJl4JEgvi7ui3IrB+VNdMoHrwXMqW9stauGec/zLJtKTIFVl7ezYc
 wkjM4MXvU6vj/fjSqNPsP/qoPTvzyRtsC3tB78/QFTORDdZC1djCUqPGDjOSheOTbzLu
 1VOw==
X-Gm-Message-State: APjAAAWI+FveW47w55iQWT33xVc8DoHG5STnzq8i3Pbyuz7Rs7u44QWY
 4Ia0CKaIIDhBkjxWvHeLo5Q=
X-Google-Smtp-Source: APXvYqxOv2+QJT56iITOcewqwm/svzN0f2xI1RFG9HZpdRwcds+DscI/HKfjP2Yj28OcgA1qHhUUzg==
X-Received: by 2002:a63:40a:: with SMTP id 10mr1072437pge.317.1565820388356;
 Wed, 14 Aug 2019 15:06:28 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id i9sm5475pjj.2.2019.08.14.15.06.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 14 Aug 2019 15:06:27 -0700 (PDT)
Date: Wed, 14 Aug 2019 15:06:25 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Subject: Re: [PATCH] Input: cros_ec_keyb: Add back missing mask for event_type
Message-ID: <20190814220625.GD121898@dtor-ws>
References: <20190813093821.74158-1-fshao@chromium.org>
 <CANMq1KCNFfWA=ApVUFoPctgTftHDSAvGjtk-Xu2hcKWBq9R1zw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANMq1KCNFfWA=ApVUFoPctgTftHDSAvGjtk-Xu2hcKWBq9R1zw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_150629_759763_BDEDB9B6 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Fei Shao <fshao@chromium.org>, Brian Norris <briannorris@chromium.org>,
 lkml <linux-kernel@vger.kernel.org>, Ting Shen <phoenixshen@chromium.org>,
 Guenter Roeck <groeck@chromium.org>,
 "open list:HID CORE LAYER" <linux-input@vger.kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Benson Leung <bleung@chromium.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 05:47:22PM +0800, Nicolas Boichat wrote:
> On Tue, Aug 13, 2019 at 5:38 PM Fei Shao <fshao@chromium.org> wrote:
> >
> > In the previous patch we didn't mask out event_type in case statement,
> > so switches are always picked instead of buttons, which results in
> > ChromeOS devices misbehaving when power button is pressed.
> > This patch adds back the missing mask.
> >
> > Fixes: d096aa3eb604 ("Input: cros_ec_keyb: mask out extra flags in event_type")
> > Signed-off-by: Fei Shao <fshao@chromium.org>
> 
> Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>

Applied, thank you.

> 
> > ---
> >  drivers/input/keyboard/cros_ec_keyb.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/input/keyboard/cros_ec_keyb.c b/drivers/input/keyboard/cros_ec_keyb.c
> > index 38cb6d82d8fe..bef7bee6f05e 100644
> > --- a/drivers/input/keyboard/cros_ec_keyb.c
> > +++ b/drivers/input/keyboard/cros_ec_keyb.c
> > @@ -226,6 +226,8 @@ static int cros_ec_keyb_work(struct notifier_block *nb,
> >  {
> >         struct cros_ec_keyb *ckdev = container_of(nb, struct cros_ec_keyb,
> >                                                   notifier);
> > +       uint8_t mkbp_event_type = ckdev->ec->event_data.event_type &
> > +                                 EC_MKBP_EVENT_TYPE_MASK;
> >         u32 val;
> >         unsigned int ev_type;
> >
> > @@ -237,7 +239,7 @@ static int cros_ec_keyb_work(struct notifier_block *nb,
> >         if (queued_during_suspend && !device_may_wakeup(ckdev->dev))
> >                 return NOTIFY_OK;
> >
> > -       switch (ckdev->ec->event_data.event_type & EC_MKBP_EVENT_TYPE_MASK) {
> > +       switch (mkbp_event_type) {
> >         case EC_MKBP_EVENT_KEY_MATRIX:
> >                 pm_wakeup_event(ckdev->dev, 0);
> >
> > @@ -264,7 +266,7 @@ static int cros_ec_keyb_work(struct notifier_block *nb,
> >         case EC_MKBP_EVENT_SWITCH:
> >                 pm_wakeup_event(ckdev->dev, 0);
> >
> > -               if (ckdev->ec->event_data.event_type == EC_MKBP_EVENT_BUTTON) {
> > +               if (mkbp_event_type == EC_MKBP_EVENT_BUTTON) {
> >                         val = get_unaligned_le32(
> >                                         &ckdev->ec->event_data.data.buttons);
> >                         ev_type = EV_KEY;
> > --
> > 2.23.0.rc1.153.gdeed80330f-goog

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
