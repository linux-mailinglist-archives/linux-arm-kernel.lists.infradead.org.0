Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B9117D99C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 08:11:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P0WzWd3wjGA7sZrThdaYO0SuKX6yO9mczRUY53HXC4I=; b=NNWAZhp1abHzih
	/mSwbcq49XOFt6YmpCzeYVp7LN5CT+BICquddUGbSHbF8RD6DtA4aArWPexeuqPVtJpI+1BuYIKaS
	N/8T34TdBtd/SIRtIMWkO0mYyJUdNKtDxfVM6zNt9EdTg3qwO3g0z6JAwzxGlFSX9RNySr0DqIMDD
	ZNkXES+n/t9fXyCjXcrU7HE07sPB/annoYzNDLkyTZB5gxv7R8k9HgDt87Lul7L6c66+n3pigE259
	zqkaOQg3Lz7kJ6XY28UD2M4dygY+dEmCAmKV31vUTuhyYHKb2x4eb3H5P9aSbvC4atiAh6vNw+Kev
	NqN4g4OpsNiQiLwnhZng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBCZS-0003Sf-5Q; Mon, 09 Mar 2020 07:11:26 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBCZK-0003Rw-A9
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 07:11:19 +0000
Received: by mail-vs1-xe43.google.com with SMTP id u26so5366380vsg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 00:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nT8kP5pUwnT4nLnCd8ohNGxA8f6jkOWq+CENXf41rN8=;
 b=jj49n68ZLbr5lau47GKrIFokW76BtswCcAJCGBsgoecDZxBXC7RBhaaxC75E9kEVMK
 boVSXSOmjfCPd0S6cyfbmLR8l+N+rvfvVEbE4VkjF3R6cpS2o38EBXPECGQ2zh65Noaa
 BmsUwn+ZIRcDgQEdlYy0HL4rRGcy9/4ILQ2IYGFsi2i+8D3R0+OX68UeqwOZJb9xmjrs
 pfMUBDKBvspsJye1IA0q5yeeQIGd/qj2IRUAzPO93gPLILGU2SwzpmC9puBi8PrM4oS+
 4oBRi4nJYI6i3cGG97FLPMY3fom4TkgwGFuoyfHhrxAzzrl96J3YFjWMiNnXANAHm4MU
 vimQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nT8kP5pUwnT4nLnCd8ohNGxA8f6jkOWq+CENXf41rN8=;
 b=bJw5a9C/TqEShMbCdbbfY842FFhufr9PwMxGv4rxN9qZePIC6W04dhfUgXEymwO/x+
 cp9Ws6ue+j56Uw9CJgOxv0WaKc6hEFkw2EcS8eoiKmoQmoJgUGz2jmL6zqspYPS8AKSy
 c3xHZZd5npjAoS35lbBgxy0QAbWKsnP07XIwHaZSn3xDs5JJKwx5s2D4O+2JbRExrETj
 6/Qg0I492urYdxR+Z64ujO2EUCBbjx4wpNfZ5zlUq8tzZGWukpKoWR5cHJXaxNwzTEk2
 aZGjObHSnIZwQzDvoNkJMuOXvB40swV+P7nh1/NcKbTXt5x4VuiJrC4NqA4IuU/cUuBM
 br3A==
X-Gm-Message-State: ANhLgQ0d1KUuFf+Uq2SH/Q8+2AbZxB8LIfyXN+PRAYrq+snte1zuTyhW
 YiF/tLjsThL4gGO4UKkgs+IaiMbG+Odpytm3oRbMhw==
X-Google-Smtp-Source: ADFU+vvEhKux28Afq7w3NtZUf1yVyALWzvmJdIOTefttBR+Xx/o1VutfGFN9NkAuko1vZs76wUuclul8MlPkP81jstI=
X-Received: by 2002:a67:2ec6:: with SMTP id u189mr4702645vsu.200.1583737876126; 
 Mon, 09 Mar 2020 00:11:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200303150749.30566-1-ulf.hansson@linaro.org>
 <20200303150749.30566-6-ulf.hansson@linaro.org> <20200303170641.GC26191@bogus>
 <CAPDyKFrzy=88fPgesS0_S45rr4SdWthQRcjwnqJzRcMBKCo4=A@mail.gmail.com>
 <20200304145313.GA5144@bogus>
 <CAL_JsqJNKowN-wbzOSCoARTdfayoq37=OT6mOztS=xmJvuFioQ@mail.gmail.com>
In-Reply-To: <CAL_JsqJNKowN-wbzOSCoARTdfayoq37=OT6mOztS=xmJvuFioQ@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 9 Mar 2020 08:10:40 +0100
Message-ID: <CAPDyKFp913_yPzTWp-MG5sE2oqBSn_PFuUREiM8jd=8_ryw_tw@mail.gmail.com>
Subject: Re: [PATCH 5/7] dt-bindings: arm: Fixup the DT bindings for
 hierarchical PSCI states
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_001118_360476_2A43E789 
X-CRM114-Status: GOOD (  22.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Fri, 6 Mar 2020 at 19:29, Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Mar 4, 2020 at 8:53 AM Rob Herring <robh@kernel.org> wrote:
> >
> > On Tue, Mar 03, 2020 at 09:50:08PM +0100, Ulf Hansson wrote:
> > > On Tue, 3 Mar 2020 at 18:06, Rob Herring <robh@kernel.org> wrote:
> > > >
> > > > On Tue, Mar 03, 2020 at 04:07:47PM +0100, Ulf Hansson wrote:
> > > > > The hierarchical topology with power-domain should be described through
> > > > > child nodes, rather than as currently described in the PSCI root node. Fix
> > > > > this by adding a patternProperties with a corresponding reference to the
> > > > > power-domain DT binding.
> > > > >
> > > > > Additionally, update the example to conform to the new pattern, but also to
> > > > > the adjusted domain-idle-state DT binding.
> > > > >
> > > > > Fixes: a3f048b5424e ("dt: psci: Update DT bindings to support hierarchical PSCI states")
> > > > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > > > ---
> > > > >  .../devicetree/bindings/arm/psci.yaml         | 33 +++++++++----------
> > > > >  1 file changed, 15 insertions(+), 18 deletions(-)
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
> > > > > index 0bc3c43a525a..cae668b61265 100644
> > > > > --- a/Documentation/devicetree/bindings/arm/psci.yaml
> > > > > +++ b/Documentation/devicetree/bindings/arm/psci.yaml
> > > > > @@ -102,11 +102,15 @@ properties:
> > > > >        [1] Kernel documentation - ARM idle states bindings
> > > > >          Documentation/devicetree/bindings/arm/idle-states.yaml
> > > > >
> > > > > -  "#power-domain-cells":
> > > > > -    description:
> > > > > -      The number of cells in a PM domain specifier as per binding in [3].
> > > > > -      Must be 0 as to represent a single PM domain.
> > > > > +required:
> > > > > +  - compatible
> > > > > +  - method
> > > >
> > > > No need to move this.
> > >
> > > Okay.
> > >
> > > >
> > > > >
> > > > > +patternProperties:
> > > > > +  "^(power-controller|power-domain)([@-].*)?$":
> > > > > +    $ref: "../power/power-domain.yaml#"
> > > >
> > > > This has to be under an 'allOf' or the rest of the properties are
> > > > ignored.
> > >
> > > Sure, I had the feeling that something was missing. Thanks for reviewing!
> > >
> > > [...]
> > >
> > > Looks like I should a v2 of the series, or do you prefer to apply some
> > > of the patches before I resend?
> >
> > Applied 1-3. I'll wait for v2 of 4 and 5.
>
> In order to fix all warnings by rc5, I fixed up and applied patches 4 and 5.

Thanks a lot, looks good!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
