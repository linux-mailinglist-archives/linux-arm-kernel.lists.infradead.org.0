Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A5E183ACE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 21:45:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Ke7ExJSeDrD2MZLnAabzLRrJergdQcKpyuyzC9RYOrw=; b=E89+91CJ+rFLR5
	R7o1eETXgVlkI8exxZU5TZEkeCfbj0r9wop3yayYD8kKsYkuOl3/dhmz08V7oeeX25pwDsSWtzTFU
	nuWD8a+v5t2Oif0hD1/ySq8PiQz78GmJvHPQ5mssHIgQ2kGLppfz60tZuCFnqOazrMzgSzT1k6ozR
	GufboMX+5DmctGEeOh1VVh/0uRKvUPscuH8mKmg7eKzB/7uxJUxd3h6Rlf+nnbyMAXoymYm4rZ6w8
	fa6mlfRE+cUeKvAdFlHKrikZCySlU9Cmvvncb2T3uCJMISw4bg46vFK81jsSoWEoMAbhdBq+ULBLl
	VmGAQDnHOWWQlCcZHA7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCUho-0003VX-BY; Thu, 12 Mar 2020 20:45:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCUhg-0003VC-QV
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 20:45:18 +0000
Received: from localhost (mobile-166-175-186-165.mycingular.net
 [166.175.186.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 067F0205F4;
 Thu, 12 Mar 2020 20:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584045916;
 bh=zZzSYd+OhEGo8pmui4OqaDSuxP1H2anQxWw6SpQUHb8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=nx7m7zJcnrAvX1RV8llWgsCoe4zJIRYbu9W2a5EFju1bjHduukyyrr861uJ2A38+c
 SD4yPMh1iEsi3jWdLg+wFDm11H4Mn213zXfKWrpetsfmbPZmH4P3EnuIJMFcVRAlzQ
 GHFsnrLuzMfgwFRn6465StIBaqkEOazOtFgUBYDc=
Date: Thu, 12 Mar 2020 15:45:14 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v2 03/11] PCI: OF: Check whether the host bridge supports
 ATS
Message-ID: <20200312204514.GA178416@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311124506.208376-4-jean-philippe@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_134516_879352_0FF20EEA 
X-CRM114-Status: GOOD (  15.47  )
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

On Wed, Mar 11, 2020 at 01:44:58PM +0100, Jean-Philippe Brucker wrote:
> When setting up a generic host on a device-tree based system, copy the
> ats-supported flag into the pci_host_bridge structure.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
> v1->v2: keep the helper in pci-host-common.c
> ---
>  drivers/pci/controller/pci-host-common.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/pci/controller/pci-host-common.c b/drivers/pci/controller/pci-host-common.c
> index 250a3fc80ec6..2e800bc6ae7a 100644
> --- a/drivers/pci/controller/pci-host-common.c
> +++ b/drivers/pci/controller/pci-host-common.c
> @@ -54,6 +54,16 @@ static struct pci_config_window *gen_pci_init(struct device *dev,
>  	return ERR_PTR(err);
>  }
>  
> +static void of_pci_host_check_ats(struct pci_host_bridge *bridge)
> +{
> +	struct device_node *np = bridge->bus->dev.of_node;
> +
> +	if (!np)
> +		return;
> +
> +	bridge->ats_supported = of_property_read_bool(np, "ats-supported");
> +}
> +
>  int pci_host_common_probe(struct platform_device *pdev,
>  			  struct pci_ecam_ops *ops)
>  {
> @@ -92,6 +102,7 @@ int pci_host_common_probe(struct platform_device *pdev,
>  		return ret;
>  	}
>  
> +	of_pci_host_check_ats(bridge);

I would prefer to write this as a predicate instead of having the
assignment be a side-effect, e.g.,

  bridge->ats_supported = of_pci_host_ats_supported(bridge);

If that works for you,

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

>  	platform_set_drvdata(pdev, bridge->bus);
>  	return 0;
>  }
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
