Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D06295C4A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 12:31:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A8nOINIcO+1K418FA0RaQmOwFVWnivT77QFRL3VDlh8=; b=E4fDwmPfRjxJW/
	xmIM5N94TqruCYDVrCroW8CqwcfuHItxr/k60I4gtKBea6Rw2DujNL73RU3Fg+nAKQOP5oMQ3vQMP
	L4xF2ilcq4XhVK9j3NMq0LEEBI7WFxc0WdgtepIfpOBWaoRFgJ+UNBio9k3+nxNphtyCGcBfc6wrq
	KOHTm06dR1ExP/875Pw8YgFc6A2szm0qLamuG8475Lapd+S8HuDNX+Aa2rqXgfHbry+K14CdSFW4U
	YRI6wLuzyl5rcfjAnfi1ExK2BoN/iWGS1Y0di84SAxmo3SI1pWs+Q2Ws3cRDDqoBtL/BoeKzdd3ug
	p/PuRE3/UP36pHt8YxFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i01QQ-00041Z-Uu; Tue, 20 Aug 2019 10:31:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i01Q8-0003zP-CD
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 10:31:21 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ADDD422CF4;
 Tue, 20 Aug 2019 10:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566297079;
 bh=4BGIRfpdxn+C4hWqH87mAKMqnUtkkvEwwMwmi3ha0Yo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JIoIm7Dblia20ly5df5KEgLyPX9cMYqKbtR+dcf8m13dvUFZd+rD2XNAI9PF0uISf
 tNgmIHr/tUheptTGLanF0PONmSDlW3lN/bUkaHdR1wcQf5f5ib2LE1OPAFGAITycQM
 EonGx+kruT5WbB6IbRA+dD+UXF+t2syBwXuuuhhs=
Date: Tue, 20 Aug 2019 11:31:16 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 3/4] iommu/io-pgtable-arm: Rationalise TCR handling
Message-ID: <20190820103115.o7neehdethf7sbqi@willie-the-truck>
References: <cover.1566238530.git.robin.murphy@arm.com>
 <78df4f8e2510e88f3ded59eb385f79b4442ed4f2.1566238530.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78df4f8e2510e88f3ded59eb385f79b4442ed4f2.1566238530.git.robin.murphy@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_033120_471168_587D8435 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: robdclark@gmail.com, joro@8bytes.org, jcrouse@codeaurora.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 07:19:30PM +0100, Robin Murphy wrote:
> Although it's conceptually nice for the io_pgtable_cfg to provide a
> standard VMSA TCR value, the reality is that no VMSA-compliant IOMMU
> looks exactly like an Arm CPU, and they all have various other TCR
> controls which io-pgtable can't be expected to understand. Thus since
> there is an expectation that drivers will have to add to the given TCR
> value anyway, let's strip it down to just the essentials that are
> directly relevant to io-pgatble's inner workings - namely the address
> sizes, walk attributes, and where appropriate, format selection.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/arm-smmu-v3.c        | 7 +------
>  drivers/iommu/arm-smmu.c           | 1 +
>  drivers/iommu/arm-smmu.h           | 2 ++
>  drivers/iommu/io-pgtable-arm-v7s.c | 6 ++----
>  drivers/iommu/io-pgtable-arm.c     | 4 ----
>  drivers/iommu/qcom_iommu.c         | 2 +-
>  6 files changed, 7 insertions(+), 15 deletions(-)

Hmm, so I'm a bit nervous about this one since I think we really should
be providing a TCR with EPD1 set if we're only giving you TTBR0. Relying
on the driver to do this worries me. See my comments on the next patch.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
