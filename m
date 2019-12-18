Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D051245AE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 12:21:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h3sHk5tiLRYxyHioSmPd0s/16Km6nlBf2T8vAh34Ivg=; b=Zp3w4avZZP0fmM
	UqSXXFyE5qTz2Ot+2N876plsqVNWPAzBAXUa7QSY1qCJt3ZtmsVbGivI1vKLF6oMpi6g6GhebEKjT
	K/CR0ZuySwp5tYl0GqRRGcH5zGoYRkEotWtHTOAXU9D5atByW5Xmfkf3egDwf3GScwlJalZgMhcyi
	OySyF5IZFeavO8xzx0I7N5D7jzkZMxpDogCoEYAt+t0W5gA8sD3AjEtY+8wHeTJRzLaAaAYlCG186
	elz8bdOvWuTzDIwIl0YFN5hs1bPAyX+W5CvVzJx2Z2VIaDG2SzDUrZGbNgtjRrxRWGQTuF7Jh4q4j
	e0DGATwkMjVcLwLBt5Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihXOY-0007IU-Es; Wed, 18 Dec 2019 11:21:34 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihXNt-0006u4-OI
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 11:20:57 +0000
Received: by mail-wr1-x443.google.com with SMTP id q10so1835936wrm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 03:20:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=pMkceByH9eCryv82zRsOWRcNfp6S4hkvvS5VTqlG1c0=;
 b=vZD5Dd+n/3TPNldn1jITqf3ZHGQIDZcTIa/F/xxnIvcxm2m4qSnRD/mH/tOv7qucLd
 kGh+QhQEE3RZJUHhtq2KiQL1rCRF2pm6lgLxxi9h6CZpWALWW+1nJyf31aWZg0Phn3sm
 /vwes2L4Fk9SRH1k6CQyNnEp6Kfn0Jg/H2HDantOabtY4r4QHooB9zjVF2w0ND2vNtdx
 WMWL5z3V/xUBnFBPNvwD+fBAWBqkAHTe6X/TgtOTGsOIWuVURyorwjLf56rXOZRyAl1T
 lSrMcPsyYop89mF4dmuODnLyXXlGD8m5BUalhx7w1yst9yfm3xUIJBDY5FTyUxIAFtwg
 vbyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pMkceByH9eCryv82zRsOWRcNfp6S4hkvvS5VTqlG1c0=;
 b=e6UxLUfFC41qD0Bc3CP4AOs35XggreKq2iYvnH9xRdA8jYuH5VB5xJEpdUaNKrznfV
 I4+vlKlo50wp2L2PL7RhPA8BAu/3raA9haeeA6BZXo3JbAK3yTUgjxcSh0En85cV8VpA
 mZ90V+lGT9QfuvSiVPIGW4fYnJmBiv6+gBAUkRkPJMnT+jI2C3IGIWMdqMf9hAuNdcR0
 MQAQqVBUCaQKhHHh3/CiRjjR0tSOxIBzpwuwk+D0/X9XYlkllUDISBt1Mcxr/RmO4i5t
 K+GYCvi6rPB9peBz1h8R2u9zDeIoW1wzo8ENOUsQWz7tly+8fUFlehNHpPu6aHbGMQK3
 /9Yw==
X-Gm-Message-State: APjAAAXCwRtDNpuf8qwLrsFCYrgfy5i3hADQFzntijNJo9RWFRMkV3b7
 1aLvlyJGZL/xvsFKGaCAM2HF4g==
X-Google-Smtp-Source: APXvYqyBIwIRMTHGPx7v8yVAQ5az67No8n6zIvx1fkP7hot2ar0GN4FuP0sV59XgyrhycW66+HTftQ==
X-Received: by 2002:adf:f80b:: with SMTP id s11mr2135192wrp.12.1576668051104; 
 Wed, 18 Dec 2019 03:20:51 -0800 (PST)
Received: from myrica (adsl-84-227-176-239.adslplus.ch. [84.227.176.239])
 by smtp.gmail.com with ESMTPSA id f17sm2138536wmc.8.2019.12.18.03.20.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 03:20:50 -0800 (PST)
Date: Wed, 18 Dec 2019 12:20:44 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: "Jacob Pan (Jun)" <jacob.jun.pan@intel.com>
Subject: Re: [RFC 00/13] virtio-iommu on non-devicetree platforms
Message-ID: <20191218112044.GA2371701@myrica>
References: <20191122105000.800410-1-jean-philippe@linaro.org>
 <20191122160102.00004489@intel.com>
 <20191125180247.GD945122@lophozonia>
 <20191203190136.00007171@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203190136.00007171@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_032053_838529_B5F06BAD 
X-CRM114-Status: GOOD (  32.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: virtio-dev@lists.oasis-open.org, kevin.tian@intel.com,
 lorenzo.pieralisi@arm.com, gregkh@linuxfoundation.org,
 linux-pci@vger.kernel.org, joro@8bytes.org, sudeep.holla@arm.com,
 rjw@rjwysocki.net, virtualization@lists.linux-foundation.org,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org,
 sebastien.boeuf@intel.com, mst@redhat.com, eric.auger@redhat.com,
 guohanjun@huawei.com, bhelgaas@google.com, jasowang@redhat.com,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 07:01:36PM -0800, Jacob Pan (Jun) wrote:
> Hi Jean,
> 
> Sorry for the delay, I was out last week. Comments inline below.
> 
> On Mon, 25 Nov 2019 19:02:47 +0100
> Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:
> 
> > On Fri, Nov 22, 2019 at 04:01:02PM -0800, Jacob Pan (Jun) wrote:
> > > > (1) ACPI has one table per vendor (DMAR for Intel, IVRS for AMD
> > > > and IORT for Arm). From my point of view IORT is easier to
> > > > extend, since we just need to introduce a new node type. There
> > > > are no dependencies to Arm in the Linux IORT driver, so it works
> > > > well with CONFIG_X86. 
> > > From my limited understanding, IORT and VIOT is to solve device
> > > topology enumeration only? I am not sure how it can be expanded to
> > > cover information beyond device topology. e.g. DMAR has NUMA
> > > information and root port ATS, I guess they are not used today in
> > > the guest but might be additions in the future.  
> > 
> > The PCI root-complex node of IORT has an ATS attribute, which we can
> > already use. However its scope is the root complex, not individual
> > root ports like with DMAR.
> > 
> > I'm not very familiar with NUMA, but it looks like we just need to
> > specify a proximity domain in relation to the SRAT table, for each
> > viommu? The SMMUv3 node in IORT has a 4-bytes "proximity domain"
> > field for this. We can add the same to the VIOT virtio-iommu nodes
> > later, since the structures are extensible.
> > 
> I think there the proximity domain is more for each assigned device
> than vIOMMU. vIOMMU in the guest can have assigned devices belong to
> different pIOMMU and proximity domains. If the guest owns the first
> level page tables (gIOVA or SVA), we want to make sure page tables are
> allocated from the close proximity domain.
> 
> My understanding is virtio IOMMU supports both virtio devices and
> assigned devices. we could care less about the former in terms of NUMA.
> 
> In ACPI, we have _PXM method to retrieve device proximity domain. I
> don't know if there is something equivalent or a generic way to get
> _PXM information. I think VMM also need to make sure when an assigned
> device is used with vIOMMU, there are some memory is allocated from the
> device's proximity domain.
> 
> > But it might be better to keep the bare minimum information in the FW
> > descriptor, and put the rest in the virtio-iommu. So yes topology
> > enumeration is something the device cannot do itself (not fully that
> > is, see (2)) but for the rest, virtio-iommu's PROBE request can
> > provide details about each endpoint in relation to their physical
> > IOMMU.
> > 
> > We could for example add a bit in a PROBE property saying that the
> > whole path between the IOMMU and the endpoint supports ATS. For NUMA
> > it might also be more interesting to have a finer granularity, since
> > one viommu could be managing endpoints that are behind different
> > physical IOMMUs. If in the future we want to allocate page tables
> > close to the physical IOMMU for example, we might need to describe
> > multiple NUMA nodes per viommu, using the PROBE request.
> > 
> Should we reinvent something for NUMA or use ACPI's SRAT, _PXM? 

Regardless whether we put it in the VIOT or in the virtio-iommu PROBE
request, we necessarily need to reuse the node IDs defined by SRAT (or
numa-node-id on devicetree, also a 32-bit value). A virtio-pci based
virtio-iommu already has the _PXM of its closest bridge and wouldn't need
anything more in the VIOT, while a virtio-mmio based virtio-iommu would
need a proximity domain field in the VIOT. That could be added later since
the table is extensible, but as you pointed out, that information might
not be very useful.

> I am not sure how it is handled today in QEMU in terms of guest-host
> NUMA proximity domain mapping.

It looks like the user can specify this guest-host mapping on the
command-line:

  -object memory-backend-ram,id=mem0,size=4G,host-nodes=3,policy=bind
  -object memory-backend-ram,id=mem1,size=4G,host-nodes=4,policy=bind
  -numa node,memdev=mem0,nodeid=numa0
  -numa node,memdev=mem1,nodeid=numa1
  -numa cpu,node-id=numa0,socket-id=0
  -numa cpu,node-id=numa1,socket-id=1

numa0 and numa1 would get proximity domains 0 and 1, corresponding to host
domains 3 and 4. It is also possible to specify the NUMA node of a PCI bus
(via the PCI expander bridge), and therefore to assign a VFIO PCI device
in the same proximity domain as its physical location.

  -device pxb,id=bridge1,bus=pci.0,numa_node=1 (simplified)
  -device vfio-pci,host=03:01.0,bus=bridge1

Linux can use this information to allocate DMA close to the endpoint (see
for example __iommu_dma_alloc_pages()). For page tables allocation,
io-pgtables currently takes the node ID of the IOMMU device, not the
endpoint. For the scenario you describe (virtio-iommu endpoints managed by
different physical IOMMU), we would need to take for example the node ID
of the first endpoint in the iommu_domain for which we're allocating page
tables.

Is it safe to assume that the pIOMMU is in the same proximity domain as
the physical endpoint?  If that's the case, then the guest already has all
the information it needs. Otherwise it's easy to add a proximity domain
PROBE property for each endpoint. Configuring the host to pass that
information might be more difficult.


Off topic, I've been wondering how to make iommu-sva aware of NUMA
topology as well, so that when handling a page request we allocate memory
on the faulting device's NUMA node, but I think it might require invasive
changes to the mm subsystem, to pass a NUMA node to handle_mm_fault().

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
