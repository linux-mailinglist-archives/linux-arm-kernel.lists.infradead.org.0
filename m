Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F5214A20B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 11:33:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FYREFzvmEp+KC2bB3YdqLunxl2bKmu/JLNG6Um2voco=; b=QbHKOU2Jslv8Ww
	J4v4s2O56Qbgf72DBMV0ZPFrCbmnS45ltqEDROkho1wx3SymKoHPhKnQ6ZiuIcQXDWrLSDCXKZdbI
	0hHTUw0DPEJpv32lS9C9vCI4Bb15+dU7+W0uEoCV3xW/h3MinQ0LclLi+XoE4lAMI3mGQR8drhGIu
	Vxporo7St7Ckep96jYrSLs0qodNRHbCzUNSqgobqgB5tXurcwcBtvTjRFMbDdFwgOQsCMlYRE8Si9
	CKn70R7oWs8hc9lTcrWRXFe6irbCYMsrY/I+GDngWr7kSTDBO9/wpnvFiRTxN9OYHuU72ueH7wWGx
	1tCmDA0DZ++Sn3UWSpyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw1i2-0000pf-AX; Mon, 27 Jan 2020 10:33:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw1hs-0000ob-FT
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 10:33:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7371F30E;
 Mon, 27 Jan 2020 02:33:19 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F09093F52E;
 Mon, 27 Jan 2020 02:33:17 -0800 (PST)
Date: Mon, 27 Jan 2020 10:33:08 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH] PCI: brcmstb: fix resource_size.cocci warnings
Message-ID: <20200127103300.GA25542@e121166-lin.cambridge.arm.com>
References: <20200126200939.k3vcseaccp3buh4z@f53c9c00458a>
 <C06GWEBMF4LE.2DU8RMRR4F9Q8@linux-9qgx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <C06GWEBMF4LE.2DU8RMRR4F9Q8@linux-9qgx>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_023324_565451_116F96B6 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, kbuild-all@lists.01.org,
 kbuild test robot <lkp@intel.com>, linux-pci@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, Bjorn Helgaas <helgaas@kernel.org>,
 Jim Quinlan <james.quinlan@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 10:31:22AM +0100, Nicolas Saenz Julienne wrote:
> On Mon Jan 27, 2020 at 4:09 AM, kbuild test robot wrote:
> > From: kbuild test robot <lkp@intel.com>
> >
> > drivers/pci/controller/pcie-brcmstb.c:552:13-16: ERROR: Missing
> > resource_size with res
> >
> >
> > Use resource_size function on resource object
> > instead of explicit computation.
> >
> > Generated by: scripts/coccinelle/api/resource_size.cocci
> >
> > Fixes: 8ad90d975e00 ("PCI: brcmstb: Add Broadcom STB PCIe host
> > controller driver")
> > CC: Jim Quinlan <james.quinlan@broadcom.com>
> > Signed-off-by: kbuild test robot <lkp@intel.com>
> > ---
> 
> Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Applied on top on pci/brcmstb, thanks.

Lorenzo

> Regards,
> Nicolas
> 
> >
> > tree:
> > https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> > master
> > head: 702ccea170f07783bd002055a353a0866c062267
> > commit: 8ad90d975e00c297a198f6ecbd65e414fbb06dc9 [8319/11283] PCI:
> > brcmstb: Add Broadcom STB PCIe host controller driver
> >
> > pcie-brcmstb.c | 2 +-
> > 1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > --- a/drivers/pci/controller/pcie-brcmstb.c
> > +++ b/drivers/pci/controller/pcie-brcmstb.c
> > @@ -549,7 +549,7 @@ static int brcm_pcie_setup(struct brcm_p
> >  
> > brcm_pcie_set_outbound_win(pcie, num_out_wins, res->start,
> > res->start - entry->offset,
> > - res->end - res->start + 1);
> > + resource_size(res));
> > num_out_wins++;
> > }
> >  
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
