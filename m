Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8F01BBF94
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 15:31:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BkS5wf0my4H7A+o7emiRXAlxY0mBSPY8ZAji3zrvkCI=; b=LMfrT+C22/dbtD
	+KVXIai0K2xgTlKWn2VnN20n21oTFq1wjOmiEe6xnOCfy0aomW+tKAhZp76z/Gu9H+44p+1/sgxhW
	blvz3GpTrubqQSh7Q1N6M5x7y/+S66KgqRprlCSf+ZfzaFiXAi/aDQNLgW4p6XSTJCGXymtDvRiIe
	53RrM3mdYyFWvdc5ohytHWxBEvDWiS4cJMg8L7TjgUV22MNck0zHUZZHknRoB5z6s8VAlglEfz016
	IwRZ0MVAaIdkw206Qev2AgwFzSjQBcKG762FKq1hWhynkb4u9Wrm56xvL2p3dlt2rCawIlnLi3uxz
	MgyRnCrRud+7qQtvZt4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQKi-0007zO-KO; Tue, 28 Apr 2020 13:31:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQKZ-0007yQ-5B
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 13:31:24 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 56C90206D6;
 Tue, 28 Apr 2020 13:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588080682;
 bh=4IjMN/3nSMM2CXswAlECOTw3UvL1UdbgXql3tahnnIs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U8hgL19C4C/65u6AvzzNc2gAU07onDsuhSvKBUnFsyc8jis0wBbvVyvRZ3Gu3K8/W
 BjEzYoj6UAgRg9E3imbQQgq8J3IKqFg2S92i/njMoITh1GZPTlNl14wjK1DI4rpXZj
 DXfkv3RdTn+ULjbdewpr8eBIPOeNtkA7tUneGiHo=
Date: Tue, 28 Apr 2020 14:31:17 +0100
From: Will Deacon <will@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 2/3] PCI: host-generic: Support building as modules
Message-ID: <20200428133116.GG6791@willie-the-truck>
References: <20200409234923.21598-1-robh@kernel.org>
 <20200409234923.21598-3-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409234923.21598-3-robh@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_063123_219621_1E31E181 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, linux-pci@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Robert Richter <rrichter@marvell.com>,
 linux-acpi@vger.kernel.org, Zhou Wang <wangzhou1@hisilicon.com>,
 Mans Rullgard <mans@mansr.com>, Jonathan Chocron <jonnyc@amazon.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Toan Le <toan@os.amperecomputing.com>,
 Len Brown <lenb@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 09, 2020 at 05:49:22PM -0600, Rob Herring wrote:
> Enable building host-generic and its host-common dependency as a
> module.
> 
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Andrew Murray <amurray@thegoodpenguin.co.uk>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: linux-pci@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  drivers/pci/controller/Kconfig            | 4 ++--
>  drivers/pci/controller/pci-host-common.c  | 5 +++++
>  drivers/pci/controller/pci-host-generic.c | 7 +++++--
>  drivers/pci/ecam.c                        | 4 ++++
>  drivers/pci/setup-bus.c                   | 1 +
>  include/linux/pci-ecam.h                  | 2 +-
>  6 files changed, 18 insertions(+), 5 deletions(-)

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
