Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6F91192F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 22:07:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=YXUn8qbwM1fGgEZTAmN0x/HCV197Va9yzXB8gxI/PDE=; b=cES6WB/vN0uM+x
	tLmclBN5cT9z1kuSu8bOq0x6j7zxxS0SEVkk73E66dPEDiC6JNzjFybaLVRx9PHB+tXe/3+vJ+pfE
	D6YDX0TsRs161yCFkqf5B9W719RdyUV6eirzzGhqPihUVDzfSGf7arfETV5sv5r/3XqZOyB3d1VCO
	SsWxqf47K+m2ARP0nIUhnHc+mHN2CKAdBPoJZMyzeRwx8tVrlsJ7vxBfypjWvyCkVULcxWLi5GVtg
	x7Zl/mNXmLuGdhPEUpkLqDmBTwxiHzQT81Ux9K+VVsoR0YrG6y/eCaybtqcCXZJ6Sac3QB5hf1pXn
	tdfzOvOU7uEE1fu/tOWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemjc-00015C-1Y; Tue, 10 Dec 2019 21:07:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemjQ-00014U-GC
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 21:07:45 +0000
Received: from localhost (mobile-166-170-223-177.mycingular.net
 [166.170.223.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C86E82467E;
 Tue, 10 Dec 2019 21:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576012064;
 bh=2ykNyvGZMJo7g3XX2Ffo2Sm4t/OZWneo6t2EKj0O0vs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=tiZ5TXWGgfMMcgH1qAGW16vBSyFbf8QVFgba/3MyF+aPuDTbo4hJyiKvDLa/T3dHf
 QC17RvTnsNWgjsiKExbDTckPZJk/RCI/j1M9mCOmDjgARxC0K8V6pKEybDPhvvojm+
 0dNknNsvmHuDSPRrzN1/QfLHPNP0Fm1IwVXvM5HU=
Date: Tue, 10 Dec 2019 15:07:41 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v3 12/13] PCI/ATS: Add PASID stubs
Message-ID: <20191210210741.GA143420@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209180514.272727-13-jean-philippe@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_130744_566685_AB43476B 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FAKE_REPLY_C           No description available.
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 eric.auger@redhat.com, linux-pci@vger.kernel.org, joro@8bytes.org,
 sudeep.holla@arm.com, rjw@rjwysocki.net, robin.murphy@arm.com,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org,
 robh+dt@kernel.org, jonathan.cameron@huawei.com, guohanjun@huawei.com,
 zhangfei.gao@linaro.org, will@kernel.org, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 09, 2019 at 07:05:13PM +0100, Jean-Philippe Brucker wrote:
> The SMMUv3 driver, which may be built without CONFIG_PCI, will soon gain
> PASID support.  Partially revert commit c6e9aefbf9db ("PCI/ATS: Remove
> unused PRI and PASID stubs") to re-introduce the PASID stubs, and avoid
> adding more #ifdefs to the SMMU driver.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

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
> -- 
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
