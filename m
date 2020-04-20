Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 361781B0594
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 11:27:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/zh7t5O7Nzk1t+bCeQwqEG+uhCF5t6SI2BgGCHiryKE=; b=ahExH8BlxtEhs1
	c+u3+W1ZnNQuSIB51jAPOwIzMb2af+0AjVKnofnsRLgvEK9V14xc1ZyYLSZ9KhGMvKyNDQLybZqUl
	EaKaoVVSEp21zWESQ5me2bGzpt3En4WS2d4d5zAhtTmLosij2mG5xg+1duqysrcS2wBfIiGbNFP0x
	aJSOjUk3K1FkHzCnr5LGvUGLEEe5zFNsqA7GtfylaqzSQGigQ8xrHOeCGTA7wu8IAGorPvfAdX0Pr
	oQoeZHMxY+S3DeQN5zTi/pc6WSyN00kOr5rUw8rToDWIU8BSYyAJv9WDmgj69sdP52/E9E4vWVe4l
	0IgQD6FVs5KLp6ocPk0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQSho-0002vY-8y; Mon, 20 Apr 2020 09:27:08 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQShf-0002uB-1N
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 09:27:00 +0000
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com
 [209.85.221.171]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id 03K9QZE8019406
 for <linux-arm-kernel@lists.infradead.org>; Mon, 20 Apr 2020 18:26:36 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 03K9QZE8019406
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1587374796;
 bh=4tWlc61cozeZYTaC04eH337I6FVY/GeeggyyoOKC7gk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=bShyymuzoBr9ubt/3/vrcep7Pl3vebqki8KioyAe6VbWLGHZ8ZPQv1hkIoAhunwIW
 OZaL/57KLJyXgve843msBEn72dKvU85IrOCDntscJzak9l6bbAFf0m3CTlRY29Bmtc
 TnhPqx9hlS9Gbm4jRRMdOyrwz0qoBj3PR6ypqwtCyfbh/vLlc16s6z3fHYav1kXM5S
 Yc1pRgkMgAhzpEEBaPRlNlTidY2z5iQ/tof+nm6jpLVGbBbcY+nAsvTdvD7DqBiaCP
 BlGYv4M9r2y/LYCVZuPyx0D0ILdYf0JXirHb9RsQMVxN6NscFep8pUJ2umjsuMiU8g
 mLWB8lOvXNg5A==
X-Nifty-SrcIP: [209.85.221.171]
Received: by mail-vk1-f171.google.com with SMTP id d74so224121vka.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 02:26:36 -0700 (PDT)
X-Gm-Message-State: AGi0PuaaiMB3fkDa0HghdcBDOW1Ljrw/tjvKCZPvHFn7aaBzl6KaPSus
 /tLbfrIO+/tZw4I/n+nRxXQssrT7FGnqQYBziVk=
X-Google-Smtp-Source: APiQypIIvPXDPiIfRLRahAEZuhzxWg54GeIS2/Fl/ntq8dvKnIFu3EdUyrowLqZOqaFPz4C6DZrCoGU0W9GNL4jmBCA=
X-Received: by 2002:a1f:1e11:: with SMTP id e17mr10211271vke.73.1587374795338; 
 Mon, 20 Apr 2020 02:26:35 -0700 (PDT)
MIME-Version: 1.0
References: <158735030084.17831.6159788305648251972.stgit@localhost>
 <20200420121403.aff9fb209ee0da7f20ed3ae2@linaro.org>
In-Reply-To: <20200420121403.aff9fb209ee0da7f20ed3ae2@linaro.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 20 Apr 2020 18:25:59 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT9y2A-dX2Z-2pAsbRvKReoypmoP0hdbWiCGR0G8CuK0w@mail.gmail.com>
Message-ID: <CAK7LNAT9y2A-dX2Z-2pAsbRvKReoypmoP0hdbWiCGR0G8CuK0w@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: Add Akebi96 board support
To: Linaro <masami.hiramatsu@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_022659_415145_83D3E739 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: DTML <devicetree@vger.kernel.org>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Jassi Brar <jaswinder.singh@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 12:14 PM Linaro <masami.hiramatsu@linaro.org> wrote:
>
> Add uniphier-ld20-akebi96 compatible string for
> Akebi96 board support.
>
> Signed-off-by: Masami Hiramatsu <masami.hiramatsu@linaro.org>
> ---
>  .../bindings/arm/socionext/uniphier.yaml           |    1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/socionext/uniphier.yaml b/Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
> index 113f93b9ae55..6caf1f9be390 100644
> --- a/Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
> +++ b/Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
> @@ -51,6 +51,7 @@ properties:
>        - description: LD20 SoC boards
>          items:
>            - enum:
> +              - socionext,uniphier-ld20-akebi96
>                - socionext,uniphier-ld20-global
>                - socionext,uniphier-ld20-ref
>            - const: socionext,uniphier-ld20
>

Your patch submission is still strange.

https://patchwork.kernel.org/patch/11498025/

This patch is broken.

Please make sure it can apply to the mainline code.


The author files is also odd:
From: Linaro <masami.hiramatsu@linaro.org>



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
