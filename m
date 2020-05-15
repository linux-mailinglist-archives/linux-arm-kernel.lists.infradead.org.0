Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2426A1D54F6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 17:44:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qPN6eoyz2a2jlf/SNAy2nCsguIHDVSubdWTa0wPUJ8I=; b=oqxvOqqW7tAia/
	NtKscHn5ZfB106eXLk3h70qPjAKMeZRBSySEFcqS/asG3i6zMe9cdWo0J5gUYBScTiGRPsMLsn8Pb
	EHs7w1stXdrTDYrFBqwtJ87SzpRkxKf5Qsqd0qLZiZV5rojAGvQUODhNiVfh+D3e0zGsN3u2iT0Xk
	pyjCIZPv3IOeO3neuhhGCAyodGi6++08ZD4hDskx7P2O4P8bBeas81ghyzOqcDgWvC92nn0A+NzMR
	ej5HJROvqei2XEtiKXB8lqSfg88DSy/dcxaojNRR3rB1GQVWnTGf6b47mZRpFXYPK4Fcd4ip2gTHi
	xi7P8LPli1RQ/Flqm3cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZcVE-0002LO-1L; Fri, 15 May 2020 15:44:00 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jZcV5-0002Ks-2e; Fri, 15 May 2020 15:43:51 +0000
Date: Fri, 15 May 2020 08:43:51 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH 0/4] PCI, iommu: Factor 'untrusted' check for ATS
 enablement
Message-ID: <20200515154351.GA6546@infradead.org>
References: <20200515104359.1178606-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515104359.1178606-1-jean-philippe@linaro.org>
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
Cc: ashok.raj@intel.com, linux-pci@vger.kernel.org, joro@8bytes.org,
 alex.williamson@redhat.com, iommu@lists.linux-foundation.org,
 bhelgaas@google.com, baolu.lu@linux.intel.com, will@kernel.org,
 dwmw2@infradead.org, linux-arm-kernel@lists.infradead.org,
 robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Can you please lift the untrusted flag into struct device?  It really
isn't a PCI specific concept, and we should not have code poking into
pci_dev all over the iommu code.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
