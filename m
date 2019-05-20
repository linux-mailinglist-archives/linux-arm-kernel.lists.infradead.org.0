Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D54923C84
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 17:49:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FxChdtuTnCPF9lmp8sGsobIjMQ/s/oaVzrAfYID64Z4=; b=iwDifCwYRKYsNH
	SplmXfPFxNBTYpEPMtkVw2JlkWx0gLMLtcA37pkMe9res5I3mYgB1mH2aiOcOxYFW3dnzLSs2hYSE
	Dq5XodPZttUy8qQ44ysyE/VcGHWczt1QCZqUAEOWNtwRmo0stTPEggnNtKITh19d4LppRzG/Nds/P
	2v3gyznOf5be4pTFLz2SXZIpmJQOVtW8vegLyqvRNqlvuz7BmbuUtd8mzJ6PQ49ULf8atPADvrqRt
	aF++Nyi81WGRndCZ7OLrCigiy2Ro5aJsc8ZRVEfAttjZawnvRO7/PnfhqFtzVw3CY5HVCq+qkOPUo
	m+aXFqLvHo9W9yCUHLtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSkXH-0000FG-2u; Mon, 20 May 2019 15:49:11 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSkX8-0000EX-KD
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 15:49:04 +0000
Received: by mail-pg1-x543.google.com with SMTP id t187so6963263pgb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 08:49:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QFpmFkwPfpK4QifhWN1BadA/PBNjYiOBjDYO4Z/gfrU=;
 b=klIF7htybEJwE6Q126+cbgptyRZLkhF47QysvfGWMoKAN06piI1xdO/56Nif/l5zlQ
 z/247xEE3j0Fk12GoKr/m8GSjdIk6ZGLnjhqAfPjYhpLh1nq9vszkhXvqeuvL5yPUgJL
 172cAXvDDUi54+kRKFtyLHBR+3OaKJNZ/WtQcrEJhhxKfDXLxq7+wt3QI7FJYjkenoDr
 x6i5WjCjiKGSCirNPOoZvKbCzkdGmZNS+YhbUqqAFWyIT8db2mYD/Pl8fNKSi9Ln7XJr
 +pdKOpdfcm2bzODpbi67MVJg5kCGNJqfmaCM8yd/sgkj3jjheeVq6edpnQQGe9r6KKAZ
 R8/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QFpmFkwPfpK4QifhWN1BadA/PBNjYiOBjDYO4Z/gfrU=;
 b=EHvMI2FKhwbs23Ul9T3ugKr+cbgmXjcMVVBZ5qUu5EbR7ZVReX/1+jKkrjtBmqvon5
 y4RO0Q/3BEHbRVYAPApBbUnfoNGqW+4X8MV1/R9WyllmAc4ZBgfOBxbJfir0OE5EDx+0
 DWfsUdV/FdeM/xlA7Ror76jAqXuuom7a7XDzIXBTnMAzw/iOiVnh9lAxD4H4/ziXYtXV
 CEmGuW5VoBFjCXoD0swGBdjThPGY7nW3v0bKLAiyGxpneiIorKYsHMKaHD3StJL/EWlA
 zYYPy+lfOO3u+FOwCKXorOWFkqyxYZpmEEOo42sD1BoT/zs3+l7o8wT9P9xLmKduxCnI
 m0Og==
X-Gm-Message-State: APjAAAUaaFbEpFAxvHVpRBN4tHd+4N3guFfE0+Q/rIg/y2xrKqGbuFq/
 Cx1HYoRNXRIzoCgplxIBgyxDxQ==
X-Google-Smtp-Source: APXvYqwIA0fQeJewtrZCCggWUWQiyyg8jwb1kBLfxUcXdXqQ39LEz2IXO4LkKrXJkW2PPibRxtiQ4w==
X-Received: by 2002:a62:7995:: with SMTP id u143mr80904639pfc.61.1558367341183; 
 Mon, 20 May 2019 08:49:01 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id v81sm36496778pfa.16.2019.05.20.08.48.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 08:49:00 -0700 (PDT)
Date: Mon, 20 May 2019 08:49:26 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Alex Elder <elder@linaro.org>
Subject: Re: [PATCH 4/8] net: qualcomm: rmnet: don't use C bit-fields in
 rmnet checksum header
Message-ID: <20190520154926.GS2085@tuxbook-pro>
References: <20190520135354.18628-1-elder@linaro.org>
 <20190520135354.18628-5-elder@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520135354.18628-5-elder@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_084902_682439_3B40C698 
X-CRM114-Status: GOOD (  18.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
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

> Replace the use of C bit-fields in the rmnet_map_ul_csum_header
> structure with a single integral structure member, and use field
> masks to encode or get values within that member.
> 
> Note that the previous C bit-fields were defined with CPU local
> endianness.  Their values were computed and then forecfully converted
> to network byte order in rmnet_map_ipv4_ul_csum_header().  Simplify
> that function, and properly define the new csum_info member as a big
> endian value.
> 
> Make similar simplifications in rmnet_map_ipv6_ul_csum_header().
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Signed-off-by: Alex Elder <elder@linaro.org>
> ---
>  .../net/ethernet/qualcomm/rmnet/rmnet_map.h   |  9 ++--
>  .../ethernet/qualcomm/rmnet/rmnet_map_data.c  | 50 ++++++++-----------
>  2 files changed, 26 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> index a56209645c81..f3231c26badd 100644
> --- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> +++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> @@ -60,11 +60,14 @@ struct rmnet_map_dl_csum_trailer {
>  
>  struct rmnet_map_ul_csum_header {
>  	__be16 csum_start_offset;
> -	u16 csum_insert_offset:14;
> -	u16 udp_ip4_ind:1;
> -	u16 csum_enabled:1;
> +	__be16 csum_info;	/* RMNET_MAP_UL_* */
>  } __aligned(1);
>  
> +/* NOTE:  These field masks are defined in CPU byte order */
> +#define RMNET_MAP_UL_CSUM_INSERT_FMASK	GENMASK(13, 0)
> +#define RMNET_MAP_UL_CSUM_UDP_FMASK	GENMASK(14, 14)   /* 0: IP; 1: UDP */
> +#define RMNET_MAP_UL_CSUM_ENABLED_FMASK	GENMASK(15, 15)
> +
>  #define RMNET_MAP_COMMAND_REQUEST     0
>  #define RMNET_MAP_COMMAND_ACK         1
>  #define RMNET_MAP_COMMAND_UNSUPPORTED 2
> diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
> index 10d2d582a9ce..72b64114505a 100644
> --- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
> +++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
> @@ -207,22 +207,18 @@ rmnet_map_ipv4_ul_csum_header(void *iphdr,
>  			      struct rmnet_map_ul_csum_header *ul_header,
>  			      struct sk_buff *skb)
>  {
> -	struct iphdr *ip4h = (struct iphdr *)iphdr;
> -	__be16 *hdr = (__be16 *)ul_header, offset;
> +	struct iphdr *ip4h = iphdr;
> +	u16 offset;
> +	u16 val;
>  
> -	offset = htons((__force u16)(skb_transport_header(skb) -
> -				     (unsigned char *)iphdr));
> -	ul_header->csum_start_offset = offset;
> -	ul_header->csum_insert_offset = skb->csum_offset;
> -	ul_header->csum_enabled = 1;
> +	offset = skb_transport_header(skb) - (unsigned char *)iphdr;
> +	ul_header->csum_start_offset = htons(offset);
> +
> +	val = u16_encode_bits(skb->csum_offset, RMNET_MAP_UL_CSUM_INSERT_FMASK);
> +	val |= RMNET_MAP_UL_CSUM_ENABLED_FMASK;
>  	if (ip4h->protocol == IPPROTO_UDP)
> -		ul_header->udp_ip4_ind = 1;
> -	else
> -		ul_header->udp_ip4_ind = 0;
> -
> -	/* Changing remaining fields to network order */
> -	hdr++;
> -	*hdr = htons((__force u16)*hdr);
> +		val |= RMNET_MAP_UL_CSUM_UDP_FMASK;
> +	ul_header->csum_info = htons(val);
>  
>  	skb->ip_summed = CHECKSUM_NONE;
>  
> @@ -249,18 +245,16 @@ rmnet_map_ipv6_ul_csum_header(void *ip6hdr,
>  			      struct rmnet_map_ul_csum_header *ul_header,
>  			      struct sk_buff *skb)
>  {
> -	__be16 *hdr = (__be16 *)ul_header, offset;
> +	u16 offset;
> +	u16 val;
>  
> -	offset = htons((__force u16)(skb_transport_header(skb) -
> -				     (unsigned char *)ip6hdr));
> -	ul_header->csum_start_offset = offset;
> -	ul_header->csum_insert_offset = skb->csum_offset;
> -	ul_header->csum_enabled = 1;
> -	ul_header->udp_ip4_ind = 0;
> +	offset = skb_transport_header(skb) - (unsigned char *)ip6hdr;
> +	ul_header->csum_start_offset = htons(offset);
>  
> -	/* Changing remaining fields to network order */
> -	hdr++;
> -	*hdr = htons((__force u16)*hdr);
> +	val = u16_encode_bits(skb->csum_offset, RMNET_MAP_UL_CSUM_INSERT_FMASK);
> +	val |= RMNET_MAP_UL_CSUM_ENABLED_FMASK;
> +	/* Not UDP, so that field is 0 */
> +	ul_header->csum_info = htons(val);
>  
>  	skb->ip_summed = CHECKSUM_NONE;
>  
> @@ -400,8 +394,7 @@ void rmnet_map_checksum_uplink_packet(struct sk_buff *skb,
>  	struct rmnet_map_ul_csum_header *ul_header;
>  	void *iphdr;
>  
> -	ul_header = (struct rmnet_map_ul_csum_header *)
> -		    skb_push(skb, sizeof(struct rmnet_map_ul_csum_header));
> +	ul_header = skb_push(skb, sizeof(*ul_header));
>  
>  	if (unlikely(!(orig_dev->features &
>  		     (NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM))))
> @@ -428,10 +421,7 @@ void rmnet_map_checksum_uplink_packet(struct sk_buff *skb,
>  	}
>  
>  sw_csum:
> -	ul_header->csum_start_offset = 0;
> -	ul_header->csum_insert_offset = 0;
> -	ul_header->csum_enabled = 0;
> -	ul_header->udp_ip4_ind = 0;
> +	memset(ul_header, 0, sizeof(*ul_header));
>  
>  	priv->stats.csum_sw++;
>  }
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
