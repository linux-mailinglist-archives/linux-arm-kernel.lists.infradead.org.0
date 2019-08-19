Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7F0920DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 12:01:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H47N5VavoYPVdbOwC8LW4fGrQWDqqoJvxvo2DhIdwkQ=; b=dizCiJqYK/bVcx
	ioYoOd3MfF92QRl8err9MFULa+GvTQ1Tk8wKT39AICcANyRO5ET5h4JhLRzTvTgMfISD02WS/yUbt
	6FlQIwdxVWnJdhrdWGx/DjSUNXX6WDuOOSJjhJWs00jQUqRvrtRj5o23pmFdljggipx9UfUfmLRnO
	eZJSLtdaNDz+pLUc9lX2Q84S/NFgJ0GtHPie3ny4gRQWfFvELT30ARc+y6LFs4zsoI4pUwAliIssj
	84eb0x/zN8IPOuzX1o5GFmopDE8YhS7WaOvoULnCm5pABmuBs5p42tjDwc4d0coPuU1dy9knxvBol
	NBPWhXxZhFQIp809Veuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzeTB-0006Q0-92; Mon, 19 Aug 2019 10:00:57 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzeRg-0006N5-Vm
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 09:59:37 +0000
Received: by mail-pg1-x52e.google.com with SMTP id d1so926578pgp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 02:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=olmkP9Ue0IYi0nIG9Jgk3ly+FXYntmyDpFNEtwV9Avw=;
 b=jVMofs4s+gnCUAI79Ip6xg3i2RYI+g/WOdXI6cIBBoHeRXdYRK95YSl51r2dCRiGoS
 CiCQd8CQXBbUOr6+gF8VweGsgKMLsOcgsbdzsM35hExJDC8SuJ+8KO9GOiLG6J3lAZlM
 JBekdQXJuGo3w80gSIoEBzWdp7/nrsEpbTVMw6PIzssbWVHlxegW8W6TKqil4zjQUMKw
 UBZZopGFveiUcMuqZ4lF43p0BGxD8HqGxseLqoRLQeEuLwzYDRVodbbJ32/p2h9mj5ji
 UoP5hP0x0uBcNzonEoOq3XHWSVYrDeNst784sV+x8X5/hR0xw+fivaQ/8nmLW6eRtpKb
 L4vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=olmkP9Ue0IYi0nIG9Jgk3ly+FXYntmyDpFNEtwV9Avw=;
 b=FY00maKcDLvhm6i5uWDjiHhTvxF/mTZ9viepAD9E5Z2ZsjqL/nWZla6CGMp43OhooU
 iJugM0tANdR5zpssiHw90PDnWGzOxpRk630bEH/K0DwPpdzEP4azaEK5QIPNyLEfQL2R
 24VUqHeoUnGEhqd4tnjq91sbA/VgYnDZm863A9lQ/lbG62zb3+0oZouXMOmz0w5fO0c0
 QKYxPfg01dekriK25TGouAza9AQf6ZbGoGdOQY4oizrwwBVnb/nFi3b5JHyTItzHesam
 S98P+dKbu4VZdDDHQB0v+XBLaAa5SvUBmIIeqZbRqKEkutDW2LsWvkPdJepJVdGfEbDT
 R5zg==
X-Gm-Message-State: APjAAAXuqNJl2RsEVbBW7u+NnQCMcFZS5odPgkfvpjUiwtoY0zpOoA2K
 NBSuJiSxSWtwWPvvxckhWBVUzA==
X-Google-Smtp-Source: APXvYqzxIL7FNkeVE+u8/wl10luXKQYJ2XZM5P9oxQ0cMb5m0opTFk66svqyoJdFdPJeYTRamxtKbA==
X-Received: by 2002:a65:5584:: with SMTP id j4mr18996392pgs.258.1566208763608; 
 Mon, 19 Aug 2019 02:59:23 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id r4sm18937523pfl.127.2019.08.19.02.59.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 02:59:22 -0700 (PDT)
Date: Mon, 19 Aug 2019 15:29:21 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [v4, 3/8] cpufreq: mediatek: Add support for mt8183
Message-ID: <20190819095921.sk2pltuylfaxklnx@vireshk-i7>
References: <1565703113-31479-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1565703113-31479-4-git-send-email-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565703113-31479-4-git-send-email-andrew-sh.cheng@mediatek.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_025927_260537_1A6E51B0 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, fan.chen@mediatek.com,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13-08-19, 21:31, Andrew-sh.Cheng wrote:
> From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
> 
> Add compatible string for mediatek mt8183
> 
> Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
> ---
>  drivers/cpufreq/cpufreq-dt-platdev.c | 1 +
>  drivers/cpufreq/mediatek-cpufreq.c   | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
> index 03dc4244ab00..0f7e837a264e 100644
> --- a/drivers/cpufreq/cpufreq-dt-platdev.c
> +++ b/drivers/cpufreq/cpufreq-dt-platdev.c
> @@ -117,6 +117,7 @@ static const struct of_device_id blacklist[] __initconst = {
>  	{ .compatible = "mediatek,mt817x", },
>  	{ .compatible = "mediatek,mt8173", },
>  	{ .compatible = "mediatek,mt8176", },
> +	{ .compatible = "mediatek,mt8183", },
>  
>  	{ .compatible = "nvidia,tegra124", },
>  	{ .compatible = "nvidia,tegra210", },
> diff --git a/drivers/cpufreq/mediatek-cpufreq.c b/drivers/cpufreq/mediatek-cpufreq.c
> index acd9539e95de..4dce41b18369 100644
> --- a/drivers/cpufreq/mediatek-cpufreq.c
> +++ b/drivers/cpufreq/mediatek-cpufreq.c
> @@ -546,6 +546,7 @@ static const struct of_device_id mtk_cpufreq_machines[] __initconst = {
>  	{ .compatible = "mediatek,mt817x", },
>  	{ .compatible = "mediatek,mt8173", },
>  	{ .compatible = "mediatek,mt8176", },
> +	{ .compatible = "mediatek,mt8183", },

Had to fix rebase conflict manually for this. Please always rebase on latest
linux-next.

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
