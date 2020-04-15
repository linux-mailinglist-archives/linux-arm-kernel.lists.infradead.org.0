Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 905871A945C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 09:37:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QHfGCXhSI6Vkl8BlFusxbLayib8SD+BIMfq+eyOjIkw=; b=U/1mVKRl0++2+N
	g2wUmAPPGX7TGzk4jLR1yuuI/7NM9PjdViv2p8GHy3+0eqwcYsGIYeoAwm68bIXVC5GQYu5Rf4le3
	arBRPWEUd+mslRFfL+brEAoUuIduO+nPboyc3fXhcxyExXaeGtXKb9iK9xyrp1wlbBczm5Edf8CBl
	MG/+6qEsLn4ixICr4/6HSzg8N/AAStaECgnRXPcHrA5zI3pjutuk0B3GR/wpqwzI555sUuNfaQmO3
	rAbiXxczFoFdkgnttWOjHGj/W4XPgoPWr5Iv2PGWIlIxW/ZMKUMjCRpth3sw/2mRD2DCuXEBuwt2d
	nX3ye9SprLFzZIujhqlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOcbt-0004C8-39; Wed, 15 Apr 2020 07:37:25 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOcbk-0004BP-HB
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 07:37:18 +0000
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 7923E20000C;
 Wed, 15 Apr 2020 07:37:12 +0000 (UTC)
Date: Wed, 15 Apr 2020 09:37:11 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Jason Yan <yanaijie@huawei.com>
Subject: Re: [PATCH] clocksource: atmel-st: remove useless 'status'
Message-ID: <20200415073711.GM34509@piout.net>
References: <20200414120238.35704-1-yanaijie@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414120238.35704-1-yanaijie@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_003716_706955_4CF0418D 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/04/2020 20:02:38+0800, Jason Yan wrote:
> Fix the following coccicheck warning:
> 
> drivers/clocksource/timer-atmel-st.c:142:6-12: Unneeded variable:
> "status". Return "0" on line 166
> 
> Signed-off-by: Jason Yan <yanaijie@huawei.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  drivers/clocksource/timer-atmel-st.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/clocksource/timer-atmel-st.c b/drivers/clocksource/timer-atmel-st.c
> index ab0aabfae5f0..73e8aee445da 100644
> --- a/drivers/clocksource/timer-atmel-st.c
> +++ b/drivers/clocksource/timer-atmel-st.c
> @@ -139,7 +139,6 @@ static int
>  clkevt32k_next_event(unsigned long delta, struct clock_event_device *dev)
>  {
>  	u32		alm;
> -	int		status = 0;
>  	unsigned int	val;
>  
>  	BUG_ON(delta < 2);
> @@ -163,7 +162,7 @@ clkevt32k_next_event(unsigned long delta, struct clock_event_device *dev)
>  	alm += delta;
>  	regmap_write(regmap_st, AT91_ST_RTAR, alm);
>  
> -	return status;
> +	return 0;
>  }
>  
>  static struct clock_event_device clkevt = {
> -- 
> 2.21.1
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
