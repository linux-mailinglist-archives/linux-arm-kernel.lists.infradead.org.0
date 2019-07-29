Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D26D790FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:34:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h3sj2S0c+WS4Abyg90x5I4W6+wbjBG66/yc+lxuO6hE=; b=F5MyI0kPFMGdVy
	/3MCg87dTi/EUdW+d+C0rNW3Yyee0xpob6OksLsyoc45E7Zh7eo69I2U5TJRP6XljQI6ULXMqSyQx
	+M/kLK1fEJlBLoTwtUgr4SMoLvFGsoTnlOPhrpXpcEWXrKTEXtBSazBfYvxs+G+KkwL7usNTfVgMS
	VXBWsd72wE40qZ7ek1cPI8PCZ2B1xvM+6HUq+2JqvkOPuSMgjy2aVg21vawPz8kmT9eGiem7s32z+
	VJclwl2RKxVWdBpdcia9wywsHni7lU+26t0F9dqUjVrHDhuztdemDPDwuEI/CbSlX+1dsmCcVIOTj
	YU4IsIZIqBkVAwhkCn1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8bj-00058Y-TL; Mon, 29 Jul 2019 16:34:44 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8bQ-00055L-C0
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:34:25 +0000
Received: by mail-pg1-x542.google.com with SMTP id w10so28534181pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 09:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Ca+YSd8mbC6/QP7bucgP0RJlJ7s9mNS/b3WYrRyYNxU=;
 b=C2WlU1yyqjL71V6kYoq5pfDYgiupYLoaryJQzFrERxCtl8dzx4LENMCf5NpqhOY66Z
 OL/iIv/XfZHiho9OuRY6/jKyuDN8Xp3PYswuMXE8xvg8SeBOQRnXEpmmem3h6GQTnSaR
 lspoxVEtOP7JJUfXUw+sOhtIO43IZP6jnlFdA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Ca+YSd8mbC6/QP7bucgP0RJlJ7s9mNS/b3WYrRyYNxU=;
 b=pdDUsZuzygzLu2M7PB9KsMnGsw2UxoLb+EZs1E5qzJxdphpActGEnFypPQkOr7YCLp
 hAGK/LGWCSBe6XT3iW2zqS0Tfxqm2C3ZfUqrKQFYG/Ik/GzK+Ap5hOWj5bz6Jb+8r7P2
 ciudzCutj/nTfadPCg+4tO92XEgodOSVp5WXrgUvokmjk4G7m5HUTQr/yJk6HpoKN9st
 NKB8QCoGIeoFSbvRqziHG+AuKfY9hpiPB9EjCoa23aPNYTQeVSB2VwBGwxluMpK9sd25
 C9KAQiYNLhYUcyjG1vaX4k0LAfCFJrqFNE9G16CuA/c6R/mJyQOJM+gkmj5YH98xZ3uP
 haqw==
X-Gm-Message-State: APjAAAVhUOMuIrOBaiyXte0lMnuwCqpo2N9P9WQRIz03aDnpTqoDeWAd
 d59m5egpwEknApt/+gefpkHoXTCF3AI=
X-Google-Smtp-Source: APXvYqyIayTp3rVKZYtqsF3Mjt/igbA32g+weE6tcF1VgFU4F/YQAN4kZpUcLtbNEwET5wPs8Wk2yg==
X-Received: by 2002:a63:1723:: with SMTP id x35mr6763433pgl.442.1564418063762; 
 Mon, 29 Jul 2019 09:34:23 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id i14sm96530950pfk.0.2019.07.29.09.34.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Jul 2019 09:34:23 -0700 (PDT)
Date: Mon, 29 Jul 2019 09:34:21 -0700
From: Kees Cook <keescook@chromium.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] ARM: alignment: Mark expected switch fall-throughs
Message-ID: <201907290934.7C7C914@keescook>
References: <20190728231920.GA22247@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190728231920.GA22247@embeddedor>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_093424_499846_BC6985B6 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 28, 2019 at 06:19:20PM -0500, Gustavo A. R. Silva wrote:
> Mark switch cases where we are expecting to fall through.
> 
> This patch fixes the following warnings:
> 
> arch/arm/mm/alignment.c: In function 'thumb2arm':
> arch/arm/mm/alignment.c:688:6: warning: this statement may fall through [-Wimplicit-fallthrough=]
>    if ((tinstr & (3 << 9)) == 0x0400) {
>       ^
> arch/arm/mm/alignment.c:700:2: note: here
>   default:
>   ^~~~~~~
> arch/arm/mm/alignment.c: In function 'do_alignment_t32_to_handler':
> arch/arm/mm/alignment.c:753:15: warning: this statement may fall through [-Wimplicit-fallthrough=]
>    poffset->un = (tinst2 & 0xff) << 2;
>    ~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~
> arch/arm/mm/alignment.c:754:2: note: here
>   case 0xe940:
>   ^~~~
> 
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/arm/mm/alignment.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mm/alignment.c b/arch/arm/mm/alignment.c
> index 8cdb78642e93..04b36436cbc0 100644
> --- a/arch/arm/mm/alignment.c
> +++ b/arch/arm/mm/alignment.c
> @@ -695,7 +695,7 @@ thumb2arm(u16 tinstr)
>  			return subset[(L<<1) | ((tinstr & (1<<8)) >> 8)] |
>  			    (tinstr & 255);		/* register_list */
>  		}
> -		/* Else fall through for illegal instruction case */
> +		/* Else, fall through - for illegal instruction case */
>  
>  	default:
>  		return BAD_INSTR;
> @@ -751,6 +751,8 @@ do_alignment_t32_to_handler(unsigned long *pinstr, struct pt_regs *regs,
>  	case 0xe8e0:
>  	case 0xe9e0:
>  		poffset->un = (tinst2 & 0xff) << 2;
> +		/* Fall through */
> +
>  	case 0xe940:
>  	case 0xe9c0:
>  		return do_alignment_ldrdstrd;
> -- 
> 2.22.0
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
