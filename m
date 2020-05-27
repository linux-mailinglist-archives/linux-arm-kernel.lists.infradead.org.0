Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F021E3DB5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 11:39:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJaPf+MlLuSwZ46YMNSXgGKZz+lk3+DFJwmqlRaGkaM=; b=X0qIejqZ43p6Wo
	9kElzF+ic7O7T2ZpH4kb7xhi0YV5bAnjMSOEgq9NnXkbmoVhOSr1r4rchJFevDHZVU8fCr4rvqGmD
	D+hSxBn1LtES9DyqQAAWiOkTfviHgRXiXao0WIkDPLkt9ql6lEb0Tm5igZbIE3XYUa29IMXjE7QYD
	UsptTZO03fqsijcHZlZexFh42ZNNweB0KHrIVgvisa3pjUouJ72gBqSNbDWs9wiIpddYbtVSrJNai
	eBhE+H8BLSBbnZ7NCKRR3k3DZWhEXNBMUZ1JfA8A7UdcIZL6ykl2hMESut5YUfaL8oUj0Clao+KX8
	2nkC4C+CA8iLIdhtpY2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdsWq-00066L-2I; Wed, 27 May 2020 09:39:16 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdsWe-00065W-Vk
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 09:39:06 +0000
Received: by mail-wm1-x341.google.com with SMTP id u12so2369292wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 02:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ma4u4XMWVxhpm3lD4oFGEfaNlly6DyjC8Gxwotb9TKs=;
 b=WXjQEVV83bRPYCR6LgwSP7gKE0qWLHR4Mnqw7P8noGQQ24OMhB75T8jRtIYlWMpWHY
 MySHznY6zRSBwHKVYmHsysbE+174PlXCVINNqJQjYg/72BEdEN0K/YKDNyN2QBDIuFxt
 R0Oq37rjAYoXARsBmbhgrlZSfqvOCc9gdGAOg9wpUOynvLbCDDIhxm3cCxh1xAWM53Kj
 /qMG3/aahORuZGKeMGZO2hruY7t1qM0Ejp5rLqR+i+9f80Efp9dXuIIn0b0rnCOeFxCi
 Q4RCOaOgvO5K4/5OBdHDdj2Yo2pvfTSwcO3cdr45feco2zONM3j9uMw4Ntt8RCKXreoL
 IzCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ma4u4XMWVxhpm3lD4oFGEfaNlly6DyjC8Gxwotb9TKs=;
 b=pRXVvmalu+mSYAWVntVuj+B2NCD1gYDRIimkqHP0GHNJO8wcVIPq16tucpkIoAeMQS
 f9Y37Z5LaoRuFoRftLfYqaEsF63vED9eS3by/eMdzOiobwvTj+zRXYPX51Bkyr/MGOVu
 B71wmDgGP06gDwU4IocN4T2bh3Kns0pafziWrDMB9uUOCF1aeHo0RzSQYbbAecRenwla
 AVZC144nmLOTD2sgEOFUv7ftIAwvRy2kwz6Vh9J/a9GtAZVyLITt/l8jbaUG5LvBm5sW
 1+A+0ALm5PStbAkasuW9APGvGW/5EkY6x5XaDh1Mj8WHUmxHvxSocfn313JWVsGWV5DQ
 TbCw==
X-Gm-Message-State: AOAM5315UkGgtYEyF4QF/dJd0zgKUr9cam6LFEuO9h78nJHr5IPd+b7B
 h7vBnvsKoMe1dMsc6oH7eVb5Zw==
X-Google-Smtp-Source: ABdhPJwRHl1VsOw+wNkIidN7cnKb04trFlt4YsFqaYnPmLrEQw89lrhHnt4yDc5lSDmieVnQqqyCXA==
X-Received: by 2002:a1c:b354:: with SMTP id c81mr3432193wmf.136.1590572343528; 
 Wed, 27 May 2020 02:39:03 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id h20sm2275362wma.6.2020.05.27.02.39.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 02:39:03 -0700 (PDT)
Date: Wed, 27 May 2020 11:38:52 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org, joro@8bytes.org, bhelgaas@google.com
Subject: Re: [PATCH v2 0/4] PCI, iommu: Factor 'untrusted' check for ATS
 enablement
Message-ID: <20200527093852.GC265288@myrica>
References: <20200520152201.3309416-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520152201.3309416-1-jean-philippe@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_023905_229658_1EE7E39F 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ashok.raj@intel.com, will@kernel.org, hch@infradead.org,
 alex.williamson@redhat.com, robin.murphy@arm.com, dwmw2@infradead.org,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Joerg, Bjorn,

On Wed, May 20, 2020 at 05:21:59PM +0200, Jean-Philippe Brucker wrote:
> IOMMU drivers currently check themselves if a device is untrusted
> (plugged into an external-facing port) before enabling ATS. Move the
> check to drivers/pci. The only functional change should be to the AMD
> IOMMU driver. With this change all IOMMU drivers block 'Translated' PCIe
> transactions and Translation Requests from untrusted devices.

This seems ready for v5.8. I guess it could go through the IOMMU tree
since there are a little more IOMMU changes?

Thanks,
Jean
> 
> Since v1 [1] I added tags, addressed comments on patches 1 and 3, and
> fixed a regression in patch 3.
> 
> [1] https://lore.kernel.org/linux-iommu/20200515104359.1178606-1-jean-philippe@linaro.org/
> 
> Jean-Philippe Brucker (4):
>   PCI/ATS: Only enable ATS for trusted devices
>   iommu/amd: Use pci_ats_supported()
>   iommu/arm-smmu-v3: Use pci_ats_supported()
>   iommu/vt-d: Use pci_ats_supported()
> 
>  include/linux/pci-ats.h     |  3 +++
>  drivers/iommu/amd_iommu.c   | 12 ++++--------
>  drivers/iommu/arm-smmu-v3.c | 20 +++++++-------------
>  drivers/iommu/intel-iommu.c |  9 +++------
>  drivers/pci/ats.c           | 18 +++++++++++++++++-
>  5 files changed, 34 insertions(+), 28 deletions(-)
> 
> -- 
> 2.26.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
