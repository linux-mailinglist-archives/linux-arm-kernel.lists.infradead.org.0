Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C35A31F4F57
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 09:44:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7hqnEVZZiJv5jpv+BAnQBxWRrDOHk9bYeS3bnHiNam8=; b=Cb5Y5WB6PA++eW
	HoWbi/r2TqkmpkaBxP1SvWn9dXd6X5O5B3derwp8onZVo90N9groTEN6aXv9/npQHUC+kfyWErM/b
	poLtbLpBxKa+FuZhCHfIaUHir8C/2zpGSHa/n1TzTLnp+6xGxzc2tfBIEiACcn8686PtGo9HX9PGa
	5JmKY6j9oAf09xpvncCmbkzyMfaDJYnxv4gT/TCb+7QD3JkZW70mwCGC9iENlmdp+s9FNlx4Q+KFK
	3e6WhB18AXX95a9no7WVqwwlEXdpygfzjCcCRumwItbiA9TCqNc6JaNp/K/DKfYJH47Ab40aUfYHM
	McA4UMtpT1GvfGxeVgeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jivOy-0006K6-8I; Wed, 10 Jun 2020 07:44:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jivOp-0006JJ-HP
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 07:43:53 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0A7A9207ED;
 Wed, 10 Jun 2020 07:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591775031;
 bh=MJzP5c5PR6Tdbg5SV0+1atLygB5fnKjJ1WvlubG9GS4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hf4+gnJDchJ4uO1MJWnvwmDIcd0y21EoTFChE6EaZZkEydefidjSqoYDeUwvTFisi
 Y81pimw4KmKJySeDSaS7iN4SvDD554JqQWgX+hP/nkJkpi29NqAQFYK8wtda4WVqpr
 /NUQE2lWjpPusrUcQB/evYER22xyO+ecj0qVgh8o=
Date: Wed, 10 Jun 2020 08:43:47 +0100
From: Will Deacon <will@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [RFC PATCH 1/3] dt-bindings: Add ARM PSA FF binding for
 non-secure VM partitions
Message-ID: <20200610074346.GB15939@willie-the-truck>
References: <20200601094512.50509-1-sudeep.holla@arm.com>
 <20200601094512.50509-2-sudeep.holla@arm.com>
 <20200609223551.GA1620273@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609223551.GA1620273@bogus>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_004351_600813_59CBBEE9 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 09, 2020 at 04:35:51PM -0600, Rob Herring wrote:
> On Mon, Jun 01, 2020 at 10:45:10AM +0100, Sudeep Holla wrote:
> > Add devicetree bindings for a Arm PSA FF-A compliant non-secure partition
> > at virtual interface(VMs).
> > 
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  .../devicetree/bindings/arm/arm,psa-ffa.txt   | 47 +++++++++++++++++++
> >  1 file changed, 47 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/arm/arm,psa-ffa.txt
> 
> I'm hoping this goes away if the firmware is discoverable, but if not DT 
> bindings are DT schema now.

We'll need the binding for the kvm host side, because there are plenty
of partition properties that are not discoverable (e.g. number of vCPUs).

I'll have a go a yamlifying what I have...

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
