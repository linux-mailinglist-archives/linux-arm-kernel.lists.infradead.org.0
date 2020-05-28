Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB891E6416
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 16:37:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s71UHhpUNd713S2qnfa1yqe72nk3zU+57BDF+IymJ3M=; b=hlzTw1qaE2DniH
	NcSvyPFYl1/D/htZTrw6NYAmKIBsCtaabOkL5ltSLkd+t8XhQg5oKpVE5upkXuaiWKe3FQYTzXh8q
	ZcZi0cSM3JB2PvOJFcI/EV4gjb8zmIhnPPNAC7wcGiZEi8IOmiP7GgxnCJmtFxKLZFwsYw9Xp8K18
	yk0mpiE2K9nccSj2WI5pseoPJ2h7TaICIb6zSXe1wItElgJsorHFKUgBPb9DQ9JsKxM13esR7QBIg
	Mb3j5cMQ2Vmabbw4re09FV3asNpjGfXy3xgJ1ZGuTyaRpPSV3wnwTmeP/TgeylK/Hzk6dtqkzuTPj
	yvHRX+mzc1q2OilKFOLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJfJ-0007S6-0O; Thu, 28 May 2020 14:37:49 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJfA-0007RO-K3
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 14:37:42 +0000
Received: by mail-vs1-xe44.google.com with SMTP id k3so2859633vsg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 07:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zhjLeGnnSiMQRUUbdYfOMsIgW1q+H/0EWlHfLoiEMtE=;
 b=CbKCD5fVpYp1aySqZdKnzqK4Q2fgUNjrKce3em6AzjVDLz8s0NG0/V1jiEgII88EV6
 QE9gxRgIdBssjKzN8c9Zg/T88CncTWrDZjjHBURYmyRPX3qJgA5b5hIQZhg/jJU2e7rL
 Rbpdph3yfrYbRsQOvvH4FOvDjbvKauAU44w1rX4VbhcA8W+FSRYO/FBCTsuKp70ynmwv
 j4fnZ5f1/o5nphKz37BhmxIDH1v5xxz0MpLIjCSwp43846om7e/5adWroCwymmxTsb0k
 v6+dHcr8BGLmT+hTMeokGnwbWps5BfsssA7hPevfqdN3VyvbTWkFjWwcYyCFD5TLU6c6
 +7Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zhjLeGnnSiMQRUUbdYfOMsIgW1q+H/0EWlHfLoiEMtE=;
 b=DMqLzfDz9RozxOMHmgpZNJGn5HOM+Qa2XQPxW773gfFwc/bXDqavFWV7po2AukwhKd
 UCOQuzUS9oS1nsuSCrvL2cbx+PYn1QgY0D/68e8dIPA0FtAjTvtNiM1wcY7ZMZZNbSM+
 WZLBnj0XSB65MfTm0DvwS1LF/AEaXLF4ek9g4fEXOoI3l93xuWnCXCYT0Ed4Zfq9XvFM
 9qUbJC0JZi4uDA+0NCId7jOdRTrKqWJumY4gqp4/qDvCqUSB84e7MXH1FJBxWG+g+N8r
 ZbpJ95G4BVfbs9ZLF288rPzZmIj96NI9LYvzU7UKPPXBfJ89ma3lWVFHBAqfx47LvRMN
 DzuA==
X-Gm-Message-State: AOAM5312TPXahIFBQfumdGU2bEuGxLQfE9RibJK+gxiBqRAZ5g1YMZIf
 4LpOReoCFau8JkgNPJ3aJ5BLWgMGm77LGwXAv/E=
X-Google-Smtp-Source: ABdhPJxf/Xvp0FffRYRAO2YMcSmKjuft134y0VUyAxlVwQruDsfuEhriUCGMVWXQHGRus78KTihyjqzAINdicC/TUO4=
X-Received: by 2002:a67:be19:: with SMTP id x25mr2244123vsq.37.1590676658056; 
 Thu, 28 May 2020 07:37:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200522135246.10134-1-tzimmermann@suse.de>
 <20200522135246.10134-8-tzimmermann@suse.de>
 <CACvgo51cYh4iLKEfrLSbgOGQM4=ojsBq54gW9VJBPoX+p04o+g@mail.gmail.com>
 <ccee78e2-8930-2de6-0b7c-0f1ad1e636f8@suse.de>
In-Reply-To: <ccee78e2-8930-2de6-0b7c-0f1ad1e636f8@suse.de>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Thu, 28 May 2020 15:34:30 +0100
Message-ID: <CACvgo52de8opoX98Kchp00gfDa7iGyezumNZPeNaOeLpYjETEQ@mail.gmail.com>
Subject: Re: [PATCH 07/21] drm/hisilicon/kirin: Use GEM CMA object functions
To: Thomas Zimmermann <tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_073740_659071_3F75A758 
X-CRM114-Status: GOOD (  19.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [emil.l.velikov[at]gmail.com]
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
Cc: alexandre.belloni@bootlin.com, linux-aspeed@lists.ozlabs.org,
 Neil Armstrong <narmstrong@baylibre.com>, Dave Airlie <airlied@linux.ie>,
 Liviu Dudau <liviu.dudau@arm.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Paul Cercueil <paul@crapouillou.net>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mihail Atanassov <mihail.atanassov@arm.com>, Sam Ravnborg <sam@ravnborg.org>,
 =?UTF-8?B?TWFyZWsgVmHFoXV0?= <marex@denx.de>, khilman@baylibre.com,
 Alexey Brodkin <abrodkin@synopsys.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Xinliang Liu <xinliang.liu@linaro.org>, ludovic.desroches@microchip.com,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 "james qian wang \(Arm Technology China\)" <james.qian.wang@arm.com>,
 NXP Linux Team <linux-imx@nxp.com>, joel@jms.id.au,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Chen Feng <puck.chen@hisilicon.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Alison Wang <alison.wang@nxp.com>, Jyri Sarha <jsarha@ti.com>,
 Chen-Yu Tsai <wens@csie.org>, Vincent Abriou <vincent.abriou@st.com>,
 LAKML <linux-arm-kernel@lists.infradead.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, bbrezillon@kernel.org,
 andrew@aj.id.au, Philippe Cornu <philippe.cornu@st.com>,
 Yannick Fertre <yannick.fertre@st.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Sascha Hauer <kernel@pengutronix.de>, Rongrong Zou <zourongrong@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 25 May 2020 at 13:41, Thomas Zimmermann <tzimmermann@suse.de> wrote:
>
> Hi Emil
>
> Am 22.05.20 um 20:11 schrieb Emil Velikov:
> > Hi Thomas,
> >
> > On Fri, 22 May 2020 at 14:53, Thomas Zimmermann <tzimmermann@suse.de> wrote:
> >>
> >> The kirin driver uses the default implementation for CMA functions; except
> >> for the .dumb_create callback. The __DRM_GEM_CMA_DRIVER_OPS macro now sets
> >> these defaults and .dumb_create in struct drm_driver. All remaining
> >> operations are provided by CMA GEM object functions.
> >>
> >> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> >> ---
> >>  drivers/gpu/drm/hisilicon/kirin/kirin_drm_ade.c | 12 +-----------
> >>  1 file changed, 1 insertion(+), 11 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/hisilicon/kirin/kirin_drm_ade.c b/drivers/gpu/drm/hisilicon/kirin/kirin_drm_ade.c
> >> index c339e632522a9..b1ffd7d43e562 100644
> >> --- a/drivers/gpu/drm/hisilicon/kirin/kirin_drm_ade.c
> >> +++ b/drivers/gpu/drm/hisilicon/kirin/kirin_drm_ade.c
> >> @@ -921,17 +921,7 @@ DEFINE_DRM_GEM_CMA_FOPS(ade_fops);
> >>  static struct drm_driver ade_driver = {
> >>         .driver_features = DRIVER_GEM | DRIVER_MODESET | DRIVER_ATOMIC,
> >>         .fops = &ade_fops,
> >> -       .gem_free_object_unlocked = drm_gem_cma_free_object,
> >> -       .gem_vm_ops = &drm_gem_cma_vm_ops,
> >> -       .dumb_create = drm_gem_cma_dumb_create_internal,
> >
> > This doesn't seem right. The _internal documentation explicitly says
> > that this should _not_ be used as .dumb_create. Instead drivers should
> > use it to implement their callback.
> >
> > Since it yields the same result as drm_gem_cma_dumb_create we can use
> > the default macro below.
>
> I noticed this and thought that the driver authors probably had their
> reasons. Changing the driver to the default macro is probably still a
> good idea.
>
To be on the _extra_ safe side might want to keep that separate patch
explicitly CC-ing the author/reviewers of the offending commit.
Although as said before - it's your call, I'm fine either way.

HTH
Emil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
