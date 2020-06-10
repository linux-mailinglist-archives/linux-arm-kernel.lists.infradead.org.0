Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9221F5059
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 10:33:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QBKF6+7Y1+16Gcp0imgw9XxcibViNdtvMrcapU5yoOo=; b=oCBkAhcJo2JqOW
	409uVSRY54w0eDKZadgMcDot6GQOiz+OFl1biWIMcfBAqFFrY2V+nPJvgkIz0kaCAiaDtLwu2xhpI
	S0lUlDCC9tQiu5tXr5HBppEtMZ/V3fnhEVoAqE5rmsNXCFua9NUQXdXbXI0SNgn4UdQa1p9C+wHaS
	qZcXyc6Ly2qtHZ1jz2O4Av5YdUXeB+kN5+MM5H4Hi6HxRje/mk+OplLitL8KW6PivT6z6NdcWDTSn
	pIPlq1z8UY5pVw/MCbdU63y5G4o+0SxJcV7isCt8q2tqCTbNKEGzj0tpwlJE7aS2PfVpRCjKNwfsr
	pyn4+3ERiXxDLSjmyuWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiwAQ-0003li-8F; Wed, 10 Jun 2020 08:33:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiwAE-0003lD-Fv
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 08:32:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C94771F1;
 Wed, 10 Jun 2020 01:32:49 -0700 (PDT)
Received: from bogus (unknown [10.37.12.97])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 37EC23F6CF;
 Wed, 10 Jun 2020 01:32:47 -0700 (PDT)
Date: Wed, 10 Jun 2020 09:32:37 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [RFC PATCH 1/3] dt-bindings: Add ARM PSA FF binding for
 non-secure VM partitions
Message-ID: <20200610083237.GA4867@bogus>
References: <20200601094512.50509-1-sudeep.holla@arm.com>
 <20200601094512.50509-2-sudeep.holla@arm.com>
 <20200609223551.GA1620273@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609223551.GA1620273@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_013250_586563_8F09AE1A 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
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
>

Yes, consider it gone. I introduced it to couple of reasons both of which
are now irrelevant. We may revisit this if we need it for Rx/Tx buffer
information. The KVM host may need the binding, this was for the guests/
partitions as Will has already mentioned.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
