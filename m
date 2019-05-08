Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A57B3173E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 10:33:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JJ7Wo8L4FKM+AQPv1YTGu3RQfHI4HwaKf1/NpPuAjI0=; b=QowgR1Wmu5owm+
	eX+DA0DRZCK7iNP/n6vVnxfou0Qa+LIEr0kGcHcvtbd/qEYbqxalFdAIvB2OPiHWPDvHUbw2fz2w9
	dBo+8HlRw/BRGwK+L0w2mUJmNwg+Jj3tG+9dGTFLjTvSiqcbo87wYXTKhZaUY4jmMaXRYOZg5iuhA
	YBGWbu0KUtajLRBR83146jS0L5OclFWQwyDiNjGiBx5GTFJPYsKR/saK3Kcj9QK3oO0Nc9P9e/7SP
	LkbKjctWMep0qxbY41kYJcYRxOCvmvuQ1fQZqCSN9oZ6RgHDKPWbPrLbMcacfO7VghDsxhhh7D2oQ
	HuMdBYGJIR6RYOkQoN3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOI0r-0001Yo-JW; Wed, 08 May 2019 08:33:17 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOI0k-0001Y7-AO
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 08:33:11 +0000
Received: by mail-ed1-x543.google.com with SMTP id p27so6356694eda.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 01:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=pK6wVbjmnvB/fkRhlO06WndQQley/CLsWlKi7Lo/4rk=;
 b=jyKQzz7bipEyXQ6mMXMUmxM55YNMYTV09/uuB5zNRCY0/9ZBIP+Lfyi94AaxP8Hj0y
 hnYPMzZdHpSUNgX7RXjh+tdhhT8nVwCAOFUoj8mudlIsy8+E2rpAyby34PhbMF66SUe3
 RGDCf2Tg5xAYPjSK0ABIlA3ukX0dLv5ZwK9Bs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=pK6wVbjmnvB/fkRhlO06WndQQley/CLsWlKi7Lo/4rk=;
 b=TblT0x0gei3+UJ7iUvmWF5dFqAIaFBszYQoRZpXGZxgVLDxDmzoHQhACxNtxj3+Kd7
 +JNMRE15NKQtvYzNry3MKDCxn9OiEtN41JviKgtPi2fW/bsU0XpGD4M4resOdeljEHjK
 DPkJblzY5xMuZ5Bezj6XG0wyPynImEqlKXcm2qeYXRYJ9LWGTCV1dWplml6vEcgTbUiG
 PdUscdueU0Ze2gQhYUWnnL+KW8VJ7w/0cTPftKbfDi7+CJzGdIBAsdysMUP5vIeEj7B3
 ZXZzEwwKJOFzfwt56ZT2fgBhF/s0y0pbvwpmVBYrRgbX7uQ1RvvJc6EywIg6dgVWSMEe
 TR8Q==
X-Gm-Message-State: APjAAAXpKbtZMpSOjyKCgfhxgdoyblSUU5CVfnlkfIs6JartA9HUB09E
 TJ9L79qWWQZkwXTY6XVkleRmkQ==
X-Google-Smtp-Source: APXvYqwUkZlPgHY9vRwVHZGsHkyTtIbJaS1tfENj3GHg4lDVQYijjVoHXXBWgmsCGnRbNduUH4WMew==
X-Received: by 2002:a50:8927:: with SMTP id e36mr38416424ede.54.1557304387856; 
 Wed, 08 May 2019 01:33:07 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id m27sm2593869eje.67.2019.05.08.01.33.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 May 2019 01:33:06 -0700 (PDT)
Date: Wed, 8 May 2019 10:33:03 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH RE-RESEND 1/2] drm/panel: Add support for Armadeus ST0700
 Adapt
Message-ID: <20190508083303.GR17751@phenom.ffwll.local>
Mail-Followup-To: Sam Ravnborg <sam@ravnborg.org>,
 Fabio Estevam <festevam@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 stable <stable@vger.kernel.org>,
 =?iso-8859-1?Q?S=E9bastien?= Szymanski <sebastien.szymanski@armadeus.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
References: <20190507152713.27494-1-sebastien.szymanski@armadeus.com>
 <CAOMZO5B2nMsVNO6O_D+YTSjux=-DjNPGxhkEi3AQquOZVODumA@mail.gmail.com>
 <20190507161950.GA24879@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507161950.GA24879@ravnborg.org>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_013310_369874_6A5D3D74 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 stable <stable@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 06:19:50PM +0200, Sam Ravnborg wrote:
> Hi Fabio
> =

> On Tue, May 07, 2019 at 12:33:39PM -0300, Fabio Estevam wrote:
> > [Adding Sam, who is helping to review/collect panel-simple patches]
> > =

> > On Tue, May 7, 2019 at 12:27 PM S=E9bastien Szymanski
> > <sebastien.szymanski@armadeus.com> wrote:
> > >
> > > This patch adds support for the Armadeus ST0700 Adapt. It comes with a
> > > Santek ST0700I5Y-RBSLW 7.0" WVGA (800x480) TFT and an adapter board so
> > > that it can be connected on the TFT header of Armadeus Dev boards.
> > >
> > > Cc: stable@vger.kernel.org # v4.19
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > Signed-off-by: S=E9bastien Szymanski <sebastien.szymanski@armadeus.co=
m>
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> =

> If you wil lresend the patch I can apply it.
> I have lost the original mail.

Usually patchwork should have it already (and you can pipe the raw
patchwork mbox into dim apply), but somehow it's not there either.
Not sure why, sometimes this is because mails are stuck in moderation,
sometimes because people do interesting things with their mails (e.g. smtp
servers mangling formatting).
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
