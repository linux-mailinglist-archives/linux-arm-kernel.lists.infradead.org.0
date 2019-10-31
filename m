Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2A1EB5EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 18:15:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eKsj5MsvZYsKiqPS4I4ivpXa1zYaOz3ul8+f8J9i0QI=; b=qSynOkEOalo5Xt
	lqNWz/VHMX6D8RYzKjEuxHfYsKpUuPb1Pdo61WIZpmcAy/09aCkammgFxqIVzJqyR39OGOnGf9K97
	nJcltmIJNYuLs9UuLz5Dxw1BfsRb7hOEd5081texmycH0WZ4KLE0ZyudksxbkXtpFSDG/Jph9xDXy
	uT9SYVdEvx0n6cVRGN6LPlY8p9mRQ05SLV3oEsvbTcM9zOCnU87LtjuhYOG1b2qcCXsfyxWx5VI6C
	uwudBSHhLrPyNDsHu8CXzFN4HruIE6A0g2yKxJkU7pGu7v4looJhYWR8Bsuu7g9Gn2Ux7oLcRgkd7
	vS1U4AO0fckRQf955FTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQE2w-0008DF-Jo; Thu, 31 Oct 2019 17:15:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQE2o-0008Cp-CQ
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 17:15:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B7CBF1FB;
 Thu, 31 Oct 2019 10:15:33 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 CFA353F6C4; Thu, 31 Oct 2019 10:15:32 -0700 (PDT)
Date: Thu, 31 Oct 2019 17:15:30 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [PATCH 4/4] docs/arm64: cpu-feature-registers: Documents missing
 visible fields
Message-ID: <20191031171530.GG39590@arrakis.emea.arm.com>
References: <20191003111211.483-1-julien.grall@arm.com>
 <20191003111211.483-5-julien.grall@arm.com>
 <9a4aa626-a16f-b01a-0254-43946de9ff6e@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9a4aa626-a16f-b01a-0254-43946de9ff6e@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_101534_467128_7392CC11 
X-CRM114-Status: GOOD (  14.99  )
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
Cc: "julien@xen.org" <julien@xen.org>, will@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 04:48:18PM +0000, Julien Grall wrote:
> On 03/10/2019 12:12, Julien Grall wrote:
> > A couple of fields visible to userspace are not described in the
> > documentation. So update it.
> > 
> > Signed-off-by: Julien Grall <julien.grall@arm.com>
> > ---
> >   Documentation/arm64/cpu-feature-registers.rst | 4 ++++
> >   1 file changed, 4 insertions(+)
> > 
> > diff --git a/Documentation/arm64/cpu-feature-registers.rst b/Documentation/arm64/cpu-feature-registers.rst
> > index 2955287e9acc..ffcf4e2c71ef 100644
> > --- a/Documentation/arm64/cpu-feature-registers.rst
> > +++ b/Documentation/arm64/cpu-feature-registers.rst
> > @@ -193,6 +193,10 @@ infrastructure:
> >        +------------------------------+---------+---------+
> >        | Name                         |  bits   | visible |
> >        +------------------------------+---------+---------+
> > +     | SB                           | [36-39] |    y    |
> > +     +------------------------------+---------+---------+
> > +     | FRINTTS                      | [32-35] |    y    |
> > +     +------------------------------+---------+---------+
> 
> Will reported the bitfields were inconsistent (see [1]). Looking in more
> details, it seems that I messed up this patch when sending it (I honestly
> can't remember why I wrote like that :().
> 
> @Catalin, I saw you applied this patch to for-next/elf-hwcap-docs. Would you
> mind to update the content of the patch? Or do you prefer a new version?

Please send a fix on top of the elf-hwcap-docs branch. I'd prefer not to
rebase it.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
