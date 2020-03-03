Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 307D6178445
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 21:47:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7AePJtzBXOETRjAvj8Ud49DzONB+KufbF2qZotE8O54=; b=VFx4uwc5oTELHS
	kcEfKBPz2wjT/GEyoGv7p/9KQAVTnlRCNsTw2v8P53VG9BeTJsIUH2/arsQQS/CL1vbeETbZTNhTC
	E5bzZwBPFq91udAPZRaeEiyWyv5wuqZgjTG2aEDbjWiDvvcKygOSq+TUVdveQQx4dsYHIscnq3Ozh
	d9p/ia2RfEKx0LCVoPrYLX8Kh53qMMHHUIUnI2zSAQYiGdaLdp4l0ci4TwkldkX9zKviUOqT7pkds
	XiQkkUqf1kw4DGwmOAEWsktvA1kjZWBFxZ2OINKSFgTTuhplDMfI7ZLapA76wgrXyPLCeV0ZOOp7C
	3WY0uDiK4nXtk3rHwaFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9ERw-0000pE-QG; Tue, 03 Mar 2020 20:47:32 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9ERo-0000ob-JE
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 20:47:25 +0000
Received: by mail-vk1-xa43.google.com with SMTP id t129so9366vkg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 12:47:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=H8LzC1FkDwsheob6ti11k957HeWZgskHzijDc9F3t1w=;
 b=iTZkdrGA7NLhytKTFhNkpSopPcJQivDis2tK/K84C2BmU7f//AGarD3Oi4ul4ZA5p2
 7ovMAz3duyVE7c7Gv9VYoR3nLxlVYWx4rLEXsVN6WEQivNege4qeNkPtMcAlLt76rsWq
 Sinub/FqaZUGTX7YrfSxoqY9xjrIuQ2ylwK2Ohy8yi57pBWR94i6Ve/S0VZ5O8r1AekV
 VNQBsdRAjRQoyvR3/N/mMB+VTBIWZpZm/vQA3UOfuXMwRP146yoUc9A+iJ8H80IJ4sZI
 tdqKkxfsSVRdT0cgM7rQ7gytnqS22pY9sB8LGDZRbK1CwwGcRn3E7ApDCfhnm4bvqcm6
 Mz1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=H8LzC1FkDwsheob6ti11k957HeWZgskHzijDc9F3t1w=;
 b=U1GRzoU/NLJWuNgJ89NwIuh1Dr4jad6oG/0O5ZvqIixzFbbcEfy7SVf6MbDxHyiB6x
 94mhYRCoLI5its2oP1TEIIEYnu8xYXb27jKxHiULjoLEUFleqO1DeyVGaL9xCcy9lZqN
 wvagTo327r4bOa6c9u35eqy3YOlDKnBMSbM3sbWI1+PsW2Mk+T6XzUv2K4bQ1GfJNla4
 0GyhmZ+3XFEZMoNtHqc6UbTYY7ZVYHjv+wJXUhWFRjk2CMnmHIZAKZZKnE5K8+9NyZYl
 hCyR8DY4sZ1en2DCw2nG0Hh6gruDj8Yc7xyix3wWyLoq773WscFPJ392acGMrXpvDS+5
 jX3w==
X-Gm-Message-State: ANhLgQ3+5YdNvfac2Pk69btH80UgaDOyo++c9+uQdUJTPorRvowfmU97
 PmEeCaIT0Oig8YvNgFA3m535DHgURaAhbeD4XuEjmQ==
X-Google-Smtp-Source: ADFU+vuERFMpkWbnyw88Lrbiz3fboR9TvgiMmam5QelmxN9WhhxeUBTbt3kTGF03KMhQ35qpLPhxK03B5kLIBCnDqzw=
X-Received: by 2002:ac5:c844:: with SMTP id g4mr3978713vkm.25.1583268443466;
 Tue, 03 Mar 2020 12:47:23 -0800 (PST)
MIME-Version: 1.0
References: <20200303150749.30566-1-ulf.hansson@linaro.org>
 <20200303150749.30566-5-ulf.hansson@linaro.org> <20200303170348.GB26191@bogus>
In-Reply-To: <20200303170348.GB26191@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 3 Mar 2020 21:46:47 +0100
Message-ID: <CAPDyKFpcpjaouXeFOm+Fj+9x7KeaRyBYLY+5oDVLYnmkV93hTg@mail.gmail.com>
Subject: Re: [PATCH 4/7] dt-bindings: power: Extend nodename pattern for
 power-domain providers
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_124724_634789_81B60A9B 
X-CRM114-Status: GOOD (  16.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 3 Mar 2020 at 18:04, Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Mar 03, 2020 at 04:07:46PM +0100, Ulf Hansson wrote:
> > The existing binding requires the nodename to have a '@', which is a bit
> > limiting for the wider use case. Therefore, let's extend the pattern to
> > allow either '@' or '-'.
>
> That's fine, but...
>
> > Additionally, let's update one of the examples to show how the updated
> > pattern could be used.
> >
> > Fixes: a3f048b5424e ("dt: psci: Update DT bindings to support hierarchical PSCI states")
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/power/power-domain.yaml | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/power/power-domain.yaml b/Documentation/devicetree/bindings/power/power-domain.yaml
> > index 207e63ae10f9..dc232759013e 100644
> > --- a/Documentation/devicetree/bindings/power/power-domain.yaml
> > +++ b/Documentation/devicetree/bindings/power/power-domain.yaml
> > @@ -25,7 +25,7 @@ description: |+
> >
> >  properties:
> >    $nodename:
> > -    pattern: "^(power-controller|power-domain)(@.*)?$"
> > +    pattern: "^(power-controller|power-domain)([@-].*)?$"
> >
> >    domain-idle-states:
> >      $ref: /schemas/types.yaml#/definitions/phandle-array
> > @@ -71,13 +71,13 @@ required:
> >
> >  examples:
> >    - |
> > -    power: power-controller@12340000 {
> > -        compatible = "foo,power-controller";
> > +    power: power-domain-foo {
> > +        compatible = "foo,power-domain";
> >          reg = <0x12340000 0x1000>;
>
> When you have 'reg' you should have a unit-address.

Yes, of course, thanks!

[...]

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
