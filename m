Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4EF19F043
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 08:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJBKtwXK9FLTx7rXlIzRLoSyA7Te/ZN+cfTeY2Vgc5E=; b=szT3yxctWMmN2h
	DaLdc3RIrg9QMNMNuqBhczU7UsuXUenilqQEiwumjhurvD3qfPrc/6t3iiHvQrx1uZObjyBSPvnAy
	zxEBR3Qe39/+6EPrvKJi0VQSBS/Il6GVU3KvrrcVGsVhPM17LaXzTnnJu0K5oril8cf/wVNG/zp6g
	IoO7NTpgmnuLWH/S5T1TaEyyHC441j1XNxL4Z3pqTfMiNdGizvQBRR42h3ccLU+jea+dOXGlF7jsZ
	5FV9GS1hUAPq1+JNsWYPlTS0ht59GtdAwyisGc86t2fu0Xi5GR+3zwYZusNoIYXAFfz6H5o/6SwLh
	FSYOOWnIHEzhxkxbZzTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLKyD-0004Ys-Ga; Mon, 06 Apr 2020 06:10:53 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLKy5-0004YI-8t
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 06:10:48 +0000
Received: by mail-pl1-x642.google.com with SMTP id x1so5504429plm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 23:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1Zg4t84vPftQTf/y3Iv/U1NbyjZxzuCO/RKd2H7Y9d8=;
 b=M3aksN4tt0GoC0h3mAt+pYMJThnpjnApXLmXptxVARkQRkl/TwvsTMKvssyTvikjDO
 7Jxrk5JmHldI+0XydSw+xyGLsHkn7ptf7ORky6D3Yp+acC6/nmofP+Ujnp2EJjVZw/KV
 RZFUnJtyFjepwUSWBS/3qbGxgYr5M2E3wApA567JsKg+djGOCz+DVuEwEu0nitEgZ+v8
 Bq/OjEKdON0OUGtXigHzUe4IRUHegES+N8LsRaKaIvBYIXIW4g3X9dzxcOUkugGAhF5I
 ruVxF6vv16EGBRLJylJ+7wwPgkUwR68Ed9rVd0IXwClmVuznnf47ygt+Gf0jT8yrBwrR
 aWNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1Zg4t84vPftQTf/y3Iv/U1NbyjZxzuCO/RKd2H7Y9d8=;
 b=mltmHrp7GMQkA8DSLT0W719uJ38F4pHvoMgxnL4ZxQXdKwQis1fZ6j+o0Dqy66uISz
 3g8DTkvet6h+uqZcX2VTMUyEOimZso2DagXquRfYHsT/e5obFTk13ewJTfEAief0V0ah
 gezf0MPup+QC0YKMdtfMQoi9rc4shFdxNHF6ess9e7T0MeAXqckwehLP62U4rRINeV6a
 9LqNLDR2LFENOOfc6W0yaCgdTC2G8DJA5yYJdjZ0RM7mzhNKApK9h8jDRJb3zHD5Aw6k
 8qP2tuTdzKSXzK7qW6Ab3MzzBc5h0/+zuYgwfJRKi/ZS507sO86DVkJGFTfOBHTr+DLD
 ffzg==
X-Gm-Message-State: AGi0PuZux6OaiBzZ50oKbPW+Ghxp/f4nntGMFguaZ+N4lajvEs8qR7HP
 zztLizTvUVeMVErLeIbe6gAG69JeW9sx
X-Google-Smtp-Source: APiQypKIF7ce0U/nBSU49NCSCIod9dmywDVGV6I5gJiGEZR/N2PDz/q+tRtLilOUYGCVqezA/cBBqA==
X-Received: by 2002:a17:90b:911:: with SMTP id
 bo17mr823822pjb.40.1586153444380; 
 Sun, 05 Apr 2020 23:10:44 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6e80:687d:9124:eff9:55e8:1727])
 by smtp.gmail.com with ESMTPSA id s12sm10071497pgi.38.2020.04.05.23.10.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 05 Apr 2020 23:10:43 -0700 (PDT)
Date: Mon, 6 Apr 2020 11:40:36 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V4 03/22] ARM: dts: stm32: Add missing ethernet PHY reset
 on AV96
Message-ID: <20200406061036.GB2937@Mani-XPS-13-9360>
References: <20200401132237.60880-1-marex@denx.de>
 <20200401132237.60880-4-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401132237.60880-4-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_231045_829178_6283D163 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 01, 2020 at 03:22:18PM +0200, Marek Vasut wrote:
> Add PHY reset GPIO on AV96 ethernet PHY.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
> V2: No change
> V3: Drop phy-reset-duration
> V4: Rebase on stm32-next
> ---
>  arch/arm/boot/dts/stm32mp157a-avenger96.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> index a66b86a456c9..a33fddd3e023 100644
> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> @@ -87,6 +87,7 @@ &ethernet0 {
>  	phy-mode = "rgmii";
>  	max-speed = <1000>;
>  	phy-handle = <&phy0>;
> +	phy-reset-gpios = <&gpioz 2 GPIO_ACTIVE_LOW>;
>  
>  	mdio0 {
>  		#address-cells = <1>;
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
