Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 940D7171739
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:30:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/EvTx1jDyi36APSrKB1nkhi42l/IzM7MK1crBlBuiVs=; b=FlrO8+xiCmxvbs
	7hix7fGcoYYL8qK0zfop+DcjJnKj6r4+6qndkVK6X3xXwUcXqW1wQ9hXGj9MhncFynu4SYB5tsvgI
	EADByQQhsv++B+EvD19awj6KxQrNDn8wsaqRBQglYhVI0lDhnULJki5BqGIlw+YXaFUrJHZ9/gpIL
	MD5NSNk4maB8PXgZXizdlYghBZ1n2j7kgvRyrCdEzoGSiASdpzURGpJn+W6dUotU7cTLUlsEemgvw
	Ww0593y1zGdXhLymxrUzBshdmsV8aPBH3UqeZK4P8QdG13qIU92zwTypsFX5GaIdqM62CJYX16rJu
	0zmRDYiWYmjBwoOAkbYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7IJT-0004f3-Ro; Thu, 27 Feb 2020 12:30:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7IJF-0004dr-6y; Thu, 27 Feb 2020 12:30:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0AD951FB;
 Thu, 27 Feb 2020 04:30:31 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7FF473F73B;
 Thu, 27 Feb 2020 04:30:29 -0800 (PST)
Date: Thu, 27 Feb 2020 12:30:24 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH] pci: brcmstb: Fix build on 32bit ARM platforms with
 older compilers
Message-ID: <20200227123024.GA12798@e121166-lin.cambridge.arm.com>
References: <CGME20200227115151eucas1p22ff7409009d917addcc7e20f523c9051@eucas1p2.samsung.com>
 <20200227115146.24515-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227115146.24515-1-m.szyprowski@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_043033_315521_5C9D3DF0 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Subject should be:

PCI: brcmstb: Fix build on 32bit ARM platforms with older compilers

On Thu, Feb 27, 2020 at 12:51:46PM +0100, Marek Szyprowski wrote:
> Some older compilers have no implementation for the helper for 64-bit
> unsigned division/modulo, so linking pcie-brcmstb driver causes the
> "undefined reference to `__aeabi_uldivmod'" error.
> 
> *rc_bar2_size is always a power of two, because it is calculated as:
> "1ULL << fls64(entry->res->end - entry->res->start)", so the modulo
> operation in the subsequent check can be replaced by a simple logical
> AND with a proper mask.
> 

Add a Fixes: tag please.

Fixes: c0452137034b ("PCI: brcmstb: Add Broadcom STB PCIe host controller driver")

> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---
>  drivers/pci/controller/pcie-brcmstb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Hi Bjorn,

I think this should be merged in one of the upcoming -rc, given that
it fixes v5.6 material.

Here is my ACK to that end, if you prefer postponing it to v5.7
please let me know.

Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>

> diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
> index d20aabc26273..3a10e678c7f4 100644
> --- a/drivers/pci/controller/pcie-brcmstb.c
> +++ b/drivers/pci/controller/pcie-brcmstb.c
> @@ -670,7 +670,7 @@ static inline int brcm_pcie_get_rc_bar2_size_and_offset(struct brcm_pcie *pcie,
>  	 *   outbound memory @ 3GB). So instead it will  start at the 1x
>  	 *   multiple of its size
>  	 */
> -	if (!*rc_bar2_size || *rc_bar2_offset % *rc_bar2_size ||
> +	if (!*rc_bar2_size || (*rc_bar2_offset & (*rc_bar2_size - 1)) ||
>  	    (*rc_bar2_offset < SZ_4G && *rc_bar2_offset > SZ_2G)) {
>  		dev_err(dev, "Invalid rc_bar2_offset/size: size 0x%llx, off 0x%llx\n",
>  			*rc_bar2_size, *rc_bar2_offset);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
