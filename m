Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C984B1071A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 12:44:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/bWjPW3YR+3XhYLdugfrdp4zkgz1KSIZ/9SxDPdfNnI=; b=j8FsCrmLKD9qT+
	9OdVemg1lIQ9JioCjEpIft//X+g2FvUtuEZxPsklCdtdz3rC9MkGUrHgEGMzqc7MVkAfmm1s9DilR
	deRVp2FRLgXfcQ2Y8PghyqwqFUgzVFpmyRh+RUWFt+DKrj13b/7bJ8WXkk2LHkUPLOy6YUx7P0dSD
	V1HuYx/x9WTxERWy7sekzoSowteWJ+6SQBJIKL0Gb/yX6VRFSyrws571csGxLL9784vVv7/6RSqqr
	mfUEhDscSCCKcDocpbhyglKS02JFYKf2l4okuCvJkEoDNVJf6Ps7rcN3/Sg9KGRcHyT7rTbcp7BGH
	Lw1WoKfftWKt1pMPGDEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY7MX-0008Nv-1c; Fri, 22 Nov 2019 11:44:33 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY7ML-0008NP-Vw
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 11:44:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574423057;
 s=strato-dkim-0002; d=gerhold.net;
 h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=KUzkDrxqXdw3nrhVEp7f4tzQQ+TrmNkZxVmR920PI6w=;
 b=XoNOW3mXmWsvLw1+GhDWeVxEhULppLy4v8YpdoonxuULHnVxz2ujWpdcX30koYgrYx
 lfU5eAcnjeGycQO5c5XGHBguCaLQkF/TzfVPxlKvnWaUxvwP0QYyWoaUk25ECFXcfwt/
 YOi1j1yXmlEC1aPJedB8WwFQOrNTo8HynUjxT+9RIyYr+5gyJEgnphia90rj8QON+pDl
 2RIYF48oFlU50JPMSMe0UMryuwA3qIkSUxo51/L0hfDKm853aEvxeVWYcXZJXcqtHIj6
 qy30L2+wz/LsbnuJ4W9UX/KNjPzKaL8ueb/mdI+WeAvy7CIuE03j9BU78TyNrjopPavA
 x9rg==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u26zEodhPgRDZ8fxIc6p"
X-RZG-CLASS-ID: mo00
Received: from gerhold.net by smtp.strato.de (RZmta 44.29.0 DYNA|AUTH)
 with ESMTPSA id e07688vAMBiF4D2
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Fri, 22 Nov 2019 12:44:15 +0100 (CET)
Date: Fri, 22 Nov 2019 12:44:08 +0100
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 1/2] drm/mcde: Reuse global DSI command defs
Message-ID: <20191122114408.GA1195@gerhold.net>
References: <20191122072457.25619-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122072457.25619-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_034422_621762_0BE03F48 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 08:24:57AM +0100, Linus Walleij wrote:
> The MCDE DSI include file redefines some commands that
> already exist in the common <video/mipi_display.h> header.
> 
> Cc: Stephan Gerhold <stephan@gerhold.net>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Reviewed-by: Stephan Gerhold <stephan@gerhold.net>

> ---
>  drivers/gpu/drm/mcde/mcde_dsi.c      |  2 +-
>  drivers/gpu/drm/mcde/mcde_dsi_regs.h | 11 -----------
>  2 files changed, 1 insertion(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mcde/mcde_dsi.c b/drivers/gpu/drm/mcde/mcde_dsi.c
> index d4a12fe7ff01..dc07b534f01f 100644
> --- a/drivers/gpu/drm/mcde/mcde_dsi.c
> +++ b/drivers/gpu/drm/mcde/mcde_dsi.c
> @@ -350,7 +350,7 @@ void mcde_dsi_te_request(struct mipi_dsi_device *mdsi)
>  	val |= 0 << DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_ID_SHIFT;
>  	val |= 2 << DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_SIZE_SHIFT;
>  	val |= DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_LP_EN;
> -	val |= DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_DCS_SHORT_WRITE_1 <<
> +	val |= MIPI_DSI_GENERIC_SHORT_WRITE_1_PARAM <<
>  		DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_SHIFT;
>  	writel(val, d->regs + DSI_DIRECT_CMD_MAIN_SETTINGS);
>  
> diff --git a/drivers/gpu/drm/mcde/mcde_dsi_regs.h b/drivers/gpu/drm/mcde/mcde_dsi_regs.h
> index b03a336c235f..8089db805c57 100644
> --- a/drivers/gpu/drm/mcde/mcde_dsi_regs.h
> +++ b/drivers/gpu/drm/mcde/mcde_dsi_regs.h
> @@ -123,17 +123,6 @@
>  #define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_LONGNOTSHORT BIT(3)
>  #define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_SHIFT 8
>  #define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_MASK 0x00003F00
> -#define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_TURN_ON_PERIPHERAL 50
> -#define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_SHUT_DOWN_PERIPHERAL 34
> -#define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_GENERIC_SHORT_WRITE_0 3
> -#define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_GENERIC_SHORT_WRITE_1 19
> -#define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_GENERIC_SHORT_WRITE_2 35
> -#define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_GENERIC_LONG_WRITE 41
> -#define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_DCS_SHORT_WRITE_0 5
> -#define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_DCS_SHORT_WRITE_1 21
> -#define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_DCS_LONG_WRITE 57
> -#define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_DCS_READ 6
> -#define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_SET_MAX_PKT_SIZE 55
>  #define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_ID_SHIFT 14
>  #define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_SIZE_SHIFT 16
>  #define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_LP_EN BIT(21)
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
