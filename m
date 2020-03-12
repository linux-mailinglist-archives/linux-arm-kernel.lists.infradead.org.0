Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3583182A02
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 08:55:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s4PvlceJU6hjaAVf1HUNOxfFIfS3QIru27sS7r8cljY=; b=TyyZNCMkMEgTBJ
	ZddKsbz3Imb6Gx8ybE4wiJmJS/9uY0FF10wQW7Zs96E03yXNlFCbVzw0mgX2Me+HHqLnUjLHSvYV/
	FI9KFZ9hwdNOkyMX8bHbCT+bSorHyd5J1qTi4IxNyR15cSqRfn9X3IbJBGMDqBcDgyIaW6k3o+1Ic
	wvQlOIGv2lfYSgJAJ3wq7VSQYQojNWRjgIfoQUAz23RgJM5Hp9SBoRn8XSszAXA3EN4HAKgxZ+wB/
	0ozttOKt1d03xQDEWShbiWRKsHCigrsSxe6h0H7/ZlNMkuuA4X+R4GfSA9BUmYphUJOuLS14JcCUU
	Q1voJ8Eaf/2FflL6a8Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCIg9-000208-FH; Thu, 12 Mar 2020 07:54:53 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCIg2-0001zn-38
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 07:54:47 +0000
Received: by mail-wr1-x444.google.com with SMTP id z15so6121678wrl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 00:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=pr04BKgViz7j88JBgxuUWEhe3OvdyJ6JSxyYo6mbxRM=;
 b=EpWXmU25L0YGiiRM8vJA3DFaYTd2tQHV/7f1WBTrWn3S4r9BSEwymIHqNVZSw4dMvj
 iyFMVzICUPU+kCGh2X+TFBzft2lxPcpMbo2NwY076sG0P7S8cnI2qb5nx+YdVFbTNEKI
 Z7BthyeuRMPKwkqWfD4mJzybiJp3XzMU1lUrJoyP65Uc00FpC6n2iQcNwChNa9vNvld+
 k7pTldNv6wbqW9jcOZyltSbxgDfSmSCexv+/zHWUc0V2kqkQvsQi0AAyblBeXyXYdrQm
 tiByVIzqJB4Lcq46F6IOlGlYJts4l+kW8g962H+cWT1VTDfEKGKKH9N9Zr/wVINNVYVX
 QiYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pr04BKgViz7j88JBgxuUWEhe3OvdyJ6JSxyYo6mbxRM=;
 b=YpkiqhtGWlUXdtkYyRwQRMbJgFJ1Welm3dtFLwz4eGD0IhxrNtThGjWxZrwJQq06qn
 EHfoG/zoiy1ftDm2crYyO1g68CNEvoJXp03Z+3RxZ9oy8uAWUNniKbQSKk7+CRDtvPnh
 agUHtQUYduMPa3JA43l0/QSb1Noy5G8oLsMG5rU+PYwkzcMA0nFmw4Op8TuXezj7v/y+
 a3SD2h16NPAxkqn9EuB6rumYGk0LKrXbzC+TN22yYKQl+qOJnw5GvE9RUPJSTmKSOxdK
 O7PRG9MGMLZfOnQH8RYaFhpMdySrZ5Zttf/ltq/AuiWI+vwvtcVvEK8gitCyCF1MLBY1
 FXLw==
X-Gm-Message-State: ANhLgQ1m/c8WLJ1DszCSipBbwDIKRW+qVrfJrImOnoyfDoozYymGnnn2
 pKgpmzj00eRne4vcHsfz7Mvfnw==
X-Google-Smtp-Source: ADFU+vtT5PIgJyJgbHd5navhTh3TzppWQ7now/ZfW46dAJfhZnjJPv9XMBdkmY0dc+S4uOHKFCAEpQ==
X-Received: by 2002:a5d:474d:: with SMTP id o13mr9266723wrs.162.1583999684449; 
 Thu, 12 Mar 2020 00:54:44 -0700 (PDT)
Received: from myrica ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id f207sm12446498wme.9.2020.03.12.00.54.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 00:54:43 -0700 (PDT)
Date: Thu, 12 Mar 2020 08:54:36 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Lu Baolu <baolu.lu@linux.intel.com>
Subject: Re: [PATCH v2 08/11] iommu/vt-d: Use pci_ats_supported()
Message-ID: <20200312075436.GA568802@myrica>
References: <20200311124506.208376-1-jean-philippe@linaro.org>
 <20200311124506.208376-9-jean-philippe@linaro.org>
 <7019230c-3c56-e6db-6704-d73f23fa39b5@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7019230c-3c56-e6db-6704-d73f23fa39b5@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_005446_165969_C6FB7DA1 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 liviu.dudau@arm.com, guohanjun@huawei.com, frowand.list@gmail.com,
 lorenzo.pieralisi@arm.com, corbet@lwn.net, will@kernel.org, joro@8bytes.org,
 linux-acpi@vger.kernel.org, lenb@kernel.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, bhelgaas@google.com, linux-arm-kernel@lists.infradead.org,
 dwmw2@infradead.org, rjw@rjwysocki.net, iommu@lists.linux-foundation.org,
 sudeep.holla@arm.com, robin.murphy@arm.com, amurray@thegoodpenguin.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Baolu,

On Thu, Mar 12, 2020 at 09:44:16AM +0800, Lu Baolu wrote:
> Hi Jean,
> 
> On 2020/3/11 20:45, Jean-Philippe Brucker wrote:
> > The pci_ats_supported() function checks if a device supports ATS and is
> > allowed to use it.
> > 
> > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> > ---
> >   drivers/iommu/intel-iommu.c | 9 +++------
> >   1 file changed, 3 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
> > index 6fa6de2b6ad5..17208280ef5c 100644
> > --- a/drivers/iommu/intel-iommu.c
> > +++ b/drivers/iommu/intel-iommu.c
> > @@ -1454,8 +1454,7 @@ static void iommu_enable_dev_iotlb(struct device_domain_info *info)
> >   	    !pci_reset_pri(pdev) && !pci_enable_pri(pdev, 32))
> >   		info->pri_enabled = 1;
> >   #endif
> > -	if (!pdev->untrusted && info->ats_supported &&
> > -	    pci_ats_page_aligned(pdev) &&
> > +	if (info->ats_supported && pci_ats_page_aligned(pdev) &&
> >   	    !pci_enable_ats(pdev, VTD_PAGE_SHIFT)) {
> >   		info->ats_enabled = 1;
> >   		domain_update_iotlb(info->domain);
> > @@ -2611,10 +2610,8 @@ static struct dmar_domain *dmar_insert_one_dev_info(struct intel_iommu *iommu,
> >   	if (dev && dev_is_pci(dev)) {
> >   		struct pci_dev *pdev = to_pci_dev(info->dev);
> > -		if (!pdev->untrusted &&
> > -		    !pci_ats_disabled() &&
> 
> The pci_ats_disabled() couldn't be replaced by pci_ats_supported(). Even
> pci_ats_supported() returns true, user still can disable it. Or move
> ats_disabled into pci_ats_supported()?

It is already there, but hidden behind the "if (!dev->ats_cap)":
pci_ats_init() only sets dev->ats_cap after checking that
pci_ats_disabled() returns false.

Thanks,
Jean

> 
> Best regards,
> baolu
> 
> > -		    ecap_dev_iotlb_support(iommu->ecap) &&
> > -		    pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_ATS) &&
> > +		if (ecap_dev_iotlb_support(iommu->ecap) &&
> > +		    pci_ats_supported(pdev) &&
> >   		    dmar_find_matched_atsr_unit(pdev))
> >   			info->ats_supported = 1;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
