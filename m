Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D7F11F3CB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 21:11:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hMXbOxHR0rrKzSo5oAV9013IG74VsMAD7CfPt4bbBu8=; b=r7PZLeEI6RNusj
	+ndAhCGK3XFJMTaZMbZtj9F4ZD86wAihpsBUZ7lj4UsQJeqVOiiePZ935bHBRlK9ZxEyD6jybvQ+B
	BasHYH2D0DJQ3NEMR9fGBY0GmvTwV1qIl5rBhpHHU63XlnVi8kJVisRO7qu67IVtq5ZX/GL3ZwfJw
	X1JhoaHnd2U7vqoY2Tti0lm932SZzYOIq1brf2i8JvNaEtIVVZzLW0xV78br5B4Z8tl0CdlaC15+H
	kZpDeTSbDfZsoVdd69jnjdtxBrauwCfY8WBli7EvTzPW8xcEjTmf7cE9n36DaMpbpdG+kG7HRW3n+
	Lrpj0un96/VYRobZSFRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igDkk-00080Q-42; Sat, 14 Dec 2019 20:11:02 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igDkc-000800-6c
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Dec 2019 20:10:55 +0000
Received: by mail-pf1-x443.google.com with SMTP id s18so3354683pfd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 14 Dec 2019 12:10:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=wuX1wX7F3A4+ViJ/F0TGocQYp+UHpk0d54KJOh0KWqY=;
 b=moI3aNp2gAT6fiipm7VKPiy+ExbuP/KxOwHz1IvtGmHQpyBlujqY4lGo6og4s01Gws
 COU2gYcZ6Jap8JvjadlrRSn8S/33mTnO9RURXanWwir+y0Tsuo4HoczUlYHUr/8Jm597
 AGPgZE52gf9NtvdT2YMBmDPipmfP1Pe6DwgwIB8O41VmdOvsyEC/ELaxLf10l9/xtCDl
 yOZ9c0QPLMm8Fx+e4XfJIn/SbHihOD6YoBI/D6OVtv93VWXeb+gHNKGuOO7Lhbi5IwiO
 Ir7xCXz2QuYtYIu8IPu2YpqubPJgvxIHPJeE9p2ae1QoTxoLSbSMxfjAvSpmNqJRe3gd
 oCLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=wuX1wX7F3A4+ViJ/F0TGocQYp+UHpk0d54KJOh0KWqY=;
 b=dSFXqF05FLaF1Su6/WDzqnb97+ms/ryNnH9R2eJdXRZLLZCYCQ9XyuG5bqQJb4i5uW
 4hC1TBunPj97Rkm40nanUbTr48rlXJSgSv46tS/ZFU2By2SV8f3jxwcfrdPpeaUC7PxT
 XJ6Qm8hOJhHC3a5GToZfXrpQW7vsrN/YJxjmlPTu/K5Kd4DHMLCbzYEt8PbW5gSjD49G
 92tJ/QnfflAXdkhnQpwUCbmGFHfH7vkH55zPyCpk2giCGZaazzFm4XhnVD6dPufrwZdq
 vnUn/lcaU3LZS5Sz0rfNZRziQMOvLCjnPS8ED+6xFolsOI4ekFdeEmFiOihA7BmvElUl
 BfVw==
X-Gm-Message-State: APjAAAW+waQGLmHBNoyAXJr3Z/n7jublixPErSUYJlh1v5wxWCVQ/GIa
 +ENCk4m/A7pqHRoxr6EP16NXCQ==
X-Google-Smtp-Source: APXvYqyZIZpkQnsmmMbQQozox77o8oKzuyqEEgz/qPk80xmbgKB8F2SyKW2zohfp580A6GNPcxBONw==
X-Received: by 2002:aa7:9205:: with SMTP id 5mr7043338pfo.213.1576354253427;
 Sat, 14 Dec 2019 12:10:53 -0800 (PST)
Received: from cakuba.netronome.com (c-73-202-202-92.hsd1.ca.comcast.net.
 [73.202.202.92])
 by smtp.gmail.com with ESMTPSA id y22sm16280523pfn.122.2019.12.14.12.10.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Dec 2019 12:10:53 -0800 (PST)
Date: Sat, 14 Dec 2019 12:10:49 -0800
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Xu Wang <vulab@iscas.ac.cn>
Subject: Re: [PATCH] stmmac: platform: Remove unnecessary conditions
Message-ID: <20191214121049.266b656f@cakuba.netronome.com>
In-Reply-To: <1576060284-12371-1-git-send-email-vulab@iscas.ac.cn>
References: <1576060284-12371-1-git-send-email-vulab@iscas.ac.cn>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_121054_251152_3DA0A17E 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 joabreu@synopsys.com, mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 11 Dec 2019 10:31:24 +0000, Xu Wang wrote:
> Remove conditions where if and else branch are identical.
> This issue is detected by coccinelle.
> 
> Signed-off-by: Xu Wang <vulab@iscas.ac.cn>
> ---
>  drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> index bedaff0..1d26691 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> @@ -229,8 +229,6 @@ static int stmmac_mtl_setup(struct platform_device *pdev,
>  		plat->tx_sched_algorithm = MTL_TX_ALGORITHM_WFQ;
>  	else if (of_property_read_bool(tx_node, "snps,tx-sched-dwrr"))
>  		plat->tx_sched_algorithm = MTL_TX_ALGORITHM_DWRR;
> -	else if (of_property_read_bool(tx_node, "snps,tx-sched-sp"))
> -		plat->tx_sched_algorithm = MTL_TX_ALGORITHM_SP;
>  	else
>  		plat->tx_sched_algorithm = MTL_TX_ALGORITHM_SP;
>  

Thanks for the patch but in this case it looks like this code is
intentionally written this way to enumerate all options. Maintainers -
please speak up if you prefer to have the patch applied, otherwise 
I'm dropping it.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
