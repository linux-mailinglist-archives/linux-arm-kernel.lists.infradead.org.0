Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97CD01CC98
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 18:12:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=di6sBJfumZ9JzLGmLXV91a2kBrwWO8IGOu1I+4kvSxo=; b=iUifZo+uPLdj3u
	oKPVM/sceumWGDQU4A9h6D2XviQepTMlVX3vYPmYb6LExQyU4og/i9XjdweBRpbHFTPOVimWXcsNv
	ioUrQK7HIR+gJTvNBY9lsqzxsKxR0K+1yQYzVYDoxpNHR79anSIFzrvUxPV9pCXnk91YhN45/9epA
	dR5yy5noe049btimG1FlR8ITAN3zLSwZOWb1Skc4HkdzuttDiZ5kq92xSp4Idr31XGFYSOtitKh9x
	Yz0DjF2RQDE/jzoill4uBRwVdmJ6hh8BzKRyomRkXWZMY0ZZAWcuvYaYKPkxqDJeBrfRanULD0Cab
	AtBYf7WmGeGpq0mJe2fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQa26-0005LV-8M; Tue, 14 May 2019 16:12:02 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQa1l-0005Ao-5E
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 16:11:42 +0000
Received: by mail-lf1-x142.google.com with SMTP id y10so12350608lfl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 09:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=79OCTNk458byBS2H3Xt0sE1+KJDhnYCsFyQ7h5W7n7w=;
 b=rEV45d52FtweB9bt6szB4ocHbp9e/OFDripRbyALASst+32ezBZgc9ZQa9pOVQkL1A
 L0DxpCJVbFC36R+TXLsFNjOX0MARBsJcPrC9gDqBL70Gy2LQ5PThRWGt5k1jFqLg8tfz
 xL1Pu2dxruYOFf1S1pjMiPx3P9gZzs7jKL70DZdRMFqwtxoAhmCrmYmE5+za2E4YjjyR
 SwYld9BX/B0E6O8aQmBaemGdb3gFJ7wKTT5rYm6hDogI81VKNyZcp5c4pFgFLtXKUY9o
 BRjOYI72AtYR/DFo3zNXYrJmGPZ7bq0lJWhylHd6EEok0J8IIOGhmoefLXWUbj5a69d4
 Ygwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=79OCTNk458byBS2H3Xt0sE1+KJDhnYCsFyQ7h5W7n7w=;
 b=sBht2Ty8/gNzwrUTnTQmUfqF2lEaimNOwWJEwupFbtRsPdnzzD4l2a8Uw38D6QbNUO
 UMwRVxkjLxB3QdK7xwXvXLbSzXVZsr/AprPUiChBAYayA63izdTFIxpE/1VuBgd0Ik7s
 3jnQvepRvXegnK47P4WGgTZ0YcHUnrHuWB/t7heciW2RCMwjj55nmwe5BsMU4/5oC0np
 wNl2bxoXRv9KVt4XOLemO1gbqiIQ0sg8x9cLxFJQ1xlG932bnyTjHmJOC5nt9CD2/1+N
 1OxUR3rloDjKOIqMX3xOjbMW7YaU/rjrJc6SnunNOoLQBvJcKv9JM27y3CQre6M8zDhW
 s/pQ==
X-Gm-Message-State: APjAAAWbE5AYAdXuX0ihXyqin0Q2Tdw1DMxWhdvEG8PSbkzlXWWg4mbb
 wbFOb0bkAAqgDnArYfF4X+nApw==
X-Google-Smtp-Source: APXvYqyi7e9TjI8XPxrwpktl3EJ2JyOz0p4Se1vjd3AUZyBeZPecL5wHHXSzDB/JwQyEV0EZ41oNRA==
X-Received: by 2002:ac2:4479:: with SMTP id y25mr17316963lfl.95.1557850298941; 
 Tue, 14 May 2019 09:11:38 -0700 (PDT)
Received: from centauri.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id l14sm3850033lfc.61.2019.05.14.09.11.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 14 May 2019 09:11:37 -0700 (PDT)
Date: Tue, 14 May 2019 18:11:35 +0200
From: Niklas Cassel <niklas.cassel@linaro.org>
To: Amit Kucheria <amit.kucheria@linaro.org>
Subject: Re: [PATCHv1 1/8] arm64: dts: Fix various entry-method properties to
 reflect documentation
Message-ID: <20190514161135.GA1824@centauri.ideon.se>
References: <cover.1557486950.git.amit.kucheria@linaro.org>
 <ab5bad0258e455ef84059b749ca9e79f311b5e3c.1557486950.git.amit.kucheria@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ab5bad0258e455ef84059b749ca9e79f311b5e3c.1557486950.git.amit.kucheria@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_091141_201742_8C7D5215 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 David Brown <david.brown@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 andy.gross@linaro.org, bjorn.andersson@linaro.org,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 04:59:39PM +0530, Amit Kucheria wrote:
> The idle-states binding documentation[1] mentions that the

This [1] reference is a null pointer ;)

Other than that:
Reviewed-by: Niklas Cassel <niklas.cassel@linaro.org>

> 'entry-method' property is required on 64-bit platforms and must be set
> to "psci".
> 
> We fixed up all uses of the entry-method property in
> commit e9880240e4f4 ("arm64: dts: Fix various entry-method properties to
> reflect documentation"). But a new one has appeared. Fix it up.
> 
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index 2896bbcfa3bb..42e7822a0227 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -51,7 +51,7 @@
>  		 * PSCI node is not added default, U-boot will add missing
>  		 * parts if it determines to use PSCI.
>  		 */
> -		entry-method = "arm,psci";
> +		entry-method = "psci";
>  
>  		CPU_PH20: cpu-ph20 {
>  			compatible = "arm,idle-state";
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
