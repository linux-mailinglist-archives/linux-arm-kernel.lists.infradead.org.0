Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A612B1076A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 18:44:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vmXhP4s6aqDBYqpsilSAxdjWlWjMjuA1nnFAy07JR04=; b=QphJCxRXC0Qd/i
	cHIsyAdseTzsrWFXf5MpIS5X0+bTfeRapJIgzbdZMntM4XaKR5/g0F4WiNXkACy7J7/REGuKpH9Gb
	lmgRog47GSxjxc4MzlPhlpetPRLh0+Suh3AC9d++DYTpv/0XAqjdMk5Qttb9XBbt1xN8LDqVxNMXV
	+guI1md1InDq4uweQJ62yiSO77INDI5iylTVsYNJYwgGkGqp01R4TJp5AxbmeuaGGqOOhe0TJIuvY
	QVxL9wiZjqdDFMDFfTQiCDbu6ROy8/JMAUE0ujfT/vywEIhnu59EBmnD3PKhrk1z0z51NQaGXD/sT
	srxa93qmRxA8Zji4QYCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYCyX-00021x-Ut; Fri, 22 Nov 2019 17:44:09 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYCyP-00021C-4u
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 17:44:02 +0000
Received: by mail-il1-x143.google.com with SMTP id s5so7714164iln.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 09:44:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h56fbOK3LHFOKb7PeCUiHytHW+/rGe2pqRatOmUTizE=;
 b=BAjnLsTnSFBrVpp7SbyUz3Wk9Is7kL28zcQMGo2DO7JYFVPuoJBIHxIG1/OubuirXN
 Mu71/CxnBI1G0V+RFU9nkxqlM2Tai34cHtWlnP/GgBN8qmEOTPbOfAqz586TaKblpcsN
 XqBFi33fpuTJB+gHo82418deD2vILz1OKzqMRIBcjdKtt8T55P8Hc8T5F5OTkAivenPq
 5852UBtaEqRqJXOhqu4eTtlPMzFEK08llX6LHvDiUCF2dsMATTIOMPuCxqRUupwRb/5+
 dyzqwFOzXIVUJBbH1sJFcD4/RYl/zp72F0dGnF+XxsjpjIt5uTI4QyGUj9iMUGvZuB2V
 /Hqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h56fbOK3LHFOKb7PeCUiHytHW+/rGe2pqRatOmUTizE=;
 b=A2T+C2ZCIjeVEYQ47KinNiC/00Yg9DDPI44CCZR20R4Dma4Uvfwci2eyl74OwijCUf
 RTCsgutkFxXddNDEkp/kW/qFVO9e/yNB/PxpxLKbW5bEuR8fqb0dX2xDj4RFqk7hl+kA
 9lGT0a/CzqTGSdqzeQKpzMD3EwMOlzRe+Zmh3wKhWm0O6bKK3Dsushzkc+GxzCFwSAB8
 ITyAxIB5V/8nEmaxJqgUAnlQkfwf8u29TcKZ47o1IqyJqUyAUunpVu3yZVttLE1Zoi4O
 XdsiGZpMb+A7IiOzqMOrlG7CIeqeYbmDMqfCilhEOpr83OYuUOaueHjuiPvf7GnGHbty
 Sc5Q==
X-Gm-Message-State: APjAAAU8A7CdegJ/Lj/CO2vvcIy3v65i/VfOfcbC8APnVfGfuM0N7U8x
 /jVX96q+Wi1HUve0223OpV4YlwRaNJoGjQ/+SJY=
X-Google-Smtp-Source: APXvYqxzFpQ6pRsKd5kK7vHYgkg7tAi4FAri6/7IjJHemZSmhcn2nnbMvZcqGvxWpgXjKAsyLm4J4dz/lukT/Cw6jng=
X-Received: by 2002:a92:3b0c:: with SMTP id i12mr16763619ila.190.1574444639533; 
 Fri, 22 Nov 2019 09:43:59 -0800 (PST)
MIME-Version: 1.0
References: <20191004190938.15353-1-navid.emamdoost@gmail.com>
 <CAEkB2EQGCcwBO4iZBiHthUAJUeprw2Q09932GATd6XVyXqukzw@mail.gmail.com>
 <20191122072239.dhbhi2uawoqsclwy@pengutronix.de>
In-Reply-To: <20191122072239.dhbhi2uawoqsclwy@pengutronix.de>
From: Navid Emamdoost <navid.emamdoost@gmail.com>
Date: Fri, 22 Nov 2019 11:43:48 -0600
Message-ID: <CAEkB2EQAgmZwGSRyo2XC-1+Ls2MDdm-fxLY5P1SRAjyhNeUiXQ@mail.gmail.com>
Subject: Re: [PATCH] drm/imx: fix memory leak in imx_pd_bind
To: Marco Felsch <m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_094401_191395_880922A0 
X-CRM114-Status: GOOD (  20.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 LKML <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Navid Emamdoost <emamd001@umn.edu>, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks for the update.

On Fri, Nov 22, 2019 at 1:22 AM Marco Felsch <m.felsch@pengutronix.de> wrote:
>
> Hi Navid,
>
> On 19-11-21 12:31, Navid Emamdoost wrote:
> > On Fri, Oct 4, 2019 at 2:09 PM Navid Emamdoost
> > <navid.emamdoost@gmail.com> wrote:
> > >
> > > In imx_pd_bind, the duplicated memory for imxpd->edid via kmemdup should
> > > be released in drm_of_find_panel_or_bridge or imx_pd_register fail.
> > >
> > > Fixes: ebc944613567 ("drm: convert drivers to use drm_of_find_panel_or_bridge")
> > > Fixes: 19022aaae677 ("staging: drm/imx: Add parallel display support")
> > > Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> > > ---
> >
> > Would you please review this patch?
> >
> > Thanks,
>
> I currently work on the drm/imx driver(s) to avoid errors like [1].
> Hopefully I have a working version till next week. There I fixed this
> issue by using the devm_kmemdup() and dropped the explicit kfree()
> within unbind().
>
> [1] https://www.spinics.net/lists/dri-devel/msg189388.html
>
> Regards,
>   Marco
>
> >
> > >  drivers/gpu/drm/imx/parallel-display.c | 8 ++++++--
> > >  1 file changed, 6 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/imx/parallel-display.c b/drivers/gpu/drm/imx/parallel-display.c
> > > index e7ce17503ae1..9522d2cb0ad5 100644
> > > --- a/drivers/gpu/drm/imx/parallel-display.c
> > > +++ b/drivers/gpu/drm/imx/parallel-display.c
> > > @@ -227,14 +227,18 @@ static int imx_pd_bind(struct device *dev, struct device *master, void *data)
> > >
> > >         /* port@1 is the output port */
> > >         ret = drm_of_find_panel_or_bridge(np, 1, 0, &imxpd->panel, &imxpd->bridge);
> > > -       if (ret && ret != -ENODEV)
> > > +       if (ret && ret != -ENODEV) {
> > > +               kfree(imxpd->edid);
> > >                 return ret;
> > > +       }
> > >
> > >         imxpd->dev = dev;
> > >
> > >         ret = imx_pd_register(drm, imxpd);
> > > -       if (ret)
> > > +       if (ret) {
> > > +               kfree(imxpd->edid);
> > >                 return ret;
> > > +       }
> > >
> > >         dev_set_drvdata(dev, imxpd);
> > >
> > > --
> > > 2.17.1
> > >
> >
> >
> > --
> > Navid.
> >
> >
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



-- 
Navid.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
