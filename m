Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2051E85AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 19:49:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZKjeVG5weEtto5uvIbMMRvHlfravHIwCe19ueWUY8rc=; b=ZJfRSPXISMtl6x
	+cHZPLt/1zHssyiJgKJFfX5kun+hv8xngxejO35rzgSRHFadtzPvbUGKBvOtPAxoY3n5O657cJSzR
	Q45P8Nxs7juFbuBDT7hjQ9QiJOKMT0ENuhqU0j96snHM7LCVTIF/KHYcxnr01TCMFu9gckYMRAzn9
	ne+2ip5+0NimE+QldFriRc7khN0lYWikGZVQrls552qLazziUsdmq50vMsRQFLlhJgHEga6g+d7+1
	V7Oe0jX7iHHBrnVWUIuvZ6Qbx3rXXYkZUzMAaE2jdCSo1ZGSiuZPkqOeBlTRtr5xoqM86QC0u/gII
	dYrQNTTp0TKUEwyZlegg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jej85-00066c-14; Fri, 29 May 2020 17:49:13 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jej7t-00065p-Fq; Fri, 29 May 2020 17:49:02 +0000
Received: by mail-io1-f66.google.com with SMTP id j8so192135iog.13;
 Fri, 29 May 2020 10:49:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BLn5568WhOcT6+u2ym9/jBhSyqxnYH4n/L9rj2t60QE=;
 b=cMSW5ZaFCfI/2N6bE/0/nIKLr6uruV6ODAdIYfVXbyteVbRcTzOjOKr06sGxdLbbN6
 2n6L1AxMsW9qpxXeV/cAvABKnOtGeg8SUOt/P3x3MsjRdUAISMV+/3y7iLaCF00QuxMQ
 ARVz7zjJAdqD8maL9V0lq+/YVeIN1UghEYmIujies6tbO+7Nr5lheOovvx6y76eW2S1x
 MTN0USJc6iVpeVSRZQARTwjAL/KDFTYdzhpNpXl0eG8apcrnp29yP1xJEhBeLRzj1/30
 QE5wYlwkzLSXfqWg5DOqcKqvHCRk024/5uSl6042auSb4L2EJEtkT2aufzKoTeL8YtiG
 QGxg==
X-Gm-Message-State: AOAM532DQALdsetx+ZHtJg5OslUn8qtjCoyKMyjh2E0DIo7ME6yiFZR0
 pGnd8Y8kI1MULrMvfB50Fw==
X-Google-Smtp-Source: ABdhPJy7YUF3lpxrD7YMnpI0UvB3HdDPYFVO6rRfufgNQwXAXOB9FeWO8U/8UblJM9K1CPtEmWfdwQ==
X-Received: by 2002:a02:1443:: with SMTP id 64mr2603674jag.43.1590774540749;
 Fri, 29 May 2020 10:49:00 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id t22sm4001987iom.49.2020.05.29.10.48.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 10:49:00 -0700 (PDT)
Received: (nullmailer pid 2643995 invoked by uid 1000);
 Fri, 29 May 2020 17:48:58 -0000
Date: Fri, 29 May 2020 11:48:58 -0600
From: Rob Herring <robh@kernel.org>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH v2 00/14] PCI: brcmstb: enable PCIe for STB chips
Message-ID: <20200529174858.GA2640397@bogus>
References: <20200526191303.1492-1-james.quinlan@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526191303.1492-1-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_104901_525131_7600C5F1 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, linux-pci@vger.kernel.org,
 "open list:LIBATA SUBSYSTEM \(Serial and Parallel ATA drivers\)"
 <linux-ide@vger.kernel.org>, Julien Grall <julien.grall@arm.com>,
 Christoph Hellwig <hch@lst.de>, Stefano Stabellini <sstabellini@kernel.org>,
 Saravana Kannan <saravanak@google.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 bcm-kernel-feedback-list@broadcom.com, Alan Stern <stern@rowland.harvard.edu>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE"
 <devicetree@vger.kernel.org>, Corey Minyard <minyard@acm.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Mark Brown <broonie@kernel.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Dan Williams <dan.j.williams@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Oliver Neukum <oneukum@suse.com>, open list <linux-kernel@vger.kernel.org>,
 Wolfram Sang <wsa@kernel.org>,
 "open list:DMA MAPPING HELPERS" <iommu@lists.linux-foundation.org>,
 "open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 03:12:39PM -0400, Jim Quinlan wrote:
> v2:
> Commit: "device core: Add ability to handle multiple dma offsets"
>   o Added helper func attach_dma_pfn_offset_map() in address.c (Chistoph)
>   o Helpers funcs added to __phys_to_dma() & __dma_to_phys() (Christoph)
>   o Added warning when multiple offsets are needed and !DMA_PFN_OFFSET_MAP
>   o dev->dma_pfn_map => dev->dma_pfn_offset_map
>   o s/frm/from/ for dma_pfn_offset_frm_{phys,dma}_addr() (Christoph)
>   o In device.h: s/const void */const struct dma_pfn_offset_region */
>   o removed 'unlikely' from unlikely(dev->dma_pfn_offset_map) since
>     guarded by CONFIG_DMA_PFN_OFFSET_MAP (Christoph)
>   o Since dev->dma_pfn_offset is copied in usb/core/{usb,message}.c, now
>     dev->dma_pfn_offset_map is copied as well.
>   o Merged two of the DMA commits into one (Christoph).
> 
> Commit "arm: dma-mapping: Invoke dma offset func if needed":
>   o Use helper functions instead of #if CONFIG_DMA_PFN_OFFSET
> 
> Other commits' changes:
>   o Removed need for carrying of_id var in priv (Nicolas)
>   o Commit message rewordings (Bjorn)
>   o Commit log messages filled to 75 chars (Bjorn)
>   o devm_reset_control_get_shared())
>     => devm_reset_control_get_optional_shared (Philipp)
>   o Add call to reset_control_assert() in PCIe remove routines (Philipp)
> 
> v1:
> This patchset expands the usefulness of the Broadcom Settop Box PCIe
> controller by building upon the PCIe driver used currently by the
> Raspbery Pi.  Other forms of this patchset were submitted by me years
> ago and not accepted; the major sticking point was the code required
> for the DMA remapping needed for the PCIe driver to work [1].
> 
> There have been many changes to the DMA and OF subsystems since that
> time, making a cleaner and less intrusive patchset possible.  This
> patchset implements a generalization of "dev->dma_pfn_offset", except
> that instead of a single scalar offset it provides for multiple
> offsets via a function which depends upon the "dma-ranges" property of
> the PCIe host controller.  This is required for proper functionality
> of the BrcmSTB PCIe controller and possibly some other devices.

If you can enable the h/w support without the multiple offset support, 
then I'd split up this series. The latter part might take a bit more 
time.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
