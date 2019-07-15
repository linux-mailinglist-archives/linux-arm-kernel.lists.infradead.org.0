Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B4569720
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 17:09:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NDypovoEnNMGbuUTc0cU1cN7YURIJg8dr3h2xtOowJU=; b=iiHcBwOKMZAEjl
	LSiAjwdsMx5m8dom1AUHgVppVoV4U7ocGwa2Kc8GIxeLmuoxMYjtJrA2R5AGAVb/QJTO40DSTM5rj
	e+R6rKmR7eNkVJhbEhLmAv1fczxJS5bVjIFgcleyRgCJm5ngNkwm34T6LvTcMiOLS3wuzysyjFDEm
	qQpW/mU3I6b4Pu2nRrOA0A5pZdww6arwrBzNYFxxnQzrUr+Jz0wdG9n6ZMNiu+YgrVkSpzie5qgUU
	RCeU5u+WuTmXVUZ2E+q9BBdFWOeELbLyshimWBCGZNhctPNyA5Pb7a12oaJiE3RNEGpjGF7Bvyfkd
	w9Vm8d2ELXNYhA4s01CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn2bC-0003cY-Or; Mon, 15 Jul 2019 15:09:06 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn2b2-0003bL-1a
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 15:08:58 +0000
X-Originating-IP: 92.137.69.152
Received: from windsurf (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id A1411C0004;
 Mon, 15 Jul 2019 15:08:41 +0000 (UTC)
Date: Mon, 15 Jul 2019 17:08:40 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Grzegorz Jaszczyk <jaz@semihalf.com>
Subject: Re: [PATCH] PCI: aardvark: fix big endian support
Message-ID: <20190715170840.326acd73@windsurf>
In-Reply-To: <1563200122-8323-1-git-send-email-jaz@semihalf.com>
References: <1563200122-8323-1-git-send-email-jaz@semihalf.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_080856_240502_22E66F53 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
Cc: lorenzo.pieralisi@arm.com, linux-pci@vger.kernel.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>, bhelgaas@google.com,
 mw@semihalf.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Grzegorz,

Thanks for this work. I indeed never tested this code on BE platforms,
and it is very possible that I overlooked endianness issues, so thanks
for having a look at this and proposing some patches. See some
questions/comments below.

On Mon, 15 Jul 2019 16:15:22 +0200
Grzegorz Jaszczyk <jaz@semihalf.com> wrote:

> Initialise every not-byte wide fields of emulated pci bridge config
> space with proper cpu_to_le* macro. This is required since the structure
> describing config space of emulated bridge assumes little-endian
> convention.
> 
> Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
> ---
>  drivers/pci/controller/pci-aardvark.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
> index 134e030..06a12749 100644
> --- a/drivers/pci/controller/pci-aardvark.c
> +++ b/drivers/pci/controller/pci-aardvark.c
> @@ -479,8 +479,10 @@ static void advk_sw_pci_bridge_init(struct advk_pcie *pcie)
>  {
>  	struct pci_bridge_emul *bridge = &pcie->bridge;
>  
> -	bridge->conf.vendor = advk_readl(pcie, PCIE_CORE_DEV_ID_REG) & 0xffff;
> -	bridge->conf.device = advk_readl(pcie, PCIE_CORE_DEV_ID_REG) >> 16;
> +	bridge->conf.vendor =
> +		cpu_to_le16(advk_readl(pcie, PCIE_CORE_DEV_ID_REG) & 0xffff);
> +	bridge->conf.device =
> +		cpu_to_le16(advk_readl(pcie, PCIE_CORE_DEV_ID_REG) >> 16);
>  	bridge->conf.class_revision =
>  		advk_readl(pcie, PCIE_CORE_DEV_REV_REG) & 0xff;

So conf.vendor and conf.device and stored as little-endian in the
emulated config address space, but conf.class_revision is stored in the
CPU endianness ?

>  
> @@ -489,8 +491,8 @@ static void advk_sw_pci_bridge_init(struct advk_pcie *pcie)
>  	bridge->conf.iolimit = PCI_IO_RANGE_TYPE_32;

>  
>  	/* Support 64 bits memory pref */
> -	bridge->conf.pref_mem_base = PCI_PREF_RANGE_TYPE_64;
> -	bridge->conf.pref_mem_limit = PCI_PREF_RANGE_TYPE_64;
> +	bridge->conf.pref_mem_base = cpu_to_le16(PCI_PREF_RANGE_TYPE_64);
> +	bridge->conf.pref_mem_limit = cpu_to_le16(PCI_PREF_RANGE_TYPE_64);

Same here: why are conf.pref_mem_{base,limit} converted to LE, but not
conf.iolimit ?

Also, the advk_pci_bridge_emul_pcie_conf_read() and
advk_pci_bridge_emul_pcie_conf_write() return values that are in the
CPU endianness.

Am I missing something ?

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
