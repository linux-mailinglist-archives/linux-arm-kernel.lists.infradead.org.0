Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53ACCA7937
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 05:19:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vzvdkqxVOts70OsO9c0Sd3sPyJuybPuy1yxOk8O6Tqw=; b=UMfwV7nz6OJ/9V
	0mF+yDYFUmyAUvw/3EkG93AuHeq6sl1I/5oA8QbaSfBh17gzW4xLhkhOAhLyinOL6Ow6lvVa2dCuz
	9EqGkvcxWYx67UbMgH/VhV8GPgjtLYN3aE0Bm4xwEqevOc2v2VFrsru38Nl2P47VSqLh/crhXo+ks
	ilJiisERhM8yCqfdSHTA7hlvDEE+rf1VXAEF0WzqaInXDJ3Tpyz/ayhQ+Rzjl82Q+yEdgJ1/yHeK1
	G+pXENu6Z/q8tWGOmy5DeGNVKRj/XeUdQGqzzxZgNVSCNJ7r9l9VcpiuspqjSfEOdqIp1jVmJT/3f
	LqwKccwlzGn7MvwWeZqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5LpZ-00021B-8P; Wed, 04 Sep 2019 03:19:37 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5LpO-00020J-S6
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 03:19:28 +0000
Received: by mail-pf1-x443.google.com with SMTP id y22so6646354pfr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 20:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=02+eBEQJWm6NHimkROpVhmoHyIo4/pLc4YR1Y2rVwOA=;
 b=CztmP3VrmOz2/mU3Ni+FHnjEZCeJ2OyXfo8+ajDcZ79r5MxkWd3rA4/inLzPD+RhqT
 G65tPOsl5mK/jUAMnnKUdXSuWwlD0EwrbbcevxYgEMrozddxtZpG38f2rD/pBHqu7oXj
 c4SIl4FK3haHY+7szeZAjmoG5DCsVHlOwdGVnBAAYn85mmhN35dlKeUKlU0V0uY2+4Gy
 sz80PAgfCcGbm83OjFv88AIjBatvvSx2zv+3Wzo62LaTgEwZKc9aDH+PM+luetMoRCpZ
 qMeyqHf2BuUAkkFuqNrWDU2PpD0b/cvL4gy5vXGj5BnyTLSLC7A6gWk8AevGxappaTEB
 vA9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=02+eBEQJWm6NHimkROpVhmoHyIo4/pLc4YR1Y2rVwOA=;
 b=ReZdPNKww5e0t2kHz4ckk6vqhtWFIwMiQH/orfneeS8IUYOPHR0CzfWyOF7V8mQIGA
 Bmc7/hAiFVM6ZcZtjPXyLyt7C/r70L6fCwk7JV67JbmJS4UhpPpzd7YEGWEDpUk5NwfC
 UUJCuIF1IKPdKQeahNXrUph6XeJHbJUX9BNhLEbCmweHmH63qBAYlB10P98UP5UeH0Vw
 Ba7MsBzbOSrbdTAKNlQRsipe92frvsc7+6RJ1LzHB/VcRZ3mA6aoPrCOAqK+q1KRDTfr
 oqIshzU00tllmuDiT1w9PUtXIreldeknMc4f+O+Ebd3q73awy65vq6W07gV+e4mEyV5H
 abFQ==
X-Gm-Message-State: APjAAAXd+yCJa0/T4yNKF+pLBNQ/TnAvuPKBD9UrZElsMAwwsXE8r4Ur
 +5JL/phfQkRRVMC1DlxsMkFITg==
X-Google-Smtp-Source: APXvYqxYWfllLFvx+G/2hfqNwK0phBdw0yYAbUV1JDKDDrpF5Cmiadx1YRaxQl3l2TCyAI6O/wjG9Q==
X-Received: by 2002:aa7:84d2:: with SMTP id x18mr5859554pfn.250.1567567165787; 
 Tue, 03 Sep 2019 20:19:25 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 185sm21836340pfd.125.2019.09.03.20.19.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 20:19:25 -0700 (PDT)
Date: Tue, 3 Sep 2019 20:19:22 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 1/1] soc: qcom: geni: Provide parameter error checking
Message-ID: <20190904031922.GC574@tuxbook-pro>
References: <20190903135052.13827-1-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903135052.13827-1-lee.jones@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_201926_974407_F6E0920E 
X-CRM114-Status: GOOD (  19.02  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-msm@vger.kernel.org, agross@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 03 Sep 06:50 PDT 2019, Lee Jones wrote:

> When booting with ACPI, the Geni Serial Engine is not set as the I2C/SPI
> parent and thus, the wrapper (parent device) is unassigned.  This causes
> the kernel to crash with a null dereference error.
> 

Now I see what you did in 8bc529b25354; i.e. stubbed all the other calls
between the SE and wrapper.

Do you think it would be possible to resolve the _DEP link to QGP[01]
somehow? For the clocks workarounds this could be resolved by us
representing that relationship using device_link and just rely on
pm_runtime to propagate the clock state.

For the DMA operation, iiuc it's the wrapper that implements the DMA
engine involved, but I'm guessing the main reason for mapping buffers on
the wrapper is so that it ends up being associated with the iommu
context of the wrapper.

Are the SMMU contexts at all represented in the ACPI world and if so do
you know how the wrapper vs SEs are bound to contexts? Can we map on
se->dev when wrapper is NULL (or perhaps always?)?

Regards,
Bjorn

> Fixes: 8bc529b25354 ("soc: qcom: geni: Add support for ACPI")
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
> Since we are already at -rc7 this patch should be processed ASAP - thank you.
> 
> drivers/soc/qcom/qcom-geni-se.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/soc/qcom/qcom-geni-se.c b/drivers/soc/qcom/qcom-geni-se.c
> index d5cf953b4337..7d622ea1274e 100644
> --- a/drivers/soc/qcom/qcom-geni-se.c
> +++ b/drivers/soc/qcom/qcom-geni-se.c
> @@ -630,6 +630,9 @@ int geni_se_tx_dma_prep(struct geni_se *se, void *buf, size_t len,
>  	struct geni_wrapper *wrapper = se->wrapper;
>  	u32 val;
>  
> +	if (!wrapper)
> +		return -EINVAL;
> +
>  	*iova = dma_map_single(wrapper->dev, buf, len, DMA_TO_DEVICE);
>  	if (dma_mapping_error(wrapper->dev, *iova))
>  		return -EIO;
> @@ -663,6 +666,9 @@ int geni_se_rx_dma_prep(struct geni_se *se, void *buf, size_t len,
>  	struct geni_wrapper *wrapper = se->wrapper;
>  	u32 val;
>  
> +	if (!wrapper)
> +		return -EINVAL;
> +
>  	*iova = dma_map_single(wrapper->dev, buf, len, DMA_FROM_DEVICE);
>  	if (dma_mapping_error(wrapper->dev, *iova))
>  		return -EIO;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
