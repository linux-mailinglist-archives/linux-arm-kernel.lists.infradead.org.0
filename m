Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E56ADDA9AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 12:18:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7nj1AeRYiSrAtJdT2zvm0Ara5wdcwhlB2pnNh68H3x4=; b=G0oZS+RRkJ73Lt
	8fLhVjHqrlHU7eD+nZ2kSL38gkPvdK5fhtd7lCGHLRsMyVfbmyV7ZRLwNc5JkM5lYDxNohOtJd4xb
	ayzXQ8wQuqLtn/fCZXUL3JL2EXXISN4IBpeNejAI3l/vvgu83ZCT6HpXalemuNuUgiSvFdPBIeb44
	Ipcqyt4tle9eMPBHA/Hq5uwwwOLwKjLl+ESon8Tu0WjLwg/sflVJdhMZmUF5vYP5GqetmlAkKS+57
	Rf+ySQgZ5y18K4OSGebPo6S63ljbwIZhuIHPCpg9d1gaxMCHIJab2Hmtv7O+B6XOWVk7BPr4JRpV9
	/AAB0nslWdjD92aVBHKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL2r1-0000SO-Mo; Thu, 17 Oct 2019 10:17:59 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL2qt-0000RN-0J
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 10:17:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 45FD51BA8;
 Thu, 17 Oct 2019 03:17:38 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E5D2F3F718;
 Thu, 17 Oct 2019 03:17:36 -0700 (PDT)
Date: Thu, 17 Oct 2019 11:17:27 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH] pci: iproc-msi: fix __iomem annotation in
 decode_msi_hwirq()
Message-ID: <20191017101720.GA9589@e121166-lin.cambridge.arm.com>
References: <20191015160702.9457-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015160702.9457-1-ben.dooks@codethink.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_031751_089206_C7573558 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: linux-kernel@lists.codethink.co.uk, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 05:07:02PM +0100, Ben Dooks (Codethink) wrote:
> Fix __iomem attribute on msg variable passed to readl() in
> the decode_msi_hwirq() function. Fixes the following sparse
> warning:
> 
> drivers/pci/controller/pcie-iproc-msi.c:301:17: warning: incorrect type in argument 1 (different address spaces)
> drivers/pci/controller/pcie-iproc-msi.c:301:17:    expected void const volatile [noderef] <asn:2> *addr
> drivers/pci/controller/pcie-iproc-msi.c:301:17:    got unsigned int [usertype] *[assigned] msg
> 
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
> ---
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Andrew Murray <andrew.murray@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Ray Jui <rjui@broadcom.com>
> Cc: Scott Branden <sbranden@broadcom.com>
> Cc: bcm-kernel-feedback-list@broadcom.com
> Cc: linux-pci@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> .. (open list)
> ---
>  drivers/pci/controller/pcie-iproc-msi.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Applied to pci/misc, thanks.

Lorenzo

> diff --git a/drivers/pci/controller/pcie-iproc-msi.c b/drivers/pci/controller/pcie-iproc-msi.c
> index 0a3f61be5625..3176ad3ab0e5 100644
> --- a/drivers/pci/controller/pcie-iproc-msi.c
> +++ b/drivers/pci/controller/pcie-iproc-msi.c
> @@ -293,11 +293,12 @@ static const struct irq_domain_ops msi_domain_ops = {
>  
>  static inline u32 decode_msi_hwirq(struct iproc_msi *msi, u32 eq, u32 head)
>  {
> -	u32 *msg, hwirq;
> +	u32 __iomem *msg;
> +	u32 hwirq;
>  	unsigned int offs;
>  
>  	offs = iproc_msi_eq_offset(msi, eq) + head * sizeof(u32);
> -	msg = (u32 *)(msi->eq_cpu + offs);
> +	msg = (u32 __iomem *)(msi->eq_cpu + offs);
>  	hwirq = readl(msg);
>  	hwirq = (hwirq >> 5) + (hwirq & 0x1f);
>  
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
