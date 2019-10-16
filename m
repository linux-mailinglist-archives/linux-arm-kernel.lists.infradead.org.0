Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F6ED96CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 18:17:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+EbfH6NMb+BSVd73fyn0VdmJv4la2Fo4r0Nqig2ji10=; b=p47BRi+TBjIUsY
	VbzHJoPTob7ZbTct/wMPIzDP5+Ov96GqcyKCMjpIOG/WSxclwMuHnPlIxWts2jnwd+ATyn0hh/GBw
	IH8yxY1f4fg24jU7eGxZx+JKe+aThEAMnCHszxlbu0pnpex1m7mHUIQzgn1spnX7csXuMFV+1hP06
	3TCG8fcK1prPtiQA4PduL1qjoFN22jk0esJddmQaPu7Y2yoNNDizUELTw3BJiJ+XULaie/XOZ7lEh
	X+O27H0kjMeKVneut125tixRiSaNl+8I9wWsStIm++qSROH1iDATrFIhxIBkTMdQhXHycUPdLjCi7
	wxU1zOlSpHFgPYf23l/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKlyz-0004DC-NG; Wed, 16 Oct 2019 16:17:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKlyr-0004Cn-LB
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 16:16:58 +0000
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
 [209.85.208.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A4BFB218DE
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 16:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571242617;
 bh=NDlN1NhoxOUb6sQg78if7MeDpGfgM15YqoKkPUVkIOc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=NSr3xxFtwlcRoWUeK02RIwEbri45WO8oeUTYyIJWrR2+kuqO5BYLD5t1J+PzT1Jiz
 ygU8hbYV6BKEqGnd/iKVEppKKpUikomiReVhMRVncaciGzM9hvdflE0muHgmIO/KD0
 JaaLa7nsqYGq1LjXxyTVvJ7TLOqOSGl4JcFzdMlE=
Received: by mail-lj1-f178.google.com with SMTP id q64so24616764ljb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 09:16:56 -0700 (PDT)
X-Gm-Message-State: APjAAAX5IS1zregG8cXDsOj71xnAEoURFXge432/j8yrlKrDOWNhZV8o
 W2mFNI8Rb3Ohil0pxD9wEpgIjbjhUX4e4Pc3QQk=
X-Google-Smtp-Source: APXvYqwCOKkrXmNKQSP499CXhlqBMZpMhDnOgQ3rTLtNunGGURcys1oCywZ9m+kRVId/EhZGWzjROCb4rQ5GKxsDtwg=
X-Received: by 2002:a2e:1b52:: with SMTP id b79mr26755456ljb.225.1571242614784; 
 Wed, 16 Oct 2019 09:16:54 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20191016145812eucas1p1a3cf3f44a2cff4c32a2270334630c4a2@eucas1p1.samsung.com>
 <20191016145756.16004-1-s.nawrocki@samsung.com>
 <20191016145756.16004-3-s.nawrocki@samsung.com>
In-Reply-To: <20191016145756.16004-3-s.nawrocki@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 16 Oct 2019 19:16:41 +0300
X-Gmail-Original-Message-ID: <CAJKOXPeagcSRUm2Qwwby=NHfWGdQ6KVZ2htb3UmnU2GfX+Ckcg@mail.gmail.com>
Message-ID: <CAJKOXPeagcSRUm2Qwwby=NHfWGdQ6KVZ2htb3UmnU2GfX+Ckcg@mail.gmail.com>
Subject: Re: [PATCH v5 2/4] dt-bindings: arm: samsung: Update the CHIPID
 binding for ASV
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_091657_731436_2ACA68A3 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-pm@vger.kernel.org, sboyd@kernel.org, vireshk@kernel.org,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>, roger.lu@mediatek.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 16 Oct 2019 at 17:58, Sylwester Nawrocki <s.nawrocki@samsung.com> wrote:
>
> This patch adds documentation of new optional "samsung,asv-bin"
> property in the chipid device node and documents requirement of
> "syscon" compatible string.  These additions are needed to support
> Exynos ASV (Adaptive Supply Voltage) feature.
>
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
> Depends on patch ("8d0daa4c89c9 dt-bindings: arm: samsung: Convert
> Exynos Chipid bindings to json-schema") already applied to Rob's
> dt/next.
>
> Changes since v4:
>  - converted to YAML
>
> Changes since v3:
>  - none
>
> Changes since v2:
>  - corrected patch summary line prefix, the patch moved in the
>    sequence
>
> Changes since v1 (RFC):
>  - new patch
>
>  .../bindings/arm/samsung/exynos-chipid.yaml   | 31 +++++++++++++++++--
>  1 file changed, 28 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
> index 9c573ad7dc7d..df84d9e9f4c2 100644
> --- a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
> +++ b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
> @@ -9,17 +9,42 @@ title: Samsung Exynos SoC series Chipid driver
>  maintainers:
>    - Krzysztof Kozlowski <krzk@kernel.org>
>
> +# Custom select to avoid matching all nodes with 'syscon'
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        const: samsung,exynos4210-chipid
> +  required:
> +    - compatible
> +
>  properties:
>    compatible:
> -    items:
> -      - const: samsung,exynos4210-chipid
> +    allOf:

I think it was my mistake to use allOf in other Exynos bindings. It
should not be needed.

Rest looks good so with allOf removal:
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
