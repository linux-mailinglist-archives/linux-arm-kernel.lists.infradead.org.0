Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1742DC756
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 16:29:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tN6qRnKk/RLJeihVuxjkPMndPshrcZSqB8dLQKfjsfc=; b=eKRtxKkedjUK3j
	h5NU95TjJLTH3av7r037B49WZL7jh1Hk/M7LNZFYxpr/CAWmrcDnwepnFvt7iHKbc30ehl9Dpk+3W
	7tYyzXttTA2yv2DrLLnFH9eWyPs4LAWFP/MO9FwHkyaPxGNLK/SKqmiE+t220Pp2bCUTyfxo/HMSe
	6dEeB6EGsHTT8lEu0NQhLu9oWgpT+BhB9NAjTSAEQyLj3HsVT9jeYG7+ansnPPwHYFXEM5xYih/s0
	I0A7RwGEHjHQK+tyZwWPBR+K9lgVHf1nDmszxPFO03CsfSesGipBUDDSIJo43oqwa8b6SsHmf7PsR
	TjX5miWZTlbWn4A93Shg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLTFy-0002MH-Mo; Fri, 18 Oct 2019 14:29:30 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLTFp-0002Ls-Q7
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 14:29:23 +0000
Received: by mail-wm1-x344.google.com with SMTP id m18so6338755wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 07:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5ptchJ9UA22jxDJh3Bd/EUwZqE/aEbLVu7JuDoUNaVo=;
 b=Yg7fL+tE/kvtd8TqGdv5DyItEgy/SQ6F5leKmV64MKRBGuxFXM91r752kNg19q1/6H
 U8HZR8HW03LFU1LVJUD3qGeu4NDOKSGdC0DmvR84qWQbYHhGHcltRYt74op6dOPN+Jtl
 tm3A1levUg0YRkb8ZXcZRDYBMBB82OyU66xxUiNWz2qDtyyhEBGFCR5dglDj8r8Sd+Dr
 A1oa6NtHjvgDmkVwlkGBZbbhSUO3odjCbp0DES+hNUdDMFjLOZ166/B0Y2mFD40K2PZG
 Tep3KgOfiUpN9R5jXoQSUxCTaRTgrfikKqeJ80iPnFfKyVPgPmq1t1QT8s05EaedDoEp
 2sSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5ptchJ9UA22jxDJh3Bd/EUwZqE/aEbLVu7JuDoUNaVo=;
 b=VZ7vsx2rgNDBRPfi0FwV25xSbJui2QlyIDdtp3zFROrJRU0tgwYGusYnStZweNVJ0d
 /gE6kbqi+inK4IMv8psQMWRgoxBtmBW46zvQRYyicRsV9UNVbuDcav3xkllouPp9AdKC
 8ConmKOQ231JWr5pNv8Agy2rHeSkGHZawIauOh9E1bG3uI2FeAc7MYXAcrTUpnL4OMIz
 sg894ulUXNqE3A1+++a+RDqknq9PxOqERLehD+EZFM587Uql/kN6th7AFWCHdQeGlQQ6
 eO1kGOGNiRtJUvgaCbcVN6HOfeX9gYF4HP+Eu2xq9AOcDGKQm/SnuMnNGP9ha3nzN+Hq
 KjKg==
X-Gm-Message-State: APjAAAXdnPC7LI5x5J1hJyDEZxPasM8Pl6JhO0y/YGsBUzwFVzunoQDP
 5d0yTgcHdWwi+ADp5J7/0Ks=
X-Google-Smtp-Source: APXvYqy2l6Z4/hxK2/QCsvDc78zWIYq2fO4nyiQ6TsMaLbtrWVUvnVhhlqCC8bd4O5M+y1JjnG11/Q==
X-Received: by 2002:a1c:5946:: with SMTP id n67mr8222592wmb.93.1571408959942; 
 Fri, 18 Oct 2019 07:29:19 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id 36sm6791136wrp.30.2019.10.18.07.29.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 07:29:19 -0700 (PDT)
Date: Fri, 18 Oct 2019 16:29:17 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Mans Rullgard <mans@mansr.com>
Subject: Re: [PATCH] net: ethernet: dwmac-sun8i: show message only when
 switching to promisc
Message-ID: <20191018142917.GA26078@Red>
References: <20191018140514.21454-1-mans@mansr.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018140514.21454-1-mans@mansr.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_072921_873422_3CC88EAD 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Jose Abreu <joabreu@synopsys.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 03:05:14PM +0100, Mans Rullgard wrote:
> Printing the info message every time more than the max number of mac
> addresses are requested generates unnecessary log spam.  Showing it only
> when the hw is not already in promiscous mode is equally informative
> without being annoying.
> 
> Signed-off-by: Mans Rullgard <mans@mansr.com>
> ---
>  drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
> index 79c91526f3ec..5be2de1f1179 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
> @@ -646,7 +646,8 @@ static void sun8i_dwmac_set_filter(struct mac_device_info *hw,
>  			}
>  		}
>  	} else {
> -		netdev_info(dev, "Too many address, switching to promiscuous\n");
> +		if (readl(ioaddr + EMAC_RX_FRM_FLT) != EMAC_FRM_FLT_RXALL)
> +			netdev_info(dev, "Too many address, switching to promiscuous\n");
>  		v = EMAC_FRM_FLT_RXALL;
>  	}
>  

You need to mask the result, if EMAC_FRM_FLT_MULTICAST | EMAC_FRM_FLT_RXALL is set, you will still print the message.
Or shorter than masking, !(readl(ioaddr + EMAC_RX_FRM_FLT) & EMAC_FRM_FLT_RXALL)

I just realize that perhaps we need to set also IFF_PROMISC in dev->flags.

Thanks
Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
