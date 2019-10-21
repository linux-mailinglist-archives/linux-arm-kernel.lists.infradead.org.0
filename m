Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78689DE1DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 04:06:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KzOZVlrudZMXdPUcb8yH+aFHSXuM5ZTfSye5CcqCgmE=; b=FyiLfrjfss0ZWi
	lzWHGxxR45vKtr8JsAb/QZjtUoKwAbnhh5LjfTWfmW+fTlLqxZlETK+dvQpknRDr+zIBP4zvZ5yoq
	49I2RpbnpHlSrIjynJcyLXCgP7woja0jEI3PRjlJp21oIZguoNuXarSoFLoommbOrlApR57y1D/UA
	z8KhyR02adXGfH88EenbMzdMaCbZYQAWHRl3GoycZ/YMvrhx/lvnrAC5jaOO23sqg4YFrc9HDgQ3k
	qm/KEKXv503WQ7ySX1AMlreJOKnndFiKwtsY0/uTP+3CVX9WMYoypYUKBShPhZ4oxeQAkXKh08eZC
	/KlLEqQcB3debn75I8iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMN5k-0005u1-29; Mon, 21 Oct 2019 02:06:40 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMN5a-0005tE-SN
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 02:06:32 +0000
Received: by mail-pg1-x542.google.com with SMTP id t3so6753329pga.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 19:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+yWlFQ3j7MPCBznXsMHQtwJpyH73frvubd7zQPjGqcQ=;
 b=b6jF/1TCbvWbam16ICWlejQoSAC8+hg+CuxDEnF4riYF5Sq4SSUC+vktJEEOp4GwaL
 R+MVDsuCHRmEkMhueRjh3U4t/xHsfmYAd5Yomv9TltCGadViASJLNsaikB20jqDJxi8n
 dWVfgkI6OxuV8SrTlzu1UxF84Waqf0ymzK7EjZVebV+jJvqaIuMIp0TTrl4wcLkRQ1cg
 JRDHJR3HLRAy4g02+T82IvW12A/CAQAGYnqhqse9BnW+Z7pg+VV47mmjQ77JfilZzDiA
 +4QoCJLF0pzaHnplp75PudT0JDggsOSIJ3OGCzqSRGkdb8VVyWjD0Hk6gS3A5uCtXRqZ
 bMQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+yWlFQ3j7MPCBznXsMHQtwJpyH73frvubd7zQPjGqcQ=;
 b=dXoRqneqjVzA33c+BSUX7nMrkTQlNGbTKwpi/yJ9xWVXTKtqQ+KLMDVgcEsc8Wxftc
 V6x96bW8GwLVeyO0G5IOAvCdV+TgV0SDckJ/8X3g7L1ZfJ0Ge8/a6kbu78eD7SvQPJBr
 2O4OKjVfcHxx69pjV7nF8HLek5z8ffCBP4jx8cHg1zTW61ebXqWWXuJ5igrpBr6KK/yN
 N1Lwt+g2U4fxLx3yOPl0xrLZQK+TX4uop4If4K3YHOKg5vuk8f7Fe/s8ur7DSmwSHodH
 11ZUPHRZMF4m52g2UgzcDUxDc4lNJ/CEml+U2q5PMc55+RFMRs9RWG1jxKApGUcY7isP
 skqg==
X-Gm-Message-State: APjAAAUzWUaThDjmHfqeX4LHxBReZkBqyX2vuNfhkbRWTmEVSntOpd9d
 LuhKaPn3QjNuBoqQLZLHHyVb1LTq1+U=
X-Google-Smtp-Source: APXvYqx+O4q4hmJUC+1LMJIMJc8cEyhGSOZvO9jUQMs0EyVIEpjKc4vVl0VNeQL6Dp2g1H3xO8GA+g==
X-Received: by 2002:a63:b644:: with SMTP id v4mr7468971pgt.249.1571623588138; 
 Sun, 20 Oct 2019 19:06:28 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id k23sm12553705pgi.49.2019.10.20.19.06.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Oct 2019 19:06:26 -0700 (PDT)
Date: Sun, 20 Oct 2019 19:06:24 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Chris Goldsworthy <cgoldswo@codeaurora.org>
Subject: Re: [PATCH] of: reserved_mem: add missing of_node_put() for proper
 ref-counting
Message-ID: <20191021020624.GE4500@tuxbook-pro>
References: <1571536644-13840-1-git-send-email-cgoldswo@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571536644-13840-1-git-send-email-cgoldswo@codeaurora.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_190630_946876_93CE423B 
X-CRM114-Status: GOOD (  18.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat 19 Oct 18:57 PDT 2019, Chris Goldsworthy wrote:

> Commit d698a388146c ("of: reserved-memory: ignore disabled memory-region
> nodes") added an early return in of_reserved_mem_device_init_by_idx(), but
> didn't call of_node_put() on a device_node whose ref-count was incremented
> in the call to of_parse_phandle() preceding the early exit.
> 
> Fixes: d698a388146c ("of: reserved-memory: ignore disabled memory-region nodes")
> Signed-off-by: Chris Goldsworthy <cgoldswo@codeaurora.org>
> To: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: stable@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-arm-msm@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org

Cc stable@ is used to assist in making sure your patch is backported to
stable kernels, other than that the purpose Cc here is to indicate that
specific people have been requested to comment on your patch.

So please skip these from the commit message in the future (for this
one, wait and see if Rob is willing to trim them as he applies the
patch).


Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
>  drivers/of/of_reserved_mem.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
> index 7989703..6bd610e 100644
> --- a/drivers/of/of_reserved_mem.c
> +++ b/drivers/of/of_reserved_mem.c
> @@ -324,8 +324,10 @@ int of_reserved_mem_device_init_by_idx(struct device *dev,
>  	if (!target)
>  		return -ENODEV;
>  
> -	if (!of_device_is_available(target))
> +	if (!of_device_is_available(target)) {
> +		of_node_put(target);
>  		return 0;
> +	}
>  
>  	rmem = __find_rmem(target);
>  	of_node_put(target);
> -- 
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
