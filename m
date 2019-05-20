Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDD623C72
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 17:43:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4g279Z/tox+D6tv+p0jJ6l8EnIqiT+yQWpJmQSc/DA=; b=QC7fGvag7rHdY5
	Nek6smbw+cKPbcZC1vK4LiHSRvgG4brufgFV6e+1RZlGtBp2fl5S9Mm1d0dDEoCIfHyWX3fnfOf+P
	Sgs9MzfO1EYgvJg5aNbLD+LJV5RGIX1rjGZy8c+++i3ALKEvU/W0Yc9ICVh7rdTQy2lX+2RFemS8+
	wmN5oBG4tq1s9eguVJXnmAHTSQeSVwoTV2b6oVzX+LHyFFskYV/etbCIXbeF+2+SXc2Ii1Pidm8xG
	ideFE8PX6SWu0wXFbw0W8nlB5gz5jwuK1RSpUSPgZPLGtDdVZyNqPvo+eRJZ8fwAcAFnMJTtsexX7
	aej0fol/aJ3vxRKW3jUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSkRZ-0006yH-8V; Mon, 20 May 2019 15:43:17 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSkRS-0006xr-HM
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 15:43:11 +0000
Received: by mail-pl1-x642.google.com with SMTP id p1so1519619plo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 08:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dSszR7FrS692VH1z85mprElPR4g7J+3WPMn0YI2hzUI=;
 b=HSS0bspW251VHBhx+bFWcDCC75vF9KJwGQzVTl9d4San6LcNcwdYICYfpp794IKztA
 FnI+z4SX2Q+CznDpIdXTgBbDMmt05+kCyS6BqDHY+2XEaBwnNzZ8HOM5tdcbZh9zZ7t1
 PqJPxNW/EmMHcCzpoXDTeT8y9wyQpaFs3Bn15wIzeuASXGu1ZSC+h45ZKKphgYIormmx
 IvlwPSQAkPUniEuwUi58BWkT7XL7e0QPFg+aHKbUl1T2n+bLyW0+RHMsN9QaBrrjueOm
 2stUFYKEvT0rkuAMuiP2bYQA9JkA4D2HmkEf+17aP/iDhT/oFW6LZz/zyVFeahHcwkGS
 nqTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dSszR7FrS692VH1z85mprElPR4g7J+3WPMn0YI2hzUI=;
 b=S3VCnof7VEnhAsq+vlLVn0uBGwfrRwZerXht7E7y7qXTNtkHkdOd7tcJ1GfMwgfwp+
 24tfLs03+wzLUfVLxqtn3+tOezghb1zxRXrFYL5+DULRtaJvyZizoOfOaR2gbMn1eu90
 fJe/nFsNn6jrDZtnaPzbXvJ8RigknOaaGrk2f91vQPcSa0BwBqXgy1AWDXRLw8Pu1wGE
 BcUTPDLN6C8zwCNeK9MuFT49MGx5CcFYDh0ohDrjopn165IvTRk7U/RYnzl3pF/na2Tk
 aVQRAzkCvePr1GTNBQ3z+nwqV1gU23cggcMaxh4OT9aCCSGSG3CcQptexGjfbuflUJxF
 E3dA==
X-Gm-Message-State: APjAAAXIr+OHYtmBnxHVQ89m02hz12n04wZg5CejBioiWEDhRa/qTfzc
 dn2Gp9677us4KfpLVYeHNeLeX38ONxE=
X-Google-Smtp-Source: APXvYqycTna/AM0jQoiDLo0k1zmLzle59j2ZRtnmZwWIASAjkruy8oLXgvEcXBUk0hCRZBVN+OFylw==
X-Received: by 2002:a17:902:7002:: with SMTP id
 y2mr76588597plk.75.1558366989673; 
 Mon, 20 May 2019 08:43:09 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id e14sm21365631pff.60.2019.05.20.08.43.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 08:43:09 -0700 (PDT)
Date: Mon, 20 May 2019 08:43:36 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Alex Elder <elder@linaro.org>
Subject: Re: [PATCH 3/8] net: qualcomm: rmnet: use field masks instead of C
 bit-fields
Message-ID: <20190520154336.GR2085@tuxbook-pro>
References: <20190520135354.18628-1-elder@linaro.org>
 <20190520135354.18628-4-elder@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520135354.18628-4-elder@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_084310_582111_D92FDCBE 
X-CRM114-Status: GOOD (  18.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

> Using C bitfields (e.g. int foo : 3) is not portable.  So stop
> using them for the command/data flag and the pad length fields in
> the rmnet_map structure.  Instead, use the functions defined in
> <linux/bitfield.h> along with field mask constants to extract or
> assign values within an integral structure member of a known size.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Signed-off-by: Alex Elder <elder@linaro.org>
> ---
>  drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c | 5 +++--
>  drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h      | 8 +++++---
>  drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c | 5 ++++-
>  3 files changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c b/drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c
> index 4c1b62b72504..5fff6c78ecd5 100644
> --- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c
> +++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c
> @@ -13,6 +13,7 @@
>   *
>   */
>  
> +#include <linux/bitfield.h>
>  #include <linux/netdevice.h>
>  #include <linux/netdev_features.h>
>  #include <linux/if_arp.h>
> @@ -70,7 +71,7 @@ __rmnet_map_ingress_handler(struct sk_buff *skb,
>  	u16 len, pad;
>  	u8 mux_id;
>  
> -	if (map_header->cd_bit) {
> +	if (u8_get_bits(map_header->cmd_pad_len, RMNET_MAP_CMD_FMASK)) {
>  		if (port->data_format & RMNET_FLAGS_INGRESS_MAP_COMMANDS)
>  			return rmnet_map_command(skb, port);
>  
> @@ -78,7 +79,7 @@ __rmnet_map_ingress_handler(struct sk_buff *skb,
>  	}
>  
>  	mux_id = map_header->mux_id;
> -	pad = map_header->pad_len;
> +	pad = u8_get_bits(map_header->cmd_pad_len, RMNET_MAP_PAD_LEN_FMASK);
>  	len = ntohs(map_header->pkt_len) - pad;
>  
>  	if (mux_id >= RMNET_MAX_LOGICAL_EP)
> diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> index a30a7b405a11..a56209645c81 100644
> --- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> +++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> @@ -40,13 +40,15 @@ enum rmnet_map_commands {
>  };
>  
>  struct rmnet_map_header {
> -	u8  cd_bit:1;
> -	u8  reserved_bit:1;
> -	u8  pad_len:6;
> +	u8  cmd_pad_len;	/* RMNET_MAP_* */
>  	u8  mux_id;
>  	__be16 pkt_len;
>  }  __aligned(1);
>  
> +#define RMNET_MAP_CMD_FMASK		GENMASK(0, 0)   /* 0: data; 1: cmd */
> +#define RMNET_MAP_RESERVED_FMASK	GENMASK(1, 1)
> +#define RMNET_MAP_PAD_LEN_FMASK		GENMASK(7, 2)
> +
>  struct rmnet_map_dl_csum_trailer {
>  	u8  reserved1;
>  	u8  valid:1;
> diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
> index 498f20ba1826..10d2d582a9ce 100644
> --- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
> +++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
> @@ -13,6 +13,7 @@
>   *
>   */
>  
> +#include <linux/bitfield.h>
>  #include <linux/netdevice.h>
>  #include <linux/ip.h>
>  #include <linux/ipv6.h>
> @@ -301,7 +302,9 @@ struct rmnet_map_header *rmnet_map_add_map_header(struct sk_buff *skb,
>  
>  done:
>  	map_header->pkt_len = htons(map_datalen + padding);
> -	map_header->pad_len = padding & 0x3F;
> +	/* This is a data packet, so cmd field is 0 */
> +	map_header->cmd_pad_len =
> +			u8_encode_bits(padding, RMNET_MAP_PAD_LEN_FMASK);
>  
>  	return map_header;
>  }
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
