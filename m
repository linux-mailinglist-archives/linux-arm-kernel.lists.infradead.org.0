Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 532004D55F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 19:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ceOmKAdxPgZ7Fecxm+y09rCkuRirXr0pg8FAkqwsuMM=; b=bl1Xb5Vuudcxhx
	VkKSsTJBEMfE7DmOkZqrGs6UhcYJAf5BvHSRLdvTENaQ1efwafbev+fieahvGBU7IV2fwXUTZcgVc
	N0kTDOExTU3iLfD98GshUOYfeJFER9Gnvsh0DPcyvsRgsKm+CeHhQVDiY3+NjT72sU+RLQE//tEtL
	/Hnd4X/eMXHahK1WCMY5GlCwFpQKByURctpd18kfAA/Kss2fXPnhnaytBQqqUVv6uLC6ZKFOpe4LQ
	uK4twLaEcy4Oo3Nz9xV2+m3+yx1dDNFeQE7IwMoWl4/q2sZ0xZe1LDlr0bUIbuHP6rA2fh+wdLTST
	+2WpOJHigH4XZkOfDY/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he11w-0008PN-Ql; Thu, 20 Jun 2019 17:39:24 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he11k-0008Ol-MX
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 17:39:14 +0000
Received: by mail-pf1-x441.google.com with SMTP id 81so2044578pfy.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 10:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cc1ritaWfB8okWYpyfEgKKo47agXWGIBS6N2MHN/GYs=;
 b=vuQhYp+6eDLIk8XExGRgk2rgXE+mzKmk4DsxpWyKKBSH1UjUeoVNhTmSPG5D4MFvQO
 S/5PAdojDjzCO/n2vYXv52252MTac8DzMp3ykB5wALlce+oZPlQrJwYK0Z2PF+JrgRlm
 8HkTr545vZgVZQxEDQTkH2Ny4G4D/tHWgb2UASI/vriwo3IdhSRwT7GN/vqadmCK7N6g
 2EaqnxIA/oSIA5GpZNzLEYvnYWUh18CloBaCEmhWF36pkDgVptx5eKqA8NaZiN/a7CNS
 K1Rp5udGauWwef5sJuFVAkrgF8PCbAXy+0bhNANQFFW5aehjOMqrM97PXNUYqLSgh2pm
 dJxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cc1ritaWfB8okWYpyfEgKKo47agXWGIBS6N2MHN/GYs=;
 b=X71ooKKIRo8L9KV4plH8VhYjW26/ywjCaDNfABrkO1hRSPoQCLmMWE8GB2/NVlgE6q
 p//YxxbzMsE5TGjBFLm6xdPaE+Ns9IE3gaEj39XnSe0ajEoYEr7CpU8qDwl+8j9wpB+y
 b837Jitxojgg/EkRq7Khqtw3nXqO/BRRbVIk8yZnNzZ+rojFc6fty+HW8gAU8i2pGGR1
 VCVCtiVG+VYsjOB3Ptx/uxISzD/8XTLTr1UzJI6U4kFJbqIUcJNVzfcjAhEgyTURstWT
 dZv21fVLip2G3OfdVNsYo0B1DJPyV7subN3FR4VIpjPL/EjyGkcS9t1X4mv5nXV+Bg1I
 50Jw==
X-Gm-Message-State: APjAAAXY0lYibeXAMOo+se84JSnssvxVV2jvCJJfoEzFmLO9mAKWbxFw
 xbgD6DDENJs9qxbCqWDN1FanlQ==
X-Google-Smtp-Source: APXvYqwExTPnMaUlhkHdlTdYWDKivjZXCj1uKm+C1IqlKfA29kclGbLVua9EqCTBKhqKLwndm8l9oA==
X-Received: by 2002:a63:c301:: with SMTP id c1mr13911552pgd.41.1561052351600; 
 Thu, 20 Jun 2019 10:39:11 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id p6sm221710pgs.77.2019.06.20.10.39.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 20 Jun 2019 10:39:10 -0700 (PDT)
Date: Thu, 20 Jun 2019 11:39:08 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH 1/2] coresight: Set affinity to invalid for missing CPU
 phandle
Message-ID: <20190620173908.GA5581@xps15>
References: <cover.1561037262.git.saiprakash.ranjan@codeaurora.org>
 <49d6554536047b9f5526c4ea33990b7c904673d3.1561037262.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <49d6554536047b9f5526c4ea33990b7c904673d3.1561037262.git.saiprakash.ranjan@codeaurora.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_103912_743863_585318C6 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rajendra Nayak <rnayak@codeaurora.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 David Brown <david.brown@linaro.org>, Sibi Sankar <sibis@codeaurora.org>,
 Vivek Gautam <vivek.gautam@codeaurora.org>, Leo Yan <leo.yan@linaro.org>,
 Andy Gross <andy.gross@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sai,

On Thu, Jun 20, 2019 at 07:15:46PM +0530, Sai Prakash Ranjan wrote:
> Affinity defaults to CPU0 in case of missing CPU phandle
> and this leads to crashes in some cases because of such
> wrong assumption. Fix this by returning -ENODEV in
> coresight platform for such cases and then handle it
> in the coresight drivers.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  drivers/hwtracing/coresight/coresight-platform.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
> index 3c5ceda8db24..b1ea60c210e1 100644
> --- a/drivers/hwtracing/coresight/coresight-platform.c
> +++ b/drivers/hwtracing/coresight/coresight-platform.c
> @@ -160,15 +160,17 @@ static int of_coresight_get_cpu(struct device *dev)
>  
>  	if (!dev->of_node)
>  		return 0;

An error should be returned if the above condition is true.  

> +

Spurious newline

>  	dn = of_parse_phandle(dev->of_node, "cpu", 0);
> -	/* Affinity defaults to CPU0 */
> +
> +	/* Affinity defaults to invalid if no cpu nodes are found*/
>  	if (!dn)
> -		return 0;
> +		return -ENODEV;
> +
>  	cpu = of_cpu_node_to_id(dn);
>  	of_node_put(dn);
>  
> -	/* Affinity to CPU0 if no cpu nodes are found */
> -	return (cpu < 0) ? 0 : cpu;
> +	return cpu;
>  }
>  
>  /*
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
