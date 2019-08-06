Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8258B82A15
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 05:43:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MnNEB52Ch0Ja9+v5m1zEavDZuCLJT9d/cI8zJKNfuuQ=; b=Vs432OgnTFN+t/
	UtwDA3nFNtXxc7DLxJ8Ptoiws3HzDMSSAibJeYem8gXGaN3EaECYKcN4Bbh1z2YHntaQ0BNkMBlG6
	usb1WI8HTBVBQgIwmxBYuVOknHTCWgYuSbkwZXIjTD3ZjJQzfhlrI0Vs9TClt6kAygblXHZta1P5b
	nYy/vHYDVkLVFCr4fx5jzB21eNPXQBL8lEMnm0Y9AovsldQ+wbnPR1UOnYeWlkvA2GtXOsXxDw+0p
	f026gfqEMwcJ1/RuXxi5iN51blsOhf8d/Q7sm/i86IJTB5/z6VmBEO/nMooH/HtBtwTKlvvK8Vmpy
	PnQ6e9dpwNWD+hDAlrpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huqNE-0005qm-Dp; Tue, 06 Aug 2019 03:42:56 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huqN7-0005qH-2b
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 03:42:50 +0000
Received: by mail-pl1-x643.google.com with SMTP id i2so37286121plt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 20:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GyYuYt1i9WaZ8yCH43JVWCp96Q/+Qm0jgwO0UVQVYIs=;
 b=OyBQEypiuCQvac5FyjGAX77gD8/Avj+XxwEX//E2nSdxoMtc7EFMRUUphfEwLEFnoG
 sq/4QcEsvf1mQcjecx45TrN+bf2AMyjhLtMKCZAszIMUgee2MEIFKqjCvi37Rjq9Ug57
 Oy4KPgPrPLi7nYd4zsNB0ruffzhRNwNvjeLidTsx+b4a5Vap7ueKYsxb6duFp4t2HWW4
 EdLtGLCmmiJ9K7n/65f6cvAzNNht94g8ye6z8eybM1+ezw7XWLWDWm9xG1fkef1gyOaO
 hGRp64Gp8fj96avZDJfn1NWbghMaLy1lqvZOcgazhfi1Sgwf/39R25++R+JY592vuUL1
 waMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GyYuYt1i9WaZ8yCH43JVWCp96Q/+Qm0jgwO0UVQVYIs=;
 b=Uiqozmp9OrimjeMBSoo7+lGiCBkzYQV91iOFD3sFCKSBXiTu07OxDi3Iye3KRVLzA5
 OBYVQmRNq0dwzzwCBL02ihEjeetH/gGBMLGw2QFR2DqzxoNHDOhtHeGqStpXMbM/8tG6
 MkWeR5ZSsnPehWeqKdYm0PTdzNFSMEQ5nfeM6fDIBYSu2saUCwGVkwnDeOqqIKnS8Fkk
 Rx/GYfGXGk8MBNGBqPU8C3CpgcprgsKW+z701jIxi02Qa50xwUd6aShTXykNlLkIL3jW
 7UhO5rtG7Q1TJviYbPrsJPin1X5H1ZWVs1VGywqfRTXPzxXVN9Q+EQMxLpEnPj+PQ4LO
 yWIg==
X-Gm-Message-State: APjAAAXsAA4sLZ2P/zAzINPoCQ8VM+fseaP56f968OCDJxA2PSJ+23S9
 GHMwMURq0OL6MUcaOQuLE/t0iw==
X-Google-Smtp-Source: APXvYqxoV+QNFxK1CxcdutLlR77u2tg+qbi8oydh1HNTQ8wuXUp3r07Qbcew/h4xMlPZTdNcoXH1cQ==
X-Received: by 2002:a17:902:4381:: with SMTP id j1mr1002780pld.4.1565062965267; 
 Mon, 05 Aug 2019 20:42:45 -0700 (PDT)
Received: from localhost ([122.172.146.3])
 by smtp.gmail.com with ESMTPSA id a5sm18285778pjv.21.2019.08.05.20.42.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 20:42:43 -0700 (PDT)
Date: Tue, 6 Aug 2019 09:12:41 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] pinctrl: spear: spear: Add of_node_put() before return
Message-ID: <20190806034241.oqy53svdoyydgjli@vireshk-i7>
References: <20190804154948.4584-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190804154948.4584-1-nishkadg.linux@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_204249_181516_C7FEDBAE 
X-CRM114-Status: GOOD (  16.71  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: vireshk@kernel.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04-08-19, 21:19, Nishka Dasgupta wrote:
> Each iteration of for_each_child_of_node puts the previous node, but in
> the case of a return from the middle of the loop, there is no put, thus
> causing a memory leak. Hence add an of_node_put before the return in
> two places.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/pinctrl/spear/pinctrl-spear.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pinctrl/spear/pinctrl-spear.c b/drivers/pinctrl/spear/pinctrl-spear.c
> index c4f850345dc4..7ec19c73f870 100644
> --- a/drivers/pinctrl/spear/pinctrl-spear.c
> +++ b/drivers/pinctrl/spear/pinctrl-spear.c
> @@ -157,12 +157,16 @@ static int spear_pinctrl_dt_node_to_map(struct pinctrl_dev *pctldev,
>  	/* calculate number of maps required */
>  	for_each_child_of_node(np_config, np) {
>  		ret = of_property_read_string(np, "st,function", &function);
> -		if (ret < 0)
> +		if (ret < 0) {
> +			of_node_put(np);
>  			return ret;
> +		}
>  
>  		ret = of_property_count_strings(np, "st,pins");
> -		if (ret < 0)
> +		if (ret < 0) {
> +			of_node_put(np);
>  			return ret;
> +		}
>  
>  		count += ret;
>  	}

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
