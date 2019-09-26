Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF065BF11D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 13:20:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WF6IMcA8tn/p99S2cxZoneJHhqPLkMWOw8XzhnG61eg=; b=RfTzXrSIdStffE
	FRxVi5ry3pcWhivc2v5vV4DjyR3ol7PKtZdW2h9W0mqVHipmxBq5BaVaZp7TtSMf7VQlA/bHe/d6p
	+D0V+1tLGfmZ2pkrpqOs5uym4hF0guCkuJlh1aOx4SHsCrDfLtKJRCqmWcS5zJ7mhaFw/tqzkVqGw
	e4MyWQx8oODaWq5XxpzDFSAKxNmCWkkOdXr/z7MHlufgC60wSTf/bP2ctoeuyuAWDFdVu+Ay4ke5Q
	DfKsYrRl/fqPtyJ2586NGFM81837LJtU70sOxuXa5XMUZIY3g8E+UvhI7f++OftczFWh3KnQPR9e2
	zsgNrUh3ybsAv03iO09g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDRou-00064A-43; Thu, 26 Sep 2019 11:20:24 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDRom-00063M-Bw
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 11:20:18 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 228FD2040A;
 Thu, 26 Sep 2019 13:20:11 +0200 (CEST)
Received: from [192.168.108.37] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 0698320315;
 Thu, 26 Sep 2019 13:20:11 +0200 (CEST)
Subject: Re: [PATCH 00/11] PCI dma-ranges parsing consolidation
To: Andrew Murray <andrew.murray@arm.com>, Rob Herring <robh@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
References: <20190924214630.12817-1-robh@kernel.org>
 <20190926084859.GB9720@e119886-lin.cambridge.arm.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <036f298c-c65c-7da2-92dc-fc80892672c1@free.fr>
Date: Thu, 26 Sep 2019 13:20:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190926084859.GB9720@e119886-lin.cambridge.arm.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Sep 26 13:20:11 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_042016_557913_6D3B4DDF 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mans Rullgard <mans@mansr.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <maz@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <helgaas@kernel.org>, PCI <linux-pci@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Tweaking recipients list ]

On 26/09/2019 10:49, Andrew Murray wrote:

> On Tue, Sep 24, 2019 at 04:46:19PM -0500, Rob Herring wrote:
> 
>> pci-rcar-gen2 is the only remaining driver doing its own dma-ranges
>> handling as it is still using the old ARM PCI functions. Looks like it
>> is the last one (in drivers/pci/).
> 
> It also seems that pcie-tango is using of_pci_dma_range_parser_init
> and so parsing dma-ranges. Though it's using the dma_ranges for a
> slightly different purpose.

The rationale for that code can be found here:

	https://patchwork.kernel.org/patch/9915469/

NB: 1) The PCIE_TANGO_SMP8759 Kconfig symbol is marked "depends on BROKEN",
and 2) The driver adds TAINT_CRAP,
and 3) The maker of the tango platform is dead.

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
