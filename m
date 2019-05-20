Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B16A23C50
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 17:38:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EbC9R1SET2C/+e12FPBLbARImSe3oGPezqfZSgMfq28=; b=txy0UZB2y8O9I6
	GAe27i2LAdGRpbOP/Jy/dPG1eXuj//OBZYSM9A2bIqwyiy0EoJpub8CrPPE/QqCDcHpCzDLSBa/ZC
	NJvtBwwui0p+TxRsm5oIXBOdvtOSSCKFYr+0wy0ypJOzBmIWYydUrT0Lu9ZQIfFeHi0/AKtdaXcuy
	1AngqQi83Qiplfjthj4MKqU92jzLEwH/pZnlcWNc+6J76pfaXqDeLzbmdJZ051cpa8j/TP9loPQWl
	+EJlNNwDLhI5eLq9P4GZaSY2RJg36t6bmtPU78bU6Yxz/XIg55N17bWsLrc4W2xe3DqZQZQp6TPcK
	Gyfz1YiSwrO5MTWxfjag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSkMx-0004jV-14; Mon, 20 May 2019 15:38:31 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSkMo-0004iZ-OE
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 15:38:24 +0000
Received: by mail-pf1-x443.google.com with SMTP id u17so7410643pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 08:38:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uCWJzdwhd+1tcKYTw9hbwn1gSRk4OfXO/IfxBU/gQqU=;
 b=RitRrcORQKf+bf+V7kUhKt/VteE8EfoRgt6oDx2NkazjO092KWhyXfIY8cz5KRbghJ
 DcRA19lvMkL8cE+Tgz+8inpbO252vrn1vn6b2VC6u28Gb3mVoCTriA0eX6wvYkfem+SZ
 Ls/RvRHjLd28SZWWXGdgUP0zwz6+cvcXx+TMYCcpvMsx/ea99XtJ6rh89MVMTzrSz9s7
 r+R7cw5ZPYHyN0abG/lwThCl+sJ8q8dF9i0O1fM+4q9hxOdEaXry7Q71Uc+PbqX1e78U
 t8niY6F3SXz43iWmsZqeTGTxte2bKw5nYdNQCKBqLm0xBvCygJRBgg93g6c3lVMBJxWp
 jWwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uCWJzdwhd+1tcKYTw9hbwn1gSRk4OfXO/IfxBU/gQqU=;
 b=ESWsicuUfDZXdBN91mn+PLccM/VlOmFWpEl+h/oww9kq9q6EZZ5olCczTeLThGR1AX
 cbbh8dFADMGQNgeKCYwblsL46N5mrs1QjK0YfwCNaNm3K/3i+DkdOJyGtozxchx/aVoS
 vriqJ8jWR6UIohuzuECXdrTTecaiLG49MUpaIJL/DIf9C1RaZbkHbG1dzOUqmwiDpET9
 nepHF9I4jeVCdaF/Px1FzzlcVh6RwNnOS/PQ1msXqkWjbdEig5mIqR6ghRE1y/+4XY1o
 9xWRcyK7oeFO49T6kgVdwfNtL4+IINthwNf2iLDc6BcC8wtka7j0Y4szyBEgBjURRz/9
 KOBA==
X-Gm-Message-State: APjAAAVhBQQp+GurcNkeayT8d/1V2IOxpn04dnIx+VgcvqwJJRQsJkte
 +zCeNRLrPO4Ph8HLQHDY50dsYA==
X-Google-Smtp-Source: APXvYqz3pl2TAuMTOYMc3sgPvfPgTTg/TRNOne3MjnLr9w2cCjHNOmjNjfTZKgGDGgKwzoKkFxJEhg==
X-Received: by 2002:a65:60c7:: with SMTP id r7mr73970975pgv.22.1558366700866; 
 Mon, 20 May 2019 08:38:20 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id e10sm37179794pfm.137.2019.05.20.08.38.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 08:38:20 -0700 (PDT)
Date: Mon, 20 May 2019 08:38:47 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Alex Elder <elder@linaro.org>
Subject: Re: [PATCH 1/8] net: qualcomm: rmnet: fix struct rmnet_map_header
Message-ID: <20190520153847.GP2085@tuxbook-pro>
References: <20190520135354.18628-1-elder@linaro.org>
 <20190520135354.18628-2-elder@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520135354.18628-2-elder@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_083822_803466_58B8F4F8 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

> The C bit-fields in the first byte of the rmnet_map_header structure
> are defined in the wrong order.  The first byte should be formatted
> this way:
>                  +------- reserved_bit
>                  | +----- cd_bit
>                  | |
>                  v v
>     +-----------+-+-+
>     |  pad_len  |R|C|
>     +-----------+-+-+
>      7 6 5 4 3 2 1 0  <-- bit position
> 
> But the C bit-fields that define the first byte are defined this way:
>     u8 pad_len:6;
>     u8 reserved_bit:1;
>     u8 cd_bit:1;
> 
> And although this isn't portable, I can state that when I build it
> the result puts the bit-fields in the wrong location (e.g., the
> cd_bit is in bit position 7, when it should be position 0).
> 
> Fix this by reordering the definitions of these struct members.
> Upcoming patches will reimplement these definitions portably.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> Signed-off-by: Alex Elder <elder@linaro.org>
> ---
>  drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> index 884f1f52dcc2..b1ae9499c0b2 100644
> --- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> +++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> @@ -40,9 +40,9 @@ enum rmnet_map_commands {
>  };
>  
>  struct rmnet_map_header {
> -	u8  pad_len:6;
> -	u8  reserved_bit:1;
>  	u8  cd_bit:1;
> +	u8  reserved_bit:1;
> +	u8  pad_len:6;
>  	u8  mux_id;
>  	__be16 pkt_len;
>  }  __aligned(1);
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
