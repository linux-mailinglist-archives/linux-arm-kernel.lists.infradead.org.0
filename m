Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8129BD6589
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 16:46:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJN6CYdKNVhLkBt9XgpjWN74HK7dIJdACG3/N7k9fSw=; b=nglNtdM1kz8ANf
	lHsREiXUlY+HGkFMXoMHlfL2kr6UZ1/gFwuAufIZs0wk9g/qmiI5nheOSpMNVAIKU28bo8uAehdMj
	3upfXuW70AUozD0MJEwwcOCGLBjbbv09lPGXN/gao4bveLkRlqZ/ez8yX9nRJwLaJi3EVmp647jTD
	p6sWTPF/lGPTA2uiv7kAAsQHGJiVlxaIVQJFtV9SgSIP9P26kGLdJGAnrPp5iY5iGXIVDP92K0HOY
	7bg+sHvSrJTMpGGqHqPE2rPAKKoomOtwOrt2VLhZT3knYSfejC8aMq71bnuSE+voOX+f9+kFMhE9i
	eiqu09srDLrsNgq9JMGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK1cK-0007jP-L3; Mon, 14 Oct 2019 14:46:36 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK1cB-0007hk-SU
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 14:46:29 +0000
Received: by mail-pl1-x643.google.com with SMTP id f21so8113075plj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 07:46:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/Wwkp/o/TiWYKqra6/GbJ8zgmOghxSCR6LMZILbN3AA=;
 b=Qq0dACQaYNnCu7w+uH1q+EXCWhrXZyYx63Ucp9eQ3kdJr7sZiRBBHuY2+z3Z5QsgZg
 5+mv9yf4faaNnydUHWvdHrKOzLzgTLkF84l8AJOsgPuw2vlXPxhNy7EEEXpu9T2aBQD4
 VPgSMXX1H96agXRdv7DYYmYgaIaWqfeRRKo30bJvZ/95X7ncj3YzjrPZ3wAgATaIlDKP
 1w7mfR2l5lSq+jNmMZ4GWj/0k7OFml0qq4+orA/4i0/IMLqJRo83iMebCeg2g9JihrdC
 AW5vSRtIcD2aACwhC+D03rlxE33OBEfHaBfhSsKWhx9PVskRgov+Z+r6UfbHGu0TUOBf
 0Q7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/Wwkp/o/TiWYKqra6/GbJ8zgmOghxSCR6LMZILbN3AA=;
 b=GGIIZgZC41vkOY0WqHrNXhWLXtZiLW6dKR0SQVLU6Fy818DFdCCZbf2QcA3KzEs04f
 wppjNfVC385g1ANammO4A0ltYJNMSNWY/iIa9c9JUzOFPTANn7LWCGMFvJurxgWBLAkX
 G4fUdTJocZ0rWRUYQYp4Esnip9YjEjYm9e4zWs01uHOKEbI6BN9UR4WrVzJAGYwFLQ3/
 h5mFibKy5NUYJBWuO98Rfq3ILf3z8E19gWU3gibxDTFZaBGrhyh5DSCsfRmASF1cGvCn
 6lDlOAn1HlwjyFJZNvd0qp4wryrqJ9RIzwZ25ABfa6VrgUmEgPG0j+8QIH8DCVItSjoT
 dDBA==
X-Gm-Message-State: APjAAAWalbwG9RoTX62k3LNYQdkP5/tagJ89lJAvpARXmOOFsBTkCjry
 He17SdJxebinrUKhNoTcq4sh
X-Google-Smtp-Source: APXvYqwhz1BoUwO6T+uzR5BRZcg5sa7AjCGGCeVyBJ/eYxnWT37A9NIdF8NVa4rvrqjOx7h6M/y/AA==
X-Received: by 2002:a17:902:bcc8:: with SMTP id
 o8mr30767347pls.256.1571064387153; 
 Mon, 14 Oct 2019 07:46:27 -0700 (PDT)
Received: from mani ([103.59.133.81])
 by smtp.gmail.com with ESMTPSA id p190sm22003538pfb.160.2019.10.14.07.46.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 14 Oct 2019 07:46:26 -0700 (PDT)
Date: Mon, 14 Oct 2019 20:16:20 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: Re: [PATCH v4 7/7] arm64: configs: Enable Actions Semi platform in
 defconfig
Message-ID: <20191014144620.GC8583@mani>
References: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
 <20190916154546.24982-8-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916154546.24982-8-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_074627_979289_7682B4F9 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linus.walleij@linaro.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, thomas.liau@actions-semi.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 09:15:46PM +0530, Manivannan Sadhasivam wrote:
> Since the Actions Semi platform can now boot a distro, enable it in
> ARM64 defconfig.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Applied for v5.5.

Thanks,
Mani

> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 0e58ef02880c..8e27777d6687 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -29,6 +29,7 @@ CONFIG_BLK_DEV_INITRD=y
>  CONFIG_KALLSYMS_ALL=y
>  # CONFIG_COMPAT_BRK is not set
>  CONFIG_PROFILING=y
> +CONFIG_ARCH_ACTIONS=y
>  CONFIG_ARCH_AGILEX=y
>  CONFIG_ARCH_SUNXI=y
>  CONFIG_ARCH_ALPINE=y
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
