Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE1684E11
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 15:58:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0AvR/XyX+uRypBTOwGImGW7Ep7EuAcsDNtWxgsUEtbI=; b=hdesQnmhfUXbxD
	Jyv7y2FX4pIQCmXdfqdbgeA0yOEARDD0WpVapDAI0xhJ1bIySU2+zA9x+YdyWTe/xLjF6AXDHXcfj
	C2DdNti6py4vo3cYT2CY/DvG9WirUxr1d0aB5E5HQx8GPGIckiLKRrVZWSSfamGgXC0aGwZBAIRku
	v0hOmFv+QBVBNP0K/sET/cVAUhvpl/19wKkW4pmsK/CinjMLQobrhj32mS0fa54Fle/aqY2biXJAy
	lnbDAyROFEdgPpSkq3oZm44Qg/M0qwhfZA+mHvsfdKlrd496IlX///2ddgHeFabX4Ro939ItP5jIh
	Nnf1WYrlQQuL/02U/38w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvMSY-0001ki-7O; Wed, 07 Aug 2019 13:58:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvMS7-0001kN-L7
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 13:58:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 52C4028;
 Wed,  7 Aug 2019 06:58:07 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A0C8C3F706;
 Wed,  7 Aug 2019 06:58:06 -0700 (PDT)
Date: Wed, 7 Aug 2019 14:57:58 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH] firmware: arm_scmi: Use {get,put}_unaligned_le32 accessors
Message-ID: <20190807135757.GA27278@e107155-lin>
References: <20190807130038.26878-1-sudeep.holla@arm.com>
 <1565184971.5048.8.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565184971.5048.8.camel@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_065807_730725_1D7B2477 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 03:36:11PM +0200, Philipp Zabel wrote:
> Hi Sudeep,
>
> On Wed, 2019-08-07 at 14:00 +0100, Sudeep Holla wrote:
> > Instead of type-casting the {tx,rx}.buf all over the place while
> > accessing them to read/write __le32 from/to the firmware, let's use
> > the nice existing {get,put}_unaligned_le32 accessors to hide all the
> > type cast ugliness.
> >
> > Suggested-by: Philipp Zabel <p.zabel@pengutronix.de>
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  drivers/firmware/arm_scmi/base.c    |  2 +-
> >  drivers/firmware/arm_scmi/clock.c   | 10 ++++------
> >  drivers/firmware/arm_scmi/common.h  |  2 ++
> >  drivers/firmware/arm_scmi/perf.c    |  8 ++++----
> >  drivers/firmware/arm_scmi/power.c   |  6 +++---
> >  drivers/firmware/arm_scmi/reset.c   |  2 +-
> >  drivers/firmware/arm_scmi/sensors.c | 12 +++++-------
> >  7 files changed, 20 insertions(+), 22 deletions(-)
> >
> > diff --git a/drivers/firmware/arm_scmi/base.c b/drivers/firmware/arm_scmi/base.c
> > index 204390297f4b..f804e8af6521 100644
> > --- a/drivers/firmware/arm_scmi/base.c
> > +++ b/drivers/firmware/arm_scmi/base.c
> [...]
> > @@ -204,14 +204,12 @@ scmi_clock_rate_get(const struct scmi_handle *handle, u32 clk_id, u64 *value)
> >  	if (ret)
> >  		return ret;
> >
> > -	*(__le32 *)t->tx.buf = cpu_to_le32(clk_id);
> > +	put_unaligned_le32(clk_id, t->tx.buf);
> >
> >  	ret = scmi_do_xfer(handle, t);
> >  	if (!ret) {
> > -		__le32 *pval = t->rx.buf;
> > -
> > -		*value = le32_to_cpu(*pval);
> > -		*value |= (u64)le32_to_cpu(*(pval + 1)) << 32;
> > +		*value = get_unaligned_le32(t->rx.buf);
> > +		*value |= (u64)get_unaligned_le32(t->rx.buf + 1) << 32;
>
> Isn't t->rx.buf a void pointer? If I am not mistaken, you'd either have
> to keep the pval local variables, or cast to (__le32 *) before doing
> pointer arithmetic.
>

Ah right, that's the reason I added it at the first place. I will fix that.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
