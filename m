Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1E61D7E8A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 18:31:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cGdNXdAY/aPnks7pO6pIe+dLl5avHWhFHYvMoAk5+Kk=; b=rxUej798bAhYEB
	2B828cvCV3UQdoAJ4xUIGMiMaqbC0QY9y7OCfMLKNSUHBCoMhX9UleWfN3HqtpLYnStOgZmikUVzR
	AyZi05J+ADXuxtJTbGJfbt4cGoHmDcICeIeTr+NVGU6IW+lZobb/npMkz87dzxMgI3Uu0o4TCoRaq
	MBnF4pk0rtjO2waATM0/LajJAlQL3Y28N0EZI0pYdqLNKyzUuNQevHfcnormcNxqyrh22x7sG32Gp
	whAdqOUnCpqgWCuzNkEatDsLRD/DYrEUR5RbP0IbJghDpNwyVp0yyBNJupxiO19/DCnCQ24QwXbrb
	uk1TO1zZ/yFdWedyJ1+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaifk-0002UD-SB; Mon, 18 May 2020 16:31:24 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaidd-0006jh-Fp
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 16:29:18 +0000
IronPort-SDR: eG5H70lDwjloszqxPo8fByiQl+chAxfdxa31frJddkjigXQ8pApNuNBSR8n8zSpelr4p7k5ysK
 waK6AtPxX+4g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 09:29:12 -0700
IronPort-SDR: IsfGIPgmh9ow/1nMPOsWe8QHvrerOLaKz4ePIfTIl77UGc9ouzE5GO46eu84skAVC9ndMGi6C3
 DnATkJggKVCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="308152106"
Received: from otc-nc-03.jf.intel.com (HELO otc-nc-03) ([10.54.39.25])
 by FMSMGA003.fm.intel.com with ESMTP; 18 May 2020 09:29:11 -0700
Date: Mon, 18 May 2020 09:29:11 -0700
From: "Raj, Ashok" <ashok.raj@intel.com>
To: David Woodhouse <dwmw2@infradead.org>
Subject: Re: [PATCH 0/4] PCI, iommu: Factor 'untrusted' check for ATS
 enablement
Message-ID: <20200518162911.GA92942@otc-nc-03>
References: <20200515104359.1178606-1-jean-philippe@linaro.org>
 <20200515154351.GA6546@infradead.org>
 <20200515171948.GC75440@otc-nc-03>
 <3ce5d02db49254e50883224771ffb35cf436845f.camel@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3ce5d02db49254e50883224771ffb35cf436845f.camel@infradead.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_092913_573866_180194DC 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Ashok Raj <ashok.raj@intel.com>, linux-pci@vger.kernel.org, joro@8bytes.org,
 alex.williamson@redhat.com, Christoph Hellwig <hch@infradead.org>,
 iommu@lists.linux-foundation.org, bhelgaas@google.com,
 baolu.lu@linux.intel.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 04:47:17PM +0100, David Woodhouse wrote:
> On Fri, 2020-05-15 at 10:19 -0700, Raj, Ashok wrote:
> > Hi Christoph
> > 
> > On Fri, May 15, 2020 at 08:43:51AM -0700, Christoph Hellwig wrote:
> > > Can you please lift the untrusted flag into struct device?  It really
> > > isn't a PCI specific concept, and we should not have code poking into
> > > pci_dev all over the iommu code.
> > 
> > Just for clarification: All IOMMU's today mostly pertain to only PCI devices
> > and for devices that aren't PCI like HPET for instance we give a PCI
> > identifier. Facilities like ATS for instance require the platform to have 
> > an IOMMU.
> > 
> > what additional problems does moving this to struct device solve?
> 
> Even the Intel IOMMU supports ACPI devices for which there is no struct
> pci_dev; only a B/D/F in the ANDD record indicating which entry in the
> context table to use.

Yes, spaced out :-).. just don't work on those platforms on a daily
basis and its easy to forget :-(

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
