Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D2318E878
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 12:50:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tnagfBOFdX5z1Nq+kKpXIAYzFSAxu8jvfDRKyj3oEXM=; b=cVIg38RuFVHmGO
	0eYyMnHL5TvI4SmoeXkczD3nX4yW+EUws8ezwJpGzWIeEGFBxiFkqKI7VjiRf6Z3JUw0k8WUAukfo
	Tth13SvbTm17BvQS9lG8mzx+Ha+aZctEL0tadUvMY+FzpzwtzcnjGK7EuflIeGmtCrQMb0hNj8HYF
	qyyT1CbWnajujjLghkBrNP7l4pxHpOnX1lSV4nRtjb4St4c20nCUpP2SG8GurUPbVDU5QyW4A7fMU
	gnk/9YmyyU3eIMX/RP2QE1E+2tk6yiXeWcKch82vzXTrif/70h3Iyo9tuinbDNaKXgfDwnAjV6ApA
	Qh/ws82ckjGn936T4gqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFz7P-0007AQ-3z; Sun, 22 Mar 2020 11:50:15 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFz76-00079k-Lj
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 11:49:58 +0000
Received: by mail-lf1-x142.google.com with SMTP id j17so7975481lfe.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Mar 2020 04:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K/QWBb4tCTPLVSmiGy2LNlWfguMEJGrJbmguFMDLAMg=;
 b=eL2O1GBvOWqZQixDHO8GctMTx/1bZnJrGj7V20iMHUMEjXQuoCYUGVOZF1SAXbk06n
 HkiiqO4H6aic/ObbRXaTY+pPGLpxzYwWlKmaVljwE8trirda5PxM3F0shjv0w1Fnvlo8
 iMHkWNkVKVncipbtD4Z2kDzE/8VJ6L2NEZ5ARQ7mbUHnEY5rdsIBKmlOn+4BCulpacsd
 DZHUKwBFyZevPvfB/lynnM0TIhlH6rHIpLzYK5btnM86cKsELFQ/6kgPHm/rcE/lyBxr
 o9Ggm0FtxH67A+6lb83dwMF8p4fgp0qHPCcEC8jYo7AQ7nAitw82qKPfBijCOXa5+5OB
 0uXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K/QWBb4tCTPLVSmiGy2LNlWfguMEJGrJbmguFMDLAMg=;
 b=ksjERdMe3NcWyI7qfNXZsj2kx/4VhOM6onkeaXAmGkn1WpO27wRTixXVlYeh7tSHX0
 xuXdRxbCFyoJ33f6ZATicpM+7KV3KZYcyf0q5DdPMB9mVhAFWRZJGj5glT9pNX19XiFq
 OjUJFWE1MkbxcUiN8zjBeBjUkt3DofHwk5VZoa/awkOvmyYDlj7i6tUrkqrfpzy+RfCO
 oILEk9hmnidb6x6Aqnp6L4rNixStA1vj9r02EpcfiVbQUmoU9Sgch6dpE+oPs7e3MyRZ
 T5AiMAShHUsAFrLiJqW9b8yzrbyJfSRBTrX4+YpRTYsJ1nhdRG0ckGW2QZSjnTaFyTEA
 +aHg==
X-Gm-Message-State: ANhLgQ2Xl7ST3bjm3+scn9F8Fc0gPGeaxHB87KWLwE7BabLZ52OeVY7w
 r2NYBkt9Lu+tLs28CdMsxRVCQQicbcjNlcZ+i4/9qw==
X-Google-Smtp-Source: ADFU+vsGUeRfcEyUn3AVXn+K+QwxIx4/yk5dMRmxSDiy+Ohx7K/smDl0uU72bGh0MWL7D17qP4h0RchtWoRO7EqgB9o=
X-Received: by 2002:a05:6512:1042:: with SMTP id
 c2mr9999027lfb.6.1584877793950; 
 Sun, 22 Mar 2020 04:49:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200322112437.18070-1-linus.walleij@linaro.org>
In-Reply-To: <20200322112437.18070-1-linus.walleij@linaro.org>
From: Amit Kucheria <amit.kucheria@linaro.org>
Date: Sun, 22 Mar 2020 17:19:42 +0530
Message-ID: <CAP245DXiU9XUwP-h1CAnORG=a+NAOcZiY7RvkOsgRQSAhSGG4Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: Fix leftover entry-methods for PSCI
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_044956_725136_F3E85D35 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Fabio Estevam <festevam@gmail.com>,
 Chunyan Zhang <chunyan.zhang@unisoc.com>, soc@kernel.org,
 arm-soc <arm@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Shawn Guo <shawnguo@kernel.org>,
 Lists LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 22, 2020 at 4:55 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> These two device trees were either missed or added after
> the commit correcting the "entry-method" from
> "arm,psci" to just "psci" as per the binding.

My patch went in, in 4.18.

The FSL entry went in, in 4.20 and the spreadtrum one in 5.5.

> Fixes: commit e9880240e4f4 ("arm64: dts: Fix various entry-method properties to reflect documentation")

So only minor comment is that it isn't really a fix. We've tried
improving the text in the binding too but somehow people still get
confused. Converting the binding to YAML and enforcing it seems to be
the only course of action left now.

Otherwise,

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>

> Cc: Amit Kucheria <amit.kucheria@linaro.org>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Chunyan Zhang <chunyan.zhang@unisoc.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ARM SoC folks: if this is fine just apply it to the
> tree where appropriate please.
> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-
>  arch/arm64/boot/dts/sprd/sc9863a.dtsi          | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index 0bf375ec959b..55b71bb4baf8 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -53,7 +53,7 @@
>                  * PSCI node is not added default, U-boot will add missing
>                  * parts if it determines to use PSCI.
>                  */
> -               entry-method = "arm,psci";
> +               entry-method = "psci";
>
>                 CPU_PW20: cpu-pw20 {
>                           compatible = "arm,idle-state";
> diff --git a/arch/arm64/boot/dts/sprd/sc9863a.dtsi b/arch/arm64/boot/dts/sprd/sc9863a.dtsi
> index cd80756c888d..2c590ca1d079 100644
> --- a/arch/arm64/boot/dts/sprd/sc9863a.dtsi
> +++ b/arch/arm64/boot/dts/sprd/sc9863a.dtsi
> @@ -108,7 +108,7 @@
>         };
>
>         idle-states {
> -               entry-method = "arm,psci";
> +               entry-method = "psci";
>                 CORE_PD: core-pd {
>                         compatible = "arm,idle-state";
>                         entry-latency-us = <4000>;
> --
> 2.21.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
