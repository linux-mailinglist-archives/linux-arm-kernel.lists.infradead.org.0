Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFC3E7569
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 16:47:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=60aJneF2LbUOivl3HhnJtew0DbFR0wpEOIkwWbxKdFc=; b=lL2MCb0CT6Q2Wh
	ct6RCRmPsl7yLURi6EBhfbf+MoHKhkd6PDweefK3USxeEt+T1Q7JEgLduKHX+neN2ufNCFALCGwwu
	XchhHr+qS0jkARPFE4QuS8PXByfYuEXkud049QvQ7jCmJGr+Gg2IBrFp9NRLFzlC+cPqUiapxeVln
	w6y8xEstpIPWzI9WezT8aofmVQsnECiF4QZpbv7gZTbZ+ffaToFCYgbgsLwP4FnFmAH2WD1kCFNZP
	slhn3Bml3C/igmU7m+MJsDNeH5YNP3HgS8a2ofDuaKOkRYIoPPcj48wy8qpB3D2UfZ3bZNWHiXTE4
	tOStXdiUQl44HI/t8cKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP7FD-0005T3-L9; Mon, 28 Oct 2019 15:47:47 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7F3-0005SJ-GT
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 15:47:39 +0000
Received: by mail-ed1-f68.google.com with SMTP id bm15so8237760edb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 08:47:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xeouFKeqxI+jBZsGSFG26F9cl2bzWdfbTz7OAnsdkHs=;
 b=caVCoOPFK+eJC2OvRWnwZB/Hqo1i6MVMqF0CEbDakWafBM3uQLSuHaBoXwiBBGc8CS
 s7f91ixMJ+KLRRlUrnwzE8c190PxktWXeQyuUkNn3PI8agoDM47HtIDbv1/Q31AFuOCw
 7i1rZUZsyF8CuMdBPDiGJiyLXE/qCwe5DZEPXhTl5B1yK0HIfFoXu8/VdWl7/XOcFENK
 wt5RmheanxyLC/e+BN+nq+RU3eXMUatJrtuMkjsyiKkqKqofLr8U0A0IgkBND+cd3Yso
 NVyD4DfcT3ffckyl7kAtUvRoXJ7TWvr0O1umcZ4D0FzQPhpa81KZ0W4ABtfejdkvQ08A
 Y9yQ==
X-Gm-Message-State: APjAAAWW6BBkcBHPP7aBFm0Nhi4m6tXWaCdVKPxNqQuoKpKMSou5CLzt
 a+fAKXiK6Su4r8U84F9dx4I=
X-Google-Smtp-Source: APXvYqzb5eJY5x6+xEfLs30NbzaiquwQRVOIdigZyIXD5gUp8DH2McCek9vsaaleRlSYLLP4jx4E1Q==
X-Received: by 2002:aa7:d0c9:: with SMTP id u9mr19737617edo.217.1572277655066; 
 Mon, 28 Oct 2019 08:47:35 -0700 (PDT)
Received: from pi3 ([194.230.155.180])
 by smtp.googlemail.com with ESMTPSA id g43sm567693edb.14.2019.10.28.08.47.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 08:47:34 -0700 (PDT)
Date: Mon, 28 Oct 2019 16:47:32 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH 3/3] dt-bindings: arm: samsung: Drop syscon compatible
 from CHIPID binding
Message-ID: <20191028154732.GA3746@pi3>
References: <20191028152050.10220-1-s.nawrocki@samsung.com>
 <CGME20191028152100eucas1p2ed6bd2d53670c85f6bf550af0631a55a@eucas1p2.samsung.com>
 <20191028152050.10220-3-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028152050.10220-3-s.nawrocki@samsung.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_084737_544940_597F91DF 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.180 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, vireshk@kernel.org, b.zolnierkie@samsung.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 04:20:50PM +0100, Sylwester Nawrocki wrote:
> The "syscon" compatible string was introduced mainly to allow sharing
> of the CHIPID IO region between multiple drivers. However, such sharing
> can be also done without an additional compatible so remove "syscon".

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof

> 
> Suggested-by: Krzysztof Kozlowski <krzk@kernel.org>
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
>  .../devicetree/bindings/arm/samsung/exynos-chipid.yaml         | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
> index 53c29d567789..afcd70803c12 100644
> --- a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
> +++ b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
> @@ -13,7 +13,6 @@ properties:
>    compatible:
>      items:
>        - const: samsung,exynos4210-chipid
> -      - const: syscon
>  
>    reg:
>      maxItems: 1
> @@ -34,7 +33,7 @@ required:
>  examples:
>    - |
>      chipid@10000000 {
> -        compatible = "samsung,exynos4210-chipid", "syscon";
> +        compatible = "samsung,exynos4210-chipid";
>          reg = <0x10000000 0x100>;
>          samsung,asv-bin = <2>;
>      };
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
