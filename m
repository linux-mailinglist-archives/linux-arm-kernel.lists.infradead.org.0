Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE571C1768
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 16:16:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwB+VyAejSstSYzFypLRCYtic/poO/jo2LhH9kK/6CE=; b=dd1mKVu4jGMwFr
	SyzKehBLH9A+FnpUv3U/DICCrdwRO3b6n7odDCFKM+MjVsqzOqsrwdNCKyBd5ZIMZYaV6+88Q/M2i
	8IzgNzN9NWobVU+MHX7WSVb7Zu5rQ7hM13PfSNVIR4Ub2e5mlZlN+zxPUDFX6rdw+JmyVGUmE8bBe
	WT2R7ZpzprIv4NL6DA2Q5RemNnma0yyKIPsP63N+INuLqdX8a3vb82ILrCSFB7363G7+YqKhoinSU
	bfk/UFRSkCh3JhzKdEJxLjbBRJm6yNX6yr04D92hAc+NnQOXu+Yj7RX88mm4TYa6NvDwrhOd9uq4a
	kIkrVjGJK5v4XzzYthdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUWT2-0007pO-1S; Fri, 01 May 2020 14:16:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUWSw-0007o5-2q
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 14:16:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7B78F1FB;
 Fri,  1 May 2020 07:16:33 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7FB343F68F;
 Fri,  1 May 2020 07:16:31 -0700 (PDT)
Date: Fri, 1 May 2020 15:16:26 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH 0/3] PCI: Modularize host-generic
Message-ID: <20200501141626.GA7398@e121166-lin.cambridge.arm.com>
References: <20200409234923.21598-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409234923.21598-1-robh@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_071634_172046_A3AFF7A0 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mans Rullgard <mans@mansr.com>, Marc Gonzalez <marc.w.gonzalez@free.fr>,
 linux-pci@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-acpi@vger.kernel.org,
 Zhou Wang <wangzhou1@hisilicon.com>, Robert Richter <rrichter@marvell.com>,
 Jonathan Chocron <jonnyc@amazon.com>, Toan Le <toan@os.amperecomputing.com>,
 Len Brown <lenb@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 09, 2020 at 05:49:20PM -0600, Rob Herring wrote:
> This is part of a larger effort to modularize ARCH_VEXPRESS. In
> particular, the Arm FVP platforms use the host-generic driver. This
> conversion was straight-forward. I didn't convert the other ECAM drivers
> using host-common to modules, but am happy to do so if there's a strong
> desire to do so.
> 
> In the process, I noticed that 'const' was being dropped from the match
> table .data pointer, so the first patch constifies struct pci_ecam_ops.
> I started trying to constify pci_ops too, but that became a never ending
> treewide rabbit hole. So I ended up with a cast when we assign pci_ops
> from pci_ecam_ops.
> 
> Rob

Hi Bjorn,

if you don't have any objections I'd need your ACK to take this
series.

Thanks,
Lorenzo

> Rob Herring (3):
>   PCI: Constify struct pci_ecam_ops
>   PCI: host-generic: Support building as modules
>   PCI: host-generic: Eliminate pci_host_common_probe wrappers
> 
>  arch/arm64/kernel/pci.c                   |  4 ++--
>  drivers/acpi/pci_mcfg.c                   |  8 +++----
>  drivers/pci/controller/Kconfig            |  4 ++--
>  drivers/pci/controller/dwc/pcie-al.c      |  2 +-
>  drivers/pci/controller/dwc/pcie-hisi.c    | 19 +++++------------
>  drivers/pci/controller/pci-host-common.c  | 18 ++++++++++++----
>  drivers/pci/controller/pci-host-generic.c | 26 +++++++----------------
>  drivers/pci/controller/pci-thunder-ecam.c | 14 ++++++------
>  drivers/pci/controller/pci-thunder-pem.c  | 16 ++++++--------
>  drivers/pci/controller/pci-xgene.c        |  4 ++--
>  drivers/pci/controller/pcie-tango.c       |  9 +++++---
>  drivers/pci/ecam.c                        | 10 ++++++---
>  drivers/pci/setup-bus.c                   |  1 +
>  include/linux/pci-acpi.h                  |  2 +-
>  include/linux/pci-ecam.h                  | 25 +++++++++++-----------
>  15 files changed, 78 insertions(+), 84 deletions(-)
> 
> --
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
