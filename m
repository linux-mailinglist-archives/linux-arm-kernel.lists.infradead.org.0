Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A159E701E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 12:06:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y2YvCV0BabSBvx0uzNarUCXdS4xQ51vpCPUmcJcdf1U=; b=kEtJXvHzc2vl+6
	zs3R7nIlKuAe2YOkklXyKcgl7lZ4nhpww+B5iKGNWCJJNZPpvpkrmmUKoTlqUv96YzxrpK7/uPxy9
	2eYBzbqFvviK95oRPmJ1LKAegDTrpiKfwPT1WSVuDPa38kOAvhqPWM4YLZ4BVffqJiqC2oUAqDRQ1
	c1rsop+ii6FSY9Ex0NVPggxwQDcmJ8hI/M3zK4kj8pLu24v+d0DoJmbyS+xPcBsELMQDsR/P86mYP
	MHVsti4wk6jUZXnooKX2kViZk70BlIA9dEw0RaJzBw0s88w1pBn7gTN8HeN+U8FvNdIDXSLxl3nf7
	yZD3eQmgf1Id106C0qaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP2rI-0005NY-Fy; Mon, 28 Oct 2019 11:06:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP2r7-0005My-6F
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 11:06:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 30E501F1;
 Mon, 28 Oct 2019 04:06:36 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 EB70C3F71E; Mon, 28 Oct 2019 04:06:34 -0700 (PDT)
Date: Mon, 28 Oct 2019 11:06:32 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2 4/5] arm64: KVM: Prevent speculative S1 PTW when
 restoring vcpu context
Message-ID: <20191028110632.GC16739@arrakis.emea.arm.com>
References: <20191019095521.31722-1-maz@kernel.org>
 <20191019095521.31722-5-maz@kernel.org>
 <151fc868-6709-3017-e34d-649ec0e1812c@arm.com>
 <8636ffzu30.wl-maz@kernel.org>
 <20191028103217.GB16739@arrakis.emea.arm.com>
 <86zhhlxhz2.wl-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <86zhhlxhz2.wl-maz@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_040637_275913_E0AA331E 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 10:49:37AM +0000, Marc Zyngier wrote:
> On Mon, 28 Oct 2019 10:32:17 +0000,
> Catalin Marinas <catalin.marinas@arm.com> wrote:
> > On Sat, Oct 26, 2019 at 11:20:35AM +0100, Marc Zyngier wrote:
> > > Catalin, Will: given that this series conflicts with the workaround for
> > > erratum 1542419, do you mind taking it via the arm64 tree?
[...]
> > I don't mind merging it but if you want to queue it, we already have
> > a stable for-next/neoverse-n1-stale-instr branch with 1542419 (I'll
> > push a fixup on top soon for a clang warning). The other issue is
> > that we get a conflict with mainline due to the tx2 erratum. If it
> > gets too complicated, I'll also merge for-next/fixes into
> > for-next/core.
> 
> OK, let me have another look at providing a resolution that includes
> all of the above. Worse case, you'll be able to pull the branch
> directly.

Don't worry about the resolution, I'll fix it up myself when merging
into for-next/core. The latter is not a stable branch, just an octopus
merge of various for-next/* topic branches.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
