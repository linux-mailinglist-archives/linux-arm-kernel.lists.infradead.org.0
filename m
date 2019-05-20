Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F7B23E32
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 19:17:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vV9NYzaLK7DjCGTKUQInLX0aTf2v2A2hn4ogFFRwXm8=; b=Fol3hJxrzQf3qe
	Dw5+9+dHTdCyku60mc2rFNeZGLLeLBxmd0U1RUiuDBhbRmLQhpcw8gLmeQP7q0SHcuKj7qk4b2bwX
	b2Kne3Z84xBT6i0mYopnA9hxV6cqzeF8l7oafFTeEbA8wN66+Px9OXR8ImpfsiiZEzqd6S4XNIxpD
	I1Qw12Uc17zKhXNCHf3DbTveKftaqJJMfXEp+N6XkUUk1M1uU0VZV3TOuQu4G1OONQcRt+m3tqXnW
	xxhXuy5IFmTN46cLXZjj2n18fpgRc975NoWXdLA+U5U2Nv0iqY5zFrK11B5j3NeiJ2EMtcVYL+bEf
	xHQUTRQalUDa0NYhj5dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSlub-00047T-Au; Mon, 20 May 2019 17:17:21 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSluT-00046a-J9
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 17:17:14 +0000
Received: by mail-pl1-x643.google.com with SMTP id w7so7027130plz.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 10:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ScUZ/xpgU2aTY1Nb5OViipRU9LRxmOkzl5eEkgamu+4=;
 b=u/hk7dvb2PAmI5IFI5yr57lW7tUAYqA5xkIZlFRA5Iv/dRJt+p39pMkD0Bbt5qf4xm
 Ytjuma54OmHG5jIU3bN5wO/eY8VWRtz0gJlwP6zFmUgNcYs+mH6Wj84zJgnnEt+xtn8Y
 VHxtGaYR2PRh6e/C0ppGWI+o87sfWKSQZr81kvBh5mmB9bbMed3sf/+93nClSlMc0Wq5
 PrH18U4Q6YvGpYLGx+O3rkDw77jUQ1FUjjDKpN3+cDiUp//siqAyubcvryZIFP4kSKnw
 +uKYUBZOwsvbFWWxAJ4ClKclBe4NPg6OZZS166JxwXbmTRur4MYX2NdkwpLfrOunPAjC
 5Hwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ScUZ/xpgU2aTY1Nb5OViipRU9LRxmOkzl5eEkgamu+4=;
 b=FtEIa9cMRzyZ2yZpHEbj1H2/4T//AcTu+OB7Zud4nghAWZb2nyCKa4COzOXbk53cOu
 nq73OPz8GgLtikpSztE7zcod7Vnax5c3oefZG6ntkeUvrxnWlixnNdI4Thp7mTWfJQjl
 VXb4Coqwp2E4YA9FiJvUJJTxT3CAE5cl4IJM2lgEHaH6bb2XdIo0ZSl2Cpd/d9yQX2nH
 erE8F/O46pNhTuQR6GQTsufkhaCUBN0fSAPalX2AVW3mRAn0wVgZBBhwHG60wz/9xfCm
 ipF6rk+6TJ8X8X4hqKUd7NS2J6d0Kfdoy1Gz3J51iq1kzlAKgry2AArq+Mdb2fj5A3gp
 52Hw==
X-Gm-Message-State: APjAAAXDhoWVDQVnPa9btQ8dy/pevSjfFNQRESn/cUTcpppekdAjdcO4
 sUNGAIp/0fFe6B1gEPRqw97s4w==
X-Google-Smtp-Source: APXvYqxJH9e/9PMebXHaD9faSRZhhWJCU9i4asOXuPPssxo8pt9GHh9pom+TaB6TkWIjSBUjbqJe9Q==
X-Received: by 2002:a17:902:24c7:: with SMTP id
 l7mr27347835plg.192.1558372632896; 
 Mon, 20 May 2019 10:17:12 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id m12sm15083945pgi.56.2019.05.20.10.17.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 10:17:12 -0700 (PDT)
Date: Mon, 20 May 2019 10:17:39 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Alex Elder <elder@linaro.org>
Subject: Re: [PATCH 6/8] net: qualcomm: rmnet: get rid of a variable in
 rmnet_map_ipv4_ul_csum_header()
Message-ID: <20190520171739.GU2085@tuxbook-pro>
References: <20190520135354.18628-1-elder@linaro.org>
 <20190520135354.18628-7-elder@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520135354.18628-7-elder@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_101713_632357_48F716EA 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

> The value passed as an argument to rmnet_map_ipv4_ul_csum_header()
> is always an IPv4 header.  Just have the type of the argument
> reflect that rather than obscuring that with a void pointer.  Rename
> it to be consistent with rmnet_map_ipv6_ul_csum_header().
> 
> Signed-off-by: Alex Elder <elder@linaro.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
> index a95111cdcd29..61b7dbab2056 100644
> --- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
> +++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
> @@ -203,26 +203,25 @@ static void rmnet_map_complement_ipv4_txporthdr_csum_field(void *iphdr)
>  }
>  
>  static void
> -rmnet_map_ipv4_ul_csum_header(void *iphdr,
> +rmnet_map_ipv4_ul_csum_header(struct iphdr *ip4hdr,
>  			      struct rmnet_map_ul_csum_header *ul_header,
>  			      struct sk_buff *skb)
>  {
> -	struct iphdr *ip4h = iphdr;
>  	u16 offset;
>  	u16 val;
>  
> -	offset = skb_transport_header(skb) - (unsigned char *)iphdr;
> +	offset = skb_transport_header(skb) - (unsigned char *)ip4hdr;
>  	ul_header->csum_start_offset = htons(offset);
>  
>  	val = u16_encode_bits(skb->csum_offset, RMNET_MAP_UL_CSUM_INSERT_FMASK);
>  	val |= RMNET_MAP_UL_CSUM_ENABLED_FMASK;
> -	if (ip4h->protocol == IPPROTO_UDP)
> +	if (ip4hdr->protocol == IPPROTO_UDP)
>  		val |= RMNET_MAP_UL_CSUM_UDP_FMASK;
>  	ul_header->csum_info = htons(val);
>  
>  	skb->ip_summed = CHECKSUM_NONE;
>  
> -	rmnet_map_complement_ipv4_txporthdr_csum_field(iphdr);
> +	rmnet_map_complement_ipv4_txporthdr_csum_field(ip4hdr);
>  }
>  
>  #if IS_ENABLED(CONFIG_IPV6)
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
