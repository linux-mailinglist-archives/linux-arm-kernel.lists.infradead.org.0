Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BFA1AD082
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 21:42:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r6VCWedd2IuVWUr+ov7Vgk13hKQpSpGVBZs9uGzzL1w=; b=ik1dedWh6QmUap
	8cgqPUjFQYwn8gQunm3rTBeRoPwnQny0UNr23k7Gb/xvgpussZZuZLATbOTKY7eai0fYom2oc9Agn
	I0uMwmuZjoCuhhk4EPqw1fIKmLb38U2dua3rtMQbqtCrakkcyzZWCgmDLeJMIrnC4m4uGAIXN7SJZ
	+5pGMLc6Tal0R+JXRLW7iIyNP+90qP4kLRjCV9tNGkYE3l286YWR2lHsmxIqDCsUOnQdFyChzDE2U
	H4bjLnyIYSmc40xsFK6zw2rIt4cdn7kOF0Dx+XGB2jJYw/sVKZUcmckx65MH81rgdpzk6y7dn8Vau
	u28X+Sk5PBjQjFLuimSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPAOc-0007Xh-1d; Thu, 16 Apr 2020 19:41:58 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPAOR-0007XL-Lp
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 19:41:49 +0000
Received: by mail-pf1-x441.google.com with SMTP id m21so2116325pff.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 12:41:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4+5yvpF/CzkFV4Q2jkIdrwA/yhScLV1YzzJf+T0+lT0=;
 b=vCizqDZqzySQAlaQKNZSPfzWTNKVRci9vMWz/TPic+3XrkQ03Ffgkm9kWe0f4jZjUf
 8G/6u6CSBI/Ollj0zVbg8YRdI9x7IulHItSD/ttIFKdkO77DNk9A2QM5GoXfHCf58OOY
 ENtU9vEBypBTtQvaaLBL8IVFxOKZCqadrz/x6ScCnlG0oxmakq9nru4cWYT20gdDgyY4
 UI+drYXOPUwSRIZRBwmi9GvTGrryUnz5pMW4HOHttXbnoQotENvKHXfDGo8RgUaV0vxP
 3QlZeNHsCFrYH93qGFHQbLR2Z2zNWAVNhknBrBzhUwknHU7g1S3YMLN4mvZEVckyopmG
 kNug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4+5yvpF/CzkFV4Q2jkIdrwA/yhScLV1YzzJf+T0+lT0=;
 b=MvJ7UyJYlsqyNwXCd4VqRyk2hsKPl7j5E/YEWd4X4s5AigltKacoKLTlM1kgRjl60u
 f74437Cpbpz2/dE/r6YiPYfkPne+pNK24bgHQ+su9M4TTYCELnywZguRqrST/b8CO/mJ
 QA7dL4Av6IUajPyJkwZTt2Hp9B02dSUokjI/zpfvhIa0jhx9/YLrWVdZQUnYLkJRwDg+
 hJGBSRU5JYmIJrATX47FNUmsDHfLtaFHvLch618h7e95AYly964jMQW+75aNyu1/f2lg
 ANdLVvQByB4No6WD67ASvN1MlANxMQTxZuErs84d0JW/nh86yUBsjm94PcwkkxTW9QUz
 2yfw==
X-Gm-Message-State: AGi0PuYpo5IxSNj5pOwWNUwPRAatMZZxg2NHHtaskt3BLKvHAMjuT07V
 +JGTtr2/GvR+pGZSVW5+M8c2Fg==
X-Google-Smtp-Source: APiQypL9j8meLyGkikWSZboSQOmU2u65qLLK1r6+xhTUyBIVdpn5qScfiojY7EddmHUFHZFnYDfj6w==
X-Received: by 2002:a05:6a00:c8:: with SMTP id
 e8mr32914135pfj.131.1587066106898; 
 Thu, 16 Apr 2020 12:41:46 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id y123sm17140605pfb.13.2020.04.16.12.41.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 12:41:46 -0700 (PDT)
Date: Thu, 16 Apr 2020 13:41:44 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Siddharth Gupta <sidgup@codeaurora.org>
Subject: Re: [PATCH v2 2/2] remoteproc: core: Prevent sleep when rproc crashes
Message-ID: <20200416194144.GA30314@xps15>
References: <1586384305-7825-1-git-send-email-sidgup@codeaurora.org>
 <1586384305-7825-3-git-send-email-sidgup@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586384305-7825-3-git-send-email-sidgup@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_124147_742042_22128BFF 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ohad@wizery.com, tsoni@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 bjorn.andersson@linaro.org, rishabhb@codeaurora.org, psodagud@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 08, 2020 at 03:18:25PM -0700, Siddharth Gupta wrote:
> Remoteproc recovery should be fast and any delay will have an impact on the
> user-experience. Add a wakeup source to remoteproc which ensures that the
> system does not go into idle state while a remoteproc is recovering, thus
> prevent any delays that might occur during system resume.
> 
> Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
> ---
>  drivers/remoteproc/qcom_q6v5_pas.c   | 1 +
>  drivers/remoteproc/remoteproc_core.c | 4 ++++
>  2 files changed, 5 insertions(+)
> 
> diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
> index 7a63efb..6bb2c7d 100644
> --- a/drivers/remoteproc/qcom_q6v5_pas.c
> +++ b/drivers/remoteproc/qcom_q6v5_pas.c
> @@ -401,6 +401,7 @@ static int adsp_probe(struct platform_device *pdev)
>  
>  	adsp = (struct qcom_adsp *)rproc->priv;
>  	adsp->dev = &pdev->dev;
> +	device_wakeup_enable(adsp->dev);
>  	adsp->rproc = rproc;
>  	adsp->pas_id = desc->pas_id;
>  	adsp->has_aggre2_clk = desc->has_aggre2_clk;
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index 9f99fe2..19a360d 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -1729,6 +1729,8 @@ static void rproc_crash_handler_work(struct work_struct *work)
>  
>  	if (!rproc->recovery_disabled)
>  		rproc_trigger_recovery(rproc);
> +
> +	pm_relax(rproc->dev.parent);
>  }
>  
>  /**
> @@ -2273,6 +2275,8 @@ void rproc_report_crash(struct rproc *rproc, enum rproc_crash_type type)
>  		return;
>  	}
>  
> +	pm_stay_awake(rproc->dev.parent);
> +

Much better:

Acked-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>  	dev_err(&rproc->dev, "crash detected in %s: type %s\n",
>  		rproc->name, rproc_crash_to_string(type));
>  
> -- 
> Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
