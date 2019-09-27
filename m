Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBE4C0145
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 10:34:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xBjqkzOt5RReYCxrDY7chv+0S5sruM3BY4Tyf8C9rBs=; b=RCUgK7br+RfAUl
	8lWL1Jh1t/SpRR19/rTKfhlsn10IMWhWVVdO7pPQ2tNx8zzV+cBFz9xr4pgIBHbBdkn2PyQBttvd7
	f8PQitKNz4N1xRKHE+7CUgTRBsSCJmCrWUwiLiBDz9pwjUjcO60AYB4eeUMJsWGetn9uSQiPkNirQ
	6L7tWHb2B6PgX7oSDlxY/RfqfB8l+0tr10xC5bMUvAh1wlLNFDl2qCdyZ56hXzL6Jmgp7wc61rck2
	j9ktKyCLvt+vftIviB0sAW+plmNzJWCawGkVlmj7LU3nwEjfv78qe7oSHmGqdZTbcQ8dGGUnaMcHW
	nnkeTLWLzI89KnOiNk7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDlhx-00029o-NJ; Fri, 27 Sep 2019 08:34:33 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDlhp-00028U-6p
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 08:34:26 +0000
X-Originating-IP: 86.250.200.211
Received: from windsurf (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 9C4DA24000C;
 Fri, 27 Sep 2019 08:34:21 +0000 (UTC)
Date: Fri, 27 Sep 2019 10:34:20 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Remi Pommarel <repk@triplefau.lt>
Subject: Re: [PATCH v2] PCI: aardvark: Don't rely on jiffies while holding
 spinlock
Message-ID: <20190927103420.48bb9335@windsurf>
In-Reply-To: <20190927083142.8571-1-repk@triplefau.lt>
References: <20190927083142.8571-1-repk@triplefau.lt>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_013425_392936_16D72200 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Remi,

Thanks for the new iteration!

On Fri, 27 Sep 2019 10:31:42 +0200
Remi Pommarel <repk@triplefau.lt> wrote:

> diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
> index fc0fe4d4de49..ee05ccb2b686 100644
> --- a/drivers/pci/controller/pci-aardvark.c
> +++ b/drivers/pci/controller/pci-aardvark.c
> @@ -175,7 +175,8 @@
>  	(PCIE_CONF_BUS(bus) | PCIE_CONF_DEV(PCI_SLOT(devfn))	| \
>  	 PCIE_CONF_FUNC(PCI_FUNC(devfn)) | PCIE_CONF_REG(where))
>  
> -#define PIO_TIMEOUT_MS			1
> +#define PIO_RETRY_CNT			10
> +#define PIO_RETRY_DELAY			2 /* 2 us*/

So this changes the timeout from 1ms to just 20us, a division by 50
from the previous timeout value. From my measurements, it could
sometime take up to 6us from a single PIO read operation to complete,
which is getting close to the 20us timeout.

Shouldn't PIO_RETRY_CNT be kept at 500, so that we keep using a 1ms
timeout ?

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
