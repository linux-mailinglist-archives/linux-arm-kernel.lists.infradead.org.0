Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 433DA16A24
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 20:27:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uuALtCUYP9slnukoKApZXBcxHlnyefDBcQq+Zzw+nB0=; b=oBwClW8rkT+6pD
	DlS2HeM5yCizzccJ6ZDr7s/MWRdIJ4aXouApp4706t+323apc9f8byLQaKtPgZ3ysGp++LNaBcxdN
	uYNvxAh/ZJLfP6/f7GmS7VyCdJziwq75yR9ErKarOTnqhOwlZVv+s3y3KRyBEfH6dSIJiHxYbPfLF
	vIUNJR3WN9aE9PyqJnz+xNj7UaN1jsD9l7WnDP65INpJJUT3kDq8F60Wprr//8vNi3AIaiDR4yGQN
	jLvrSmgak0vIFk06YiEK34gl6KwRXHxfsDLXqAD0+MCn8z7WKSFt202xUBmPIGg26Nsj8Kips6MkW
	NlnQW57jjLGyByhSk2wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4oK-0005J2-0E; Tue, 07 May 2019 18:27:28 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4oD-0005If-L1
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 18:27:23 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 31EC0803C6;
 Tue,  7 May 2019 20:27:14 +0200 (CEST)
Date: Tue, 7 May 2019 20:27:13 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Claudiu.Beznea@microchip.com, Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [RESEND][PATCH v3 0/6] add LCD support for SAM9X60
Message-ID: <20190507182713.GA16862@ravnborg.org>
References: <1556195748-11106-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556195748-11106-1-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=e5mUnYsNAAAA:8
 a=KFo_gGakGootahdhYqwA:9 a=7Zwj6sZBwVKJAoWSPKxL6X1jA+E=:19
 a=CjuIK1q_8ugA:10 a=Vxmtnl_E_bksehYqCbjh:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_112721_859341_322CFAF3 
X-CRM114-Status: GOOD (  20.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
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
Cc: linux-pwm@vger.kernel.org, alexandre.belloni@bootlin.com,
 bbrezillon@kernel.org, airlied@linux.ie, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 thierry.reding@gmail.com, daniel@ffwll.ch, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thierry.

>   pwm: atmel-hlcdc: add compatible for SAM9X60 HLCDC's PWM
OK to add the "pwm: atmel-hlcdc: add compatible for SAM9X60 HLCDC's PWM"
patch via drm-misc?
Then we can add all 6 patches in one go.

	Sam

(Kept remaining of mail for reference)
> 
> Hi,
> 
> These patches adds support for SAM9X60's LCD controller.
> 
> First patches add option to specify if controller clock source is fixed.
> Second patch avoid a variable initialization in atmel_hlcdc_crtc_mode_set_nofb().
> The 3rd add compatibles in pwm-atmel-hlcdc driver.
> The 4th patch enables sys_clk in probe since SAM9X60 needs this.
> Specific support was added also in suspend/resume hooks.
> The 5th patch adds SAM9X60's LCD configuration and enabled it.
> 
> I took the changes of this series and introduced also a fix
> (this is the 6th patch in this series) - if you want to send it separately
> I would gladly do it.
> 
> I resend this to also include Lee Jones for pwm-atmel-hlcdc changes.
> 
> Thank you,
> Claudiu Beznea
> 
> Changes in v3:
> - keep compatible string on patch 3/6 on a single line (I keep here a tab
>   in front of ".compatible" to be aligned with the rest of the code in
>   atmel_hlcdc_dt_ids[])
> - patches 4/7 and 3/7 from v2 were applied so remove them from this version
> - add a fix for atmel_hlcdc (patch 6/6)
> 
> Changes in v2:
> - use "|" operator in patch 1/7 to set ATMEL_HLCDC_CLKSEL on cfg
> - collect Acked-by, Reviewed-by tags
> 
> Claudiu Beznea (4):
>   drm: atmel-hlcdc: add config option for clock selection
>   drm: atmel-hlcdc: avoid initializing cfg with zero
>   pwm: atmel-hlcdc: add compatible for SAM9X60 HLCDC's PWM
>   drm/atmel-hclcdc: revert shift by 8
> 
> Sandeep Sheriker Mallikarjun (2):
>   drm: atmel-hlcdc: enable sys_clk during initalization.
>   drm: atmel-hlcdc: add sam9x60 LCD controller
> 
>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c  |  18 ++--
>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c    | 120 +++++++++++++++++++++++-
>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.h    |   2 +
>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c |   2 +-
>  drivers/pwm/pwm-atmel-hlcdc.c                   |   1 +
>  5 files changed, 132 insertions(+), 11 deletions(-)
> 
> -- 
> 2.7.4
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
