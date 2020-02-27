Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A751725E1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 19:03:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtXtbkvlEHIbSt70tUTuu2bVZgKwKiFhC5NuPicLdsQ=; b=GgYTx+pIrARg+P
	uTx23+epcOKdmOO8fd9rHn/u3DOdnly3wUdjCW7Y3FamnEVXftKcTEG8WjUTeF6sSCL5Kp0SIIuIv
	qa4qb4OaPeFPVMIA5MPdgsXfuG/OFB6WhTaqIvWTaU4mqw67R2eS/M564oUh9QMO25/P4b66zqNxk
	fWyIWPtHlf0ZFQWz7U/mczIpPZTRrOY6VIV0YjVpQ8u4NfjyCrbm6l+kFAw9bM4g7Lcw9einG35Wu
	oqdSA3WAOXkUmIx8Fv94woYDySGjyqDfBQ7peMO6Fq2OS0wD6fnZIXOLZCeTSfXWxaPzljsRIkKVu
	o0TgPT6ByWZyIsvQZLzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7NVA-0003De-OK; Thu, 27 Feb 2020 18:03:12 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7NV2-0003DG-Ce
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 18:03:05 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 1715780C0;
 Thu, 27 Feb 2020 18:03:48 +0000 (UTC)
Date: Thu, 27 Feb 2020 10:03:01 -0800
From: Tony Lindgren <tony@atomide.com>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 0/3] Drop PRUSS and OMAP4 IPU/DSP hwmod data
Message-ID: <20200227180301.GJ37466@atomide.com>
References: <20200224232152.25562-1-s-anna@ti.com>
 <20200226182603.GT37466@atomide.com>
 <0f47de68-6b89-4219-5ff9-a9c39b6bc759@ti.com>
 <20200227012705.GD37466@atomide.com>
 <188af17e-6293-9e97-b142-3b5f5b69bbd8@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <188af17e-6293-9e97-b142-3b5f5b69bbd8@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_100304_468856_0606E084 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Tero Kristo <t-kristo@ti.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Suman Anna <s-anna@ti.com> [200227 17:40]:
> On 2/26/20 7:27 PM, Tony Lindgren wrote:
> > * Suman Anna <s-anna@ti.com> [200226 20:31]:
> >> On 2/26/20 12:26 PM, Tony Lindgren wrote:
> >>> * Suman Anna <s-anna@ti.com> [200224 15:22]:
> >>>> Hi Tony,
> >>>>
> >>>> The following patches drop the hwmod data for PRUSS on AM33xx and AM437x
> >>>> SoCs, and for the IPU and DSP processors on OMAP4 SoC. Patches are based
> >>>> on 5.6-rc1. Please consider these for the 5.7 merge window.
> >>>>
> >>>> I will be submitting another series tomorrow to add the ti-sysc support
> >>>> for PRUSS. Nevertheless, the PRUSS hwmods will not be used going forward
> >>>> and can be dropped independently.
> >>>>
> >>>> The IPU and DSP hwmods were never added for OMAP5 and DRA7xx/AM57xx SoCs,
> >>>> and the MMU data was already dropped for 5.6-rc1, as it has all been
> >>>> converted to ti-sysc and omap-prm. The DT nodes for these will follow
> >>>> for the next merge window once the current OMAP remoteproc DT support
> >>>> is accepted [1].
> >>>
> >>> Well we still need the hwmod data until dts data is in place to reset
> >>> and idle these modules. So I'll wait with this set until we have the
> >>> dts changes in place.
> >>
> >> Not really, you cannot just idle these processors devices by themselves
> >> without the cores running. The hwmod code actually keeps these in the
> >> default reset asserted state itself, so no harm done in dropping the
> >> data. The remoteproc bindings are acked, so for next merge window, we
> >> can post the dts nodes once those get merged.
> > 
> > OK if they are in reset from the bootloader.. I'll try to check.
> 
> OK thanks. FWIW, we have never added the hwmods for IPUs and DSPs on
> OMAP5 and DRA7xx/AM57xx, and most of them are pseudo hwmods anyway for
> reset purposes, and do not get exercised until the remoteproc driver
> would have specifically requested for them.

OK yeah and for omap4 they seem to be in reset like you said.
Applying these into omap-for-v5.7/accelerators thanks.

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
