Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FAC1DEBF2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 14:17:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dn0l7yO/NBRN9RuU5dwKsOmIv3jN8XpVnvt4mszPHZo=; b=AsM/jXN0g66LCH
	i3dX7+ScZvsqctSdVxfcCEVvC/s1ABEzR+qEmGiKfhDsf3Ev6Jfng89tWZdREQKd0WQpCZJM3jRQx
	jLzmHJAmy+m/4WmopABoKylV1rNCFKdwelxnUMTYcHYG1JmdtQixnK/9dLsMHbg/lkuTXM3PUgeYx
	5aLJ81bte/vNmxZuQ1WPqNICS2wBkZ2+EkBKtuU7iFMEB8PyQsHV/S3k1ctV74hCj7E+1Tcid5zDy
	diC8tNaEWBUkImB+cULprBnsB4kFftyVsJMjAjIh69rE8sfe7ModtWgcUTzle+9pMIXzVbc3XOOcN
	ykjuKrSKSa9PwBTlFSwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMWcn-0005ZE-Aw; Mon, 21 Oct 2019 12:17:25 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWce-0005Yn-8a
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 12:17:17 +0000
Received: by mail-wr1-x444.google.com with SMTP id w18so13169898wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 05:17:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hZljA+dtCsePA/iZyqwzyUZyRoaJRHbObtpBgiUn+x8=;
 b=MQvc+BZdTDX8Xvo5doelJuZ/qBRiUvIgXwY4oYkUhUoVZR0Jat2CPrGCAplvy6eflY
 OIwkmZAdWLKL8KNDxxI7OeE4k9b2LmeU77w5NDM88GKPSIFL6uWyAD1m+g4vta0OhKGH
 lUWZRT80UT/G+/1neqHkHWdB71ItZzIYz3Q/jRqmQb1xrNsEWbZIGReXh11NBP1GLhml
 Pc/IfmQPBRbDF3k0OETojmsMRT5PyplCOYWq2AkJi12Qz+cSCcD2mr+si7QAFT8HrUgn
 9YczpPA/KAO0eq0pDb5A6Uf27n66lXwZly3trFkQOpDZtZj7YJDfTLWon07uaGCLtBZ7
 832Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hZljA+dtCsePA/iZyqwzyUZyRoaJRHbObtpBgiUn+x8=;
 b=BJ3Hm33S3robH6TnWnBSfv155fLrgOo5WAvRmaJgibiBmKgXkGNE4QXNxJY/tlz9CF
 vX6fk3Fqh4ToSQV86T+b9dDxr3jq07WtjERehv0Q4USLiexZse4fjGVy2twVOglYFTXF
 GvL23qR4XiVY2DRoPRrJpQQfncLQarl8UdZARMx0F4SE7ReIIB5lOHzNFsesXb+q10tS
 BHoFdopnEoh+7iAz2c1zvg0mmu2HZ6eBUiJPQ+K1COssAHoK5khbS5OaBvCRTyXKyHpK
 3LlnNWqBOTAjR6dU/VWXhRardLie5B3tG7qPrkBqTjn+WT7gBEFguv/heClZkgydN0j4
 UVkA==
X-Gm-Message-State: APjAAAXp+NGFuo70U+bwIqDKc6p8a9hsuDTQG/d9P6/xeRFrs58B4nIQ
 znHMaSBna5WtNungVAsRyXXS5g==
X-Google-Smtp-Source: APXvYqwqtNfSpfsopIRiU5NwEUG3rQEKyNf0micqrK/sSBNoIaRsmPcb4wKYWAaWgivufyrK0+9RDg==
X-Received: by 2002:adf:ee4f:: with SMTP id w15mr20368028wro.378.1571660234547; 
 Mon, 21 Oct 2019 05:17:14 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id u10sm3403341wmj.0.2019.10.21.05.17.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 05:17:13 -0700 (PDT)
Date: Mon, 21 Oct 2019 13:17:12 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v2 6/9] x86: olpc: Remove invocation of MFD's
 .enable()/.disable() call-backs
Message-ID: <20191021121712.rnmqerizclaabm3w@holly.lan>
References: <20191021105822.20271-1-lee.jones@linaro.org>
 <20191021105822.20271-7-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021105822.20271-7-lee.jones@linaro.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_051716_306923_93800129 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 11:58:19AM +0100, Lee Jones wrote:
> IO regions are now requested and released by this device's parent.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  arch/x86/platform/olpc/olpc-xo1-pm.c | 6 ------

Why doesn't olpc-xo1-sci.c need a similar update.


Daniel.

>  1 file changed, 6 deletions(-)
> 
> diff --git a/arch/x86/platform/olpc/olpc-xo1-pm.c b/arch/x86/platform/olpc/olpc-xo1-pm.c
> index e1a32062a375..0fc57b59743c 100644
> --- a/arch/x86/platform/olpc/olpc-xo1-pm.c
> +++ b/arch/x86/platform/olpc/olpc-xo1-pm.c
> @@ -126,10 +126,6 @@ static int xo1_pm_probe(struct platform_device *pdev)
>  	if (!machine_is_olpc())
>  		return -ENODEV;
>  
> -	err = mfd_cell_enable(pdev);
> -	if (err)
> -		return err;
> -
>  	res = platform_get_resource(pdev, IORESOURCE_IO, 0);
>  	if (!res) {
>  		dev_err(&pdev->dev, "can't fetch device resource info\n");
> @@ -152,8 +148,6 @@ static int xo1_pm_probe(struct platform_device *pdev)
>  
>  static int xo1_pm_remove(struct platform_device *pdev)
>  {
> -	mfd_cell_disable(pdev);
> -
>  	if (strcmp(pdev->name, "cs5535-pms") == 0)
>  		pms_base = 0;
>  	else if (strcmp(pdev->name, "olpc-xo1-pm-acpi") == 0)
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
