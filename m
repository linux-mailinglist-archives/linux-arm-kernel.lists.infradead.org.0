Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A947B1CD6E6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 12:53:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wxLOX1W0TPRpN654sPkVf1PYLF8T1m/lhk37yDv9E4Q=; b=sC/3UolRx0RGxD
	aggMh4EEw30m+tlQj97LGEoQq//aq+/Nb7H+aFrjEDgtJm695xb1nAgtPZlJoKgfVMvWis5AJT31I
	TTNhhBGQq0ld9almahcyl6E/TgLzSXQb8kC22IFvI7zzzgscMTTl9UQMB1qZ4tl2GrO5WdKSo+Ly5
	QnTGRDqgX4Aow4nfnrfxDuOiBIY6J68zLtnsoWLEZ67KJCPWY57KDsE9OYNFsbU2AeYZB9g6pbkr7
	L19qxFizF8LkIHn8f1L+KZ4323AJ1VhZ0iuKOBzTlFxhlywEg6+moV3JM5bclf9NjEvAH1zSVLq9b
	hOuf6Spzezi+yEBDWxeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY63V-000052-E3; Mon, 11 May 2020 10:53:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY63I-0008Uv-PP; Mon, 11 May 2020 10:52:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4CF811FB;
 Mon, 11 May 2020 03:52:52 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CEFAA3F305;
 Mon, 11 May 2020 03:52:50 -0700 (PDT)
Date: Mon, 11 May 2020 11:52:48 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH v3 0/4] PCI: brcmstb: Some minor fixes/features
Message-ID: <20200511105248.GB24954@e121166-lin.cambridge.arm.com>
References: <20200507201544.43432-1-james.quinlan@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507201544.43432-1-james.quinlan@broadcom.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_035252_861314_39C06AA1 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh@kernel.org>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "open list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 04:15:39PM -0400, Jim Quinlan wrote:
> v3 -- A change was submitted to [1] to make 'aspm-no-l0s' a general
>       property for PCIe devices.  As such, the STB PCIe YAML  file
>       merely notes that it may be used.
> 
> v2 -- Dropped commit concerning CRS.
>    -- Chanded new prop 'brcm,aspm-en-l0s' to 'aspm-no-l0s'.
>    -- Capitalize first letter in commit subject line; spelling.
> 
> v1 -- original
> 
> [1] https://github.com/devicetree-org/dt-schema/blob/master/schemas/pci/pci-bus.yaml
> 
> Jim Quinlan (4):
>   PCI: brcmstb: Don't clk_put() a managed clock
>   PCI: brcmstb: Fix window register offset from 4 to 8
>   dt-bindings: PCI: brcmstb: New prop 'aspm-no-l0s'
>   PCI: brcmstb: Disable L0s component of ASPM if requested
> 
>  .../bindings/pci/brcm,stb-pcie.yaml           |  2 ++
>  drivers/pci/controller/pcie-brcmstb.c         | 19 +++++++++++++++----
>  2 files changed, 17 insertions(+), 4 deletions(-)

Applied to pci/brcmstb, thanks !

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
