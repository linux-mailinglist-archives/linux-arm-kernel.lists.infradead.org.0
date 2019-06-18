Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA4949DD6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 11:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qIeE0pRDO7N/ZM+nzXGxdBZIP6KIesCmR0Lra+etcms=; b=Zo8rnhXM3WgkG2
	G+hSit/bp1gQ6ZoB9KPKNlZWXZB8GDcJzeknJuDPoRMkckx99SD6D1BbBKoApSRLJpLbpNJu4JiQJ
	pz8OaJbxPXqxvspzbOUE106047rRpf+VUR6eIgB3gXsbNuinBGJfFSgn7hMMviWku4zqTt2WPleVm
	E5+Mb6WJxqpRJq1sNoRLYsftOYryxo/wZetYkj5o5UnNsGMv85Ygk6lRFhyPdMBTYflOu7zjIKJys
	EMd1cOFsCUwY1PnAMGxO7bHzTnSD7gGJ7GzVQjcwNrendiwUhBkIFz/effuTCDk/145qtjA5X9FPC
	Q73/YrICTA7uF/nhxyZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdAq8-0000rn-LE; Tue, 18 Jun 2019 09:55:44 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdApw-0000qs-CP
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 09:55:34 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 95FB3FF81A;
 Tue, 18 Jun 2019 09:55:22 +0000 (UTC)
Date: Tue, 18 Jun 2019 11:55:21 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH 0/7] clk: at91: sckc: improve error path
Message-ID: <20190618095521.GE23549@piout.net>
References: <1560440205-4604-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560440205-4604-1-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_025532_586567_D7166105 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 claudiu.beznea@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/06/2019 15:37:06+0000, Claudiu.Beznea@microchip.com wrote:
> From: Claudiu Beznea <claudiu.beznea@microchip.com>
> 
> Hi,
> 
> This series tries to improve error path for slow clock registrations
> by adding functions to free resources and using them on failures.
> 

Does the platform even boot when the slow clock is not available? 

The TCB clocksource would fail at:

        tc.slow_clk = of_clk_get_by_name(node->parent, "slow_clk");
        if (IS_ERR(tc.slow_clk))
                return PTR_ERR(tc.slow_clk);


> It is created on top of patch series at [1].
> 
> Thank you,
> Claudiu Beznea
> 
> [1] https://lore.kernel.org/lkml/1558433454-27971-1-git-send-email-claudiu.beznea@microchip.com/
> 
> Claudiu Beznea (7):
>   clk: at91: sckc: add support to free slow oscillator
>   clk: at91: sckc: add support to free slow rc oscillator
>   clk: at91: sckc: add support to free slow clock osclillator
>   clk: at91: sckc: improve error path for sam9x5 sck register
>   clk: at91: sckc: remove unnecessary line
>   clk: at91: sckc: improve error path for sama5d4 sck registration
>   clk: at91: sckc: use dedicated functions to unregister clock
> 
>  drivers/clk/at91/sckc.c | 122 ++++++++++++++++++++++++++++++++++--------------
>  1 file changed, 86 insertions(+), 36 deletions(-)
> 
> -- 
> 2.7.4
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
