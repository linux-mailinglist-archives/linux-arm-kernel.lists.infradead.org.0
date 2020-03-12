Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B472183AFB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 22:02:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=tnL/BoPCZxcyZZeinZQ+qNch+AN3ZCTLnz6kAS71bfo=; b=Obx+wx3Zs6J/3Z
	D310UTYEvFK4tBjphJEvQMaCKS8gVZkEnc10FIbaARAanDeZvtY3PULd/xlXsgvwJOEmWt5UESPYU
	baPyR32lEU3JdqQLo7lDgghNS38lrD7vsTZZkK1F7m6x/dycrMlnZofm75wqeWpOb61vd/xPTC705
	1/fe7a6zXqcBi72qdIFKb4uAGH8Skvm6X0QZP5hyFmrcdmdtuXBmVPH/Hbg+31+ehKkHDFiGsRyet
	M7+InH0E4mz8uBeXYD/zzNxT4tA0AXZiaRuatn0H3XqTO8dol96TnBeFHEIgMzl+1EI7PAKUjq8wY
	rEoV1l4GZaoSxosyycIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCUxz-00022F-Bq; Thu, 12 Mar 2020 21:02:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCUxr-00021g-U7
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 21:02:01 +0000
Received: from localhost (mobile-166-175-186-165.mycingular.net
 [166.175.186.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 158B320674;
 Thu, 12 Mar 2020 21:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584046919;
 bh=/e9LLeJ5dACgdtAw3HHaj6wtWKVc0kxLbLGS8/Q25qw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=EdwLzcJvSjpI3Th7mp7lKFatB+Yn47XEfNY+YgjNT3ENbyGBE0r12eGlfupHp5IcO
 TT8zsQMtI4TjFzhyJjyXL5LlLSL1a5GlHXoya30uKdsCtQVAkqrDLP566944IgMvPi
 nkoB08xDowbPCi+qj0dPDSH9lPbxsLbhzikPdbJs=
Date: Thu, 12 Mar 2020 16:01:57 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v2 05/11] PCI/ATS: Gather checks into pci_ats_supported()
Message-ID: <20200312210157.GA180471@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311124506.208376-6-jean-philippe@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_140159_996778_EACDA0E1 
X-CRM114-Status: GOOD (  19.13  )
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

On Wed, Mar 11, 2020 at 01:45:00PM +0100, Jean-Philippe Brucker wrote:
> IOMMU drivers need to perform several tests when checking if a device
> supports ATS.  Move them all into a new function that returns true when
> a device and its host bridge support ATS.
> 
> Since pci_enable_ats() now calls pci_ats_supported(), the following
> new checks are now common:
> * whether a device is trusted.  Devices plugged into external-facing
>   ports such as thunderbolt are untrusted.
> * whether the host bridge supports ATS, which defaults to true unless
>   the firmware description states that ATS isn't supported by the host
>   bridge.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

> ---
>  drivers/pci/ats.c       | 30 +++++++++++++++++++++++++++++-
>  include/linux/pci-ats.h |  3 +++
>  2 files changed, 32 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/ats.c b/drivers/pci/ats.c
> index 390e92f2d8d1..bbfd0d42b8b9 100644
> --- a/drivers/pci/ats.c
> +++ b/drivers/pci/ats.c
> @@ -30,6 +30,34 @@ void pci_ats_init(struct pci_dev *dev)
>  	dev->ats_cap = pos;
>  }
>  
> +/**
> + * pci_ats_supported - check if the device can use ATS
> + * @dev: the PCI device
> + *
> + * Returns true if the device supports ATS and is allowed to use it, false
> + * otherwise.
> + */
> +bool pci_ats_supported(struct pci_dev *dev)
> +{
> +	struct pci_host_bridge *bridge;
> +
> +	if (!dev->ats_cap)
> +		return false;
> +
> +	if (dev->untrusted)
> +		return false;
> +
> +	bridge = pci_find_host_bridge(dev->bus);
> +	if (!bridge)
> +		return false;
> +
> +	if (!bridge->ats_supported)
> +		return false;
> +
> +	return true;

I assume this is the same as

  return bridge->ats_supported;

Only "assuming" because I'm not a C language lawyer, but I assume it
does the obvious conversion from unsigned:1 to bool.

> +}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
