Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFDE12CB89
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 02:05:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PXKqjk4nvM0KN/mpMbRJ2VYO8JhBJYGeI8hLMM9Izho=; b=dWy3gbJe/jpQda
	cfcQCPymyW/lgDEjNGr9NLBMQ/+36NSqa4TtPJZD3QVAtsi7D7OAeIWAUg1F0I3ri2XhSt8EKCP/b
	CaXnjKawbVnwerflLm9zwRGJvBK5agw4o46o0+Ksx+0hQAE8XAbyRGbmqt2A7ut7smucHvvcxmO3K
	YCaA35EukDt4Xf36wJpCchuUkkgs0tdMmYC/pGFMIN3Wx6MQHJibi1puBGPFBpLdRSGsOmiE91SGz
	zflzDjmG3YkFl5YDQpkhHUlnTGF3PVOVp/5JB7YH8bInIi0w2O9Z+HoLioXtqw8VbjCyo0+h/F15N
	eIt/9KRLog39T/MkAmSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iljUj-0001wq-Ts; Mon, 30 Dec 2019 01:05:17 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iljUZ-0001us-Sc
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 01:05:11 +0000
Received: by mail-ot1-x343.google.com with SMTP id a15so44283904otf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Dec 2019 17:05:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1uou/b60cIOsMB3DzOtWATQEv5uMUtNiIAyfu0e/7RU=;
 b=aiKcmfv+dEWo2le/tjhTAw8tcKlQ0CqkPBBHpVEJh7FgnksKRQ3+hLp0toLsq9RsYK
 CztWSrHHddNxP+qLAFQQEwsU2JX7my6RqveTx38RdovRZGe7CM1LBq5T/j4W8IdUmfSJ
 SdF2Bq+gg7r/0zAA0tHGRrmtabNkGkuCDOwU1H/rQ0LSZFVE+7qcNXHq1qyj1FjOJsES
 8HJTTK0LDo7QfVpfOSk5MnnY3Kcezzg6Q0a4tTfkQUQ/8geqnKdwgL4382LucumngyXB
 wfRe/fTehXCvD8htrQa36Fh5ZsMFYQ3P6ul9f9caoovpRKGiukaiVC3R67RiYPuTkr+f
 7Iag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1uou/b60cIOsMB3DzOtWATQEv5uMUtNiIAyfu0e/7RU=;
 b=Mtj0y01sgUlTfFJ0jCP9AimRN3NHUoLL8F3XBmjVSBa+N2eIYMqsixDok2mS0CTebk
 uBN4PyL5MiAvyttj0AyKJaYfc8nCUXc+fnpzYUzYc036ZFUPyKQnL+KU0cKL+0vIp8ES
 bii67lLpuKI9h2WBkTCRVlU1BJrfw/YSh1Bufbn5wCFFl7/5M7g3NAO8Rz8qDiwx4Kpm
 nM3T8L1i0sAqrsetO593bjt1qt3Vi/Vg7nczJH33igwKcMABT4Kx4CJP1EIetSWLa95f
 lKHU/DqkWwqpMzgdcR5jeRteqj+dEGd1QyVLVABCNWp24+2MKXTrS2Qa6ssvHbcfK931
 +ZYQ==
X-Gm-Message-State: APjAAAV9eGINgEsS1x4dWxlWRNqirpcYfdrerryHJk936nJVCepms84+
 +b+7+TTx8PHZ1knRgdhyR6jwFg==
X-Google-Smtp-Source: APXvYqxjgsyQVJ4CLBiKYs6InxnmHCMDH1KJmdUI1mQYT+Cx0caVrZ1wXctdMcb1AJLR38bGRw+0+A==
X-Received: by 2002:a05:6830:304c:: with SMTP id
 p12mr41031309otr.214.1577667905418; 
 Sun, 29 Dec 2019 17:05:05 -0800 (PST)
Received: from leoy-ThinkPad-X240s (li1058-79.members.linode.com.
 [45.33.121.79])
 by smtp.gmail.com with ESMTPSA id j10sm10043384otr.64.2019.12.29.17.04.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 17:05:04 -0800 (PST)
Date: Mon, 30 Dec 2019 09:04:55 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 06/13] mailbox: hi3660: convert to
 devm_platform_ioremap_resource
Message-ID: <20191230010455.GC4552@leoy-ThinkPad-X240s>
References: <20191228183538.26189-1-tiny.windzz@gmail.com>
 <20191228183538.26189-6-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191228183538.26189-6-tiny.windzz@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_170508_250578_71E95D5D 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: bjorn.andersson@linaro.org, matthias.bgg@gmail.com,
 thierry.reding@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 f.fainelli@gmail.com, jassisinghbrar@gmail.com, jonathanh@nvidia.com,
 agross@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-msm@vger.kernel.org, alexandre.torgue@st.com, rjui@broadcom.com,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 lftan@altera.com, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, sbranden@broadcom.com,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 nios2-dev@lists.rocketboards.org, nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Dec 28, 2019 at 06:35:31PM +0000, Yangtao Li wrote:
> Use devm_platform_ioremap_resource() to simplify code.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>

Reviewed-by: Leo Yan <leo.yan@linaro.org>

> ---
>  drivers/mailbox/hi3660-mailbox.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/mailbox/hi3660-mailbox.c b/drivers/mailbox/hi3660-mailbox.c
> index 53f4bc2488c5..97e2c4ed807d 100644
> --- a/drivers/mailbox/hi3660-mailbox.c
> +++ b/drivers/mailbox/hi3660-mailbox.c
> @@ -240,7 +240,6 @@ static int hi3660_mbox_probe(struct platform_device *pdev)
>  	struct device *dev = &pdev->dev;
>  	struct hi3660_mbox *mbox;
>  	struct mbox_chan *chan;
> -	struct resource *res;
>  	unsigned long ch;
>  	int err;
>  
> @@ -248,8 +247,7 @@ static int hi3660_mbox_probe(struct platform_device *pdev)
>  	if (!mbox)
>  		return -ENOMEM;
>  
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	mbox->base = devm_ioremap_resource(dev, res);
> +	mbox->base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(mbox->base))
>  		return PTR_ERR(mbox->base);
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
