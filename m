Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FA81792C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 15:53:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YeWfjO3sMbJQcEXgTIAMFlfnvTZ2MJ4g7dwKQ5d/Phc=; b=NniOLFj97G8d7+
	DETQDkO/7/PPMf99w/V/13I06mnmLDe8EavktCPltclQNL2K7SGMwz8bH6q1lAGSp5juxjMyXoXFd
	ITLpCciEIDpp1syzfkJ92P0YTNK0MP2m5RIK16AZHYGE67P9+TAEw3jLOtfpHYYTeobCYL8QCXrrL
	rs1/HHQ2m4hWqYE/v2svwUbTj7aNsRC9Vmdwf+jmDpny/jI5CEJIsyCwcPTxnxmQvbSHQqPjNvOGE
	Vn4OWQsriCpyLLuo7eLNACgWvtFGrjqQlHNlUYANfxVkgN6uQ4G8E4KjyYTVLdFAIa7+AMiPCEtKm
	rOmjPSXN0WiCswyfKnag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9VOl-0001OG-Sh; Wed, 04 Mar 2020 14:53:23 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9VOe-0001Nb-NN
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 14:53:18 +0000
Received: by mail-oi1-f194.google.com with SMTP id r16so2330025oie.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 06:53:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wWNZFP6/iHI5zwSuapXSuHRqaFrcN8o+uRdRQNE6Nug=;
 b=ieLB5r1nPFrUkW7EoiAW34QzepU5f5/QCdyKcVtezbaEu6sLVBAeZzdg0pJz5iARQC
 AIxKPh93gsGmu76SQCUOiLRtK8a2j9Tp/abTZbAtpNmXRVXNOumC9hT4GceBubXJ7Pcn
 r3tqzJ0Jg1/QOok361wrQCdkGgFZrum7yiQ6TM4+zxOJp5Em5m+u8K4KB63pnd+JGooS
 +d4hq5tphrgtS4Wona6aAiRGkaBiOvR7dz93irgLK1lXsD54xcmM1xJo4LDsbGylEcF3
 OYWngwnPFwAzzQF+ouszfqaCfc0h5E1uoukarGmnNqs5B1jVDljrh8ygkqojzubTOET6
 p95g==
X-Gm-Message-State: ANhLgQ1USI6VKQ3F8eEZ1XFSVnI+OSszuReDwTI7YHqMArPA9gvUE+l9
 9Edy13zF6e+FKwIn85u1iA==
X-Google-Smtp-Source: ADFU+vvKzwypp2GuEEpFsHUpxfgMYMkh8H1PZfC99qYfauXsjPgXUgqA1o3iAvtOokU+XCndhZucXQ==
X-Received: by 2002:a54:4099:: with SMTP id i25mr2045874oii.129.1583333595329; 
 Wed, 04 Mar 2020 06:53:15 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t21sm6032597otk.13.2020.03.04.06.53.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 06:53:14 -0800 (PST)
Received: (nullmailer pid 7126 invoked by uid 1000);
 Wed, 04 Mar 2020 14:53:14 -0000
Date: Wed, 4 Mar 2020 08:53:14 -0600
From: Rob Herring <robh@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 5/7] dt-bindings: arm: Fixup the DT bindings for
 hierarchical PSCI states
Message-ID: <20200304145313.GA5144@bogus>
References: <20200303150749.30566-1-ulf.hansson@linaro.org>
 <20200303150749.30566-6-ulf.hansson@linaro.org>
 <20200303170641.GC26191@bogus>
 <CAPDyKFrzy=88fPgesS0_S45rr4SdWthQRcjwnqJzRcMBKCo4=A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFrzy=88fPgesS0_S45rr4SdWthQRcjwnqJzRcMBKCo4=A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_065316_764101_8C0830B3 
X-CRM114-Status: GOOD (  20.67  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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

On Tue, Mar 03, 2020 at 09:50:08PM +0100, Ulf Hansson wrote:
> On Tue, 3 Mar 2020 at 18:06, Rob Herring <robh@kernel.org> wrote:
> >
> > On Tue, Mar 03, 2020 at 04:07:47PM +0100, Ulf Hansson wrote:
> > > The hierarchical topology with power-domain should be described through
> > > child nodes, rather than as currently described in the PSCI root node. Fix
> > > this by adding a patternProperties with a corresponding reference to the
> > > power-domain DT binding.
> > >
> > > Additionally, update the example to conform to the new pattern, but also to
> > > the adjusted domain-idle-state DT binding.
> > >
> > > Fixes: a3f048b5424e ("dt: psci: Update DT bindings to support hierarchical PSCI states")
> > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > ---
> > >  .../devicetree/bindings/arm/psci.yaml         | 33 +++++++++----------
> > >  1 file changed, 15 insertions(+), 18 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
> > > index 0bc3c43a525a..cae668b61265 100644
> > > --- a/Documentation/devicetree/bindings/arm/psci.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/psci.yaml
> > > @@ -102,11 +102,15 @@ properties:
> > >        [1] Kernel documentation - ARM idle states bindings
> > >          Documentation/devicetree/bindings/arm/idle-states.yaml
> > >
> > > -  "#power-domain-cells":
> > > -    description:
> > > -      The number of cells in a PM domain specifier as per binding in [3].
> > > -      Must be 0 as to represent a single PM domain.
> > > +required:
> > > +  - compatible
> > > +  - method
> >
> > No need to move this.
> 
> Okay.
> 
> >
> > >
> > > +patternProperties:
> > > +  "^(power-controller|power-domain)([@-].*)?$":
> > > +    $ref: "../power/power-domain.yaml#"
> >
> > This has to be under an 'allOf' or the rest of the properties are
> > ignored.
> 
> Sure, I had the feeling that something was missing. Thanks for reviewing!
> 
> [...]
> 
> Looks like I should a v2 of the series, or do you prefer to apply some
> of the patches before I resend?

Applied 1-3. I'll wait for v2 of 4 and 5.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
