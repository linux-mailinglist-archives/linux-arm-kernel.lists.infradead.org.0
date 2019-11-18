Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E62D100D76
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 22:12:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5dkDA0Hx2+C6kRsCrMWHAJ35LaWqwAenm4swATLZ3Fg=; b=iCgSFPWvkghrZE
	iDl0kVKp7/kQ5NfQLSltyGjIcxXsOUbJrNk04BDkCL7Iue8JBBPvyCkUhmCOSWw1VAo495woYhivN
	1lNL9tiK1Kc/i3wPuai5waOPDwZpVZLf8YkiGhfPewgnyh6TnjHTlhEgSuRPItmvpsBWaaWTk8AYY
	Lk1Imm9dsdlGrwSVv6g1ACkGkRJ0U7iifJC1hdM4c3PbhhKJNnPTogZFkUNizfauBtZRfcH1Neyax
	/M7xXWzUOnQRzlUwILUYWfMKu/vUUM513plZEu395SAdiO+gex27MU4JexM+OxxaRt+oqVcJ0k+Ae
	z+ssYxRVeyyRmu5mvBPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWoK8-0006x1-HL; Mon, 18 Nov 2019 21:12:40 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWoJw-0006vM-JZ
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 21:12:32 +0000
Received: by mail-yw1-xc44.google.com with SMTP id p128so6436474ywc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 13:12:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6upXDhNFo0nrsQ2L0RqECuxOTI7O5ERKPLneAxPvz7c=;
 b=APsvoPZqd3/4J1mskST0MM0sGTrFWZWLOEAYmOBonP6JvkuEWs9/P/zm2cGhbbAdwR
 RkAdbYictFRA3Lu3MV/9wWkWd1qXzUczVbmHVDRUz+00GgtdZE7BiOlTfhG84lRwIefh
 Bh11q6gC0MXkEVYaXXLbnjc0VOj2d1M3CZ4CETazCX5Pkfx61+yLw9lBNVZbrKCkVoLo
 3NeFEg3x0ez3aQDopQg9loBZHPmttmgYJwKZWeAEx7JGFnDxjUDo+BY2+ywBXULp5Eg7
 FeLIm35E200T3dXB4+wltq1sUd9Fi7m8gcFM/H5GR9jFvoQFVPEyIMQIM8hXoJmDYF+9
 BIHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6upXDhNFo0nrsQ2L0RqECuxOTI7O5ERKPLneAxPvz7c=;
 b=LYNyO1PiCOox4o4vGtBbq/ZBCiSwfUPZTB+yVQqIlTWaOgy4l+PRk1juyJ//9iI0z5
 VNzuVymSiVyR/34siF8D7vMB7GL8uFqKnfezmKO6b6Pew9A7JH2ugDveUQi7HVwwZoKT
 Gbah1uYJnb+S5pCowjklzUeLVzwURpFtdBrnEZ1qxFzWW+uVB8iFv4Mj18/m/8UDN+6G
 QjyMNC0C88v2eClVPMd8M4Fl0l/tDR4IH12hAkPkgD+RTdCR+GioWbnEqN33WRc9b7fe
 2fBDZRfV22CprORff3HLs/NN5nPlvClsgRVeOxwcK+F3ETjEhE6cx50s55m4Q78ABYit
 P0OA==
X-Gm-Message-State: APjAAAUKTk80U9xdsRgbsoliD+aMF/kkHSazNmLBgyH9ZKKYG6QzqWUN
 l8Fl1IMdQ1NetUcb/uvxCu/Avw==
X-Google-Smtp-Source: APXvYqzAinz5ZQxnMdmq3uJvhm1X1FgntGJvMLmBXoROvfsqoAMA3ftORkYq9KGMR2pOobqbP/cByQ==
X-Received: by 2002:a81:4e04:: with SMTP id c4mr9481605ywb.298.1574111544976; 
 Mon, 18 Nov 2019 13:12:24 -0800 (PST)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id n191sm8487846ywd.56.2019.11.18.13.12.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 13:12:24 -0800 (PST)
Date: Mon, 18 Nov 2019 16:12:23 -0500
From: Sean Paul <sean@poorly.run>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH 0/2] add new DRM_DEV_WARN macro
Message-ID: <20191118211223.GB135013@art_vandelay>
References: <20191114132436.7232-1-wambui.karugax@gmail.com>
 <8736ep1hm2.fsf@intel.com> <20191118192450.GA135013@art_vandelay>
 <CAKMK7uG7Tb6oocrRgRFvq5oB2Rxjy+JmyOSXQtjo6Gt_WH91+A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uG7Tb6oocrRgRFvq5oB2Rxjy+JmyOSXQtjo6Gt_WH91+A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_131228_788017_E2020183 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dave Airlie <airlied@linux.ie>, dri-devel <dri-devel@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Jani Nikula <jani.nikula@linux.intel.com>, Sean Paul <sean@poorly.run>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 09:03:20PM +0100, Daniel Vetter wrote:
> On Mon, Nov 18, 2019 at 8:24 PM Sean Paul <sean@poorly.run> wrote:
> > On Fri, Nov 15, 2019 at 01:52:53PM +0200, Jani Nikula wrote:
> > > On Thu, 14 Nov 2019, Wambui Karuga <wambui.karugax@gmail.com> wrote:
> > > > This adds a new DRM_DEV_WARN helper macro for warnings log output that include
> > > > device pointers. It also includes the use of the DRM_DEV_WARN macro in
> > > > drm/rockchip to replace dev_warn.
> > >
> > > I'm trying to solicit new struct drm_device based logging macros, and
> > > starting to convert to those. [1]
> > >
> >
> > This sounds good to me, I'd much prefer the non-caps versions of these
> > functions. So let's wait for those to bubble up and then convert rockchip to
> > drm_dev_*
> 
> Care to ack Jani's patch directly, so this is all formal?

I just time traveled to last week and acked the whole series :)

Sean

> 
> Jani, can you pls also add a todo.rst patch on top to adjust the
> relevant item to the new color choice?
> 
> Wambui, I guess slight change of plans, it happens ...
> 
> Cheers, Daniel
> 
> >
> > Sean
> >
> > > BR,
> > > Jani.
> > >
> > >
> > > [1] http://patchwork.freedesktop.org/patch/msgid/63d1e72b99e9c13ee5b1b362a653ff9c21e19124.1572258936.git.jani.nikula@intel.com
> > >
> > >
> > >
> > >
> > > >
> > > > Wambui Karuga (2):
> > > >   drm/print: add DRM_DEV_WARN macro
> > > >   drm/rockchip: use DRM_DEV_WARN macro in debug output
> > > >
> > > >  drivers/gpu/drm/rockchip/inno_hdmi.c | 3 ++-
> > > >  include/drm/drm_print.h              | 9 +++++++++
> > > >  2 files changed, 11 insertions(+), 1 deletion(-)
> > >
> > > --
> > > Jani Nikula, Intel Open Source Graphics Center
> >
> > --
> > Sean Paul, Software Engineer, Google / Chromium OS
> 
> 
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> +41 (0) 79 365 57 48 - http://blog.ffwll.ch

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
