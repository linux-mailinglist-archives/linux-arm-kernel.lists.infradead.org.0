Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E06DB9ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 00:56:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BDXvJV3IxJcfP+pTkA2OpzLAYrCD3mhcLUhemSKZCY=; b=PjEmTGrhcW4Ckh
	hCfgeLlLYWbpBpkh6ZKy7a//FbVTih0wAW7LW0ve30IL5kWNnFIVuLp6yN3xiB7SVGf+cTcKGFDET
	3zQVbzbeVUxLvSUhZNlmEOaM0LAOX5CktvaJyt8qa+QhvDVPvQ16256ej16l9iovclL41D/k43aFX
	3ZqymUcZwPd2MW9l9MWv5LAEz2fA+VnRDqsceGhkXmXcTAGyJ0JSes8AZRkWHbfABchRgkecYOE5b
	6u6Q14nmQ33OWLPFHvMyleHZwttVt4n7dGm82blhPnieIhErphEeAnBCVBYUPF/FkNWY+Du04i5Re
	qvDITgnz+EjtRRimX8Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLEgl-0005xY-32; Thu, 17 Oct 2019 22:56:11 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLEgd-0005x1-IW
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 22:56:04 +0000
Received: by mail-pl1-x642.google.com with SMTP id d22so1866673pls.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 15:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=H7fAk6Ny4DJQ5l4MTTiOy6lM7oc/Wj2NcDwRmnBk5mc=;
 b=HTBpYroKSBaPUtGEak9yuDbAiftxZm4Y06bRyoXf4yy479H26dVNgqyfTelLzVrwkd
 mWP51goHVTam5bBvJMd9DxEAHtJZe819kIY7kSEldm/gVL1u3Rk1NU7uNBzGplKZ4QmN
 MRj1JjAOK73X2IOpNx6TK85mAIQ/Z8zxrHX8YKw3La+MRIFEpTWGHADtgZHHJCE25RLK
 qOUONxOwcCHXWIDNEFn53oYoLw5KgDkQz6qGXo9zyYLyN6ulGlF5QX8S+G/rnIRlkqGB
 PHHIpR7nQkzrzU90dlfJ3AEUyOK429glHW9o0u7txbuuEpTfV0ZFrLzI53ilUfKa/bXS
 5lgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=H7fAk6Ny4DJQ5l4MTTiOy6lM7oc/Wj2NcDwRmnBk5mc=;
 b=MVo4id4DfqvXYL8mqBP6hqvFWZJuvJYqc3Y+y9Cu7w7S2q0/DahnzOgsflfWudkhcw
 s7mfQqtLmss5FQ6Ix2YfB5ho9dN+0PE4rYZlJKjvKHaZrwJuMHobi/C55YCfk4PYrbfW
 5h9Ef5YGGKx+02lWk5hBcJCG2UBsCtpf339NSttJwC0J7kNx0gJ9uRDpN0zKgApU+Az+
 N/hLTWVJ6hzZFvlZnXC2UGsH86ixkRr5G5Uctm9YIb7gU4q3LVMWrxmfXciqjtVvFY6z
 M1zmg/aYt6oHKfvzEu2KDkI/C/yAvNn1ONgSRsfLco8e94EWzGj/7GA2wwz+vWZXpVFI
 ZhCg==
X-Gm-Message-State: APjAAAX5+NTbKqpPPhqlqPw7qp2KfyJ+uPn3EuPc30eDCLhBBqZaCWF8
 8MOtUTZSAgba1ImyMY2mz+HP/A==
X-Google-Smtp-Source: APXvYqyrOw1FIEd/vQvX0yHxqzUjxYrKB+jDFUhQZAJ+1gX2nk4jHPUlXGyn/miCjzxIwudaEuS0EQ==
X-Received: by 2002:a17:902:8305:: with SMTP id
 bd5mr2057661plb.184.1571352961749; 
 Thu, 17 Oct 2019 15:56:01 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id d20sm4325548pfq.88.2019.10.17.15.56.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 15:56:00 -0700 (PDT)
Date: Thu, 17 Oct 2019 15:55:58 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Subject: Re: [PATCH] arm64: defconfig: Enable SN65DSI86 display bridge
Message-ID: <20191017225558.GA4500@tuxbook-pro>
References: <20190926230209.47592-1-jeffrey.l.hugo@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926230209.47592-1-jeffrey.l.hugo@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_155603_640409_627F76C7 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 26 Sep 16:02 PDT 2019, Jeffrey Hugo wrote:

> This enables display on the Lenovo Yoga C630 by connecting the DSI output
> from the SoC to the eDP input of the panel.
> 
> Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>

Applied, thanks

> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 0134a84481f8..f318836bb9b8 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -541,6 +541,7 @@ CONFIG_DRM_MSM=m
>  CONFIG_DRM_TEGRA=m
>  CONFIG_DRM_PANEL_SIMPLE=m
>  CONFIG_DRM_SII902X=m
> +CONFIG_DRM_TI_SN65DSI86=m
>  CONFIG_DRM_I2C_ADV7511=m
>  CONFIG_DRM_VC4=m
>  CONFIG_DRM_ETNAVIV=m
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
