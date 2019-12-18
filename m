Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE7A1243E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:03:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fNTG5pXH50u6xTC6KeWTsCHflnFoRY3dH6ak3JZQ13E=; b=gvicWUppa/7vlX
	syIEKPaBfRz2u3Cac0Hmed9qeCE+Q5b/mLGkcSLD/Y01E4jd3nIThW4P4cT3/D7N7NE+4d52xWbu3
	CVasq74E0aNoBmTyxWTaKiZByy3iYSHWEKkdxpaHuxs5p6xtG+jSw7rRJEhBfKJoS+ZL+NCRWZyVa
	zDXnXmGi+nJwA+TfyL36NzKE/jGmlixmPOoWHXKgg6GmTxMmUG8Px9hUgtHhuQMrL9d3wjD86aeKz
	vFXWQ3GVEgM8C2aUlRN/o7DztQfjzG5GLKNf1M54UJAQZyixNzVW+gsNhQkaRCrROFGgxmS4sFHY8
	RDTon3zcC/gE7bOHyJlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWAh-0006oc-Fz; Wed, 18 Dec 2019 10:03:11 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWAM-0006iX-Ap
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:02:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576663369;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wNl30ngwplpkjNMccFNGBwXPzMVQNo8XvrbBUj1dPsg=;
 b=Dn5QgXxafxWZWolIiPnbDcmtB9hQs2vXAU/HJ5CGMPCSV7Cy3jZW7CjF7sLqWOGKXAz86g
 Jlx2NW0rDZLpiKQWpNobDKS6kz1mqzHq+iEe81ZlPzKGxmm7Yyd22czamvJpZ1ipE8E/JY
 h4kjKNV/U+YGR38Y9y/RHNcIoPtsomk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-86-z-uiARqFMSS96uPc4V83jw-1; Wed, 18 Dec 2019 05:02:42 -0500
X-MC-Unique: z-uiARqFMSS96uPc4V83jw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B99D6DB24;
 Wed, 18 Dec 2019 10:02:39 +0000 (UTC)
Received: from [10.36.116.117] (ovpn-116-117.ams2.redhat.com [10.36.116.117])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9FA537D903;
 Wed, 18 Dec 2019 10:02:35 +0000 (UTC)
Subject: Re: [PATCH v3 12/13] PCI/ATS: Add PASID stubs
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
References: <20191209180514.272727-1-jean-philippe@linaro.org>
 <20191209180514.272727-13-jean-philippe@linaro.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <c5fc736a-d7f6-8b9d-27eb-450b65658c36@redhat.com>
Date: Wed, 18 Dec 2019 11:02:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20191209180514.272727-13-jean-philippe@linaro.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_020250_480664_F96D6739 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, robin.murphy@arm.com,
 joro@8bytes.org, guohanjun@huawei.com, rjw@rjwysocki.net, robh+dt@kernel.org,
 jonathan.cameron@huawei.com, sudeep.holla@arm.com, bhelgaas@google.com,
 zhangfei.gao@linaro.org, will@kernel.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jean,

On 12/9/19 7:05 PM, Jean-Philippe Brucker wrote:
> The SMMUv3 driver, which may be built without CONFIG_PCI, will soon gain
> PASID support.  Partially revert commit c6e9aefbf9db ("PCI/ATS: Remove
> unused PRI and PASID stubs") to re-introduce the PASID stubs, and avoid
> adding more #ifdefs to the SMMU driver.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks

Eric
> ---
>  include/linux/pci-ats.h | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/include/linux/pci-ats.h b/include/linux/pci-ats.h
> index 5d62e78946a3..d08f0869f121 100644
> --- a/include/linux/pci-ats.h
> +++ b/include/linux/pci-ats.h
> @@ -33,6 +33,9 @@ void pci_disable_pasid(struct pci_dev *pdev);
>  int pci_pasid_features(struct pci_dev *pdev);
>  int pci_max_pasids(struct pci_dev *pdev);
>  #else /* CONFIG_PCI_PASID */
> +static inline int pci_enable_pasid(struct pci_dev *pdev, int features)
> +{ return -EINVAL; }
> +static inline void pci_disable_pasid(struct pci_dev *pdev) { }
>  static inline int pci_pasid_features(struct pci_dev *pdev)
>  { return -EINVAL; }
>  static inline int pci_max_pasids(struct pci_dev *pdev)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
