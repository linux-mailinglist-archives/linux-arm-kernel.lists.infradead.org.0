Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F11215C3E9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 16:50:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JDJXZNPCFZvfjJvVuq6DBRpvgspI7LI6owXKGLKTEqo=; b=VHlrSawHuYRpkSs+h52iRVU7L
	M1Z+jjc+0otrhTh2QQk7srnuQD4PeRPdjcPUMKCvwgU64MfoXkC7EoBc/7x/ZhpORdPTd6sB1y+Y/
	PlMFS88ZJu1yaosi3FW5lkBD6jwZ9B4RWU4eC/hDnpD7aXSCyaEBgfNKAhqgv0rhhInK2s3qsk7VR
	GBfm0jTW2XaWIrVUMmsUT4S9uZrhmkOrU0KpAp0GaLWBLDHBmt3GlpUNpshwVISWNtX/Q2V7edfyA
	tBKWo3lBVmsCGP9jeeSC2zcngkDAfvwrGvbVUrTeWUrYqerLZXIJr8Ma3FkK1/tIS+IwVxIgBeP3F
	0wwXUNUIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Gkx-0008E0-A2; Thu, 13 Feb 2020 15:50:23 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Gkk-0006xK-7r
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 15:50:13 +0000
Received: from LHREML711-CAH.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 030678FC6DCF329403B6;
 Thu, 13 Feb 2020 15:49:55 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML711-CAH.china.huawei.com (10.201.108.34) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 13 Feb 2020 15:49:54 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 13 Feb
 2020 15:49:53 +0000
Subject: Re: arm64 iommu groups issue
From: John Garry <john.garry@huawei.com>
To: Robin Murphy <robin.murphy@arm.com>, Marc Zyngier <maz@kernel.org>, "Will
 Deacon" <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
 Sudeep Holla <sudeep.holla@arm.com>, "Guohanjun (Hanjun Guo)"
 <guohanjun@huawei.com>
References: <9625faf4-48ef-2dd3-d82f-931d9cf26976@huawei.com>
 <4768c541-ebf4-61d5-0c5e-77dee83f8f94@arm.com>
 <a18b7f26-9713-a5c7-507e-ed70e40bc007@huawei.com>
Message-ID: <ddc7eaff-c3f9-4304-9b4e-75eff2c66cd5@huawei.com>
Date: Thu, 13 Feb 2020 15:49:52 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <a18b7f26-9713-a5c7-507e-ed70e40bc007@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml720-chm.china.huawei.com (10.201.108.71) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_075010_432885_BAC00C58 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
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
Cc: Saravana Kannan <saravanak@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 Linuxarm <linuxarm@huawei.com>, iommu <iommu@lists.linux-foundation.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>>
>> The underlying issue is that, for historical reasons, OF/IORT-based
>> IOMMU drivers have ended up with group allocation being tied to endpoint
>> driver probing via the dma_configure() mechanism (long story short,
>> driver probe is the only thing which can be delayed in order to wait for
>> a specific IOMMU instance to be ready).However, in the meantime, the
>> IOMMU API internals have evolved sufficiently that I think there's a way
>> to really put things right - I have the spark of an idea which I'll try
>> to sketch out ASAP...
>>
> 
> OK, great.

Hi Robin,

I was wondering if you have had a chance to consider this problem again?

One simple idea could be to introduce a device link between the endpoint 
device and its parent bridge to ensure that they probe in order, as 
expected in pci_device_group():

Subject: [PATCH] PCI: Add device link to ensure endpoint device driver 
probes after bridge

It is required to ensure that a device driver for an endpoint will probe
after the parent port driver, so add a device link for this.

---
diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
index 512cb4312ddd..4b832ad25b20 100644
--- a/drivers/pci/probe.c
+++ b/drivers/pci/probe.c
@@ -2383,6 +2383,7 @@ static void pci_set_msi_domain(struct pci_dev *dev)
  void pci_device_add(struct pci_dev *dev, struct pci_bus *bus)
  {
  	int ret;
+	struct device *parent;

  	pci_configure_device(dev);

@@ -2420,6 +2421,10 @@ void pci_device_add(struct pci_dev *dev, struct 
pci_bus *bus)
  	/* Set up MSI IRQ domain */
  	pci_set_msi_domain(dev);

+	parent = dev->dev.parent;
+	if (parent && parent->bus == &pci_bus_type)
+		device_link_add(&dev->dev, parent, DL_FLAG_AUTOPROBE_CONSUMER);
+
  	/* Notifier could use PCI capabilities */
  	dev->match_driver = false;
  	ret = device_add(&dev->dev);
-- 

This would work, but the problem is that if the port driver fails in 
probing - and not just for -EPROBE_DEFER - then the child device will 
never probe. This very thing happens on my dev board. However we could 
expand the device links API to cover this sort of scenario.

As for alternatives, it looks pretty difficult to me to disassociate the 
group allocation from the dma_configure path.

Let me know.

Thanks,
John

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
