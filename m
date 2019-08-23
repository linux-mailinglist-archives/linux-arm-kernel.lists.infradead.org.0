Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1229B760
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 21:51:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4JQDe+H8cTw+ik6dd/aJigEH2VS1up6Jjfl8u21ikM=; b=HLO7TabC2rRmP8
	+175rN8SbSaBAWb6ISAYoafhhfEGhC5kc5SkqKi6yktmczBkJJClkivmG8e5hMDNhWTiSjL5oixIR
	Ssr1ztJ0MyYj6egOxT+0NTxijMCvaWBI6rJi34GQIkm2ZFeKmXNX/kw9igHgJZ/fBHMNLs9ohUmGW
	Vo7RCxH+VAUGNPVNKGs8BHmCaYNI7a3O0/4ZH+NdFHW2sgutGm5RnOnHwElrME7jb1qX9vYIStaA2
	PMiZ7h3IKNoosKhXv4oIcM7g30M30pKhJ501ai7vq6o85kIESLhAWfhmiL3TXVJgY4KlgDwJSERu2
	mU3hNJd7uzTVuUiLr7Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Fb9-0002dk-Qv; Fri, 23 Aug 2019 19:51:47 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Fb2-0002d9-A1
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 19:51:41 +0000
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 6EF84200006;
 Fri, 23 Aug 2019 19:51:33 +0000 (UTC)
Date: Fri, 23 Aug 2019 21:51:33 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Nicolas Ferre <nicolas.ferre@microchip.com>
Subject: Re: [PATCH 2/3] MAINTAINERS: at91: remove the TC entry
Message-ID: <20190823195133.GF30479@piout.net>
References: <20190823083158.2649-1-nicolas.ferre@microchip.com>
 <20190823083158.2649-2-nicolas.ferre@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823083158.2649-2-nicolas.ferre@microchip.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_125140_494026_8CDA48BA 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/08/2019 10:31:57+0200, Nicolas Ferre wrote:
> "MICROCHIP TIMER COUNTER (TC) AND CLOCKSOURCE DRIVERS" is better
> removed because one file entry is outdated and basically, the
> maintainer's pool of Alexandre, Ludovic and myself is better suited.
> 
> drivers/misc/atmel_tclib.c file is going away in a patch to come and
> drivers/clocksource/tcb_clksrc.c file is actually named timer-atmel-tcb.c.
> This new name is catches by AT91 entry regular expression.
> 
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> ---
>  MAINTAINERS | 7 -------
>  1 file changed, 7 deletions(-)
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
