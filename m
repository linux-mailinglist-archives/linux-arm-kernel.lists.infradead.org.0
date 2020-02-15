Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F5016008C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 22:11:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=vbMXzwJgmjpdbpby96BwzJCRX1nqKkQuhrFc+XkRMDY=; b=RbBgdw4Omr6wy5
	dGETttNkiCUR4rVXlbaSq4+d8xS4X2EjKwIMNvetjDbQ30spPWnOWENxqOZEe0aURHzwSpign6xOr
	jFsmBq+KQjGajqxwdD9cedzjLOC/LDEcZXoiKBEdU5E4euk96QsBcfxCRBo3ymvTmzOyKbGC005vi
	iywNFA8Hju8vVaLp2BpiwF85i4K6gpRuheKFQNmc4nodjfij3r/WDkYaMO551quXoLpf3DSiAcISA
	mhPNxXHS0pSho+OUygcQFLbokjqf+HKN+6UcPeU1DUlPKyNTMFTkp8PGLgi6Rd3iRh8xK42Au7oiC
	nZYLkl7Cc9aieMfXLgCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j34iK-00061q-Ip; Sat, 15 Feb 2020 21:11:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j34iC-00060a-Vz
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 21:10:54 +0000
Received: from localhost (mobile-166-175-186-165.mycingular.net
 [166.175.186.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 905702086A;
 Sat, 15 Feb 2020 21:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581801050;
 bh=tEClT3+bvoTgI32MP1CwIfXkOx2B0xPFE4PgnQ/bh48=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=j47cd6VEUSwkfygxE3Fl0jZ0+y96rV6rhCOwTbxqICgBpfUFlzCgbwqGdRnYiox7C
 WKpb0mZuAn05weV4GJBx36SsMMc64S7A1LA6rWCgZ5DLfuiiSr3UJMQigOngLYguLD
 3KhIlTuEB+wKTuzoV2SkhAffzCkX+GisJYG3Cb8A=
Date: Sat, 15 Feb 2020 15:10:47 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH 02/11] PCI: Add ats_supported host bridge flag
Message-ID: <20200215211047.GA124796@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213165049.508908-3-jean-philippe@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_131053_056757_D5AC7C82 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, linux-doc@vger.kernel.org, linux-pci@vger.kernel.org,
 liviu.dudau@arm.com, guohanjun@huawei.com, frowand.list@gmail.com,
 lorenzo.pieralisi@arm.com, corbet@lwn.net, will@kernel.org, joro@8bytes.org,
 linux-acpi@vger.kernel.org, lenb@kernel.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, dwmw2@infradead.org,
 rjw@rjwysocki.net, iommu@lists.linux-foundation.org, sudeep.holla@arm.com,
 baolu.lu@linux.intel.com, robin.murphy@arm.com, amurray@thegoodpenguin.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 05:50:40PM +0100, Jean-Philippe Brucker wrote:
> Each vendor has their own way of describing whether a host bridge
> supports ATS.  The Intel and AMD ACPI tables selectively enable or
> disable ATS per device or sub-tree, while Arm has a single bit for each
> host bridge.  For those that need it, add an ats_supported bit to the
> host bridge structure.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  drivers/pci/probe.c | 7 +++++++
>  include/linux/pci.h | 1 +
>  2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
> index 512cb4312ddd..75c0a25af44e 100644
> --- a/drivers/pci/probe.c
> +++ b/drivers/pci/probe.c
> @@ -598,6 +598,13 @@ static void pci_init_host_bridge(struct pci_host_bridge *bridge)
>  	bridge->native_shpc_hotplug = 1;
>  	bridge->native_pme = 1;
>  	bridge->native_ltr = 1;
> +
> +	/*
> +	 * Some systems may disable ATS at the host bridge (ACPI IORT,
> +	 * device-tree), other filter it with a smaller granularity (ACPI DMAR
> +	 * and IVRS).
> +	 */
> +	bridge->ats_supported = 1;

The cover letter says it's important to enable ATS only if the host
bridge supports it.  From the other patches, it looks like we learn if
the host bridge supports ATS from either a DT "ats-supported" property
or an ACPI IORT table.  If that's the case, shouldn't the default here
be "ATS is *not* supported"?

>  }
>  
>  struct pci_host_bridge *pci_alloc_host_bridge(size_t priv)
> diff --git a/include/linux/pci.h b/include/linux/pci.h
> index 3840a541a9de..9fe2e84d74d7 100644
> --- a/include/linux/pci.h
> +++ b/include/linux/pci.h
> @@ -511,6 +511,7 @@ struct pci_host_bridge {
>  	unsigned int	native_pme:1;		/* OS may use PCIe PME */
>  	unsigned int	native_ltr:1;		/* OS may use PCIe LTR */
>  	unsigned int	preserve_config:1;	/* Preserve FW resource setup */
> +	unsigned int	ats_supported:1;
>  
>  	/* Resource alignment requirements */
>  	resource_size_t (*align_resource)(struct pci_dev *dev,
> -- 
> 2.25.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
