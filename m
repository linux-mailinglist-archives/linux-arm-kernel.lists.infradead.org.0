Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB44178450
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 21:51:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9yiYLg4n64N/RSTR6GoLODLDDuETkUml/papOxFPTr8=; b=nWAKTQsnRAgMZ2
	vUxCZG7nyudfTSIA5wQJXmr/LTu+GYY9TR5lCcWaZNnm5JNwwAP9f2SYdON3DiZkVSvS+5Fkt+ryk
	8MfkD/35FhVxF6XfmhIbr4RQVswM5BaPC3yJtfVpyjbtKeUaLikQtqh6UboP64Fvp9dkJBKeLCQ+2
	UwrJy42cCFylTZo1o8K7/7deoDUJwfWY0SGRA6/em/Hw9IOC9gxsJjpq/6HiDtOufZWeOwyQHeJ4M
	GQBUJxSF/cknO0RmGjNhRDQi6zn0mWH1yEKJgWbUFk5ypY135Uf+54Z56psUBNvsqTaPc3iLG0esw
	+CJetI+5YoUvNP4V5Rog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9EVC-0002WA-6U; Tue, 03 Mar 2020 20:50:54 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9EV4-0002Vb-7S
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 20:50:47 +0000
Received: by mail-ua1-x941.google.com with SMTP id h32so1688697uah.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 12:50:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XD3hDQ0araAq5zv8njvI5qg6v85AS493J1Kabe5n9XU=;
 b=WQs8CSKCVyivgzPN2r8nm7npkTrOFE4qfJa67otUlcSCrwaKSlDrF3gGH8TEf+fF84
 v/9skIV1L0DMfuSSIQZjLFKzht8F/ZGa+MgsCy08Bx+vWOgIqBpxJ/PDPdFuev8VqNyA
 h41lMLtPkCTJOhtkGYI7uguOfjiLVSYgoZMlkhibAvlNRLKb6mtXn/YHo9rJuDgJ+Uny
 i00XJnN1ZkX4aEaM8574pbADLLmr065IX3iexNFRyOCjEx8Hq1B13jzs7IFm8K61v/Oj
 6ZXxP3hlFdm4pJYpgHUOC5+zIERiPT/vE9AGPanw3vpwqL5GPZDR4HF/ypGuwGF88vIc
 R8fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XD3hDQ0araAq5zv8njvI5qg6v85AS493J1Kabe5n9XU=;
 b=Bpb83kPuZeGdeIvzEgTHBufGrMvfOnbystcMaiwBWcXls8G6aYAqfFCT6ChBlrT2gY
 cZ0GLtINqPU1NdoaP6e79viMjp+jstQxWWnuYbYEvUQ+yetQ4M9mpR4dTYsxnNGGQDxA
 E71pohAxw8P1jABdqYHzYg8jq9huPoEUh+E7vWZjUrAEtke3uI2gn5viT0XTyS/S3NSf
 GJd6DvA/IVSFAwoLml1kPdC2o9+sMp2HLWfBwAJ3moieVtJQMleENBW2m6HGPnLSjyTE
 wFnxZAGaG0bqpXyB+ONA5BTLd38y7OXcA8VXCZIaNTAcGv1alYUeCqMikPFXq6QQIXwp
 Pvxw==
X-Gm-Message-State: ANhLgQ2AGLAr6UpJ6A+oiXwXmyOlFRD1mkGAvl+sNSdAsGQghJftonRg
 T5jdK8D0zBpb46o+Ur1ig05w+zx//ss6pmteLWzyxg==
X-Google-Smtp-Source: ADFU+vuNcnNmh6x5IJ5M2yTWp4kLMylcBxLsMM68UQIba35vDPyCmNWmxoJ2HjjVcEPSIT6lr5mW0JrpuYGpEQbi/z0=
X-Received: by 2002:ab0:7802:: with SMTP id x2mr3988409uaq.100.1583268644577; 
 Tue, 03 Mar 2020 12:50:44 -0800 (PST)
MIME-Version: 1.0
References: <20200303150749.30566-1-ulf.hansson@linaro.org>
 <20200303150749.30566-6-ulf.hansson@linaro.org> <20200303170641.GC26191@bogus>
In-Reply-To: <20200303170641.GC26191@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 3 Mar 2020 21:50:08 +0100
Message-ID: <CAPDyKFrzy=88fPgesS0_S45rr4SdWthQRcjwnqJzRcMBKCo4=A@mail.gmail.com>
Subject: Re: [PATCH 5/7] dt-bindings: arm: Fixup the DT bindings for
 hierarchical PSCI states
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_125046_271899_A333BBAB 
X-CRM114-Status: GOOD (  18.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
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

On Tue, 3 Mar 2020 at 18:06, Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Mar 03, 2020 at 04:07:47PM +0100, Ulf Hansson wrote:
> > The hierarchical topology with power-domain should be described through
> > child nodes, rather than as currently described in the PSCI root node. Fix
> > this by adding a patternProperties with a corresponding reference to the
> > power-domain DT binding.
> >
> > Additionally, update the example to conform to the new pattern, but also to
> > the adjusted domain-idle-state DT binding.
> >
> > Fixes: a3f048b5424e ("dt: psci: Update DT bindings to support hierarchical PSCI states")
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >  .../devicetree/bindings/arm/psci.yaml         | 33 +++++++++----------
> >  1 file changed, 15 insertions(+), 18 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
> > index 0bc3c43a525a..cae668b61265 100644
> > --- a/Documentation/devicetree/bindings/arm/psci.yaml
> > +++ b/Documentation/devicetree/bindings/arm/psci.yaml
> > @@ -102,11 +102,15 @@ properties:
> >        [1] Kernel documentation - ARM idle states bindings
> >          Documentation/devicetree/bindings/arm/idle-states.yaml
> >
> > -  "#power-domain-cells":
> > -    description:
> > -      The number of cells in a PM domain specifier as per binding in [3].
> > -      Must be 0 as to represent a single PM domain.
> > +required:
> > +  - compatible
> > +  - method
>
> No need to move this.

Okay.

>
> >
> > +patternProperties:
> > +  "^(power-controller|power-domain)([@-].*)?$":
> > +    $ref: "../power/power-domain.yaml#"
>
> This has to be under an 'allOf' or the rest of the properties are
> ignored.

Sure, I had the feeling that something was missing. Thanks for reviewing!

[...]

Looks like I should a v2 of the series, or do you prefer to apply some
of the patches before I resend?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
