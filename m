Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D88218B931
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 15:19:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dh6eLQ0ErWFxDOO8nmQHlxDCfvGT8pWhXSU80Q4mOUA=; b=bfkrt1jjqkaZbG
	7QA55B9rnHtphxI4c39MWfzJK58jR6fCYEqGf8rUjCA/vuAVTgjhWOf/qVfwQBzbD8sfNSPCjECwp
	3Qr7nlgmmDpk4q641LS9x8wJWl9wHUlkxHQiI6HXupOT7EqXaaXfAFwn5hfEl5n5AzRRbWCd3Z5NT
	e8PACrh0VhuHY2kF02KnJKNFG2RPc/p6sxokC8Bpj7bpTQTwx00CMm2MQRLdHu+euHTi/VID1G/W4
	F1/I51wZ0K4/PAM8CDyZYs12Ox7btp+jJ4VUydvDNOpftdutASECoMHnJRdfucyxCD2bW1gTafryK
	/jBMPqg4eeclDUQ6Pc8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEw1T-0003gn-3e; Thu, 19 Mar 2020 14:19:47 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEw1K-0003gA-JH
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 14:19:40 +0000
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com
 [209.85.217.42]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id 02JEJ6N4013583
 for <linux-arm-kernel@lists.infradead.org>; Thu, 19 Mar 2020 23:19:07 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 02JEJ6N4013583
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1584627547;
 bh=w1lbHoDNgA6TwOiiJZhZx8M7iyfr3Ed70vDIRSfWaiA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JmygXgMYln+Hv9uz66IB4Y/m6/YDaGHqDhaJQohiqqhgDR187g8zADDL3Q8wm42Ua
 Kb/foXnTs9Jyy/gC+oKSua6jBI9fGfvOfIIPLfmkS7bM7OOfILPey3zBMISqXAy3K5
 d/dsOGvPnxoRcSVBO1cjM72DRW+qk3QqdjEqqaq3jiEUSUVwlzJwkDUy6AAZadLwey
 GOFTsJvjYUChUzEl8EI1vq/Nl/XNKTpsh1EjKCjdSJ1WcVrBel685Aupr8jIoZfG9N
 J3QshXrP4NJLaPlY+DkFzd4BSAuoYbRHsIJQgM4IQb6I5do49Qw82OZFLXmg08e0bp
 z/Nl8VJgAqm6w==
X-Nifty-SrcIP: [209.85.217.42]
Received: by mail-vs1-f42.google.com with SMTP id x206so1700581vsx.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 07:19:07 -0700 (PDT)
X-Gm-Message-State: ANhLgQ0cmym7VbaJssDS3Nw5DlmLGQj/tdfpX2TnRR/YsChKOIL3tLhX
 Enrgwu+4nNUWUgv3hSQ51e6gSr3U0VBWHuJ52tA=
X-Google-Smtp-Source: ADFU+vuilX6NSpIv5I8KSxSguokUibNXJs2yofeG2OKKLHVzmKA1clQOz5tEg/6qziFICi7KIwK4EHdU/Rnj219Bb0k=
X-Received: by 2002:a67:33cb:: with SMTP id z194mr2384802vsz.155.1584627545771; 
 Thu, 19 Mar 2020 07:19:05 -0700 (PDT)
MIME-Version: 1.0
References: <1584604252-13172-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1584604252-13172-2-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1584604252-13172-2-git-send-email-hayashi.kunihiko@socionext.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 19 Mar 2020 23:18:29 +0900
X-Gmail-Original-Message-ID: <CAK7LNASmZRszPB-o4pzeu0aQM4_cQBkRxwFM2T4_onHA4-1r8w@mail.gmail.com>
Message-ID: <CAK7LNASmZRszPB-o4pzeu0aQM4_cQBkRxwFM2T4_onHA4-1r8w@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: dma: uniphier-xdmac: Remove extension
 register region description
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_071938_974646_C24FCACF 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: DTML <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jassi Brar <jaswinder.singh@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 4:51 PM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:
>
> The address of the extension register region in example is incorrect,
> however, this extension register region is optional


On which SoC is it optional?

In your previous DT submission, every reg was,
like this:

reg = <0x5fc10000 0x1000>, <0x5fc20000 0x800>;



and you meant

reg = <0x5fc10000 0x1000>, <0x5fc12000 0x800>;

?

> and isn't currently
> referred from the driver, so the description of the region should be
> suppressed until referred by the driver.

This sounds like you plan to get it back
as you extend the driver.

I checked the datasheet. This controller has more registers,
so you split the reg into small chunks, the final form will look scary:

reg = <0x5fc10000 0x1000>, <0x5fc12000 0x800>,
      <0x5fc14000 0x100>,  <0x5fc15000 0x100>;


My question is why you did not use a single reg tuple
that covers the whole registers.

Is any other hardware reg interleaved in between?






>
> Fixes: b9fb56b6ba8a ("dt-bindings: dmaengine: Add UniPhier external DMA controller bindings")
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml b/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
> index 86cfb59..f4c3f49 100644
> --- a/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
> +++ b/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
> @@ -24,7 +24,6 @@ properties:
>    reg:
>      items:
>        - description: XDMAC base register region (offset and length)
> -      - description: XDMAC extension register region (offset and length)
>
>    interrupts:
>      maxItems: 1
> @@ -54,7 +53,7 @@ examples:
>    - |
>      xdmac: dma-controller@5fc10000 {
>          compatible = "socionext,uniphier-xdmac";
> -        reg = <0x5fc10000 0x1000>, <0x5fc20000 0x800>;
> +        reg = <0x5fc10000 0x1000>;
>          interrupts = <0 188 4>;
>          #dma-cells = <2>;
>          dma-channels = <16>;
> --
> 2.7.4
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
