Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 915F2137821
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 21:53:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9yEwtq1LGFjEs21auTO8Vael2SQzoitpf5YxZ2lOHvU=; b=bVl6pSU3cFyPVr
	X1ziehEcBYNfrosdvkSyn+KKrlgKSM+uE2EK92xTu8WeOwzIaJfxKgxhqfpoJW/XxUQFCfPtXECBA
	DJImMgour/IvSUT+Xxj6DbORR0PAMESh5tQNBiZurCkZTbOppQYG3XZR6XlyQV5ewcfYYy/LJEOMt
	0J1HKK2tHJdXqHgFHZm1VNGG4NR/Gwwq+hVgKej8PZwiaDw5Eal9XyftDSdmVZwM/OwNypZ6dbGyr
	OkpNd6OAVSWn2plS1jU0zb9YV6r80MreYp6aiypi+o2iXVv53ndZGFFzPTsirl4QkLDitCyFuEvV/
	Hz3C6I6JF4DhMLfcLDDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq1HS-0004oz-Ko; Fri, 10 Jan 2020 20:53:18 +0000
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq1HL-0004o1-Vv
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 20:53:13 +0000
Received: by mail-pl1-f195.google.com with SMTP id c23so1288259plz.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 12:53:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LUH5GtfLSwD9hjB8rTrKF9ZhPwi3kWslMdByd0hgO/c=;
 b=i07h/2DU/Lt63hSI06k+qfS9QlllDP1EY86Iom7/7jDsMAJ/vrDKoF24BKMQ58TLej
 HbXhCc3xdzurxTmt+IuOcGAt5yyth4EKbbSs6Fi7NaurKrxx1YisUglf6cC4P5LUf8gr
 HL7w1ohQi5+V8dkF8FV6SLKrjuPLhcrZyNsdHdKd/3Qn602HxBgw1kvIf9D+tNgvfA46
 LGhOb8ngMHn/RzEOVbPvXqL0/3ynB4d8YJnQtZ1DjB3KuAy9t7WzIsjD441eu38gZJPO
 9qFmZVbcoFAnRGi6IoPhg9Mlg9XPF5PJI8uvjQmHnmzYFJrsB+mytUI364sfkoIIdFEp
 AF3A==
X-Gm-Message-State: APjAAAUR0psYwG3MEn9UFc1ByxvBUS/DYuPKLSVWHksBj4AAJahHfsva
 KHtsG/KvQVZZc67deqY+5V8sqEV6
X-Google-Smtp-Source: APXvYqxvUdDAFKBiG1LrEXVkw2L2jENZuvWk3o25dgUNS9tFZF2dVQ9KT+MIQkOVBGaU/px9Yd8LaQ==
X-Received: by 2002:a17:90a:c385:: with SMTP id
 h5mr7108179pjt.122.1578689590807; 
 Fri, 10 Jan 2020 12:53:10 -0800 (PST)
Received: from localhost ([2601:647:5b00:710:ffa7:88dc:9c39:76d9])
 by smtp.gmail.com with ESMTPSA id h7sm4395387pfq.36.2020.01.10.12.53.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 12:53:09 -0800 (PST)
Date: Fri, 10 Jan 2020 12:53:07 -0800
From: Moritz Fischer <mdf@kernel.org>
To: Nava kishore Manne <nava.manne@xilinx.com>
Subject: Re: [PATCH] fpga: xilinx-pr-decoupler: Remove clk_get error message
 for probe defer
Message-ID: <20200110205307.GA3246@epycbox.lan>
References: <20200110063113.3064-1-nava.manne@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110063113.3064-1-nava.manne@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_125312_025450_CAFC5E76 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (moritz.fischer.private[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-fpga@vger.kernel.org,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, mdf@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 12:01:13PM +0530, Nava kishore Manne wrote:
> From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> 
> In probe, the driver checks for devm_clk_get return and print error
> message in the failing case. However for -EPROBE_DEFER this message
> is confusing so avoid it.
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
>  drivers/fpga/xilinx-pr-decoupler.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/fpga/xilinx-pr-decoupler.c b/drivers/fpga/xilinx-pr-decoupler.c
> index af9b387c56d3..7d69af230567 100644
> --- a/drivers/fpga/xilinx-pr-decoupler.c
> +++ b/drivers/fpga/xilinx-pr-decoupler.c
> @@ -101,7 +101,8 @@ static int xlnx_pr_decoupler_probe(struct platform_device *pdev)
>  
>  	priv->clk = devm_clk_get(&pdev->dev, "aclk");
>  	if (IS_ERR(priv->clk)) {
> -		dev_err(&pdev->dev, "input clock not found\n");
> +		if (PTR_ERR(priv->clk) != -EPROBE_DEFER)
> +			dev_err(&pdev->dev, "input clock not found\n");
>  		return PTR_ERR(priv->clk);
>  	}
>  
> -- 
> 2.18.0
> 
Applied to for-next,

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
