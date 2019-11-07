Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9B9F2DC4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 12:55:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=79/CeU6C3aXV7JlH2XvwA8Q8Z9pc+j+iecb2RQx/eW0=; b=N8/+o2eA+p/NOl
	RzVlFOq4dmxWXM0J20p7jqTvK7/CbowaqZE7W6LbgFzrtjvY3vdbo2kE1NxiRiOY1r35Xii8QHjKW
	hABPkVtUO1f4P0xWVFBDINzmQRBbL8cVrkoZnPuaXwnhvFpoZw5jiqqNF5qgFLegDi3rDapg4LXbv
	4klVv2A6TfWJrNlLg05eQrqCpCYgNvqMyOkdPgtYwHihHy56Yr2SGH9bnYt6D5M+G12dmXVLQDIwn
	aPVdaiWSaGa5Q8S7gxo17tndqMruoartw/c2QLvZrZ1rSYHwJci0AbczYMYAq/dFhAnpIZPZUVVkx
	g1SrqAncyi0C7MaB4J+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSgNh-0000R1-2b; Thu, 07 Nov 2019 11:55:17 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSgNR-0008J9-NY
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 11:55:03 +0000
Received: by mail-wr1-x442.google.com with SMTP id r10so2716498wrx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 03:55:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Ayk5We1vI12jLcW3zDErdcAcqNSpWsXr0NVSETpZ+JY=;
 b=LY4v6pcmezZwNcfXllRMIlIjE5qYGtgxeDhF7eBdaYPb609c6eo6pIgq4c6K+FqEoC
 zOxS/HgDxakHr18mXqyWj8cSn4feSZNsUjMXog5Y6AagnyEL9DWa0LKNH27cqIeixJR+
 fvGQ24iVw9AXyh9U+iUKb8ks05Wh9U/iNIMcYtHT7IkZVo+++N7kV68Vs4ATLZ1zA39k
 yT5+8kK4aDbxSp+TxPKeEtBaGAcWxkHoZkGXBZVDzSKz4eUbTR6u+YEx15NmKunp2aGu
 kzLSIWjQX7eTE7XW6L5VLZh2AmZSCk8y5kvmTCuoGrilR1aCC99UOx6jiLjgoV5UztwW
 7Nfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Ayk5We1vI12jLcW3zDErdcAcqNSpWsXr0NVSETpZ+JY=;
 b=FXEvqU7jd703MD6ST7OMsbI9AXyntWVgPVD9dpOo8BCws7WlS0cDNTJUoknXspUBt3
 +JZHwPxJ5VxHezuEFq+zPZWoAqzCNmnz4tu03hnqhskPUyO0UTze3S1zDqy4g4KYoW2s
 MAytNql0FUBRaODX5K25Vcl4QoLlSlzFTVj/uaFpsigq7noUqoCr+TzRHvKuHE3CQVpP
 QUO4keB1x4RdMgbxlqY5CykHvbFLUBrC63mNXUZ8F3XxzSki94Eq9Stji+Pl1DDWg4wT
 Gfi3Y4nfzGywi/a0Nu/s867zdpF+FlTPkEsofBu+xxGUd6cxxePLHNbmgaXJ7EdiJMje
 Me1w==
X-Gm-Message-State: APjAAAXA9y0T1Jt4pGPvGBZIQqQkhblHHEvzHmr9ko1YzX2I6Rpu498X
 3CpeeRYqMV9CHgJECmxIVvGfjg==
X-Google-Smtp-Source: APXvYqxuJubr7r9uEWSKkiOKjKqi6rliFvlqVHCYYa/EMNvKvqAwJaUcEoDweUzbvue1MK61Zb183g==
X-Received: by 2002:adf:e488:: with SMTP id i8mr2465007wrm.302.1573127699748; 
 Thu, 07 Nov 2019 03:54:59 -0800 (PST)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id s21sm1895785wmh.28.2019.11.07.03.54.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 03:54:58 -0800 (PST)
Date: Thu, 7 Nov 2019 11:54:56 +0000
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 1/1] mfd: mfd-core: Honour Device Tree's request to
 disable a child-device
Message-ID: <20191107115456.esxtcgo2pt7eq3v5@holly.lan>
References: <20191107111950.1189-1-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107111950.1189-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_035501_788489_99EBF7E4 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, broonie@kernel.org,
 Barry Song <Baohua.Song@csr.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 11:19:50AM +0000, Lee Jones wrote:
> Until now, MFD has assumed all child devices passed to it (via
> mfd_cells) are to be registered. It does not take into account
> requests from Device Tree and the like to disable child devices
> on a per-platform basis.
> 
> Well now it does.
> 
> Link: https://www.spinics.net/lists/arm-kernel/msg366309.html
> Link: https://lkml.org/lkml/2019/8/22/1350
> 
> Reported-by: Barry Song <Baohua.Song@csr.com>
> Reported-by: Stephan Gerhold <stephan@gerhold.net>
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>

> ---
>  drivers/mfd/mfd-core.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
> index cb3e0a14bbdd..f5a73af60dd4 100644
> --- a/drivers/mfd/mfd-core.c
> +++ b/drivers/mfd/mfd-core.c
> @@ -152,6 +152,11 @@ static int mfd_add_device(struct device *parent, int id,
>  	if (parent->of_node && cell->of_compatible) {
>  		for_each_child_of_node(parent->of_node, np) {
>  			if (of_device_is_compatible(np, cell->of_compatible)) {
> +				if (!of_device_is_available(np)) {
> +					/* Ignore disabled devices error free */
> +					ret = 0;
> +					goto fail_alias;
> +				}
>  				pdev->dev.of_node = np;
>  				pdev->dev.fwnode = &np->fwnode;
>  				break;
> -- 
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
