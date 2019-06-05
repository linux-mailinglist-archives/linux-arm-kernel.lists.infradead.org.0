Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BECE8356DE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 08:19:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CkR/5O98FveKPkvm6bVVlXgDHG99/Db5nZ4+yqzbeS8=; b=LEtlB3DNdQm0vd
	FGA3DoTRCmUcwCrheEoQKo8wa8ht1M2PLxIm7Zcwb4E9Sv6XyWrQVoeiFVo0Ji5BxjtCMif9BDQEC
	vZGhXdSecYVoAptNlefEb1oiQ5pD8brEtCc1aq4hZGLywUfp0VWMWbo24AT2kzbXAYYEqt7BUwmjE
	tehxtQLMLPLrRo3b+kOdo6m2M4/tAOguBMYtIp9NR60K2BvClOL/K/6EqWspNA5g0uZWCDtBBOy5s
	W7xbq0iSxNTUNBxtJvqIf+m+28gzlhQQVvnUoZGL+qJfTLEfGgO8T7CqqVlmIfgme1CC1v4U8aVQy
	71F6VjMkKqaiOVBkgVJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYPGz-0007zQ-Fn; Wed, 05 Jun 2019 06:19:45 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYPGq-0007yl-VE
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 06:19:38 +0000
Received: by mail-pl1-x642.google.com with SMTP id e5so7566049pls.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 23:19:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8NDvqSiCIKv+/i60Ynslx6ipNYtxvNjYvkZ3l5Jrxiw=;
 b=Jv+ylw+eYYUmtx1uLMAE5WfRGbPZcDvoOmC1qqQkMmVoWISm6X+KqDoG/xkKlfZp1M
 O6gSWIh+Sh12hcQ1RTa4KsSVZBTgRrVifmZUjlC3+RENnfGGKqgwZIjqDpBIZG7ZZ0o9
 cgt6l84qKjCge1D0+WNYLBz4yjubpHHQLrQE/uGjorTP8Bo6TcuCatE17fGGRYUdhLHa
 YrMCziHY1qjVIkTMkhNdM+sEuMQR9wqYTzegHOCf/2dCREgk/m0XHsyumJ/GOC18x5+a
 DQ6HMN7Cc1c/9R7EJYu5f/Ojspos4AX5jlFgJbN4m2txeCi4CRZW+ZO99kX+jPvezxjt
 KgqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8NDvqSiCIKv+/i60Ynslx6ipNYtxvNjYvkZ3l5Jrxiw=;
 b=tcUY3wU6pygSCpO6iqlAYu6/DeT359vWkPVcYJpQKL7itIX5k8GnGTyq/wNCWuT/3l
 LVpdqVrXRhRAINrfCmV9MOXIzZ4IPCBfcl5vqj9VDKd6XXQCdpktDAjcX3iBphBkmavN
 TntDtOcJJg/9uNtvtlNkyPrh+nhQf7lJ/y3kp3CyLLi/WaUTnaqP3K/cGPaz1nMszvR+
 pZ5rYsSqgqyQ+sKZPOmkbBgVchu4j3E0IYsXyBsZvtXlxGso3FXKG7JsZuuXAOvWdiXW
 pvUbP4JUkdUpYgZIR8xhdw4Apx6l7YkU6kHG3MyIi5qx5VKErMR90KwHOE0lQP+j9amr
 OFsQ==
X-Gm-Message-State: APjAAAXdRSP1bAkkkNP6fWTUh+kob6Vv026qTNpgWGjHQCNeshGZJAAb
 RkmVjpbC9CCrZZg/heHdbfNc7g==
X-Google-Smtp-Source: APXvYqwh+STN/4aMELzC9REIaRk3yfuoyfOR7lNLNz7fdt88CIQ5SzfZxE21KW+S3BxQ6DpLT5kMqQ==
X-Received: by 2002:a17:902:a708:: with SMTP id
 w8mr39377169plq.162.1559715575910; 
 Tue, 04 Jun 2019 23:19:35 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id t25sm15044103pgv.30.2019.06.04.23.19.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Jun 2019 23:19:35 -0700 (PDT)
Date: Tue, 4 Jun 2019 23:20:20 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 2/8] i2c: i2c-qcom-geni: Signify successful driver probe
Message-ID: <20190605062020.GL22737@tuxbook-pro>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-2-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604104455.8877-2-lee.jones@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_231937_012335_0B31C608 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: balbi@kernel.org, wsa+renesas@sang-engineering.com,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 david.brown@linaro.org, alokc@codeaurora.org, kramasub@codeaurora.org,
 linux-i2c@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, andy.gross@linaro.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 04 Jun 03:44 PDT 2019, Lee Jones wrote:

> The Qualcomm Geni I2C driver currently probes silently which can be
> confusing when debugging potential issues.  Add a low level (INFO)
> print when each I2C controller is successfully initially set-up.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  drivers/i2c/busses/i2c-qcom-geni.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
> index 0fa93b448e8d..e27466d77767 100644
> --- a/drivers/i2c/busses/i2c-qcom-geni.c
> +++ b/drivers/i2c/busses/i2c-qcom-geni.c
> @@ -598,6 +598,8 @@ static int geni_i2c_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> +	dev_info(&pdev->dev, "Geni-I2C adaptor successfully added\n");
> +

I would prefer that we do not add such prints, as it would be to accept
the downstream behaviour of spamming the log to the point where no one
will ever look through it.

Regards,
Bjorn

>  	return 0;
>  }
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
