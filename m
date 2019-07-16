Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDD96A3E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 10:32:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVbNxtTAPNxesOyVmxYFOc3gd00d+8usOC9wNa/gOQg=; b=U6x+noNLR/24nd
	FIR0axmvwINSaGZkXJXRZMAXjr0I7Dr6T/syHpmKf8UdeleX5r6b4aM55LLMYJBHb6BJHagHs1/8q
	DMyCBn9d+qtfYOMrESmJOgIKk3Br0T9E+Cj97Xj28paihhSYdoSXRJltf5I09pnXapzyksbgUCYIR
	gKDnENFIScMEV2iHMjnFf3rprPR3EdJycreKLyJz6OwwM0wlAy3fZTkxyu0OCYNKolg7FEPKfOCte
	UgMzEJ5Ow0lLE4wO4Nz1ZQxyQ83ys0+KgwShWaJ+ZuBg65TKU8YloFOX4gHkZc+ztEOc565rFXWLR
	g3HQKJnE6JKJpWoYUeeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnIsf-0002NA-GA; Tue, 16 Jul 2019 08:32:13 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnIsQ-0002Me-Vx
 for linux-arm-kernel@bombadil.infradead.org; Tue, 16 Jul 2019 08:31:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3jZYX02QUycIXrbzLJ7ICYvyqhGy2fWTL9ajojNFZXw=; b=tdA0DJoLZvj1UAy5v656hrVdX
 E3YpYuM2obTcTkFhGHs/Le6R5HoaP9JkpwoD+d2DKtph7pNO6D6eKqVOHGktPu8YcWnJR6MWOC+q3
 bbFYqxT/ImDwSvuyLRVmg/LXUhNF5wtOEl3lyEGfYdtBOtW0/Ff7r/pfDVutsmK01VQbZgB0A/tBb
 AwiqSH4rWKTvVQo/+tLLCt5UzZi4Z3rtndXilEGteJlco+eZRnRUofcyDhaA1u5g1/F4yfDftfLut
 DT/pEIO73qrxSDfKgxd82HbbNUcvTuByR+TIgEnH35AyjVEy0mOSXvuBfufrM78s504INftzPDpbU
 R7/IT9Kbw==;
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnIrt-0000Ri-Ac
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 08:32:04 +0000
X-Originating-IP: 91.163.65.175
Received: from localhost (91-163-65-175.subs.proxad.net [91.163.65.175])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 18E6AC001A;
 Tue, 16 Jul 2019 08:30:40 +0000 (UTC)
Date: Tue, 16 Jul 2019 10:28:51 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v2 05/19] drm/sun4i: drop use of drmP.h
Message-ID: <20190716082851.josovj4mtyjqdw36@flea>
References: <20190716064220.18157-1-sam@ravnborg.org>
 <20190716064220.18157-6-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716064220.18157-6-sam@ravnborg.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_093125_554162_44AEE489 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Chen-Yu Tsai <wens@csie.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 08:42:06AM +0200, Sam Ravnborg wrote:
> Drop use of the deprecated drmP.h header file.
>
> While touching the list of include file, use the typical order of the
> blocks:
> \#include <linux/*>
>
> \#include <video/*>
>
> \#include <drm/*>
>
> \#include ""
>
> Within each block, sort the files.
> Include necessary files to fix build after the drmP.h removal.
>
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Acked-by: Emil Velikov <emil.velikov@collabora.com>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Chen-Yu Tsai <wens@csie.org>
> Cc: linux-arm-kernel@lists.infradead.org

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
