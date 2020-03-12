Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45127182B0C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 09:19:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2Mnuu2YzH/3eW1ZZU9JqbDQio2jX1+EbCCmSAxyuyyE=; b=g5X+5xO44yGx4qOl9kPjyZzdb
	dPQsWePl+/E+h8UWJy1Lcj1jea0Hw0QA3joHSEiFpVqiaU9LGt3dULIwjcsyNPHFCxzLGxEYPyaGl
	WhgntDrW6HF7aQDqWKnwoAspfW1v7yXjEU2BdgGyy5v+ahJazf1IVQaBOJLtM4meDPyw0v3qyo5ZS
	M8JNr6FcLLfL66CqTppryhwPIhhCi0cMVTwxN4KJj+UzdurlOhxWIE44nWg8a8NpijQkQrkF73EwF
	hB22gHOT5YZHtFOFVgId2OKvawd3KY5c5vPbLv5OXnW/H3J9AkOQ1+2emfEjLrzCMZRLxhHxrQvyc
	fBKZZ4DhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCJ3Y-0006Bi-4q; Thu, 12 Mar 2020 08:19:04 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCJ3P-0006Av-LO
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 08:18:56 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 01:18:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,544,1574150400"; d="scan'208";a="261424574"
Received: from unknown (HELO [10.254.208.137]) ([10.254.208.137])
 by orsmga002.jf.intel.com with ESMTP; 12 Mar 2020 01:18:47 -0700
Subject: Re: [PATCH v2 08/11] iommu/vt-d: Use pci_ats_supported()
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
References: <20200311124506.208376-1-jean-philippe@linaro.org>
 <20200311124506.208376-9-jean-philippe@linaro.org>
 <7019230c-3c56-e6db-6704-d73f23fa39b5@linux.intel.com>
 <20200312075436.GA568802@myrica>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <5e508904-e432-e3b9-1fe4-0c4e11df10fc@linux.intel.com>
Date: Thu, 12 Mar 2020 16:18:46 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200312075436.GA568802@myrica>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_011855_749571_8C90547C 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, linux-doc@vger.kernel.org, linux-pci@vger.kernel.org,
 liviu.dudau@arm.com, guohanjun@huawei.com, will@kernel.org,
 lorenzo.pieralisi@arm.com, corbet@lwn.net, frowand.list@gmail.com,
 joro@8bytes.org, linux-acpi@vger.kernel.org, lenb@kernel.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org, bhelgaas@google.com,
 linux-arm-kernel@lists.infradead.org, dwmw2@infradead.org, rjw@rjwysocki.net,
 iommu@lists.linux-foundation.org, sudeep.holla@arm.com,
 baolu.lu@linux.intel.com, robin.murphy@arm.com, amurray@thegoodpenguin.co.uk
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/3/12 15:54, Jean-Philippe Brucker wrote:
> Hi Baolu,
> 
> On Thu, Mar 12, 2020 at 09:44:16AM +0800, Lu Baolu wrote:
>> Hi Jean,
>>
>> On 2020/3/11 20:45, Jean-Philippe Brucker wrote:
>>> The pci_ats_supported() function checks if a device supports ATS and is
>>> allowed to use it.
>>>
>>> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
>>> ---
>>>    drivers/iommu/intel-iommu.c | 9 +++------
>>>    1 file changed, 3 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
>>> index 6fa6de2b6ad5..17208280ef5c 100644
>>> --- a/drivers/iommu/intel-iommu.c
>>> +++ b/drivers/iommu/intel-iommu.c
>>> @@ -1454,8 +1454,7 @@ static void iommu_enable_dev_iotlb(struct device_domain_info *info)
>>>    	    !pci_reset_pri(pdev) && !pci_enable_pri(pdev, 32))
>>>    		info->pri_enabled = 1;
>>>    #endif
>>> -	if (!pdev->untrusted && info->ats_supported &&
>>> -	    pci_ats_page_aligned(pdev) &&
>>> +	if (info->ats_supported && pci_ats_page_aligned(pdev) &&
>>>    	    !pci_enable_ats(pdev, VTD_PAGE_SHIFT)) {
>>>    		info->ats_enabled = 1;
>>>    		domain_update_iotlb(info->domain);
>>> @@ -2611,10 +2610,8 @@ static struct dmar_domain *dmar_insert_one_dev_info(struct intel_iommu *iommu,
>>>    	if (dev && dev_is_pci(dev)) {
>>>    		struct pci_dev *pdev = to_pci_dev(info->dev);
>>> -		if (!pdev->untrusted &&
>>> -		    !pci_ats_disabled() &&
>>
>> The pci_ats_disabled() couldn't be replaced by pci_ats_supported(). Even
>> pci_ats_supported() returns true, user still can disable it. Or move
>> ats_disabled into pci_ats_supported()?
> 
> It is already there, but hidden behind the "if (!dev->ats_cap)":
> pci_ats_init() only sets dev->ats_cap after checking that
> pci_ats_disabled() returns false.
>

Ah! Yes.

Acked-by: Lu Baolu <baolu.lu@linux.intel.com>

> Thanks,
> Jean

Best regards,
baolu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
