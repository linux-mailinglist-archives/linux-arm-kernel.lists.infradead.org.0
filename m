Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E31FD23E2C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 19:17:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uG6HbShudQFLkwoUzPYELucwsdT4IBXvPMYsQZY3J1E=; b=MklcW9P5gzj/rO
	ZRPrrcwIhFHGXON3Pj1ypjLkZPW67tksolsmSjFLZMpi25sUZlxNEgrMdX6dCT9MfEUjLD7nI9uqV
	yqvgOYK77B1qsTG4ksoYvH6N0VohtAF60z3v0y3ahUYDgOQ1xP0Gx74p/9P4XA02VMvD9bvI8doT5
	li0TjqwQMjaOJyjVdysrBoE1Bvt2PHMgsb5FixZ2l8t5/vwTYFST28GAfjvU2eKAf6fOUH3wsbN7i
	LW0sJZsUY9tWqFOBC3N/v065KQ6jnVwjO5nY9QJBBmM8QAoWjHDzkEI3hibgaXRDaxj53sWFPuq6z
	toV0TbkCEkRuK3bZofEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSluD-0003rf-TI; Mon, 20 May 2019 17:16:57 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSlu6-0003rC-Fs
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 17:16:51 +0000
Received: by mail-pl1-x644.google.com with SMTP id a5so6984870pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 10:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=iwBrfv8lZFcLQJuxEQw4ryA9Pff87UGYkKvp+WEgsEM=;
 b=lpTOQ2YJyCoLaJJB1b8QOSENRFwkKM327cgj2dBLR9wrw8omPdmlro1U9lE+oIi6P7
 yPmIzEDmxXpRE6Oaq/E5tzP/l9NlxSLr+46FQxLum+ADFyzOIG7KZ3zjBOv86Ob+FItx
 8Xlz0OotmjSrOjY6KfRKZNtlL4QD8cbU/Ate7u2lR9fBPSE+3m4BN0J2pUGQYf0kbmN5
 98dzhl4mSfgJJMlq1t4qKNwHPB+8c0eEJRsw7Z+/2adDIX41xYKui6sB5gK62meYgh4H
 gsUwPwPTvicMjZmivGRy5Udcz896i9ESJNmmg/+zyhHErJ5KL6xqBCHVXEMc9mUcrPH3
 uz+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iwBrfv8lZFcLQJuxEQw4ryA9Pff87UGYkKvp+WEgsEM=;
 b=SBeRc4cH1K6bCPMHnBHn7qwe850cp5LcdS1omVW0J/ffG6nmiszHDOcd1HpiDj+q+S
 ElbKKv0sW+5uw+Dfc54a1camAJJYhjEgb5jSkEsjI51I8Zu6hSQ21LoS7/cb/icPf4rY
 Vkct3ERR04aoDR65dhGB+oqFd1aXH2STA90yX928EomhXICM52KIKJNE0brSUMb8azNC
 aEzFd4QIqmOqPmD33bf4kWpss/Ih9mF/as9sZ0CUQiMymQk6nIss42J0ziiUtqX7GdbO
 o+IY3naH/UUd91aY+Z8Vzete/81IjSfRVpxEDb20mLlcbd0BHmERkFWStpi3I2HeBRvS
 Jc0g==
X-Gm-Message-State: APjAAAXjUPSwCDGc5ttpUJxFy/CLFin/rOE1iVapQ5MQaoYelvxRD8NK
 9yDe+P0Z5ldD313XmL0MX2vyaQ==
X-Google-Smtp-Source: APXvYqyslm8OFC6kUCHeQjqmxsMsjLor8sCUEgRqtD7u5g54KFiDZBgk+XcT4LC673o+vHPybVpW+w==
X-Received: by 2002:a17:902:b495:: with SMTP id
 y21mr12215537plr.243.1558372609685; 
 Mon, 20 May 2019 10:16:49 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id y25sm27453653pfp.182.2019.05.20.10.16.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 10:16:48 -0700 (PDT)
Date: Mon, 20 May 2019 10:17:15 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Alex Elder <elder@linaro.org>
Subject: Re: [PATCH 5/8] net: qualcomm: rmnet: don't use C bit-fields in
 rmnet checksum trailer
Message-ID: <20190520171715.GT2085@tuxbook-pro>
References: <20190520135354.18628-1-elder@linaro.org>
 <20190520135354.18628-6-elder@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520135354.18628-6-elder@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_101650_562437_F773DB9C 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: syadagir@codeaurora.org, ejcaruso@google.com, arnd@arndb.de,
 netdev@vger.kernel.org, ilias.apalodimas@linaro.org,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, david.brown@linaro.org,
 agross@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, subashab@codeaurora.org, davem@davemloft.net,
 cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 20 May 06:53 PDT 2019, Alex Elder wrote:

> Replace the use of C bit-fields in the rmnet_map_dl_csum_trailer
> structure with a single integral field, using field masks to
> encode or get at sub-field values.
> 
> Signed-off-by: Alex Elder <elder@linaro.org>
> ---
>  drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h      | 6 ++++--
>  drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c | 2 +-
>  2 files changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> index f3231c26badd..fb1cdb4ec41f 100644
> --- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> +++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> @@ -51,13 +51,15 @@ struct rmnet_map_header {
>  
>  struct rmnet_map_dl_csum_trailer {
>  	u8  reserved1;
> -	u8  valid:1;
> -	u8  reserved2:7;
> +	u8  flags;		/* RMNET_MAP_DL_* */
>  	u16 csum_start_offset;
>  	u16 csum_length;
>  	__be16 csum_value;
>  } __aligned(1);
>  
> +#define RMNET_MAP_DL_CSUM_VALID_FMASK	GENMASK(0, 0)
> +#define RMNET_MAP_DL_RESERVED_FMASK	GENMASK(7, 1)

I presume that the reserved define won't ever be referenced, but it's
good to have it "documented".

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> +
>  struct rmnet_map_ul_csum_header {
>  	__be16 csum_start_offset;
>  	__be16 csum_info;	/* RMNET_MAP_UL_* */
> diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
> index 72b64114505a..a95111cdcd29 100644
> --- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
> +++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
> @@ -362,7 +362,7 @@ int rmnet_map_checksum_downlink_packet(struct sk_buff *skb, u16 len)
>  
>  	csum_trailer = (struct rmnet_map_dl_csum_trailer *)(skb->data + len);
>  
> -	if (!csum_trailer->valid) {
> +	if (!u8_get_bits(csum_trailer->flags, RMNET_MAP_DL_CSUM_VALID_FMASK)) {
>  		priv->stats.csum_valid_unset++;
>  		return -EINVAL;
>  	}
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
