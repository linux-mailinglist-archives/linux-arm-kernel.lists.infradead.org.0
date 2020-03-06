Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A75717C56E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 19:30:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hH6vaZ0W3qEW2q4u9xt2qHLSUnPOzFv4ey03dkobGCw=; b=FCl+eUIB8SPQdx
	IcvIOlCyHH3uOmGpJztk+QS7Q7y1vVWKXD5zmNjXZcTdQVWxyzOObKcw3Qg9DMQ2XeQjVdYUyQBAk
	a1X4gX4wvxGS8TF8t4bJrsDKuyONKGjh3v7rASePTsuDRZDdf9qvhvOild5/nODFPYCL4FYeNkNIV
	ukzlc0LFhFTkzq02Ak5LhTV2qRjPWPiHbPfdczdXAlBmsY51djT71Sp1wmixG5BHPv+8BYWeZTjXY
	+E8MJ8X0DPFKcDfOiTrsQxZDPOZCxL96DRWJcl1JNYB+B56u9RFJgnI/D6eeyztccs8zd6flpxbhf
	Gpuf3SEgHBekAIGjJj8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAHjN-0003Cm-9N; Fri, 06 Mar 2020 18:29:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAHjD-0003C0-NU
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 18:29:45 +0000
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
 [209.85.222.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF58B206E6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Mar 2020 18:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583519382;
 bh=OlONpDeOIWpAtWkyDwrGE484KEkGVMANhv1y9uDe6Q0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=hrale5HJ5t66txJXatEovSLYYXfdYrPR69TxddaXz2fL5WWpi5o2cVSNovVhdIPHv
 xgRGPhCx1QJFN8HPjAYKL32GMX68cuKdvoTG7FhRf7T/6aFPZKGVTOltKrBP/WNp/b
 eskNQMNoNuiS3ptuJJT6KjJfaJjEvsjxM63fLPTw=
Received: by mail-qk1-f180.google.com with SMTP id e16so3225177qkl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 10:29:41 -0800 (PST)
X-Gm-Message-State: ANhLgQ0z10MIidji2GmtaKjDHmxLXjh297PZkR7bFm5i5S1Cr/c2UvSo
 WwP3tOCiJM0vn+d+TvRJnoBwee9ef4T8UzXedQ==
X-Google-Smtp-Source: ADFU+vuvSgCmNdIo4Vc/u/UHmggYXm29+rU4ejRNLYgy5FQav+zA+HVv5ij8keiUkcfIF8RiCw++jkXG7tlqQlVRmrs=
X-Received: by 2002:a05:620a:12a3:: with SMTP id
 x3mr4356708qki.254.1583519380984; 
 Fri, 06 Mar 2020 10:29:40 -0800 (PST)
MIME-Version: 1.0
References: <20200303150749.30566-1-ulf.hansson@linaro.org>
 <20200303150749.30566-6-ulf.hansson@linaro.org> <20200303170641.GC26191@bogus>
 <CAPDyKFrzy=88fPgesS0_S45rr4SdWthQRcjwnqJzRcMBKCo4=A@mail.gmail.com>
 <20200304145313.GA5144@bogus>
In-Reply-To: <20200304145313.GA5144@bogus>
From: Rob Herring <robh@kernel.org>
Date: Fri, 6 Mar 2020 12:29:29 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJNKowN-wbzOSCoARTdfayoq37=OT6mOztS=xmJvuFioQ@mail.gmail.com>
Message-ID: <CAL_JsqJNKowN-wbzOSCoARTdfayoq37=OT6mOztS=xmJvuFioQ@mail.gmail.com>
Subject: Re: [PATCH 5/7] dt-bindings: arm: Fixup the DT bindings for
 hierarchical PSCI states
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_102943_804722_8E718828 
X-CRM114-Status: GOOD (  22.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Wed, Mar 4, 2020 at 8:53 AM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Mar 03, 2020 at 09:50:08PM +0100, Ulf Hansson wrote:
> > On Tue, 3 Mar 2020 at 18:06, Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Tue, Mar 03, 2020 at 04:07:47PM +0100, Ulf Hansson wrote:
> > > > The hierarchical topology with power-domain should be described through
> > > > child nodes, rather than as currently described in the PSCI root node. Fix
> > > > this by adding a patternProperties with a corresponding reference to the
> > > > power-domain DT binding.
> > > >
> > > > Additionally, update the example to conform to the new pattern, but also to
> > > > the adjusted domain-idle-state DT binding.
> > > >
> > > > Fixes: a3f048b5424e ("dt: psci: Update DT bindings to support hierarchical PSCI states")
> > > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > > ---
> > > >  .../devicetree/bindings/arm/psci.yaml         | 33 +++++++++----------
> > > >  1 file changed, 15 insertions(+), 18 deletions(-)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
> > > > index 0bc3c43a525a..cae668b61265 100644
> > > > --- a/Documentation/devicetree/bindings/arm/psci.yaml
> > > > +++ b/Documentation/devicetree/bindings/arm/psci.yaml
> > > > @@ -102,11 +102,15 @@ properties:
> > > >        [1] Kernel documentation - ARM idle states bindings
> > > >          Documentation/devicetree/bindings/arm/idle-states.yaml
> > > >
> > > > -  "#power-domain-cells":
> > > > -    description:
> > > > -      The number of cells in a PM domain specifier as per binding in [3].
> > > > -      Must be 0 as to represent a single PM domain.
> > > > +required:
> > > > +  - compatible
> > > > +  - method
> > >
> > > No need to move this.
> >
> > Okay.
> >
> > >
> > > >
> > > > +patternProperties:
> > > > +  "^(power-controller|power-domain)([@-].*)?$":
> > > > +    $ref: "../power/power-domain.yaml#"
> > >
> > > This has to be under an 'allOf' or the rest of the properties are
> > > ignored.
> >
> > Sure, I had the feeling that something was missing. Thanks for reviewing!
> >
> > [...]
> >
> > Looks like I should a v2 of the series, or do you prefer to apply some
> > of the patches before I resend?
>
> Applied 1-3. I'll wait for v2 of 4 and 5.

In order to fix all warnings by rc5, I fixed up and applied patches 4 and 5.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
