Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60953A7190
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 19:20:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aw4kI08+0kcjOuDhzRM5ACLpFv5ZQa0Y0LfpWoG51QI=; b=h7k5SqLN38dohs
	hOlYXm2/Un9Vl8oeXE3ynYVDFezPIlqRIgVIWNvMSc1JIuRRPrZtbYjIW2wVdPMRTsIFTRPM9jYA+
	cB9U2CtAanmf5AffxcPvoN0C0v31SRickWRCEPkE8fGhNdueiTUjwIlLHsJCxdock+BNE90vhgfXG
	3NGXwm9eQNzzjuL+TRBuIrp/1XZ/NkqU++bssWe16npURQqMNsLeAspFb82HKhX3+6XSrE3teILGl
	etdYKOIZh0hOiQxrb9epI7M72ZnlLp8YBamphKId4JuzApvhEPGJ4FMtSnD2spHpcO2V4IRlV+O3N
	gTArUy4ldKGbsmwUFrDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5CTr-00066q-22; Tue, 03 Sep 2019 17:20:35 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5CTZ-00065o-P1
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 17:20:19 +0000
Received: by mail-wr1-f65.google.com with SMTP id c3so18336048wrd.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 10:20:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rar4+uC5q12KPtiyVYMv+PjJypYyOCyJrBGvZDXzi2k=;
 b=nFi5e9t9v3HUU8tul1cSdR7g/84krvmlA3awLn7VmJQEX0n5j+Oh+SbDDaZLl7IvWx
 l+oko4OEpMl7ly5db7PVszkhP11/QAYUIRq1lS3qbvFmkkYXv4T2LBRP1pieD88dX3WM
 kmPAN7r9rQGWz+wBuyW2/lvi8FUzE7YPhocrcA3niskhcCtdpyeroRodQ6bt8f807enW
 NrjRzxpS0idRKizwdLhkHG+nri72BCjpq5T/8h9g1Xq7yz/f7YXgSykG6FE8A4cIIqp2
 0RF0nt4CARw1bG5lbnWCJzS60drGdil2Qx4CY5y1L6EXEGOLaqdaSugovvzEKX1yoYzK
 l6fg==
X-Gm-Message-State: APjAAAU2scgr5QbngbcVVDPXeqRI8UG9rRkSIa04crsmmZQoaABx8tbS
 bo79Wn4iLJunrQlmKK8s9A==
X-Google-Smtp-Source: APXvYqyjkukxdrT5Es1J9haZ+DcUHsFn8ngRxdUl3OZDcQKy38QGzV98Fy3y/684yQ4P6QtkGLVBdA==
X-Received: by 2002:adf:c613:: with SMTP id n19mr24481531wrg.109.1567531212863; 
 Tue, 03 Sep 2019 10:20:12 -0700 (PDT)
Received: from localhost ([176.12.107.132])
 by smtp.gmail.com with ESMTPSA id f10sm14511981wrm.31.2019.09.03.10.20.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 10:20:12 -0700 (PDT)
Date: Tue, 3 Sep 2019 18:20:10 +0100
From: Rob Herring <robh@kernel.org>
To: Krzysztof Wilczynski <kw@linux.com>
Subject: Re: [PATCH v2] PCI: Remove unused includes and superfluous struct
 declaration
Message-ID: <20190903172010.GA26505@bogus>
References: <20190901112506.8469-1-kw@linux.com>
 <20190903113059.2901-1-kw@linux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903113059.2901-1-kw@linux.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_102017_823402_622AC561 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jingoo Han <jingoohan1@gmail.com>, Joerg Roedel <joro@8bytes.org>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Bjorn Helgaas <helgaas@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 01:30:59PM +0200, Krzysztof Wilczynski wrote:
> Remove <linux/pci.h> and <linux/msi.h> from being included
> directly as part of the include/linux/of_pci.h, and remove
> superfluous declaration of struct of_phandle_args.
> 
> Move users of include <linux/of_pci.h> to include <linux/pci.h>
> and <linux/msi.h> directly rather than rely on both being
> included transitively through <linux/of_pci.h>.
> 
> Signed-off-by: Krzysztof Wilczynski <kw@linux.com>
> ---
>  drivers/iommu/of_iommu.c                          | 2 ++
>  drivers/irqchip/irq-gic-v2m.c                     | 1 +
>  drivers/irqchip/irq-gic-v3-its-pci-msi.c          | 1 +
>  drivers/pci/controller/dwc/pcie-designware-host.c | 1 +
>  drivers/pci/controller/pci-aardvark.c             | 1 +
>  drivers/pci/controller/pci-thunder-pem.c          | 1 +
>  drivers/pci/pci.c                                 | 1 +
>  drivers/pci/probe.c                               | 1 +
>  include/linux/of_pci.h                            | 5 ++---
>  9 files changed, 11 insertions(+), 3 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
