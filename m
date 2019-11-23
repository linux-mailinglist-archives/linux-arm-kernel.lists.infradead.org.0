Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF214107DCA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 09:51:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P29OhN8INFn1sfUEeDclkizBdk86DY8U2yCcmsQxRXY=; b=kOWV/sbC9Qz0W7
	DffVca8JMxnR+0JyPP9P/mwd1HvZ05MOtacPXNspVnmRWwr4u+FIs3W7XQaaBvI8tGmFN2/n9o0tC
	WdY18ReaWQRhd5UX4XSKzNhu7ShdMg3WdjbiK3Ej3ujD+jaxQmhUl9NF0zD+tDMqSeQYQfebIgGWe
	tl3w+zdjciEFUkHbGFWXyCUwRiMKmijPOZwcV123oU7/MeP4wBYtfuLwidnmCPfelfo10vyRn3Vyq
	qiXMGI/SX53JVIrsblNeGfK1AJ5e+VojOuxTy4Vr4TuFu4kF1c97pCWDUoBrfh8lTyai7DsSTqzM0
	fnpNM4tbvVIyt1dw7dng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYR8l-0007WG-5D; Sat, 23 Nov 2019 08:51:39 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYR8Z-0006EQ-65
 for linux-arm-kernel@lists.infradead.org; Sat, 23 Nov 2019 08:51:28 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id C111880563;
 Sat, 23 Nov 2019 09:49:13 +0100 (CET)
Date: Sat, 23 Nov 2019 09:49:12 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH 2/8] drm/atmel: ditch fb_create wrapper
Message-ID: <20191123084912.GA17899@ravnborg.org>
References: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
 <20191115092120.4445-3-daniel.vetter@ffwll.ch>
 <20191115103324.1fbeca63@collabora.com>
 <20191119212231.GE30416@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191119212231.GE30416@phenom.ffwll.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=QyXUC8HyAAAA:8
 a=7gkXJVJtAAAA:8 a=VwQbUJbxAAAA:8 a=QX4gbG5DAAAA:8 a=POe_QbQUV414Np-XtMwA:9
 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22 a=AjGcO6oz07-iQ99wixmX:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_005127_407156_90E0867A 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel.
On Tue, Nov 19, 2019 at 10:22:31PM +0100, Daniel Vetter wrote:
> On Fri, Nov 15, 2019 at 10:33:24AM +0100, Boris Brezillon wrote:
> > On Fri, 15 Nov 2019 10:21:14 +0100
> > Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> > 
> > > Spotted while looking through them all.
> > > 
> > > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > > Cc: Sam Ravnborg <sam@ravnborg.org>
> > > Cc: Boris Brezillon <bbrezillon@kernel.org>
> > 
> > Acked-by: Boris Brezillon <boris.brezillon@collabora.com>
> 
> Merged, thanks for taking a look.

Hi Daniel, thanks for merging this.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
