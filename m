Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F22DA3BCA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 18:18:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JyEp46sGyA6uCy2rPeuvx3vRdnFPX/og+jRMWb5OfJo=; b=VLqUTmEk9P6pIK
	iVUnT3PTLGLcxvWO5TEX1wPe0XEC6HaQHwxtt3ruSTYM3KtC+JbAGuwYc4dSuZ6StKBzEh18F0Eo7
	F/iw2xcm73/njekfxPD4FW6A7VgOErxh0/7Zskw/iMRHrXnn3X7+4CwHHRsLbu5lmSuxoDDqnbFNa
	I650a9Kr4nv2i/0/6uiOA5+2m+A834l2kGFbRHF3A74vpKQz1Ak9iRGqMGdZKZKvfRSGi11S5vSfp
	ERpf14n4WruyiHOhWdQiV19JeS6A2w74hAMQ13WCs4vqS3Kkjecvxj7DASgPOQCi1YupzqUcd4QTS
	kxuPZypCh9KkqjIp74sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3jbt-0002ZS-5Z; Fri, 30 Aug 2019 16:18:49 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i3jbk-0002ZI-QE; Fri, 30 Aug 2019 16:18:40 +0000
Date: Fri, 30 Aug 2019 09:18:40 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Krzysztof Wilczynski <kw@linux.com>
Subject: Re: [PATCH] PCI: Move ATS declarations to linux/pci.h
Message-ID: <20190830161840.GA9733@infradead.org>
References: <20190830150756.21305-1-kw@linux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830150756.21305-1-kw@linux.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: linux-pci@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Bjorn Helgaas <helgaas@kernel.org>, Will Deacon <will@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 05:07:56PM +0200, Krzysztof Wilczynski wrote:
> Move ATS function prototypes from include/linux/pci-ats.h to
> include/linux/pci.h so users only need to include <linux/pci.h>:

Why is that so important?  Very few PCI(e) device drivers use ATS,
so keeping it out of everyones include hell doesn't seem all bad.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
