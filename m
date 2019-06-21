Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C48E64F102
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 01:08:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jv/+Ml/o2Gf66KbLPFDxSDBsmrDTSkIdh+qenox43m8=; b=J6mQ3nwkJbeqpr
	/mqfRMQryOLJS9SJjMqR3t/BCEa4Bg+yL+Yj4/iMSIX4JSDX7J5DpVLQl22BRdtAK9rdGSxCSWt2C
	ZxyXAi8DlOHYWqbmtI8Dw27gfryY3syGNHoCHLnVEDRAtdxsvv1yT4GON7SaUSxa/zznTc664gOhI
	Apfhbeo7x5KiyBAButNVWDP0zIyCHHLv/uMZc9pLSVv9ofo5FM6EjK9InWc11Lh1i6Z+eayx1C4cd
	3Do2XYJ1P3TvxJfhQ45N+SQjG4L0GFIOT7GyaX0ap7ng+vfES9nNnvmdPfYRDof2R5Srysy3X+kXN
	57+Ml2o61YEWBd2E3+Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heSdb-0005az-FP; Fri, 21 Jun 2019 23:08:07 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heSdQ-0005aB-RO
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 23:07:58 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x5LN7WPQ028266;
 Fri, 21 Jun 2019 18:07:36 -0500
Message-ID: <b5101b74da1c5b9feba5e95e8ed14ec8ed82bd24.camel@kernel.crashing.org>
Subject: Re: [PATCH 4/4] arm64: pci: acpi: Preserve PCI resources
 configuration when asked by ACPI
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Date: Sat, 22 Jun 2019 09:07:32 +1000
In-Reply-To: <20190621145752.GC21807@e121166-lin.cambridge.arm.com>
References: <20190615002359.29577-1-benh@kernel.crashing.org>
 <20190615002359.29577-4-benh@kernel.crashing.org>
 <20190621145752.GC21807@e121166-lin.cambridge.arm.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_160757_044225_5F3A859A 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-pci@vger.kernel.org,
 Sinan Kaya <okaya@kernel.org>, Zeev Zilberman <zeev@amazon.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Bjorn Helgaas <helgaas@kernel.org>, Ali Saidi <alisaidi@amazon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-06-21 at 15:57 +0100, Lorenzo Pieralisi wrote:
> >        pci_assign_unassigned_root_bus_resources(bus);
> >   
> >        list_for_each_entry(child, &bus->children, node)
> 
> This is fine as far as we acknowledge that claiming resources
> on a bus is what should be done to make them immutable.

Well, as immuatable as it gets today. It's not perfect but it's a step
in the right direction. With the previous change in the series that
prevents auto-realloc when preserve_config is set, it will be
equivalent, in the current state of the code.

As part of my ongoing rework, I plan to look at making
IORESOURCE_PCI_FIXED more generally useful/robust, in which case we
could add that on top as well. That said, if we go down that path, I'm
keen on also adding a cmdline arg to ignore _DSM #5, if anything as a
test/diag tool when chasing problems caused by buggy BIOSes.

Cheers,
Ben.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
