Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 256AC17B498
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 03:44:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wvm3HFqAGEvFXBMy1qQnmcdczVSWopyWSesYmJy8W4E=; b=qiGfX5AOTSumap
	8+tbHWxZlPIigkmD/bn+uJYcu/YM4HgIH+tiRo2CY9Po2B1iHlcIzl7/0QdPanzv8wKgy2FPrs3MW
	4IQGM8x/A8waSdLXm7UGB1cML9doXoxsr6Z5XnzkYGVXi4s+nL+pKE/WhYPVGDHP1X9jWSl6gaaGF
	tH8WoQLKJkkXt5O1JE9xIFurdcwsZkH/nD4et4dAMs7BzT432OTXpYFz0WxW/zz8RbFwYvF7X2o36
	dXFIIs5Y0QVmZbjA5Yo9SVDZjhRs5FYaM5GUVuhVlQITLyUiZMb3OwSfTyOGtfKgqsmBbUNhZ8Un6
	dMeFIVx/zQ4ou9MrrEWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA2xz-00088z-Vd; Fri, 06 Mar 2020 02:44:00 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA2xq-000875-Mk
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 02:43:52 +0000
Received: by mail-vs1-xe41.google.com with SMTP id w142so599331vsw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 18:43:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9J7QUZ3c6oiJJHOCislF9UdZETLylotw3HiKvwmAMXw=;
 b=E+5Hc2RoJaRGHZP8HBhUfdRXIeqRGN8m1mX+ZoYWKE5rFmO3rqVE3tD2ahZFs+pdHi
 /4HyvgWRRhRjVfxlEvKX9ZPO9o/jWmDyGVazqEkLQNal6+cTur8SCs2MkknKUJJlpzN5
 DZe43h++B4igVoAiSlhNUnAYvsmvti3qQYbV8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9J7QUZ3c6oiJJHOCislF9UdZETLylotw3HiKvwmAMXw=;
 b=G03MSeXrSWvJke5ShkPSViwSu1SdyTy1fzoLsF4v4rIvffioc+JqLO2+0iGrkgz6CB
 5O/EHeyTC7pEPFMsRCLVUpFAItdrUvQ/lwpf0eyO2+vVrxmAeW/WOSKSY1Hh03e5l2Rj
 zjgz5/SOY8Tg5h2UNBBIfyRDN2kCyAWocygdYZcdfMhurlfHwNljw1yAzBq3HSbwnUNt
 xt/9CjDq0qheu6pPCXYfA/Y3BxUub1ll+NbBbkZuOWfyFjVqMDX9dfxqKrorT1Tt9LQy
 kYs32tdfHOZcHLN3zjx1uu0FBtl00j4V0Y25OXQlmbyORgkikOhqWDn1Gdz319/hsRce
 VlyA==
X-Gm-Message-State: ANhLgQ0BNLsltmPmq1JNV1oEYUKSVV7MIZLuJWlyrte7zml7YghoF1zY
 BjenVgA+VuRShI8lyXwhkqnrb8UX95pUM3AFPEQL2w==
X-Google-Smtp-Source: ADFU+vv6/yy6QpFMc26UByJ8foEiCd0tx3UtqsQqGWflBPyiIzZovmd5yFBvcuNwqosvDrUuX+XkrYPkCEaxbPFJbJY=
X-Received: by 2002:a67:d81b:: with SMTP id e27mr927920vsj.79.1583462626960;
 Thu, 05 Mar 2020 18:43:46 -0800 (PST)
MIME-Version: 1.0
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <20200207052627.130118-2-drinkcat@chromium.org> <20200225171613.GA7063@bogus>
 <CANMq1KAVX4o5yC7c_88Wq_O=F+MaSN_V4uNcs1nzS3wBS6A5AA@mail.gmail.com>
 <1583462055.4947.6.camel@mtksdaap41>
In-Reply-To: <1583462055.4947.6.camel@mtksdaap41>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 6 Mar 2020 10:43:35 +0800
Message-ID: <CANMq1KCi1ee87zz6cEWaB04=vEhkTdtW7C+UKW5EFn+1j6Cf3Q@mail.gmail.com>
Subject: Re: [PATCH v4 1/7] dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
To: Nick Fan <nick.fan@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_184350_769279_F6992336 
X-CRM114-Status: GOOD (  21.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Devicetree List <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Sj Huang <sj.huang@mediatek.com>,
 Mark Brown <broonie@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 6, 2020 at 10:34 AM Nick Fan <nick.fan@mediatek.com> wrote:
>
> Sorry for my late reply.
> I have checked internally.
> The MT8183_POWER_DOMAIN_MFG_2D is just a legacy name, not really 2D
> domain.
>
> If the naming too confusing, we can change this name to
> MT8183_POWER_DOMAIN_MFG_CORE2 for consistency.

Thanks! I think I'll keep MT8183_POWER_DOMAIN_MFG_2D (that's fine if
that's the domain name you use internally in your HW design), but I'll
modify power-domain-names to core0/1/2 in the binding.

> Thanks
>
> Nick Fan
>
> On Wed, 2020-02-26 at 08:55 +0800, Nicolas Boichat wrote:
>
> > +Nick Fan +Sj Huang @ MTK
> >
> > On Wed, Feb 26, 2020 at 1:16 AM Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Fri, Feb 07, 2020 at 01:26:21PM +0800, Nicolas Boichat wrote:
> > > > Define a compatible string for the Mali Bifrost GPU found in
> > > > Mediatek's MT8183 SoCs.
> > > >
> > > > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> > > > Reviewed-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
> > > > ---
> > > >
> > > > v4:
> > > >  - Add power-domain-names description
> > > >    (kept Alyssa's reviewed-by as the change is minor)
> > > > v3:
> > > >  - No change
> > > >
> > > >  .../bindings/gpu/arm,mali-bifrost.yaml        | 25 +++++++++++++++++++
> > > >  1 file changed, 25 insertions(+)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> > > > index 4ea6a8789699709..0d93b3981445977 100644
> > > > --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> > > > +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> > > > @@ -17,6 +17,7 @@ properties:
> > > >      items:
> > > >        - enum:
> > > >            - amlogic,meson-g12a-mali
> > > > +          - mediatek,mt8183-mali
> > > >            - realtek,rtd1619-mali
> > > >            - rockchip,px30-mali
> > > >        - const: arm,mali-bifrost # Mali Bifrost GPU model/revision is fully discoverable
> > > > @@ -62,6 +63,30 @@ allOf:
> > > >            minItems: 2
> > > >        required:
> > > >          - resets
> > > > +  - if:
> > > > +      properties:
> > > > +        compatible:
> > > > +          contains:
> > > > +            const: mediatek,mt8183-mali
> > > > +    then:
> > > > +      properties:
> > > > +        sram-supply: true
> > > > +        power-domains:
> > > > +          description:
> > > > +            List of phandle and PM domain specifier as documented in
> > > > +            Documentation/devicetree/bindings/power/power_domain.txt
> > > > +          minItems: 3
> > > > +          maxItems: 3
> > > > +        power-domain-names:
> > > > +          items:
> > > > +            - const: core0
> > > > +            - const: core1
> > > > +            - const: 2d
> > >
> > > AFAIK, there's no '2d' block in bifrost GPUs. A power domain for each
> > > core group is correct though.
> >
> > Good question... Hopefully Nick/SJ@MTK can comment, the non-upstream DTS has:
> > gpu: mali@13040000 {
> > compatible = "mediatek,mt8183-mali", "arm,mali-bifrost";
> > power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_CORE0>;
> > ...
> > }
> >
> > gpu_core1: mali_gpu_core1 {
> > compatible = "mediatek,gpu_core1";
> > power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_CORE1>;
> > };
> >
> > gpu_core2: mali_gpu_core2 {
> > compatible = "mediatek,gpu_core2";
> > power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_2D>;
> > };
> >
> > So I picked core0/core1/2d as names, but looking at this, it's likely
> > core2 is more appropriate (and MT8183_POWER_DOMAIN_MFG_2D might just
> > be a internal/legacy name, if there is no real 2d domain).
> >
> > Thanks.
> >
> > > Rob
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
