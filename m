Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF6E16F48F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 01:56:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3gCw7rbYLzXoEK+b3pw8XdZHA8mMn3XqtoXQ9KpATuk=; b=EgkqUNY9xRVFmH
	bopt3xxeCP/KqLMO2pXVAhxvz8hCN6G4/9LLWnyq5D3JbICemax7KDr/FmScssZcZ4jsWfn2YBarJ
	x/uvVdH+r6ma4Q4F+/8KZ5Dmvoo2m6X/l9hJhGH5c9Ut5uxfvclhn8KiIBbZjOJjGdlG+JCaQ+Yj0
	lGzlur4dmkJeoj/AP8zTdXw+lLA51/Hx3NCNcogQMdGDoeyM7IFh499hE7HUZlSqDJW2730DPvnGZ
	5rZnw8EkPiJGcHPigJ32bb9HDO53DQzJvPJ/QFt+xyBIohkTp/LBfPwR/gVtQ4VBABm5WhNOS7Zyh
	rEJIiznB0jwNULvggBrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6kzj-0005mx-Df; Wed, 26 Feb 2020 00:56:11 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6kza-0005l3-IB
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 00:56:03 +0000
Received: by mail-qt1-x843.google.com with SMTP id l16so1100239qtq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 16:56:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KTr07x+ZuW+Wkx10CmLSTlKU+6ax9EaUyaBXKAF3OqM=;
 b=Y7BmXd6Mfp+6AZ5v7tzuyEct+NldmkDhFbkaCIoOl6/SfR059Z2NK44rQkbVc+4j7t
 n0RrGob1lJqy4jSvVTBHC3x7e53bCvZCs0af4K9zwmRDwcKU3x3vY+Goiu220sgiSxhg
 LkPCOLYG0N6aE3fNLH+xw2IiIErd9z+gBVRxo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KTr07x+ZuW+Wkx10CmLSTlKU+6ax9EaUyaBXKAF3OqM=;
 b=gEFg/KQgrvEqHHTXYXO8BLAZwI8dDbbtY234ssHVGS1/yPBsxr/8bSvvHyas6Kl/oU
 W1W2EkmxREtQ4FWGFVmeMV2E2x4qb/ch4QaFMv0z1F/EBaz2blbmoKkaZE1Mwb7F99Wi
 cpoWdUTFbcXEgzHQl53KmyxL3g64aRVPfBZBsILSEDdNV1rfsQe4Zh0CvGFxXvxhyDDD
 BiYWZgoK+vA2ikzpLEYD8pzhRDJOWVrHV8nLUE8dVXv8H7/AcLZRqNIeFmDZxSC4HFqO
 Vfwh9fHx6noFIsYJEEDJs1zJia3A3Qho0SMSqiy0XrD+fYQWYYBFEmUlerw+yU22txa6
 +N1A==
X-Gm-Message-State: APjAAAXUcbfb9O3L+RHxRzRm3jboQ1qgWPSQBpjgjd8l2svlL0C0ofW/
 JUfSJ6OvR5tBlk7IJuaQZw0idx5ZE2erFbBfM1JXMw==
X-Google-Smtp-Source: APXvYqwn/doZ3Sl5MivNf7aeBY0i9IjKThPIXnCkYsjm6+vHV5atNhFSLqXf91LmG+mgvcdhqR+658LdmJfFTgy7fYc=
X-Received: by 2002:ac8:72d6:: with SMTP id o22mr1774873qtp.174.1582678561028; 
 Tue, 25 Feb 2020 16:56:01 -0800 (PST)
MIME-Version: 1.0
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <20200207052627.130118-2-drinkcat@chromium.org> <20200225171613.GA7063@bogus>
In-Reply-To: <20200225171613.GA7063@bogus>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 26 Feb 2020 08:55:50 +0800
Message-ID: <CANMq1KAVX4o5yC7c_88Wq_O=F+MaSN_V4uNcs1nzS3wBS6A5AA@mail.gmail.com>
Subject: Re: [PATCH v4 1/7] dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
To: Rob Herring <robh@kernel.org>, Nick Fan <nick.fan@mediatek.com>, 
 Sj Huang <sj.huang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_165602_603425_F9236DEB 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Mark Brown <broonie@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+Nick Fan +Sj Huang @ MTK

On Wed, Feb 26, 2020 at 1:16 AM Rob Herring <robh@kernel.org> wrote:
>
> On Fri, Feb 07, 2020 at 01:26:21PM +0800, Nicolas Boichat wrote:
> > Define a compatible string for the Mali Bifrost GPU found in
> > Mediatek's MT8183 SoCs.
> >
> > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> > Reviewed-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
> > ---
> >
> > v4:
> >  - Add power-domain-names description
> >    (kept Alyssa's reviewed-by as the change is minor)
> > v3:
> >  - No change
> >
> >  .../bindings/gpu/arm,mali-bifrost.yaml        | 25 +++++++++++++++++++
> >  1 file changed, 25 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> > index 4ea6a8789699709..0d93b3981445977 100644
> > --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> > +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> > @@ -17,6 +17,7 @@ properties:
> >      items:
> >        - enum:
> >            - amlogic,meson-g12a-mali
> > +          - mediatek,mt8183-mali
> >            - realtek,rtd1619-mali
> >            - rockchip,px30-mali
> >        - const: arm,mali-bifrost # Mali Bifrost GPU model/revision is fully discoverable
> > @@ -62,6 +63,30 @@ allOf:
> >            minItems: 2
> >        required:
> >          - resets
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: mediatek,mt8183-mali
> > +    then:
> > +      properties:
> > +        sram-supply: true
> > +        power-domains:
> > +          description:
> > +            List of phandle and PM domain specifier as documented in
> > +            Documentation/devicetree/bindings/power/power_domain.txt
> > +          minItems: 3
> > +          maxItems: 3
> > +        power-domain-names:
> > +          items:
> > +            - const: core0
> > +            - const: core1
> > +            - const: 2d
>
> AFAIK, there's no '2d' block in bifrost GPUs. A power domain for each
> core group is correct though.

Good question... Hopefully Nick/SJ@MTK can comment, the non-upstream DTS has:
gpu: mali@13040000 {
compatible = "mediatek,mt8183-mali", "arm,mali-bifrost";
power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_CORE0>;
...
}

gpu_core1: mali_gpu_core1 {
compatible = "mediatek,gpu_core1";
power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_CORE1>;
};

gpu_core2: mali_gpu_core2 {
compatible = "mediatek,gpu_core2";
power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_2D>;
};

So I picked core0/core1/2d as names, but looking at this, it's likely
core2 is more appropriate (and MT8183_POWER_DOMAIN_MFG_2D might just
be a internal/legacy name, if there is no real 2d domain).

Thanks.

> Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
