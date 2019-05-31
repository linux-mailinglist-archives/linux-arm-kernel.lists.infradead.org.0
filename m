Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D9F3140C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 19:45:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xhTqykEkKBhz46Lif6zdIMGBMG58r/k/sqOwNloHQZI=; b=ZnNe3dytMmox0/61XN5rYtsSS
	8sNr/W30wVCxxwyNyMEc80WNtc2KW3fxdSS2C8luR3F4R02naNVL+dkoNNtC38Iv8zx2dR+J+eiJs
	x0vF7x1P18M7gp7OhcOZyhczjmUDr3f6oIHwZjORnYbsYcxjVyIfSWx98bAzTw+BXWpQvyU4UyYXQ
	oyGThYK4W6raWnqtOfPZEH1QLF6W3Orwc+fV/bieTM8IPbCa4uQkUthf9oAAYxwVdElbZy+0jFV8N
	zd2oYeggjwkOTV08ZJyyCQZ3bnV//DeMxHt9VGI7WdxpCjtSogOCjWi9VRbQPk7leJ2tTRByhtpJ0
	QSxMS1Xyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWlab-0001QX-4e; Fri, 31 May 2019 17:45:13 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWlaT-00013O-K4
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 17:45:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E4D53A78;
 Fri, 31 May 2019 10:45:04 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DEB233F59C;
 Fri, 31 May 2019 10:45:01 -0700 (PDT)
Subject: Re: [PATCH v3 0/6] Prerequisites for NXP LS104xA SMMU enablement
To: Christoph Hellwig <hch@infradead.org>
References: <20190530141951.6704-1-laurentiu.tudor@nxp.com>
 <20190530.150844.1826796344374758568.davem@davemloft.net>
 <20190531163350.GB8708@infradead.org>
 <37406608-df48-c7a0-6975-4b4ad408ba36@arm.com>
 <20190531170804.GA12211@infradead.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <1b81c168-f5e0-f86a-f90e-22e8c3f2a602@arm.com>
Date: Fri, 31 May 2019 18:45:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190531170804.GA12211@infradead.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_104505_669740_E42B1B53 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: madalin.bucur@nxp.com, netdev@vger.kernel.org, roy.pledge@nxp.com,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 Joakim.Tjernlund@infinera.com, iommu@lists.linux-foundation.org,
 camelia.groza@nxp.com, linuxppc-dev@lists.ozlabs.org,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 31/05/2019 18:08, Christoph Hellwig wrote:
> On Fri, May 31, 2019 at 06:03:30PM +0100, Robin Murphy wrote:
>>> The thing needs to be completely redone as it abuses parts of the
>>> iommu API in a completely unacceptable way.
>>
>> `git grep iommu_iova_to_phys drivers/{crypto,gpu,net}`
>>
>> :(
>>
>> I guess one alternative is for the offending drivers to maintain their own
>> lookup tables of mapped DMA addresses - I think at least some of these
>> things allow storing some kind of token in a descriptor, which even if it's
>> not big enough for a virtual address might be sufficient for an index.
> 
> Well, we'll at least need DMA API wrappers that work on the dma addr
> only and hide this madness underneath.  And then tell if an given device
> supports this and fail the probe otherwise.

Bleh, I'm certainly not keen on formalising any kind of 
dma_to_phys()/dma_to_virt() interface for this. Or are you just 
proposing something like dma_unmap_sorry_sir_the_dog_ate_my_homework() 
for drivers which have 'lost' the original VA they mapped?

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
