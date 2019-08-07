Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0554E84A38
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 12:57:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r2H/8tlvt7qDFW2PeJLfp9te2kEaRbzAyNy+3IrHUKo=; b=EgQI/JRnymZfxE
	v0Cq4wXDBC5oMb5bS7c7Nz2v4ZLEw2ay84MUud435IAp5mLmzYkRAM24qU9O7S3pjk2jOlzZgibXk
	93RgKxHAVCXJxCmYaYWylS5bKc1Jzje44ByjqKA0A8BJjsMZthDU2WAdo9Q+9nvMD3K0+ZMW4qtJB
	i9IwHYVIVZZt1WHRx7CMwlsgjdbPOJvjs5DXuuOAT27QyslnOEl8rPeqI0Ee5jxBJ34s2QoZt/M1v
	4FAlqeBNXxVOPUSYvoIxNH49ftMFHRukk4v0NTfExSmsTu2boMaQf8UGsSTiM9JJhEQSqXwYf6VE6
	ar5ZI0aFgYms277p+Ubg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvJdL-0006na-NI; Wed, 07 Aug 2019 10:57:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvJd5-0006mb-Q1; Wed, 07 Aug 2019 10:57:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7957628;
 Wed,  7 Aug 2019 03:57:15 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E22BB3F575;
 Wed,  7 Aug 2019 03:57:13 -0700 (PDT)
Date: Wed, 7 Aug 2019 11:57:09 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Jianjun Wang <jianjun.wang@mediatek.com>
Subject: Re: [v2,0/2] PCI: mediatek: Add support for MT7629
Message-ID: <20190807105709.GA16214@e121166-lin.cambridge.arm.com>
References: <20190628073425.25165-1-jianjun.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628073425.25165-1-jianjun.wang@mediatek.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_035715_884401_30D8F732 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, linux-pci@vger.kernel.org,
 youlin.pei@mediatek.com, linux-kernel@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 03:34:23PM +0800, Jianjun Wang wrote:
> These series patches modify pcie-mediatek.c and dt-bindings compatible
> string to support MT7629 PCIe host.
> 
> Jianjun Wang (2):
>   dt-bindings: PCI: Add support for MT7629
>   PCI: mediatek: Add controller support for MT7629
> 
>  .../devicetree/bindings/pci/mediatek-pcie.txt  |  1 +
>  drivers/pci/controller/pcie-mediatek.c         | 18 ++++++++++++++++++
>  include/linux/pci_ids.h                        |  1 +
>  3 files changed, 20 insertions(+)

Applied to pci/mediatek for v5.4.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
