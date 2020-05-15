Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A8D1D57BE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:25:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jkaAeyFJ2ZSnz+FF3xHnntD/lqeM1nfkK/F6D8xFW9o=; b=chMKGw8lZYs/UK
	fFiTQSmBh+CdjtjPnfVcH2FDQDQ81/6d2P14G7FvsxSIwqJY48zzrxiBWZGgwptX/AJBN8COJqWSZ
	hqd7lybepGxJm/90PIInqUsWZLSJROZNW+T6Of1DC4Vb6RO9twbC1c0Gv+ieQ0EeLddRqoVUuEoAM
	hNrOn7SmTxHC7Wv5HaTGjuQYGipmSUSWHSZ586MPOF7K0t9RWrraAt0mf1WZVujF+wTYxekBjHrFw
	sKsWKYnfAXxI3ez6IybwNL80icKfUqjdN2sVFY9tUfumt3zTovrKvhrrMYo7g3xqAKF6VkQ2kh4GH
	AB7cdSccsDgrMvQ3gDPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZe5k-0006aB-4n; Fri, 15 May 2020 17:25:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZe23-0000tG-Jd
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:22:01 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D35B82073E;
 Fri, 15 May 2020 17:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589563318;
 bh=0P8rL+XmxOR/BVtEmlu60acHvGkwGm2FDdjswXIkm68=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GRNC4iSbHX8O2WHd1MLCSQ+5chG8FCYLWzzSuJ1Sdqejq2+A6bxxojc3r++wZatCU
 VsAw+NehG0ZYH8SSRm4A0HLaqagynOVtuaGeMneX4jImS9u7o8WEQgMdCyR8aNkbYU
 e9y0qROMvVqwlLtcwPde3eSYl8XtXXZr11HwXh5M=
Date: Fri, 15 May 2020 18:21:53 +0100
From: Will Deacon <will@kernel.org>
To: "Raj, Ashok" <ashok.raj@intel.com>
Subject: Re: [PATCH 0/4] PCI, iommu: Factor 'untrusted' check for ATS
 enablement
Message-ID: <20200515172152.GC23334@willie-the-truck>
References: <20200515104359.1178606-1-jean-philippe@linaro.org>
 <20200515154351.GA6546@infradead.org>
 <20200515171948.GC75440@otc-nc-03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515171948.GC75440@otc-nc-03>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_102159_699799_7D505EB2 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, linux-pci@vger.kernel.org,
 joro@8bytes.org, alex.williamson@redhat.com,
 Christoph Hellwig <hch@infradead.org>, iommu@lists.linux-foundation.org,
 bhelgaas@google.com, robin.murphy@arm.com, dwmw2@infradead.org,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, May 15, 2020 at 10:19:49AM -0700, Raj, Ashok wrote:
> On Fri, May 15, 2020 at 08:43:51AM -0700, Christoph Hellwig wrote:
> > Can you please lift the untrusted flag into struct device?  It really
> > isn't a PCI specific concept, and we should not have code poking into
> > pci_dev all over the iommu code.
> 
> Just for clarification: All IOMMU's today mostly pertain to only PCI devices
> and for devices that aren't PCI like HPET for instance we give a PCI
> identifier. Facilities like ATS for instance require the platform to have 
> an IOMMU.
> 
> what additional problems does moving this to struct device solve?

ATS is PCI specific, but IOMMUs certainly aren't! The vast majority of
IOMMUs deployed in arm/arm64 SoCs are /not/ using any sort of PCI.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
