Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F4D1C181E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 16:46:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=XSeRsQA36nADA+sTweR4ZT+x1xXuQPBgMvrnctDFaE8=; b=DfGBYwdO2n11Zq
	WZDFc0SWOooPJRc8nB2DI2rVaBhgOc/8zPpFIDduNKbhvCSP/F+dsD14u2NaizqUf0HrxpTDpWcWx
	1gc7IGeZx2jjkjahLf2I2YITsIbzpZhoggEKovRPdoY9c/xekh/QWbzYISHlrhZhtlfLatJl9lKfr
	0JQai/ijSl24mszA0i/sY5lEyPmdujvmoFNmuK+lM330pnFoggjqKI3mi8JqP7qkKv1bcwZNcXzKs
	H2oMXTB3NTnFDFi9bUidUYlDwTFspj9Z0qhPCnc4F5rMpjf5UbiH8ynK4XrRebGULN7uAU14NN+VE
	DQ1COiYZZXIb3DlSmRqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUWvh-0002jo-Qa; Fri, 01 May 2020 14:46:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUWvW-0002hC-NL
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 14:46:08 +0000
Received: from localhost (mobile-166-175-184-168.mycingular.net
 [166.175.184.168])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1019020857;
 Fri,  1 May 2020 14:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588344366;
 bh=v2w4/6U0YomoqMu9R0xWF2AIpjpBELByx2/SoReXrgM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=cKaEafwIZEj3qeHZPBR4aUAeYkFReJVPxAiqe+ALOPwcbbuT1UfNmMqGPBgbOzAJB
 1es+t74JKbObhCqW7OIK1+M8u3q5pXmozFcYVTWNghyYoYCPThIjsaBWa/Wv9FxtnE
 gAuhmuGwhokE2MD/OBT7K9+NSH2EY6ogt8ttjAKc=
Date: Fri, 1 May 2020 09:46:04 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH 0/3] PCI: Modularize host-generic
Message-ID: <20200501144604.GA108647@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501141626.GA7398@e121166-lin.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_074607_394897_C00E1784 
X-CRM114-Status: GOOD (  18.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, Mans Rullgard <mans@mansr.com>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, linux-pci@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-acpi@vger.kernel.org,
 Zhou Wang <wangzhou1@hisilicon.com>, Robert Richter <rrichter@marvell.com>,
 Jonathan Chocron <jonnyc@amazon.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Toan Le <toan@os.amperecomputing.com>, Len Brown <lenb@kernel.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 03:16:26PM +0100, Lorenzo Pieralisi wrote:
> On Thu, Apr 09, 2020 at 05:49:20PM -0600, Rob Herring wrote:
> > This is part of a larger effort to modularize ARCH_VEXPRESS. In
> > particular, the Arm FVP platforms use the host-generic driver. This
> > conversion was straight-forward. I didn't convert the other ECAM drivers
> > using host-common to modules, but am happy to do so if there's a strong
> > desire to do so.
> > 
> > In the process, I noticed that 'const' was being dropped from the match
> > table .data pointer, so the first patch constifies struct pci_ecam_ops.
> > I started trying to constify pci_ops too, but that became a never ending
> > treewide rabbit hole. So I ended up with a cast when we assign pci_ops
> > from pci_ecam_ops.
> > 
> > Rob
> 
> Hi Bjorn,
> 
> if you don't have any objections I'd need your ACK to take this
> series.

Oh, sorry, I didn't notice:

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

> > Rob Herring (3):
> >   PCI: Constify struct pci_ecam_ops
> >   PCI: host-generic: Support building as modules
> >   PCI: host-generic: Eliminate pci_host_common_probe wrappers
> > 
> >  arch/arm64/kernel/pci.c                   |  4 ++--
> >  drivers/acpi/pci_mcfg.c                   |  8 +++----
> >  drivers/pci/controller/Kconfig            |  4 ++--
> >  drivers/pci/controller/dwc/pcie-al.c      |  2 +-
> >  drivers/pci/controller/dwc/pcie-hisi.c    | 19 +++++------------
> >  drivers/pci/controller/pci-host-common.c  | 18 ++++++++++++----
> >  drivers/pci/controller/pci-host-generic.c | 26 +++++++----------------
> >  drivers/pci/controller/pci-thunder-ecam.c | 14 ++++++------
> >  drivers/pci/controller/pci-thunder-pem.c  | 16 ++++++--------
> >  drivers/pci/controller/pci-xgene.c        |  4 ++--
> >  drivers/pci/controller/pcie-tango.c       |  9 +++++---
> >  drivers/pci/ecam.c                        | 10 ++++++---
> >  drivers/pci/setup-bus.c                   |  1 +
> >  include/linux/pci-acpi.h                  |  2 +-
> >  include/linux/pci-ecam.h                  | 25 +++++++++++-----------
> >  15 files changed, 78 insertions(+), 84 deletions(-)
> > 
> > --
> > 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
