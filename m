Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B78A8DBBB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 19:27:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oXNJcyyb06L3KSFBepLLWMdUY8oTIB5v+qMgt24uNGk=; b=KdpygM+C1AZhTH
	4R/0zc/b2z0fjOcn/U2fYlagReB05ZWchiJ9pr/wNwB3alYZmWJvjLD6QnWSSfnv6Btdj6c+vu/T/
	vFgSuE8hBbjeHF6b3E+WtubsO8OaMdCFGD/4M44As/aALxTaPxJro0euxXbCJjvulTceXHAyHGqfE
	OYYIYqfB5GqOkpA7JPQn2yl80rEzqzOwmaiKnqh3K06DhU6Q1kSXOTiLO6f8hXzLAM617SjfFJACZ
	E/pssVXXMKsUqmDjVomrczU07g9UsCASsf8skbkSn7H5XPL74X+z1stx64C0XhpkwoAGHBbjSdmKw
	cbQ5oqGBcdPxqa7rKDgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxx3s-0003aG-O7; Wed, 14 Aug 2019 17:27:48 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxx3c-0003TR-3e
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 17:27:33 +0000
Received: by mail-ed1-x541.google.com with SMTP id r12so7750526edo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 10:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+2YJRbop7obhJvx6M/oXULPH/J+nom3HFlj8fZHLgck=;
 b=S4LZ0ZhIFTLmy+dmmZbaLaOg0YS4AVm25WTeqTC5q04TLFmuKXix6ea6GroX69AccQ
 TVsyDYKimeexBM+zMbTI7uThBz1wKxoZ2LA/DsPjtLnCxTpInBlf253wnioU/rbc30kx
 lxmEzhEsWTICGjuh7wAQdG5twlk69J1nGF1g0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=+2YJRbop7obhJvx6M/oXULPH/J+nom3HFlj8fZHLgck=;
 b=KT7gn6Deht0gkrGXrpyoVZKljdZljCX69PKS0WqEaP6IEmIxME1NmAoAVdXdaWxfSp
 WsDwgQp9dV9u9jq1thdnQm7SSPbrQJdC6i1LuqpIqIcpNAbFPsFhGpMhyHXtI1pv1tu6
 sqKI7SvF3E/8yXpunUgque4FzkRpRWXpLzc7oEUo9JlME4a0jfCDjHOzBGBqgJpnZji6
 G1OAzVetS0kRs4sfzdqIcgWSjG45kr5NDf1RhFXMOqe8ksvg8c68jYDRv29pXj5p0jfk
 bpWy1qCpOswrYlkL9ri/PjUsU6Nbum4yxrl6nBpfNFKcYEhpOLC1R1v/QtDnIgcgqwNm
 NcJA==
X-Gm-Message-State: APjAAAVrOqEdXp/Kf8jDBu8S8kEYknFd5YZUGfjU7PPVhRJqjasLDY8/
 uqGUMrLMZB5HshqpfVDJaxSEdw==
X-Google-Smtp-Source: APXvYqxDenh8FqJ/E7jAQeR7LkcaMiSGhd2axDUeDfcgpFNQ91SfeEo1ZCMhZXrO8haciNGMe7XFWQ==
X-Received: by 2002:a50:ed94:: with SMTP id h20mr814730edr.59.1565803650087;
 Wed, 14 Aug 2019 10:27:30 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id f6sm72806edk.79.2019.08.14.10.27.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 14 Aug 2019 10:27:29 -0700 (PDT)
Date: Wed, 14 Aug 2019 19:27:27 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] drm/aspeed: gfc_crtc: Make structure aspeed_gfx_funcs
 constant
Message-ID: <20190814172727.GQ7444@phenom.ffwll.local>
References: <20190813063355.25549-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813063355.25549-1-nishkadg.linux@gmail.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_102732_204005_D409B52F 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-aspeed@lists.ozlabs.org, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, andrew@aj.id.au, joel@jms.id.au,
 daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 12:03:55PM +0530, Nishka Dasgupta wrote:
> The static structure aspeed_gfx_funcs, of type
> drm_simple_display_pipe_funcs, is used only as an argument to
> drm_simple_display_pipe_init(), which does not modify it. Hence make it
> constant to protect it from unintended modification.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>

Applied, thanks for your patch.
> ---
>  drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c b/drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c
> index 15db9e426ec4..2184b8be6fd4 100644
> --- a/drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c
> +++ b/drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c
> @@ -215,7 +215,7 @@ static void aspeed_gfx_disable_vblank(struct drm_simple_display_pipe *pipe)
>  	writel(reg | CRT_CTRL_VERTICAL_INTR_STS, priv->base + CRT_CTRL1);
>  }
>  
> -static struct drm_simple_display_pipe_funcs aspeed_gfx_funcs = {
> +static const struct drm_simple_display_pipe_funcs aspeed_gfx_funcs = {
>  	.enable		= aspeed_gfx_pipe_enable,
>  	.disable	= aspeed_gfx_pipe_disable,
>  	.update		= aspeed_gfx_pipe_update,
> -- 
> 2.19.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
