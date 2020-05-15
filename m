Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6BDE1D4D96
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 14:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5StVmWcCAYeLGE3pY2wBRbboCtYpMVR7B7TSmXOeh60=; b=qi07O7LMp29tUk
	as9r/VHV71DP+DVxiQGQunLLRxts0oQunBKkRHXmaxEO+Dxk6bDKlUZWqz4jo5hCbo0n0WutPShU3
	GS0KxTL3f6PqcSqiRSzDx0K39Nf/OZl9z4kDIoo82Egw2kwAANI5E6cQj6IEmdcVGIkfoyJazggW8
	gkNQkQc7qMvFQH/u009wcBumM6TzqjUjGnuhidtvsdSGg1vkVe9mSr26OKGhK678GNYwroxEBYCeH
	TlYLF2U1FxpycSKYN5eMoWqkZooCx6Ih38my6rdLbgZNdEyVG1pYVwichMaXOzva7DziWREy6KsGo
	XpFZKRkRbihF0674F/lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZZL3-0005an-An; Fri, 15 May 2020 12:21:17 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZZKu-0005a4-VC
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 12:21:10 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id DEA45379; Fri, 15 May 2020 14:21:05 +0200 (CEST)
Date: Fri, 15 May 2020 14:21:04 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH 2/4] iommu/amd: Use pci_ats_supported()
Message-ID: <20200515122104.GV18353@8bytes.org>
References: <20200515104359.1178606-1-jean-philippe@linaro.org>
 <20200515104359.1178606-3-jean-philippe@linaro.org>
 <20200515120150.GU18353@8bytes.org>
 <20200515121124.GA784024@myrica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515121124.GA784024@myrica>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_052109_154151_24DB19AC 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: alex.williamson@redhat.com, ashok.raj@intel.com, linux-pci@vger.kernel.org,
 robin.murphy@arm.com, iommu@lists.linux-foundation.org, bhelgaas@google.com,
 will@kernel.org, dwmw2@infradead.org, linux-arm-kernel@lists.infradead.org,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 02:11:24PM +0200, Jean-Philippe Brucker wrote:
> On Fri, May 15, 2020 at 02:01:50PM +0200, Joerg Roedel wrote:
> > Hmm, but per patch 1, pci_ats_supported() does not check
> > pci_ats_disabled(), or do I miss something?
> 
> The commit message isn't clear. pci_ats_init() sets dev->ats_cap only if
> !pci_ats_disabled(), so checking dev->ats_cap in pci_ats_supported()
> takes pci_ats_disabled() into account.

Right, so the patch is fine:

Reviewed-by: Joerg Roedel <jroedel@suse.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
