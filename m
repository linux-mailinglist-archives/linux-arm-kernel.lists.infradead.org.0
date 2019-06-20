Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B634D982
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 20:38:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dYYIb7PeDi2KyBlgK3mGGL+2HImXmNchFJspxQ7SNQI=; b=QJ5B4PvYOvOj85
	tGRPSOP5Wp7dBUe367nyIf0TTz1WLFZ/BaKss3q3Ajj6H18HlZARyxJfZt+AYMOWwcYk9S2uU0GqM
	aZnw5TEujkclVIlAd6IzEZ4GCRh0kCDoJIHE/BRZcsRmKc0SAYYowyNJO+yLtlMC59b9QKg+AQDzm
	Mtq5OKO4XztQSOMzXE3WAt2X9shf0IB/orV1bYDXldHQx4Sz/uJS5qJ5FA6hW2Ge0vwskBVSPenMq
	YFXoDAqj13HZrSMlo/kqOvjzDaWg43Aaxz0PWZj8QsQpwiTvOj7/1hHfokl9uebO/UZV2iyuOJ4PO
	RK8KUX88QRa4gV6N1xsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he1ww-0002cO-5P; Thu, 20 Jun 2019 18:38:18 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he1v1-0001Ld-Uo
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 18:36:22 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 59E5E240005;
 Thu, 20 Jun 2019 18:36:04 +0000 (UTC)
Date: Thu, 20 Jun 2019 20:36:04 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 1/3] rtc: pcf8563: Fix interrupt trigger method
Message-ID: <20190620183604.GC23549@piout.net>
References: <20190604042337.26129-1-wens@kernel.org>
 <20190604042337.26129-2-wens@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604042337.26129-2-wens@kernel.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_113620_221749_3D82C441 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 devicetree@vger.kernel.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel@vger.kernel.org, Vincent Donnefort <vdonnefort@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/06/2019 12:23:35+0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> The PCF8563 datasheet says the interrupt line is active low and stays
> active until the events are cleared, i.e. a level trigger interrupt.
> 
> Fix the flags used to request the interrupt.
> 
> Fixes: ede3e9d47cca ("drivers/rtc/rtc-pcf8563.c: add alarm support")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
> 
> Not sure if this would cause issues for other platforms. Ideally we'd
> take the flags from the device tree, but it seems not all platforms
> support this.
> 
> ---
>  drivers/rtc/rtc-pcf8563.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
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
