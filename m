Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DEC18BD7C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 18:05:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oqb/qj09267D2ygKJmy/I5b+7tRnUr7tUS+MoD5HL2o=; b=IUoSlwrYcjs4Qy
	2El53XhfP4ARWgNKYAVhopI/4z2uNK8FM3PHwYaXu0ab+rOkPzp5vwx5aoBtuVdxI+rMh2JVTguOR
	lg+BDhzst5zyT0Pd0CtVgW+/9YmOYz3RcPn7XAZAW/WVhwVLhlKabwYhSPyb+ppmkYTqqjrPsC4OY
	hl3ELIvNoDjRZ3BY6CXo/f/EffQY85a7157noNXFgV/ANDUfoqFJf97sn/h8Q11lJ4uHvjo7D6UNV
	VL+JaosaCF13k6hycRE+/d1KhjfaFPgI5Kbl0SzZCuyFT9z9CEEKxC5TntiMul2Tq9cqAsTI8eBcZ
	OLfVBoIb81g5V0+tAXOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEyc5-0001AD-PB; Thu, 19 Mar 2020 17:05:45 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEybs-00018m-7V; Thu, 19 Mar 2020 17:05:34 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 1AAD32002D;
 Thu, 19 Mar 2020 18:05:24 +0100 (CET)
Date: Thu, 19 Mar 2020 18:05:22 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v1 0/3] drm: drm_encoder_init() => drm_encoder_init_funcs()
Message-ID: <20200319170522.GA29213@ravnborg.org>
References: <20200313201744.19773-1-sam@ravnborg.org>
 <20200319141954.GA25036@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319141954.GA25036@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=e5mUnYsNAAAA:8
 a=9MVmhzcSsuuJt3ktV8oA:9 a=CjuIK1q_8ugA:10 a=Vxmtnl_E_bksehYqCbjh:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_100532_637130_87403CD6 
X-CRM114-Status: GOOD (  21.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [109.247.116.14 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-samsung-soc@vger.kernel.org, Emil Velikov <emil.velikov@collabora.com>,
 Boris Brezillon <bbrezillon@kernel.org>, David Airlie <airlied@linux.ie>,
 Jose Roberto de Souza <jose.souza@intel.com>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-mediatek@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>,
 Dave Airlie <airlied@redhat.com>, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, virtualization@lists.linux-foundation.org,
 amd-gfx@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 03:19:54PM +0100, Sam Ravnborg wrote:
> On Fri, Mar 13, 2020 at 09:17:41PM +0100, Sam Ravnborg wrote:
> > Thomas Zimmermann had made a nice patch-set that introduced
> > drm_simple_encoder_init() which is already present in drm-misc-next.
> > 
> > While looking at this it was suddenly obvious to me that
> > this was functionalty that really should be included in drm_encoder.c
> > The case where the core could handle the callback is pretty
> > common and not part of the simple pipe line.
> > 
> > So after some dialog on dri-devel the conclusion was to go for
> > a change like this:
> > 
> >     drm_encoder_init_funcs() for all users that specified a
> >     drm_encoder_funcs to extend the functionality.
> > 
> >     drm_encoder_init() for all users that did not
> >     need to extend the basic functionality with
> >     drm_encoder_funcs.
> > 
> > A similar approach with a _funcs() prefix is used elsewhere in drm/
> > 
> > This required a rename of the existing users, and
> > a follow-up patch that moves drm_simple_encoder_init()
> > to drm_encoder.c
> > 
> > Patches 3 in this set demonstrate the use of drm_encoder_init().
> > There are many more drivers that can be converted as Thomas
> > has already demonstrated.
> > 
> > This is all based on work done by Thomas Zimmermann,
> > I just wanted to implement my suggestion so
> > we could select the best way forward.
> > 
> > Note: Daniel Vetter has hinted the approach implemented
> > here smelled like middle-layer.
> > IMO this is not so, it is just a way to handle cleanup
> > for the simple cases.
> 
> We discussed this patch-set briefly on irc.
Just to clarify, we in this context was Daniel Vetter & me.

	Sam

> With the upcoming drmm_ changes and such this is bad timing..
> And in the end this may be pointless code-chrunch.
> 
> Patch-set shelfed for now - may re-visit it later.
> 
> 	Sam
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
