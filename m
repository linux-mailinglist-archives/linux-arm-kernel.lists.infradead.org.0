Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04133BBB9E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 20:31:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AidQuhLAmG8O0LgR4xHaUGHLJWABw05dZK2nw/NNku4=; b=GUywxvVADsJ0/o
	SuaT8Ht3bt0loQTShcr2VzStO2rg5q9uLA8DOjK8kO13Xvf1gPf/1fQm+oTed2Mb8y28Wh9Wv88LP
	162IGBT4l90Y+sx3h9rfVIMCxqBCLM7OU9Z0JEWpGPLOvjzgXbpfhklIsEykFtGyCjD2QZFIC9fBc
	yidq/BcmSv8jRYYYYGxNzuScvOAj1ouuoGcVM9SyJIxvWTpZIY+vPRbkohKKSYv3aKdVU07MDHtqh
	PPW9lYUK2XWsLEGO1+iZhQiVTWalTAxtuIdVzaN4rqiWQGrvzeSgV/mIChu3taWAoFnq7y6O2LAVV
	rmngoXnuPS7WFd4UNOQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCT7B-00048K-2L; Mon, 23 Sep 2019 18:31:13 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCT6w-00047G-Ts
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 18:31:00 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 566C1809F;
 Mon, 23 Sep 2019 18:31:30 +0000 (UTC)
Date: Mon, 23 Sep 2019 11:30:55 -0700
From: Tony Lindgren <tony@atomide.com>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH 1/2] ARM: omap2plus_defconfig: Update for removed items
Message-ID: <20190923183055.GC5610@atomide.com>
References: <20190911145226.21088-1-aford173@gmail.com>
 <20190911165021.qr5i37mpnua3fvw5@earth.universe>
 <CAHCN7xKin45Hqr1fgoOmbBKaM_hM_xnvrs2_5nnxAifHL2Sz0A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7xKin45Hqr1fgoOmbBKaM_hM_xnvrs2_5nnxAifHL2Sz0A@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_113058_997407_DF1F0F51 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sebastian Reichel <sre@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <adam.ford@logicpd.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Adam Ford <aford173@gmail.com> [190911 17:14]:
> On Wed, Sep 11, 2019 at 11:50 AM Sebastian Reichel <sre@kernel.org> wrote:
> >
> > Hi,
> >
> > On Wed, Sep 11, 2019 at 09:52:25AM -0500, Adam Ford wrote:
> > > The omap panel-dpi driver was removed in
> > > Commit 8bf4b1621178 ("drm/omap: Remove panel-dpi driver")
> > >
> > > The tFP410 and DVI connector was remove in
> > > Commit be3143d8b27f ("drm/omap: Remove TFP410 and DVI connector drivers")
> > >
> > > This patch removes these items from the omap2plus_defconfig.
> >
> > The omapdrm specific drivers have generic replacements, that
> > should be added to the defconfig instead:
> >
> > DRM_OMAP_PANEL_DPI -> DRM_PANEL_SIMPLE
> > DRM_OMAP_ENCODER_TFP410 -> DRM_TI_TFP410
> >
> > Nothing should be required for DRM_OMAP_CONNECTOR_DVI.
> 
> The DPI panel was already done.
> 
> https://patchwork.kernel.org/patch/11119569/
> 
> I'll submit a patch for the TFP410

I picked that one into fixes, will apply the rest
of defconfig changes into omap-for-v5.5/defconfig.
Not planning on pushing it out until after -rc1
though.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
