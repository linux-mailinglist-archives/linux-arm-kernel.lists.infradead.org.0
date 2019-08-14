Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 702118D40F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 15:01:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mvvyGO09xfngZ8SjA9PS1vqRFeHVEL2EKBgYvZs71Rg=; b=dPluYUxYJYJF6M
	QoBNTBCNM0rSl1J3LGbMqpS9p//3+4vnMVKh1hfttVkCFTDJ5KgDVP6VhxxREl+Y5mjzrHsNMeQrf
	KlYPM80QyeXKNENsMHGAnhsifXRHuas6zrkZ84UwYyvy4gtf2Kta4h8+Zcvao6KlvSR8w+JwlRKut
	y7gx3HewiBbpFnPbbOc/4BLM2k5yuTElCkP3YCISpQDio+EMmn4w/JYwPQU/ynHL61ah397g4Movl
	UF5uJU/xsS8Tgzp07gEg455Lv2Rlm2Y3iiQF8viXPtZ2w5CeuAlzWHMcvUdL7qLx5NlUj4X9pJpc5
	J1nIzn+mZQSbtIOnxzGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxstu-0002BU-Qg; Wed, 14 Aug 2019 13:01:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxstj-0002Aq-IT
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 13:01:04 +0000
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
 [209.85.208.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E54792084D
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 13:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565787663;
 bh=sxfCJqJU/qaOohNVgHPQHtwC8Q7H8C3hXjEXkCV0LNo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=tiBxKOHYPSR9Y16yt71V0kc9fqsUD3IQPem9PJ+ncdv72uoSxmqJtsd0RLTgE1vhZ
 zPnAJCALKkwQ1OQTB7iDM9vbtg1WlAG9wCYw+O4SUFaOQa7pTN/CQsOM92O6VI18V/
 bXMlvMyNZfAyuY9uE3S+ddZXnYhANUtNV02Jxty0=
Received: by mail-lj1-f182.google.com with SMTP id h15so11028980ljg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 06:01:02 -0700 (PDT)
X-Gm-Message-State: APjAAAXTxUt1rTbyJ7LswCHfjYwjQMUMdf9v/RwLBOT5UAim1qckGZy1
 w3q1E6K5U/DBKrJA9m3bpKYP1h43JlGJTBnUDcc=
X-Google-Smtp-Source: APXvYqxsCMPhEB6d19AkAwrH2WmpslgogpPgDenxgBgQD8gEdZbqPk9ibFEDJH1FhqxoSOjrLiasHqOPI013151j9Zs=
X-Received: by 2002:a2e:8197:: with SMTP id e23mr4590849ljg.80.1565787661091; 
 Wed, 14 Aug 2019 06:01:01 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190813150858eucas1p1a5fbf425753e4911c50631c3a6d34ffd@eucas1p1.samsung.com>
 <20190813150827.31972-1-s.nawrocki@samsung.com>
 <20190813150827.31972-8-s.nawrocki@samsung.com>
In-Reply-To: <20190813150827.31972-8-s.nawrocki@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 14 Aug 2019 15:00:50 +0200
X-Gmail-Original-Message-ID: <CAJKOXPdfe-ON9wmy30YGoGG_LzwhEuXmcv_-kt07cS-Wd3cG8w@mail.gmail.com>
Message-ID: <CAJKOXPdfe-ON9wmy30YGoGG_LzwhEuXmcv_-kt07cS-Wd3cG8w@mail.gmail.com>
Subject: Re: [PATCH v3 7/9] soc: samsung: Update the CHIP ID DT binding
 documentation
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_060103_656410_6D56DCC6 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-pm@vger.kernel.org, pankaj.dubey@samsung.com,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 robh+dt@kernel.org, kgene@kernel.org, vireshk@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 13 Aug 2019 at 17:09, Sylwester Nawrocki <s.nawrocki@samsung.com> wrote:
>
> This patch adds documentation of a new optional "samsung,asv-bin"
> property in the chipid device node and documents requirement of
> "syscon" compatible string.  These additions are needed to support
> Exynos ASV (Adaptive Supply Voltage) feature.
>
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
> Changes since v2:
>  - none
>
> Changes since v1 (RFC):
>  - new patch
> ---
>  .../devicetree/bindings/arm/samsung/exynos-chipid.txt  | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.txt b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.txt
> index 85c5dfd4a720..be3657e6c00c 100644
> --- a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.txt
> +++ b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.txt
> @@ -1,12 +1,18 @@
> -SAMSUNG Exynos SoCs Chipid driver.
> +SAMSUNG Exynos SoC series CHIPID subsystem
>
>  Required properties:
> -- compatible : Should at least contain "samsung,exynos4210-chipid".
> +- compatible : Should at least contain "samsung,exynos4210-chipid", "syscon".
>
>  - reg: offset and length of the register set
>
> +Optional properties:
> + - samsung,asv-bin : Adaptive Supply Voltage bin selection. This can be used
> +   to determine the ASV bin of an SoC if respective information is missing
> +   in the CHIPID registers or in the OTP memory. Possible values: 0...3.
> +
>  Example:
>         chipid@10000000 {
>                 compatible = "samsung,exynos4210-chipid";

Please update the example with new required compatible.

Best regards,
Krzysztof

>                 reg = <0x10000000 0x100>;
> +               samsung,asv-bin = <2>;
>         };
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
