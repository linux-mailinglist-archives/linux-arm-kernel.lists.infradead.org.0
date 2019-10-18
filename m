Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0F9DCC3E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 19:07:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Bfjk3e4YCujUZhqTjNegU0t2FZlL7w0/uTU103qfvc=; b=ZOLmMxRyZqvroh
	criA7jD2cqor4JJOuDnNSM9zCKjk+zQoBt5u0OZSDzlnkYvX6itoVM0Qg+5kICGY4CTqaFSi58Wsw
	FxL+iPpdnQC59KDfCyvyXnFd59LtlV5KVqAqbOMUQXnHfRGvskkW2nVEaiZ3MsThi6MLnTIReYE0V
	IUlDzhDIqxjMC1v9mlVWWQhreJ0LQDXOjVfLCkubefZYm6iOR+oQyyWhTIhVKtGOn5MPjpMzJMxrn
	85awWRfUINBJKpFO7tzuLiU3i+Qo1zPX+EpHqIAa8HJhS+3sOAlCoVCOvrh1+4o7l6tmW56A2F+XK
	9B5mT6NIGCejYo2XLmYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLViZ-0002Dn-RK; Fri, 18 Oct 2019 17:07:11 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLViQ-0002DQ-7S
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 17:07:03 +0000
Received: by mail-pf1-x443.google.com with SMTP id a2so4253848pfo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 10:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=s4mBZS+ljuU08rW884SHkz0i5bxQ4SJXmq8jp6tRUPg=;
 b=yKhqYHL2pFUl4x0vzuSYcslNeVF/bHclgLn/jbiR4D31jUrWdwXJOkaY4oPnzZDaZX
 klcUgEiOu86wgFyATnDdOleKOmdqzEPxQNCjfbE8VyOenkKZGNlP9Z90fZLOWTmKCGok
 yl3Rz2uIwif2Uvh6c9EgeKbCUtKbF5dtcsB/oXeUEiLMe4KrpsGUbU6QQBjowWXagJ1D
 ARrvds73ksxjjg01m9PTHZ0NCMtz3Rw+CoT7iZeLrJwHGjeYSPWBdfNqGFpb4j1TnRLJ
 UzAfIkbLArZpKqcv0G8IeTQEGtfEYmRUviwIPPMCXFX0iqk0RpDIaDa9Z0GjVCRI8sIS
 k+gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=s4mBZS+ljuU08rW884SHkz0i5bxQ4SJXmq8jp6tRUPg=;
 b=q50Dir9hY4o/GNjcHeImJirj3ZO7/RuozeyGpDJP/wrYwPDT0sqba7JcLAzvfpYBeE
 g9NkK4Tu5iThz2EJFOrZu3pkDAdzWNexQfTur9zM0wRyALHiv/VM0MslO0bW5HlaimxD
 JHVBhS/8nitWZxgfwdkw9Y4oLYDl6q+7X42QivIeOzCtls9pAgePr/LtMQOk3naZgvwz
 p200l4Vlx03XCbyMePV7jAiAMqaK1fKlyXK4PSMqg37FdsDRs4pdaHyMunDgN83ul1nK
 NmzudxNSfg1OQ4bDQTtMfyRNcMN85CgBxG7opxn4HB9oLjeMI3S55/jHf6gZNdJf5C85
 +iBQ==
X-Gm-Message-State: APjAAAVv3JuDm/jnSFZi/g3OluUEy0ICIxmzIpVs7P5zwQfB7ih5Xg+u
 tQmVAu6/Y2KjCY9wF+hP1aoVzg==
X-Google-Smtp-Source: APXvYqzCsL68VirLSBGvWUCdpFt/+Zq1BrRbdAcnSRDaLPTmDpRsFdPQLecri/RwQRFAROsaxnc6qA==
X-Received: by 2002:a62:6842:: with SMTP id d63mr7792318pfc.16.1571418421377; 
 Fri, 18 Oct 2019 10:07:01 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id f13sm6753490pgr.6.2019.10.18.10.06.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 10:07:00 -0700 (PDT)
Date: Fri, 18 Oct 2019 10:06:57 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next 11/30] pinctrl: msm: use
 devm_platform_ioremap_resource() to simplify code
Message-ID: <20191018170657.GD4500@tuxbook-pro>
References: <20191017122640.22976-1-yuehaibing@huawei.com>
 <20191017122640.22976-12-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017122640.22976-12-yuehaibing@huawei.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_100702_272609_89C9743A 
X-CRM114-Status: GOOD (  14.22  )
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
Cc: alexandre.belloni@bootlin.com, geert+renesas@glider.be,
 narmstrong@baylibre.com, linus.walleij@linaro.org, baruch@tkos.co.il,
 linux-kernel@vger.kernel.org, thierry.reding@gmail.com,
 manivannan.sadhasivam@linaro.org, jesper.nilsson@axis.com,
 f.fainelli@gmail.com, wens@csie.org, linux-arm-kernel@axis.com,
 jonathanh@nvidia.com, ludovic.desroches@microchip.com, agross@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-msm@vger.kernel.org,
 rjui@broadcom.com, haojian.zhuang@gmail.com, vz@mleia.com,
 linux-gpio@vger.kernel.org, lars.persson@axis.com, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, sbranden@broadcom.com,
 linux-renesas-soc@vger.kernel.org, linux-oxnas@groups.io, afaerber@suse.de,
 daniel@zonque.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 17 Oct 05:26 PDT 2019, YueHaibing wrote:

> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  drivers/pinctrl/qcom/pinctrl-msm.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/pinctrl/qcom/pinctrl-msm.c b/drivers/pinctrl/qcom/pinctrl-msm.c
> index 763da0b..62fcae9 100644
> --- a/drivers/pinctrl/qcom/pinctrl-msm.c
> +++ b/drivers/pinctrl/qcom/pinctrl-msm.c
> @@ -1150,8 +1150,7 @@ int msm_pinctrl_probe(struct platform_device *pdev,
>  				return PTR_ERR(pctrl->regs[i]);
>  		}
>  	} else {
> -		res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -		pctrl->regs[0] = devm_ioremap_resource(&pdev->dev, res);
> +		pctrl->regs[0] = devm_platform_ioremap_resource(pdev, 0);
>  		if (IS_ERR(pctrl->regs[0]))
>  			return PTR_ERR(pctrl->regs[0]);
>  	}
> -- 
> 2.7.4
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
