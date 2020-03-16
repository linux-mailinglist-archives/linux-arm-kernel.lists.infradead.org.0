Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E073C18747A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 22:07:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2SsIyCiWGUDlj0udL1ELyp4x0bPibxyNBR3NOB5NJc=; b=kfzlRH3eN+KOAS
	IgTVzLCqe2JfllbYA511DfkqUesZVByEicyZ8uQmTDJ4x/z7a4nC2dqDsaejZcbU3ri8tazWgqNRC
	kIyXHldvvR7eUMFbiSLEra3lTQOdpMibsaMnmKpVyvxF8MbrLhTHkO0bR5kFu/g35V9QKKNMGRgsL
	iOXvF9M4qd6rrGoQnu7p1Tnhf3feZYQv4qJV4KpSAFDloj8r+G6BBLXYk2gvbw3XYjPniwRox/ZF2
	5ATQK6I9DhjCLcMX2JfHFyew6paIqFztVhLg4JhW/FyTCDLBwqLUZR6nNH0t1pkHGTbkpbvnMmW4Q
	O1edQWBW9q2sUFReEfEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDwxb-0006mj-PF; Mon, 16 Mar 2020 21:07:43 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDwxT-0006lR-FK
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 21:07:37 +0000
Received: by mail-wr1-x443.google.com with SMTP id s5so23107728wrg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 14:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=e4Js+GQN9i9BA17yb5cl9W991Ln3p6FSzvC77lFfomI=;
 b=cyJ67de5xFz1SvZEhRxwZqWrPgxn0OKkczBOTpCiEBdsUAfjmlrHcgf1ubnpaLBXXl
 UD5u/Kt8WmQHfVqeeZwIwbQsWv1ZpvyKHQlfV5p2w6GtUBmXIAiDdvOIJkOaQKuo2pzk
 kI90cqzwoP6aTh1YX0/1Kd7iFxdR3H1peXxw8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=e4Js+GQN9i9BA17yb5cl9W991Ln3p6FSzvC77lFfomI=;
 b=mKRADnGXgjIhsN0zFOmK37RlG2Ep7y+jzMVHkZwh0oftU60lUonwX2ZPfHYzuZrPr6
 oV9xVWH3I8ms9g9Ef3Cju/pFFz+qs6uf8H1To/rX9c3J7RYrSaNgIPIP9XeYZbmb0VXS
 zwdy4EKuuWZqM92fOH5/GTATvIOcXTzhH74HS2ZgufSySzHByQV8quaZ0XDCYBXRKq6E
 GXHlMDfQDOSmySE6cTHFjRykG/K7Sc4pS2NnDQTHtFlPuWHS76S8w+0A5pbYS5buc2i2
 +R3t+sYoj4bv8Nkle97/q7Daff+OA1Pn4js082B8xp5r9bJVnoAO4jTrKejyGmsNu3Ia
 WYVw==
X-Gm-Message-State: ANhLgQ2lP7Edo0QwllgooZYVFkcshBJ20bd3aA+s7NlyBXQ3FL8+Qj4Y
 YO0BtM66ed2D9YQ5GlAS5ek6GQ==
X-Google-Smtp-Source: ADFU+vt5ctZNOHVsCYlZlRY1l6ofXMxdnVHIEAGpjfBZBJ9JDM+B9T++1/sSbSvJu1sP+6rFmFrJ0A==
X-Received: by 2002:adf:d1a9:: with SMTP id w9mr130439wrc.17.1584392847404;
 Mon, 16 Mar 2020 14:07:27 -0700 (PDT)
Received: from [192.168.1.149] (ip-5-186-114-43.cgn.fibianet.dk.
 [5.186.114.43])
 by smtp.gmail.com with ESMTPSA id q13sm1407210wrs.91.2020.03.16.14.07.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Mar 2020 14:07:26 -0700 (PDT)
Subject: Re: [PATCH 6/6] soc: fsl: qe: fix sparse warnings for ucc_slow.c
To: Li Yang <leoyang.li@nxp.com>, Timur Tabi <timur@kernel.org>,
 Zhao Qiang <qiang.zhao@nxp.com>
References: <20200312222827.17409-1-leoyang.li@nxp.com>
 <20200312222827.17409-7-leoyang.li@nxp.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <b9c5a514-18c1-e36c-1595-2b86c9bfcff1@rasmusvillemoes.dk>
Date: Mon, 16 Mar 2020 22:07:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200312222827.17409-7-leoyang.li@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_140735_513159_26BF356F 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/03/2020 23.28, Li Yang wrote:
> Fixes the following sparse warnings:
> 
[snip]
> 
> Also removed the unneccessary clearing for kzalloc'ed structure.

Please don't mix that in the same patch, do it in a preparatory patch.
That makes reviewing much easier.

>  
>  	/* Get PRAM base */
>  	uccs->us_pram_offset =
> @@ -231,24 +224,24 @@ int ucc_slow_init(struct ucc_slow_info * us_info, struct ucc_slow_private ** ucc
>  		/* clear bd buffer */
>  		qe_iowrite32be(0, &bd->buf);
>  		/* set bd status and length */
> -		qe_iowrite32be(0, (u32 *)bd);
> +		qe_iowrite32be(0, (u32 __iomem *)bd);

It's cleaner to do two qe_iowrite16be to &bd->status and &bd->length,
that avoids the casting altogether.

>  		bd++;
>  	}
>  	/* for last BD set Wrap bit */
>  	qe_iowrite32be(0, &bd->buf);
> -	qe_iowrite32be(cpu_to_be32(T_W), (u32 *)bd);
> +	qe_iowrite32be(T_W, (u32 __iomem *)bd);

Yeah, and this is why. Who can actually keep track of where that bit
ends up being set with that casting going on. Please use
qe_iowrite16be() with an appropriately modified constant to the
appropriate field instead of these games.

And if the hardware doesn't support 16 bit writes, the definition of
struct qe_bd is wrong and should have a single __be32 status_length
field, with appropriate accessors defined.

>  	/* Init Rx bds */
>  	bd = uccs->rx_bd = qe_muram_addr(uccs->rx_base_offset);
>  	for (i = 0; i < us_info->rx_bd_ring_len - 1; i++) {
>  		/* set bd status and length */
> -		qe_iowrite32be(0, (u32 *)bd);
> +		qe_iowrite32be(0, (u32 __iomem *)bd);

Same.

>  		/* clear bd buffer */
>  		qe_iowrite32be(0, &bd->buf);
>  		bd++;
>  	}
>  	/* for last BD set Wrap bit */
> -	qe_iowrite32be(cpu_to_be32(R_W), (u32 *)bd);
> +	qe_iowrite32be(R_W, (u32 __iomem *)bd);

Same.

>  	qe_iowrite32be(0, &bd->buf);
>  
>  	/* Set GUMR (For more details see the hardware spec.). */
> @@ -273,8 +266,8 @@ int ucc_slow_init(struct ucc_slow_info * us_info, struct ucc_slow_private ** ucc
>  	qe_iowrite32be(gumr, &us_regs->gumr_h);
>  
>  	/* gumr_l */
> -	gumr = us_info->tdcr | us_info->rdcr | us_info->tenc | us_info->renc |
> -		us_info->diag | us_info->mode;
> +	gumr = (u32)us_info->tdcr | (u32)us_info->rdcr | (u32)us_info->tenc |
> +	       (u32)us_info->renc | (u32)us_info->diag | (u32)us_info->mode;

Are the tdcr, rdcr, tenc, renc fields actually set anywhere (the same
for the diag and mode, but word-grepping for those give way too many
false positives)? They seem to be a somewhat pointless split out of the
bitfields of gumr_l, and not populated anywhere?. That's not directly
related to this patch, of course, but getting rid of them first (if they
are indeed completely unused) might make the sparse cleanup a little
simpler.

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
