Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D9323E3A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 19:17:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4VcQOx1qrjPZ1NspyYYcTmPHNaVd6Ew86FyfJNT8GMg=; b=cWscQ1YQHpWia9
	RfXnVcWF+5xfUPe52lyQ+X5rMjKDJ801afIs5EFhHjKFqjssZvZJzbykrBJeMGvP/Jvmg/+zrHKdS
	H8kokZF8zxv7CS2dAX/jgJWl9fCGRj6IO9NxYT5RdrfmzwAyirz2HvNfW0ei2Vfq4FpeIUmEywEA1
	CN0blDo20VMSfZPfGEAB0W745rVDLeZQX6IpvJXjCboF2hfir5dKWqnrjHU345rebx6D9FrEAtTbB
	6WFsNOCDzEzEWviZ0wdf6Avw23YhGYdMulqzrJ+0zUktOFGPpC9MFzDzq0eRXqqt8YYZdliOrjvUv
	nbmHeDVeC5LQxUuK2GPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSlut-0004Nb-Mk; Mon, 20 May 2019 17:17:39 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSluk-0004Lx-Du
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 17:17:32 +0000
Received: by mail-pf1-x444.google.com with SMTP id t87so7546038pfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 10:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kLaahNyJDteVyYuPA7Hla97IH5sQOygePiHnSOoUkeI=;
 b=Gtvzu97z445O6uGMv89N2dLIETQ6JHu7Eiq7PzToKyLQWKd6wkhHcrBk9W92NMFlA4
 kaOWpbZQVcmdUezlkfmTeOOWYhPmSdJcghDhT5g52EXJpVKuTnSiN4AM72bigV+4lGml
 QHytfAYDR1ehxN+QQLnLAqEycy6gthhkkXmWO6cF3rC5S/VtffoEH5eGJqMfh2Bf2bgm
 TxbSb//JuVfke9SWMtaeFOH4sxXrEgmw4LsnRjOUJ+5vELTlwrGUy4UDjWUysfMvuPFu
 PUYwNuunDIRwfF7jiPhjSxy/BaKYD9GTZr91pPrbmNj0QnJKukztFzH2vh7Btx+L8TGR
 iK1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kLaahNyJDteVyYuPA7Hla97IH5sQOygePiHnSOoUkeI=;
 b=J5OQ2FIuSS4/LUig3qNjpBhhQYZq+GJtqxYRpW87nctunVsQFsznrSFeDOV9ZHAcag
 25k/8JmqUBbXuyWFOduxAqH+M+yN9rRrjziTwp+D48VLsVrV3lu7+izCmvHPa0m1jzEu
 BTeaoxYJoWiBBY/GRr9VT7zgLSqnEPCGUGNEPVvzv8sH0us7HApKfZAiJ8MvDnjdk72W
 WX2kDSBXiLrUm3ue3WeHoWDZ0Lp4aEPHxrkbUG4zhbpXyrXItzgovseef9zPP2uL/u3N
 DIuX14vwYIuSb9H6wnNYfaGaoaq01MULWr709hY6yLhpJpR8T7kXQMg1U4hgj9OKHSct
 YGVA==
X-Gm-Message-State: APjAAAX4R0p1uW/tb66w4i2hkvdWGIN9P1/aD3EPQYsXcIOf5E/TGFaF
 XF0TDATRKxiVFAhbikSz1GMnkQ==
X-Google-Smtp-Source: APXvYqzruiPOXwGzgF8V1G8Uxb9II5ATN51r8f8i36ba81jTt8MDQUaa04iy6oDfh4Yo19Y5yJ412g==
X-Received: by 2002:a62:75d8:: with SMTP id q207mr49266275pfc.35.1558372649589; 
 Mon, 20 May 2019 10:17:29 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id t25sm30364229pfq.91.2019.05.20.10.17.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 10:17:28 -0700 (PDT)
Date: Mon, 20 May 2019 10:17:55 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Alex Elder <elder@linaro.org>
Subject: Re: [PATCH 7/8] net: qualcomm: rmnet: mark endianness of struct
 rmnet_map_dl_csum_trailer fields
Message-ID: <20190520171755.GV2085@tuxbook-pro>
References: <20190520135354.18628-1-elder@linaro.org>
 <20190520135354.18628-8-elder@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520135354.18628-8-elder@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_101730_474949_165F026D 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

> Two 16-bit fields (csum_start_offset and csum_length) in the
> rmnet_map_dl_csum_trailer structure are currently defined to have
> type u16.  But they are in fact big endian values, so should be
> properly represented as __be16 values.
> 
> No existing code actually references these fields (they're ignored by
> rmnet_map_ipv4_dl_csum_trailer() and rmnet_map_ipv6_dl_csum_trailer()).
> Changing their type therefore causes no harm, so just fix them.
> 
> Signed-off-by: Alex Elder <elder@linaro.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> index fb1cdb4ec41f..775b98d34e94 100644
> --- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> +++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> @@ -52,8 +52,8 @@ struct rmnet_map_header {
>  struct rmnet_map_dl_csum_trailer {
>  	u8  reserved1;
>  	u8  flags;		/* RMNET_MAP_DL_* */
> -	u16 csum_start_offset;
> -	u16 csum_length;
> +	__be16 csum_start_offset;
> +	__be16 csum_length;
>  	__be16 csum_value;
>  } __aligned(1);
>  
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
