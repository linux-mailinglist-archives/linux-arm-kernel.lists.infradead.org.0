Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 734A9E866A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 12:16:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9JKQInOIPmhrNgAvp6tA0344Ba/6+4WbtF4r00lJ9/4=; b=iofW3ihcMX+h7G
	FGt/RJRWrjFGBdPoSIC5uPBhc6IvXqXfVs3yAkKLaofo5Jrb6D8RQd+AGEj7/sazA0jXHpy1CenPR
	qnJB0FOhLgWI6FE6PfK+zg/mPUwkFECYuQoQK7oJ6WKh/MaQl7KFp2vNHWs7HQngWdziBEHpxLnt4
	szj/ITQgVFB9qWO6CPwgjZ+2MRV/egfpHsprIamj0HccKdAkv1iiiINMLAoMdCV3uf1HLqkCtVvkz
	l+d5LQ1pPJxiQdrPd59EUKuZaVslxtzzCXAurSskggmcTVOMC8rdwJ3zExkzx67IIprW/QTrYp2hm
	N9QZ2/+BTQxjSszG+QYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPPTv-0002B4-3F; Tue, 29 Oct 2019 11:16:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPTk-0002AM-UL
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 11:16:02 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 12913208E3;
 Tue, 29 Oct 2019 11:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572347760;
 bh=PYpYmLCcRCDnvoNd2S0sMHcaEM2JronWu9CsKftbO3I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GdaMUmmgMjWuXCjwK0dWZlcoWZbdkss1hf/IPKcAItun5DvAeYWYvYEXepIKuV8F4
 Cgj6BmO5LCR5kVQSqH6TeJrA5sMtyubLtUhcJCViQ3HQZ9x8ffrdD48QttQIxJTdvs
 cKuoCU3Lo8JRJ8savTdPFUcs8+VjcCEB/d/GTobo=
Date: Tue, 29 Oct 2019 11:15:56 +0000
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2] iommu/arm-smmu: fix "hang" when games exit
Message-ID: <20191029111555.GF11590@willie-the-truck>
References: <418d8426-f299-1269-2b2e-f86677cf22c2@arm.com>
 <20191007204906.19571-1-robdclark@gmail.com>
 <20191028222042.GB8532@willie-the-truck>
 <CAJs_Fx7zRWsTPiAg0PFt+8nJPpHpzSkxW6XMMJwozVO6vyB78A@mail.gmail.com>
 <e3fc88d9-4934-0227-d9c7-b1cb37a8811e@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e3fc88d9-4934-0227-d9c7-b1cb37a8811e@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_041601_001655_71FF9806 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Clark <robdclark@chromium.org>, Joerg Roedel <joro@8bytes.org>,
 iommu@lists.linux-foundation.org, open list <linux-kernel@vger.kernel.org>,
 Rob Clark <robdclark@gmail.com>, freedreno <freedreno@lists.freedesktop.org>,
 "moderated list:ARM SMMU DRIVERS" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 10:51:53PM +0000, Robin Murphy wrote:
> On 2019-10-28 10:38 pm, Rob Clark wrote:
> > On Mon, Oct 28, 2019 at 3:20 PM Will Deacon <will@kernel.org> wrote:
> > > On Mon, Oct 07, 2019 at 01:49:06PM -0700, Rob Clark wrote:
> > > > From: Rob Clark <robdclark@chromium.org>
> > > > 
> > > > When games, browser, or anything using a lot of GPU buffers exits, there
> > > > can be many hundreds or thousands of buffers to unmap and free.  If the
> > > > GPU is otherwise suspended, this can cause arm-smmu to resume/suspend
> > > > for each buffer, resulting 5-10 seconds worth of reprogramming the
> > > > context bank (arm_smmu_write_context_bank()/arm_smmu_write_s2cr()/etc).
> > > > To the user it would appear that the system just locked up.
> > > > 
> > > > A simple solution is to use pm_runtime_put_autosuspend() instead, so we
> > > > don't immediately suspend the SMMU device.
> > > 
> > > Please can you reword the subject to be a bit more useful? The commit
> > > message is great, but the subject is a bit like "fix bug in code" to me.
> > 
> > yeah, not the best $subject, but I wasn't quite sure how to fit
> > something better in a reasonable # of chars.. maybe something like:
> > "iommu/arm-smmu: optimize unmap but avoiding toggling runpm state"?
> 
> FWIW, I'd be inclined to frame it as something like "avoid pathological RPM
> behaviour for unmaps".

LGTM!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
