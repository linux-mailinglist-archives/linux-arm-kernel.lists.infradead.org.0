Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BCB183B3C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 22:21:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=PC8OLfnbRvQ9wmwQOvPPT1wwqbHk86NK8bck0D1iQRY=; b=s9bUFpfHBMCCn4
	MxBaC3NEaryNGDX8ClkBRAyQU8hbXF2lHmya0DxOwK6920NE6RtvVPm0LLLsLB7uW8bZvF2ybtxoZ
	Pf6yXF4FYZVznr4jy9ecqdDOaHdqUwUxiWmQ1gSumLYj2yNFUeKyVCy6j0PhKXTUyF4YS0G9pPJyz
	Zpu2G207oa+jDFLxT6F5YBpjV9sRTtCQyTloEPyK4SvckUJbCnhcogQFsDEnpoU0osgtyfzU9t95W
	gAaxLg3mrtYy8c/xME19mMaBZjSZ5cN8JYKrXMsRKEoSCvXQ9t+P5Jcq5pva7yUH8sTIss6/KrQId
	FT29QWqVdR6t+NDjKCiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCVGn-0001Dw-Ug; Thu, 12 Mar 2020 21:21:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCVGg-0001Db-Gp
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 21:21:27 +0000
Received: from localhost (mobile-166-175-186-165.mycingular.net
 [166.175.186.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AE8B3206BE;
 Thu, 12 Mar 2020 21:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584048086;
 bh=7QxQN2DwLQDaVoXZb2JtRCzxu6x2CTMFwMZ1K7jh2Tw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=QqRSOd7LF3x7XcKV2ckDTs7eei1HR1cy25PL5NuTve+HDQbfdSyp8CF+vk+l6giQ4
 u3TU2kj8GRNgjxzk74X0Ojxauu/0EYksv/nxCZHLDY0/m+lr+Nj2deVAcUKn/iC3Mx
 8/LOU5eJCGAMcwqjgAe1ZLJi8w879jpNlPq1YdfQ=
Date: Thu, 12 Mar 2020 16:21:24 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v2 02/11] PCI: Add ats_supported host bridge flag
Message-ID: <20200312212124.GA178131@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311124506.208376-3-jean-philippe@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_142126_600811_49B9697F 
X-CRM114-Status: GOOD (  19.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 FAKE_REPLY_C           No description available.
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

On Wed, Mar 11, 2020 at 01:44:57PM +0100, Jean-Philippe Brucker wrote:
> Each vendor has their own way of describing whether a host bridge
> supports ATS.  The Intel and AMD ACPI tables selectively enable or
> disable ATS per device or sub-tree, while Arm has a single bit for each
> host bridge.  For those that need it, add an ats_supported bit to the
> host bridge structure.

Can you mention the specific ACPI tables here in the commit log?

Maybe elaborate on the "for those that need it" bit?  I'm not sure if
you need it for the cases where DT or ACPI tells us directly for the
host bridge, or if you need it for the more selective cases?

I guess in one sense you *always* need it since you check the cached
bit later.

I don't understand the implications of this, especially the selective
situation.  Given your comment from the first posting, I thought this
was a property of the host bridge, so I don't know what it means to
say some devices support ATS but others don't.

> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
> v1->v2: try to improve the comment
> ---
>  drivers/pci/probe.c | 8 ++++++++
>  include/linux/pci.h | 1 +
>  2 files changed, 9 insertions(+)
> 
> diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
> index 512cb4312ddd..b5e36f06b40a 100644
> --- a/drivers/pci/probe.c
> +++ b/drivers/pci/probe.c
> @@ -598,6 +598,14 @@ static void pci_init_host_bridge(struct pci_host_bridge *bridge)
>  	bridge->native_shpc_hotplug = 1;
>  	bridge->native_pme = 1;
>  	bridge->native_ltr = 1;
> +
> +	/*
> +	 * Some systems (ACPI IORT, device-tree) declare ATS support at the host
> +	 * bridge, and clear this bit when ATS isn't supported. Others (ACPI
> +	 * DMAR and IVRS) declare ATS support with a smaller granularity, and
> +	 * need this bit set.
> +	 */
> +	bridge->ats_supported = 1;
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
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
