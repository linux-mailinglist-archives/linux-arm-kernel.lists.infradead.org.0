Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B67FD1E85E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 19:55:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1brid6legIOVh3SMubogWt8mVdGeaJX0GyMxke4a814=; b=CJvlpbc4xLpyEB
	6Xqn8PkpAJIh6Mq+d33jcaUyvWCdbegVLsjw+kR301nMtk2l8YvtqHOWa+LqPjuZYKQMhFjcPUT82
	A/uId1saW2qrmB9S98fqVQcp51kD0DPFoyEDw0EAQ0zrYLbHXOvH88CA1XEinrnhZQGoa3qOi/swc
	6GseowiXBw5tMrHH2qPr/QYxu2bENAeZH3urEh0ROqpFdLWunQUJ+fVVznHbumDCodnP6D3vHmsfl
	wCKMW9EA0FjT3c9iHe2R7flJXWo0ysHDPp4Sh5y4eNUD6BmFShY+pHod607IPJbs7PiqnouhCBBbZ
	9OlfcWG2nPexiFQaoeyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jejEF-0003LZ-3O; Fri, 29 May 2020 17:55:35 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jejE7-0003KU-Cs
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 17:55:28 +0000
Received: by mail-wm1-x344.google.com with SMTP id r15so4643058wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 10:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U/iWA+NM93lmEOR8BD3HSGFwn5myHStX/svocCwc2zk=;
 b=T3isW0BRXt8VQajj1U69CHubFeUebbA7xMKa/VSv/g1vunIpEUnbEgqdlAUG3dmxSY
 h+2fFSUWz5RSeir9VQUHRlYjikdIavLXyI7LELfjSHOEqDzuDt0smviqOBdljinxME5+
 KoE49ljxnvFhdKvzrug2mC7bA9NKZ1hJTbk3o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U/iWA+NM93lmEOR8BD3HSGFwn5myHStX/svocCwc2zk=;
 b=qq1ErWeDv0DhTH55V/wHq9YLhPH5TPhkvl+vOD9Y1wMXTj9xyKMCIzEgzYnYXEvQPw
 cQPHn+Y9LG6Et2vtsj/ceHR/EAJUbVFYyOrALHQr0ziit21uVkBtDxJoMA3YzUF0+Fys
 RI7IzH1fsZKMMVxOqnuL6gD1IexhfgUtLzPEo5uJl/jZWYYwxevLKGltk2SNSbMCh+2E
 zDD3ZK7NzrPEhhJnbuFvPE4n3tS9UsSSWriPrg8/FWUbdc2q4VsQnxZskWqGNwP4ErZd
 IlPnb2ueXf0MANXuTaDfqW6rhUl/LA+XqDUHqPH7fzp9ZwCxsyL3LoR0QOWuh7GBX47N
 kfqQ==
X-Gm-Message-State: AOAM533y47MTF/QlkbB5bpr3dbaTPjHQc39d0ChJP8B72xN0dENZGnWk
 AhND9zBiHG1f37oyioVcrm7rzEdlRYrzJXYIfoR0zQ==
X-Google-Smtp-Source: ABdhPJyddc3wujxmrCvzPzUS9jR6GnyypGU54L49z504ymdkHZAWzgGRss7csUxJVRpywWwHWAFmXu42cGVgC/AI5dc=
X-Received: by 2002:a05:600c:280c:: with SMTP id
 m12mr10012502wmb.92.1590774925565; 
 Fri, 29 May 2020 10:55:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200526191303.1492-1-james.quinlan@broadcom.com>
 <20200529174858.GA2640397@bogus>
In-Reply-To: <20200529174858.GA2640397@bogus>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Fri, 29 May 2020 13:55:13 -0400
Message-ID: <CA+-6iNydfUPe4J_eMY_9OXR9Y+Bwc65wtKQRGAwuW+K=drCVqQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/14] PCI: brcmstb: enable PCIe for STB chips
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_105527_437397_E204C874 
X-CRM114-Status: GOOD (  18.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>,
 "open list:LIBATA SUBSYSTEM \(Serial and Parallel ATA drivers\)"
 <linux-ide@vger.kernel.org>, Julien Grall <julien.grall@arm.com>,
 Christoph Hellwig <hch@lst.de>, Stefano Stabellini <sstabellini@kernel.org>,
 Saravana Kannan <saravanak@google.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Alan Stern <stern@rowland.harvard.edu>,
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

On Fri, May 29, 2020 at 1:49 PM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, May 26, 2020 at 03:12:39PM -0400, Jim Quinlan wrote:
> > v2:
> > Commit: "device core: Add ability to handle multiple dma offsets"
> >   o Added helper func attach_dma_pfn_offset_map() in address.c (Chistoph)
> >   o Helpers funcs added to __phys_to_dma() & __dma_to_phys() (Christoph)
> >   o Added warning when multiple offsets are needed and !DMA_PFN_OFFSET_MAP
> >   o dev->dma_pfn_map => dev->dma_pfn_offset_map
> >   o s/frm/from/ for dma_pfn_offset_frm_{phys,dma}_addr() (Christoph)
> >   o In device.h: s/const void */const struct dma_pfn_offset_region */
> >   o removed 'unlikely' from unlikely(dev->dma_pfn_offset_map) since
> >     guarded by CONFIG_DMA_PFN_OFFSET_MAP (Christoph)
> >   o Since dev->dma_pfn_offset is copied in usb/core/{usb,message}.c, now
> >     dev->dma_pfn_offset_map is copied as well.
> >   o Merged two of the DMA commits into one (Christoph).
> >
> > Commit "arm: dma-mapping: Invoke dma offset func if needed":
> >   o Use helper functions instead of #if CONFIG_DMA_PFN_OFFSET
> >
> > Other commits' changes:
> >   o Removed need for carrying of_id var in priv (Nicolas)
> >   o Commit message rewordings (Bjorn)
> >   o Commit log messages filled to 75 chars (Bjorn)
> >   o devm_reset_control_get_shared())
> >     => devm_reset_control_get_optional_shared (Philipp)
> >   o Add call to reset_control_assert() in PCIe remove routines (Philipp)
> >
> > v1:
> > This patchset expands the usefulness of the Broadcom Settop Box PCIe
> > controller by building upon the PCIe driver used currently by the
> > Raspbery Pi.  Other forms of this patchset were submitted by me years
> > ago and not accepted; the major sticking point was the code required
> > for the DMA remapping needed for the PCIe driver to work [1].
> >
> > There have been many changes to the DMA and OF subsystems since that
> > time, making a cleaner and less intrusive patchset possible.  This
> > patchset implements a generalization of "dev->dma_pfn_offset", except
> > that instead of a single scalar offset it provides for multiple
> > offsets via a function which depends upon the "dma-ranges" property of
> > the PCIe host controller.  This is required for proper functionality
> > of the BrcmSTB PCIe controller and possibly some other devices.
>
> If you can enable the h/w support without the multiple offset support,
> then I'd split up this series. The latter part might take a bit more
> time.
>
> Rob
Unfortunately, the STB PCIe  controller depends on the multiple PFN
offset functionality.
Thanks,
Jim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
