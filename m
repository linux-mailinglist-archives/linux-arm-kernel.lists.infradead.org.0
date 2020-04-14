Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC021A7857
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 12:23:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NvrqMRZxdxmP2N0JCcY9Z5lxDNh6upCJxf4qx7n+LEM=; b=KbWM7LqO8x33Se
	55akWwnVagODkOSWiwnkl2hUhZOp7NdiaMoCnLL+3DDtkytRPuDoBpCGu9F2TozdOaKf1PMUfro30
	pQh6rKrtgzPc6fM3GfAU+MKLVZ5ipLyppDWtLnVaQEg3nkgTA/clFzQP7j4s2kapcHNssUmxfXX3r
	oUWTr/LdHElxfyA6vqrXGls/gUtCL6vIcCs5R/xXyR6rUzp09OGMqBZ3yq96Vx80AXatODX6Tq7zA
	b8qdOtMMbo92RwqpgWQaB9Fr12Tu8JYS986fXYhUU/Ys8q4ke/flDeoy/aqUVe6lNEus63UogchHM
	MncZ5IOLIoiibsn4yX8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOIiW-0002g4-Lz; Tue, 14 Apr 2020 10:22:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOIiO-0002fI-Bm
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 10:22:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E0D1C31B;
 Tue, 14 Apr 2020 03:22:45 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B236C3F6C4;
 Tue, 14 Apr 2020 03:22:43 -0700 (PDT)
Date: Tue, 14 Apr 2020 11:22:41 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/3] PCI: Constify struct pci_ecam_ops
Message-ID: <20200414102240.GB22140@gaia>
References: <20200409234923.21598-1-robh@kernel.org>
 <20200409234923.21598-2-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409234923.21598-2-robh@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_032248_446022_6E057E75 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
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
 linux-pci@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Robert Richter <rrichter@marvell.com>, linux-acpi@vger.kernel.org,
 Zhou Wang <wangzhou1@hisilicon.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jonathan Chocron <jonnyc@amazon.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Toan Le <toan@os.amperecomputing.com>, Len Brown <lenb@kernel.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 09, 2020 at 05:49:21PM -0600, Rob Herring wrote:
> struct pci_ecam_ops is typically DT match table data which is defined to
> be const. It's also best practice for ops structs to be const. Ideally,
> we'd make struct pci_ops const as well, but that becomes pretty
> invasive, so for now we just cast it where needed.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Andrew Murray <amurray@thegoodpenguin.co.uk>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> Cc: Len Brown <lenb@kernel.org>
> Cc: Jonathan Chocron <jonnyc@amazon.com>
> Cc: Zhou Wang <wangzhou1@hisilicon.com>
> Cc: Robert Richter <rrichter@marvell.com>
> Cc: Toan Le <toan@os.amperecomputing.com>
> Cc: Marc Gonzalez <marc.w.gonzalez@free.fr>
> Cc: Mans Rullgard <mans@mansr.com>
> Cc: linux-acpi@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  arch/arm64/kernel/pci.c                   |  4 ++--

For arm64:

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
