Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3358A3BF6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 18:27:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vhpMLQwWMbOHrf5aBAuueFIAK+oh1e2rtksXED/HVog=; b=P9sZtj0po3S9tj0hiB1+Uem/F
	93Mc0f/oJTc/RdeSgL4lAFslHC9y392YuSrw3psrSxdQDJU6JfhQVq4uOl6mEDWcb5rIqgxxb/wDB
	f/tkJC99cTpTNsQpCAArjClrRFdeTX0mVvOg/Uosre7l/63QSk3aJo7vu6Mu1BpfYH2cRw9cov+wb
	4MdLjr7hWILpR5vElOVl3MC61YD5Ibr2DoyYKd768yLPEQyrtM8W8jKmDtztPhGhDV3cTuUl4FJ4V
	WwgTh8CCYDDJmabUSzdr7RHd+K2EYJKTnNaJgLPsiMT3xaImohRRlQUwOwEkPGqeYKM0dZJYUiTxh
	NT4ts130A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3jjq-00064n-JO; Fri, 30 Aug 2019 16:27:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3jjg-00064E-1z
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 16:26:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DCA47344;
 Fri, 30 Aug 2019 09:26:50 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5188D3F718;
 Fri, 30 Aug 2019 09:26:48 -0700 (PDT)
Subject: Re: [PATCH] PCI: Move ATS declarations to linux/pci.h
To: Christoph Hellwig <hch@infradead.org>, Krzysztof Wilczynski <kw@linux.com>
References: <20190830150756.21305-1-kw@linux.com>
 <20190830161840.GA9733@infradead.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <26a81b41-515b-2ed8-98db-7ae164ee8dd8@arm.com>
Date: Fri, 30 Aug 2019 17:26:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190830161840.GA9733@infradead.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_092652_139720_B18FEEC3 
X-CRM114-Status: GOOD (  13.59  )
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
Cc: linux-pci@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Bjorn Helgaas <helgaas@kernel.org>, Will Deacon <will@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/08/2019 17:18, Christoph Hellwig wrote:
> On Fri, Aug 30, 2019 at 05:07:56PM +0200, Krzysztof Wilczynski wrote:
>> Move ATS function prototypes from include/linux/pci-ats.h to
>> include/linux/pci.h so users only need to include <linux/pci.h>:
> 
> Why is that so important?  Very few PCI(e) device drivers use ATS,
> so keeping it out of everyones include hell doesn't seem all bad.

Although to be fair it seems that all the actual ATS stuff already moved 
out 4 years ago, so at the very least maybe it would warrant renaming to 
pci-pri-pasid.h :)

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
