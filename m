Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 738EC19C11
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 12:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eOXaDgFi48qaP4rSStSvtkbOYS+t3Ge0qt9CK/WUgnw=; b=ZfEtNjM7wk/JNi
	svDXZ3sStrgzAnrg6rgkuoBIjSHr9wili83r9THVzLmXexX8G3wvX24y4VcvpLnoFWAwqaQ3SJWfM
	+dLcz5HRHV6BJzf0OZMaLnSl54IVrRE0ZUw4yvCZBap/1C94lgpHeIxRZkR8MsqQvk+gIftteHxOz
	6H7mOVJh5BLcTl2xgWNruUJpvA6Yyk135jaUij5UqeMQj8CKLeM88d097MCBzukKdPCbew0578zOL
	LtlypQse+yS7bF1GsfGfEGoZL4kSkKaJSMZHWMnLnB0/Co8TNhzlZbZA+eJNStxwIrw4gQLkPje45
	1Xg8jPQJI+FkCIejpLKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP3Eo-0006Jq-Nq; Fri, 10 May 2019 10:58:50 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP3Ei-0006Jf-1J
 for linux-arm-kernel@bombadil.infradead.org; Fri, 10 May 2019 10:58:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FuLaL7b+d0KEUzreiHse8idkfuoe0utUY8D/RiLC+V4=; b=XbPDexAGXxTugoZoXC6iIEQ8u
 TrX9laQwFOUvWo2JkzlRUtYurhr9dCBC/emRf4B/1+UFwxWQrZUHgZoipytQcUDVUwIFevwIhIVe+
 O83sWxtjGwdC+o63XkNcgStMHuHVhgwyfZ38Ied7bgctsl18PhsEOSioiMsloR62uUHUHGamRRWMW
 06o4tJQU+W+QdsqvguV7yL6o0DfZnyWWGM4GazB3aCuFTtKRztDN6MIWdoxoau8RTbVJ9P9oax36k
 f5Z4q51ym2OAZDysu/34VjF1rUbWZhpwjk5L5n9bhLHQeIlTHk8/uHzIrtxqDzSjNuMOEATQFl0AY
 DbSpPrw9Q==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP3Ee-00055D-6n
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 10:58:41 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 45FF94000B;
 Fri, 10 May 2019 10:58:00 +0000 (UTC)
Date: Fri, 10 May 2019 12:57:59 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: mmc: Add YAML schemas for the generic
 MMC options
Message-ID: <20190510105759.z2ob5tl4ovn2ctdo@flea>
References: <68d3fb999d16e49696e832e1d1a6bcd7b76a6e8d.1557389988.git-series.maxime.ripard@bootlin.com>
 <CAL_JsqJi0iwM61anziC-cHXp0PL2AEtXiWFCLn943vTxK5eeig@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqJi0iwM61anziC-cHXp0PL2AEtXiWFCLn943vTxK5eeig@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_065840_353740_943D7474 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc <linux-mmc@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Thu, May 09, 2019 at 11:45:26AM -0500, Rob Herring wrote:
> > +dependencies:
> > +  cd-inverted: [ cd-gpios ]
>
> The note (which you dropped) says 'cd-inverted' applies for built-in CD too.
>
> At least that is what I take "Polarity of dedicated pins can be
> specified, using *-inverted properties." to mean.

Indeed, my bad. i guess we should probably keep that note. How are we
supposed to keep a note that would apply to multiple properties? In
the global description?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
