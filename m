Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D75041FF1E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 14:33:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uw0BZQ+e2WoYw2WXDHtu17MyWoeun6HB32c1loD4BZ0=; b=HI5l48ZMH+Xfhw
	qzdDcTfo2hSHO9v4vzznI4/ckCRcCkrUN36afDb0eRyUDg5q+Tg+uiF1QitwMUEU6E3/lGktyg6RO
	a9brCJudxDh85zh514ZlwaFm76D1YJUYHR1dva67OiHQaApL0FR9FiMYRSlHimnHvVNx9Pzi1JBQs
	cXhMRhUXbzr5UEhMnIUrpu7LmVsnsMUmX2wn5M1dAgSjKA8C+uYPHdUFyZFEskDl8JoBQ6ehqEaIU
	LiReUPDkmJWDXY912TXpUQgAgZhAmsabF4XgBGLt53K3rVBGdyfvP+hjbwz1ZEolGaoZfC+JOpUC2
	37l2Dv4N5HnUWMdVwAuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jltjY-0004IV-I4; Thu, 18 Jun 2020 12:33:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jltiV-0003lu-TM; Thu, 18 Jun 2020 12:32:43 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jltiJ-00082t-U1; Thu, 18 Jun 2020 14:32:15 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: wu000273@umn.edu
Subject: Re: [PATCH] ASoC: rockchip: Fix a reference count leak.
Date: Thu, 18 Jun 2020 14:32:15 +0200
Message-ID: <3050852.oyibrqGndV@diego>
In-Reply-To: <20200613205158.27296-1-wu000273@umn.edu>
References: <20200613205158.27296-1-wu000273@umn.edu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_053228_017780_B855D457 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org, kjlu@umn.edu,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Samstag, 13. Juni 2020, 22:51:58 CEST schrieb wu000273@umn.edu:
> From: Qiushi Wu <wu000273@umn.edu>
> 
> Calling pm_runtime_get_sync increments the counter even in case of
> failure, causing incorrect ref count if pm_runtime_put is not called in
> error handling paths. Call pm_runtime_put if pm_runtime_get_sync fails.
> 
> Fixes: fc05a5b22253 ("ASoC: rockchip: add support for pdm controller")
> Signed-off-by: Qiushi Wu <wu000273@umn.edu>

somewhat unintuitive, but I checked __pm_runtime_resume for it, so
Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  sound/soc/rockchip/rockchip_pdm.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/sound/soc/rockchip/rockchip_pdm.c b/sound/soc/rockchip/rockchip_pdm.c
> index 7cd42fcfcf38..1707414cfa92 100644
> --- a/sound/soc/rockchip/rockchip_pdm.c
> +++ b/sound/soc/rockchip/rockchip_pdm.c
> @@ -590,8 +590,10 @@ static int rockchip_pdm_resume(struct device *dev)
>  	int ret;
>  
>  	ret = pm_runtime_get_sync(dev);
> -	if (ret < 0)
> +	if (ret < 0) {
> +		pm_runtime_put(dev);
>  		return ret;
> +	}
>  
>  	ret = regcache_sync(pdm->regmap);
>  
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
