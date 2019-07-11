Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 544D565921
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 16:36:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGKhgGw93eBL2bb1d+iD5BdaIUDDyAxwrntcfmpWFeM=; b=K6YeMn3wKqODSd
	WV++/S4bn+Hx+Hn6aayQ5HZcDc+fort6XH8pw52iZfCzQZr9LGJWuVUEySBbW170V4tJmBxcM2d6P
	+yXI7UNYEE4qyrdZX8qgxvMhM3Q5Exx1ZBxtM4rvDmPVeXUbCrfoRU7dcq5J1ZFQZFiioAQoZVyu9
	hFknPi2mIbXLhpsehM03yWfjvhRNDYhqtRk/St7Y2AJnxYdS/dXVr0BVcXqVba+fQHaB/vuuHfNvM
	V+mXZbXAz+KeYvrxy+RoTVIqcmSoKN4pN6foUdKPUA9g2yMGXrhXdltn/1MXeqUe4I64HtBxPlGkF
	Aywlmvb733q6eG2JGFRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlaBO-0001jQ-L3; Thu, 11 Jul 2019 14:36:27 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlaBC-0001is-4I
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 14:36:15 +0000
Received: by mail-pg1-x543.google.com with SMTP id o13so3026958pgp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 07:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NI8ueteaj89rqZ5qyru0FAVjhgBE62EIuzbdLtCxeKE=;
 b=cBiNl8trXGosCTmFvIf1MABw+fY+EVySwYoqRsdJ4JVY5BGj8y3q9IhczgvhEaXDHL
 F0s+sTFh7UoajjJlMFq+/NDjewYjvgjpX5y4wMmqN91q4GbArNbdy9an8ETi6mpZHBzH
 9jF0+pekIj16fRZ6vivsubJDhz+CI4ksAG6FlrkvGGSS7pNGxVzmiztes70DheBRpAzg
 9xYLylJoHtRRqDszezdpDtwds9HSQh8WHR4a6nOYIMy6cWqFTGvCKlvxo8ddAN4sQymO
 rhwmaCzc9yw8FFwrjSHvcYPXMegGC5MlBW3Api+uWcS+KuSjaoIawHY8wN82biItP3Gg
 yvHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NI8ueteaj89rqZ5qyru0FAVjhgBE62EIuzbdLtCxeKE=;
 b=LOZBMaZNxlbu5fxvcob0iuWPfirboNN7Og9N9HjWaepyQLcKTGdq+xAIZhICA5J1Tw
 1Qk7Cir3mpyXQEhQfxuEny3P16RcnH86F/SSw3g+z50UMGoLir/0v0YYRH2kD1PyoSY4
 xFsJPmOFpCMVTv1jpjG3qb2577WlKjV/1LsDalIjaDO5Zd/wnPiU40ccHDqYqrrlaFRW
 lRwh4koes1JjSUV8N/jIcv72qZlL9WQspdC6cXV3MVtTUOwQUMS1wzUaUjNH6MBFax5q
 tZ5bXdO1YNNtL6zS0f28uNn/RIRDbWIvoJp4402RBQJiKIXCuqRWx6czGNsiZwH6iP09
 XmKA==
X-Gm-Message-State: APjAAAURiBqQDxeUKCWjM3fJ/nBsEhxUvHlZ1GeouPPv0DmppYDbQDUC
 At4Cx95hj00OCC0nh+ZAPWUTQw==
X-Google-Smtp-Source: APXvYqz82P7lOd6wmnkvJ/9R8IhUwO4X1ef7XuOJL659cKsBmpHcSpp10bqgBCy6pMqMFsQQfs7M+A==
X-Received: by 2002:a63:3f48:: with SMTP id m69mr4684981pga.17.1562855772275; 
 Thu, 11 Jul 2019 07:36:12 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id g1sm14756235pgg.27.2019.07.11.07.36.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 07:36:11 -0700 (PDT)
Date: Thu, 11 Jul 2019 07:37:21 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Subject: Re: [PATCH v3 03/14] mbox: qcom: replace integer with valid macro
Message-ID: <20190711143721.GC7234@tuxbook-pro>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
 <20190625164733.11091-4-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625164733.11091-4-jorge.ramirez-ortiz@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_073614_185248_82E084FA 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: mark.rutland@arm.com, heiko@sntech.de, mturquette@baylibre.com,
 will.deacon@arm.com, david.brown@linaro.org, linux-clk@vger.kernel.org,
 jassisinghbrar@gmail.com, sibis@codeaurora.org, jagan@amarulasolutions.com,
 devicetree@vger.kernel.org, niklas.cassel@linaro.org, arnd@arndb.de,
 linux-arm-msm@vger.kernel.org, olof@lixom.net, robh+dt@kernel.org,
 horms+renesas@verge.net.au, linux-arm-kernel@lists.infradead.org,
 sboyd@kernel.org, linux-kernel@vger.kernel.org, amit.kucheria@linaro.org,
 vkoul@kernel.org, khasim.mohammed@linaro.org, enric.balletbo@collabora.com,
 georgi.djakov@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 25 Jun 09:47 PDT 2019, Jorge Ramirez-Ortiz wrote:

> Use the correct macro when registering the platform device.
> 
> Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  drivers/mailbox/qcom-apcs-ipc-mailbox.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mailbox/qcom-apcs-ipc-mailbox.c b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
> index a05dc3aabac7..c8088e9caf02 100644
> --- a/drivers/mailbox/qcom-apcs-ipc-mailbox.c
> +++ b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
> @@ -97,7 +97,7 @@ static int qcom_apcs_ipc_probe(struct platform_device *pdev)
>  
>  	apcs->clk = platform_device_register_data(&pdev->dev,
>  						  "qcom-apcs-msm8916-clk",
> -						  -1, NULL, 0);
> +						  PLATFORM_DEVID_NONE, NULL, 0);
>  	if (IS_ERR(apcs->clk))
>  		dev_err(&pdev->dev, "failed to register APCS clk\n");
>  
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
