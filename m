Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6FE15F36
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 10:17:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZjBqIDIVpQcBrjWewa/wV07dH6h9lrOIppvn9G69XBo=; b=mZHQUkpg+WOBs+
	f93ADcbgh36gJeSTdeZn23GIhTrt8jOhYDSTLVUN7YInfKha+rFAyiimSiXrjz9bOBMZIeRfi8okB
	cVIbUamRgCjXBUHcfX1QgBjaBWqav/fbMtM0y424xsYJuFP+F6gLnZLiDxU8FObVjfPEC/ulx9/HA
	7hwha992boLa94lhwTyYawDil71DCn3tu3qBkc9ZPIe88CRS7tHTh6hN4UpFS2VFWcTaQzN+5MYr9
	OVUDJGs97FuuhHR8gK3PmezAo8CVSatnSkYTL/sjoSOCMpYVqWhMxfV/Ek1NZ11icyPe7FzfsSNhp
	ZtTsT6LWcfY8LvH+QU7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNvIB-0006J5-Dz; Tue, 07 May 2019 08:17:39 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNvHj-0005v3-PI
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 08:17:25 +0000
Received: by mail-ed1-x543.google.com with SMTP id b8so17827570edm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 01:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s5Dm2hP6ZKzzjrhmIXUfZa/e9oc7Fmopeu0ukEKpZnY=;
 b=T5s29IAFh7VqF7dWva6qmy5uvI9TWYxRDrYpMyXhQtC/gAijvajpPe6GLmQDA0TGJ1
 UJf12wS3d+VKMg5hkzOEhjO4VVu9I8oj4uNw/J6MMeLHEXuwxFSQthvv9VaWXAWPS2oM
 mp4x2hMd3GX1IQgk3Jj0yfextCHnHmQMIY2/9sU8F9mjOu2ykr44s3SO3GUKPxJ9V9DA
 N8jWHNeiOA/QvyFydJi0vzfw2AQEFo60cr1ewAGaxBAE+BW+KEjA0xP+R69t8Ti1qcMg
 5E275WU9gBglJKKge50MXP5c8iS7ZoDz1z5Z9N2TIyoCfm5vUD+2iB+5/VNUqvbFW9Z4
 bbEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s5Dm2hP6ZKzzjrhmIXUfZa/e9oc7Fmopeu0ukEKpZnY=;
 b=Mb1F4maQ20PFHFOczQuQQ1lekg3lFwfleHGzULxuLdZSNx8EHeuRfiF3P2A21CKOFZ
 ZppQMdBIBY8oOXTkWbTjjVCI/MtcT1+98YiDdl712s/fYfsomUyx0+qSTtYoZETH1FIK
 9nDV9TYZvmuQc3QT3P0ASyfj8TWGFhq0dfzB0XOlNgiC6Pf1La1WO8qnHQGkyUNLcIG0
 GaPEiYfHPmPuTrrKgUiv9cY4NdzvaslCv4D4ErUdcJSOtpcWwkkZkmnkI5imkK2Ime1M
 9ecKvjYtNcL/KEtk+63kFE44ZqY3UPe9FASAmZ+AItZNUg3fiehmYd1xSdG/GHnYnHWT
 2z0g==
X-Gm-Message-State: APjAAAXhw4Rpz3ImWXmVliMuL2js+IK29R+BB0GbXu+WY2v4S0Cb3o8Z
 ZxUQDdg4W4N04jOmw6JsUirFXff9qe+PJQPoG+TpXQ==
X-Google-Smtp-Source: APXvYqwFlkcWMGDxEh7EYWFCbOd2SPB6kPCF1D2FVleUTUcXxenHq2apLXwCwsuP9EF63VazPGMlCWmf0w2IIQqOi84=
X-Received: by 2002:a17:906:1d07:: with SMTP id
 n7mr1965723ejh.88.1557217029960; 
 Tue, 07 May 2019 01:17:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190507034734.20622-1-leo.yan@linaro.org>
 <20190507034734.20622-17-leo.yan@linaro.org>
In-Reply-To: <20190507034734.20622-17-leo.yan@linaro.org>
From: Chunyan Zhang <zhang.chunyan@linaro.org>
Date: Tue, 7 May 2019 16:16:58 +0800
Message-ID: <CAG2=9p-OT-MivzKuB+k8v9dvASn-FU4KDa-bYCE3cmvbprHUEw@mail.gmail.com>
Subject: Re: [PATCH v1 16/17] arm64: dts: sc9836: Update coresight bindings
 for funnel
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_011712_547386_03A7B4A8 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Baolin Wang <baolin.wang@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Orson Zhai <orsonzhai@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 7 May 2019 at 11:49, Leo Yan <leo.yan@linaro.org> wrote:
>
> Switch to the new CoreSight dynamic funnel bindings.

Acked-by: Chunyan Zhang <zhang.chunyan@linaro.org>

>
> Cc: Chunyan Zhang <zhang.chunyan@linaro.org>
> Cc: Orson Zhai <orsonzhai@gmail.com>
> Cc: Baolin Wang <baolin.wang@linaro.org>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  arch/arm64/boot/dts/sprd/sc9836.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/sprd/sc9836.dtsi b/arch/arm64/boot/dts/sprd/sc9836.dtsi
> index 286d7173f94f..231436be0e3f 100644
> --- a/arch/arm64/boot/dts/sprd/sc9836.dtsi
> +++ b/arch/arm64/boot/dts/sprd/sc9836.dtsi
> @@ -60,7 +60,7 @@
>         };
>
>         funnel@10001000 {
> -               compatible = "arm,coresight-funnel", "arm,primecell";
> +               compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
>                 reg = <0 0x10001000 0 0x1000>;
>                 clocks = <&clk26mhz>;
>                 clock-names = "apb_pclk";
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
