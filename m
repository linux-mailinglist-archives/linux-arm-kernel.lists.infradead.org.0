Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C4C5D23F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 17:00:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+CiDCGZEBVNXoV5BP3C0NGxBwSRJ04gzLXUk1aEuoYM=; b=f9oUp9uyjZSdVq
	gxwv1dfsZAvOP6vn8c006+AZj+NKnwLi6OsEg1udBNPb2YknX81bGs7+j9HqnOlhDL8ljqE73XPg8
	ZR3ZFNgtkEqaixfk/4PuA9EYxAIvvQaLWtab2Dw6jifSYESFrZL7zM8gwiXC+uCswMvf8GU2DZU1o
	DzIXwpar+1mmTI+vN4aK6Y1zTLLrX6YvBQOKo3ql6YHpGWflO+HsjOIqA9lRN3nK2BNIRCtxHvbEK
	QHNpfnwn5nofvA3GYIgxy52kjFofkcXYWA1to4oVVN1tDTTRcgc2cLDGmL+nREWKQ07PSDa73nuO0
	ypzVOGPX6To5+wyPTQzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiKGc-0005rn-OB; Tue, 02 Jul 2019 15:00:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiKG5-0005qq-Bv
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 14:59:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2A1821424;
 Tue,  2 Jul 2019 07:59:45 -0700 (PDT)
Received: from [10.1.196.129] (ostrya.cambridge.arm.com [10.1.196.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8FE533F703;
 Tue,  2 Jul 2019 07:59:43 -0700 (PDT)
Subject: Re: [PATCH v3 8/9] iommu/arm-smmu-v3: Add support for PCI ATS
To: Robin Murphy <robin.murphy@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>
References: <20190417182448.12382-1-jean-philippe.brucker@arm.com>
 <20190417182448.12382-9-jean-philippe.brucker@arm.com>
 <7fcd5263-8a20-11cb-0c20-9fee35fe65c1@arm.com>
From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
Message-ID: <433038b1-048b-57ab-db0e-5f9f940d52ce@arm.com>
Date: Tue, 2 Jul 2019 15:59:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <7fcd5263-8a20-11cb-0c20-9fee35fe65c1@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_075949_455638_C6C2D28E 
X-CRM114-Status: GOOD (  17.19  )
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
Cc: "zhongmiao@hisilicon.com" <zhongmiao@hisilicon.com>,
 "okaya@kernel.org" <okaya@kernel.org>, Sudeep Holla <Sudeep.Holla@arm.com>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "lenb@kernel.org" <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01/07/2019 18:41, Robin Murphy wrote:
> Hi Jean-Philippe,
> 
> I realise it's a bit late for a "review", but digging up the original 
> patch seemed as good a place as any to raise this...
> 
> On 17/04/2019 19:24, Jean-Philippe Brucker wrote:
> [...]
>> @@ -1740,6 +1906,9 @@ static void arm_smmu_detach_dev(struct arm_smmu_master *master)
>>   
>>   	master->domain = NULL;
>>   	arm_smmu_install_ste_for_dev(master);
>> +
>> +	/* Disabling ATS invalidates all ATC entries */
>> +	arm_smmu_disable_ats(master);
>>   }
> 
> Is that actually true? I had initially overlooked this entirely while 
> diagnosing something else and thought that we were missing any ATC 
> invalidation on detach at all, but even having looked again I'm not 
> entirely convinced it's bulletproof.
> 
> Firstly, the ATS spec only seems to say that *enabling* the ATS 
> capability invalidates all ATC entries, although I think any corner 
> cases that that alone opens up should be at best theoretical. More 
> importantly though, pci_disable_ats() might not actually touch the 
> capability - given that, it seems possible to move a VF to a new domain, 
> and if it's not reset, end up preserving now-bogus ATC entries despite 
> the old domain being torn down and freed. Do we need an explicit ATC 
> invalidation here to be 100% safe, or is there something else I'm missing?

Good points, yes the comment is wrong and it looks like we need an
explicit invalidation given the current pci_disable_ats()
implementation. I'll send a fix shortly.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
