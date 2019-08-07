Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C633E84EDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 16:38:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wu/6SYwlI/bRvO+K3OBTOeXFWN1uqthrMwtViIyrVlw=; b=CGaesTqnNNZDYq
	9BWcvBxE1B0KCAJ6+IhgMQNm2ScqKdaP2WoUvZ01Ygrfbl+dNhMPvTDFpQf6YQfmKfzR3RxbU5yko
	1ON/JcSKBbwJYVTVdEm689TZBGjkEHRBnTX/9MY5RuoyDRp1bFWlKk1J6R8BBptrdoi+a5SedJ26b
	M5GXKYu4Yu/uX8tZfUjSN5H9AAcbyAuM5Ftn6AgvnVcevarVAxyOEY9tWr1S2DrMdmzbrK/fQE5Tc
	KAeOoNGq270ygC8/vp9Sp1GTrKqi+E82oToxnjZyN3LF3TVzpuEHy83+CVYbWQucBRIke5TTUTkY/
	Q5mo8Idt/Y7YTrwpZpHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvN4c-0007SG-4B; Wed, 07 Aug 2019 14:37:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvN4Q-0007Rh-2G
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 14:37:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3F7CF1570;
 Wed,  7 Aug 2019 07:37:41 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8D6603F706;
 Wed,  7 Aug 2019 07:37:40 -0700 (PDT)
Date: Wed, 7 Aug 2019 15:37:38 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] firmware: arm_scmi: Use {get,put}_unaligned_le32 accessors
Message-ID: <20190807143738.GB27278@e107155-lin>
References: <20190807130038.26878-1-sudeep.holla@arm.com>
 <1565184971.5048.8.camel@pengutronix.de>
 <20190807135757.GA27278@e107155-lin>
 <4e6de98c-833b-a80b-acef-6e88391e80f2@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e6de98c-833b-a80b-acef-6e88391e80f2@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_073742_154220_CEFA8354 
X-CRM114-Status: GOOD (  19.66  )
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
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 03:07:39PM +0100, Robin Murphy wrote:
> On 07/08/2019 14:57, Sudeep Holla wrote:
> > On Wed, Aug 07, 2019 at 03:36:11PM +0200, Philipp Zabel wrote:
> > > Hi Sudeep,
> > > 
> > > On Wed, 2019-08-07 at 14:00 +0100, Sudeep Holla wrote:
> > > > Instead of type-casting the {tx,rx}.buf all over the place while
> > > > accessing them to read/write __le32 from/to the firmware, let's use
> > > > the nice existing {get,put}_unaligned_le32 accessors to hide all the
> > > > type cast ugliness.
> > > > 
> > > > Suggested-by: Philipp Zabel <p.zabel@pengutronix.de>
> > > > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > > > ---
> > > >   drivers/firmware/arm_scmi/base.c    |  2 +-
> > > >   drivers/firmware/arm_scmi/clock.c   | 10 ++++------
> > > >   drivers/firmware/arm_scmi/common.h  |  2 ++
> > > >   drivers/firmware/arm_scmi/perf.c    |  8 ++++----
> > > >   drivers/firmware/arm_scmi/power.c   |  6 +++---
> > > >   drivers/firmware/arm_scmi/reset.c   |  2 +-
> > > >   drivers/firmware/arm_scmi/sensors.c | 12 +++++-------
> > > >   7 files changed, 20 insertions(+), 22 deletions(-)
> > > > 
> > > > diff --git a/drivers/firmware/arm_scmi/base.c b/drivers/firmware/arm_scmi/base.c
> > > > index 204390297f4b..f804e8af6521 100644
> > > > --- a/drivers/firmware/arm_scmi/base.c
> > > > +++ b/drivers/firmware/arm_scmi/base.c
> > > [...]
> > > > @@ -204,14 +204,12 @@ scmi_clock_rate_get(const struct scmi_handle *handle, u32 clk_id, u64 *value)
> > > >   	if (ret)
> > > >   		return ret;
> > > > 
> > > > -	*(__le32 *)t->tx.buf = cpu_to_le32(clk_id);
> > > > +	put_unaligned_le32(clk_id, t->tx.buf);
> > > > 
> > > >   	ret = scmi_do_xfer(handle, t);
> > > >   	if (!ret) {
> > > > -		__le32 *pval = t->rx.buf;
> > > > -
> > > > -		*value = le32_to_cpu(*pval);
> > > > -		*value |= (u64)le32_to_cpu(*(pval + 1)) << 32;
> > > > +		*value = get_unaligned_le32(t->rx.buf);
> > > > +		*value |= (u64)get_unaligned_le32(t->rx.buf + 1) << 32;
> > > 
> > > Isn't t->rx.buf a void pointer? If I am not mistaken, you'd either have
> > > to keep the pval local variables, or cast to (__le32 *) before doing
> > > pointer arithmetic.
> > > 
> > 
> > Ah right, that's the reason I added it at the first place. I will fix that.
> 
> Couldn't you just use get_unaligned_le64() here anyway?

Indeed, that's what I found as I wanted to avoid pval, testing now.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
