Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9BD1D3498
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 17:10:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NfBNSz78/O7mU8153IxxmfI8wRP12nGwctG5LN9iKlU=; b=mQwC6mdwb5U7o7
	PS+alB/7YTX0sw/YDqCwXirFI+gtjPHChldauGFbb8PCxa+xThCeksQ2QfLg1q2x3tFqD/9DcJHzZ
	YdbA7+3AR8LhjmvmTpoBlWY1dagQJFYm86butthBB1g4OI7QPXs04jkeGz8H/QwLJIA1Tfpo6lWdI
	2w1srol/dYG3nqWBEruZvKgRqFlAccNBmZFfzTZBltMZcGPHV2+siVVG/+R15aaIrRMPwQFpMKxFD
	ziU0r332qjEmUrT4a4FXUtCq+hVMQOOkQwbdYE1eFEAV5d5fcuBokn19bnu+50pZo1yZ6cwtxELWr
	b5IoGbREclMm9LxbomdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZFUz-0004rS-Ml; Thu, 14 May 2020 15:10:13 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZFUZ-0004oE-IN
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 15:09:49 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 8C18B80C0;
 Thu, 14 May 2020 15:10:33 +0000 (UTC)
Date: Thu, 14 May 2020 08:09:41 -0700
From: Tony Lindgren <tony@atomide.com>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCH 1/6] dt-bindings: omap: Update PRM binding for genpd
Message-ID: <20200514150941.GN37466@atomide.com>
References: <20200512203852.29499-1-tony@atomide.com>
 <20200512203852.29499-2-tony@atomide.com>
 <352b8c4d-1233-e208-63ce-c116632546a9@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <352b8c4d-1233-e208-63ce-c116632546a9@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_080947_690968_668417BF 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
 "Andrew F . Davis" <afd@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tero Kristo <t-kristo@ti.com> [200514 07:40]:
> On 12/05/2020 23:38, Tony Lindgren wrote:
> > The PRM (Power and Reset Module) has registers to enable and disable
> > power domains, so let's update the binding for that.
> > 
> > Cc: devicetree@vger.kernel.org
> > Cc: Rob Herring <robh@kernel.org>
> > Signed-off-by: Tony Lindgren <tony@atomide.com>
> > ---
> >   Documentation/devicetree/bindings/arm/omap/prm-inst.txt | 4 ++++
> >   1 file changed, 4 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/omap/prm-inst.txt b/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
> > --- a/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
> > +++ b/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
> > @@ -18,12 +18,16 @@ Required properties:
> >   		(base address and length)
> >   Optional properties:
> > +- #power-domain-cells:	Should be 0 if the PRM instance is a power domain.
> >   - #reset-cells:	Should be 1 if the PRM instance in question supports resets.
> > +- clocks: Functional and interface clocks managed by the power domain
> > +- clock-names: Names for the clocks using "fck" and "ick" naming
> 
> Whats the purpose of the clocks for PRM? It looks like you are using this
> with ABE domain on omap4/omap5, but why is this needed?

Hmm good point, seems to be just confusion at my end on what should
handle the clocks for the interconnect instances. We can just leave
out the clocks here probably.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
