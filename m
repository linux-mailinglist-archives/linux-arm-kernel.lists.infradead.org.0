Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3563F59449
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 08:38:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4E1lOec36v3NdN2PQJTyxFl7Q38mjkEN/qkRtfei30=; b=jebnDV4qsfOUb2
	bhVu3qXKPhz+lLrYLz0nRkrVKEy7+jXiBTk06AoVBO9cNqYW+pEuF6N3pIS/jtow+7b5XabMVmtte
	GAaGhDNx2BZgkkDVye2mQNmtlQglsCrT9NnGY1Hi/RTq4omfk4kEWhKFHHv0HHC2RSSOdIOJqoeZ0
	pFGAsRdt4GImKM+T4buNFoXc1/0GBFWFHCN4sBNBC172WKF+WO5V+jppdA3JypWUo3mAZ+13xbbPP
	DMLj+G/KGUkITqNppCAdh+O9jmPObKU2MHmwyFLq0r+ULU92qQ8WqnuCLSUN+ib4/b1M4QMIdz9zX
	ae7r9tZe45TNDtCbO1Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgkWo-00070R-OB; Fri, 28 Jun 2019 06:38:34 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgkWc-0006ze-FS; Fri, 28 Jun 2019 06:38:24 +0000
X-UUID: ff29b047cff54e11a42d4bcaa4b6fb38-20190627
X-UUID: ff29b047cff54e11a42d4bcaa4b6fb38-20190627
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <jianjun.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1383343028; Thu, 27 Jun 2019 22:38:13 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 27 Jun 2019 23:38:11 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 28 Jun 2019 14:38:06 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 28 Jun 2019 14:38:06 +0800
Message-ID: <1561703886.21133.14.camel@mhfsdcap03>
Subject: Re: [PATCH 2/2] PCI: mediatek: Add controller support for MT7629
From: Jianjun Wang <jianjun.wang@mediatek.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Date: Fri, 28 Jun 2019 14:38:06 +0800
In-Reply-To: <20190219150352.GA21833@e107981-ln.cambridge.arm.com>
References: <1544058553-10936-3-git-send-email-jianjun.wang@mediatek.com>
 <20181213145517.GB4701@google.com> <1545034779.8528.8.camel@mhfsdcap03>
 <20181217143247.GK20725@google.com>
 <20181217154645.GA24864@e107981-ln.cambridge.arm.com>
 <1545124764.25199.3.camel@mhfsdcap03> <20181220182043.GC183878@google.com>
 <1545651628.5634.57.camel@mhfsdcap03>
 <20190123154023.GA1157@e107981-ln.cambridge.arm.com>
 <1550559699.29794.2.camel@mhfsdcap03>
 <20190219150352.GA21833@e107981-ln.cambridge.arm.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 226F04D099627E20AD2AD93D5DC115D1142A2FAD96C8240667F1D37A93E3DA682000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_233822_530219_9E03B9BC 
X-CRM114-Status: GOOD (  36.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Ryder Lee =?UTF-8?Q?=28=E6=9D=8E=E5=BA=9A=E8=AB=BA=29?=
 <Ryder.Lee@mediatek.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Youlin Pei =?UTF-8?Q?=28=E8=A3=B4=E5=8F=8B=E6=9E=97=29?=
 <youlin.pei@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 jianjun.wang@mediatek.com, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Bjorn Helgaas <helgaas@kernel.org>,
 Honghui Zhang =?UTF-8?Q?=28=E5=BC=A0=E6=B4=AA=E8=BE=89=29?=
 <Honghui.Zhang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-02-19 at 23:03 +0800, Lorenzo Pieralisi wrote:
> On Tue, Feb 19, 2019 at 03:01:39PM +0800, Jianjun Wang wrote:
> > On Wed, 2019-01-23 at 15:40 +0000, Lorenzo Pieralisi wrote:
> > > On Mon, Dec 24, 2018 at 07:40:28PM +0800, Jianjun Wang wrote:
> > > > On Thu, 2018-12-20 at 12:20 -0600, Bjorn Helgaas wrote:
> > > > > On Tue, Dec 18, 2018 at 05:19:24PM +0800, Jianjun Wang wrote:
> > > > > > On Mon, 2018-12-17 at 15:46 +0000, Lorenzo Pieralisi wrote:
> > > > > > > On Mon, Dec 17, 2018 at 08:32:47AM -0600, Bjorn Helgaas wrote:
> > > > > > > > On Mon, Dec 17, 2018 at 04:19:39PM +0800, Jianjun Wang wrote:
> > > > > > > > > On Thu, 2018-12-13 at 08:55 -0600, Bjorn Helgaas wrote:
> > > > > > > > > > On Thu, Dec 06, 2018 at 09:09:13AM +0800, Jianjun Wang wrote:
> > > > > > > > > > > The read value of BAR0 is 0xffff_ffff, it's size will be
> > > > > > > > > > > calculated as 4GB in arm64 but bogus alignment values at
> > > > > > > > > > > arm32, the pcie device and devices behind this bridge will
> > > > > > > > > > > not be enabled. Fix it's BAR0 resource size to guarantee
> > > > > > > > > > > the pcie devices will be enabled correctly.
> > > > > > > > > > 
> > > > > > > > > > So this is a hardware erratum?  Per spec, a memory BAR has
> > > > > > > > > > bit 0 hardwired to 0, and an IO BAR has bit 1 hardwired to
> > > > > > > > > > 0.
> > > > > > > > > 
> > > > > > > > > Yes, it only works properly on 64bit platform.
> > > > > > > > 
> > > > > > > > I don't understand.  BARs are supposed to work the same
> > > > > > > > regardless of whether it's a 32- or 64-bit platform.  If this is
> > > > > > > > a workaround for a hardware defect, please just say that
> > > > > > > > explicitly.
> > > > > > > 
> > > > > > > I do not understand this either. First thing to do is to describe
> > > > > > > the problem properly so that we can actually find a solution to
> > > > > > > it.
> > > > > > 
> > > > > > This BAR0 is a 64-bit memory BAR, the HW default values for this BAR
> > > > > > is 0xffff_ffff_0000_0000 and it could not be changed except by
> > > > > > config write operation.
> > > > > 
> > > > > If you literally get 0xffff_ffff_0000_0000 when reading the BAR, that
> > > > > is out of spec because the low-order 4 bits of a 64-bit memory BAR
> > > > > cannot all be zero.
> > > > > 
> > > > > A 64-bit BAR consumes two DWORDS in config space.  For a 64-bit BAR0,
> > > > > the DWORD at 0x10 contains the low-order bits, and the DWORD at 0x14
> > > > > contains the upper 32 bits.  Bits 0-3 of the low-order DWORD (the
> > > > > one at 0x10) are read-only, and in this case should contain the value
> > > > > 0b1100 (0xc).  That means the range is prefetchable (bit 3 == 1) and
> > > > > the BAR is 64 bits (bits 2:1 == 10).
> > > > 
> > > > Sorry, I have confused the HW default value and the read value of BAR
> > > > size. The hardware default value is 0xffff_ffff_0000_000c, it's a 64-bit
> > > > BAR with prefetchable range.
> > > > 
> > > > When we start to decoding the BAR, the read value of BAR0 at 0x10 is
> > > > 0x0c, and the value at 0x14 is 0xffff_ffff, so the read value of BAR
> > > > size is 0xffff_ffff_0000_0000, which will be decoded to 0xffff_ffff, and
> > > > it will be set to the end value of BAR0 resource in the pci_dev.
> > > > > 
> > > > > > The calculated BAR size will be 0 in 32-bit platform since the
> > > > > > phys_addr_t is a 32bit value in 32-bit platform.
> > > > > 
> > > > > Either (1) this is a hardware defect that feeds incorrect data to the
> > > > > BAR size calculation, or (2) there's a problem in the BAR size
> > > > > calculation code.  We need to figure out which one and work around or
> > > > > fix it correctly.
> > > > 
> > > > The BAR size is calculated by the code (res->end - res->start + 1) is
> > > > fine, I think it's a hardware defect because that we can not change the
> > > > hardware default value or just disable it since we don't using it.
> > > 
> > > Apologies for the delay in getting back to this.
> > > 
> > > This looks like a kernel defect, not a HW defect.
> > > 
> > > I need some time to make up my mind on what the right fix for this
> > > but it is most certainly not this patch.
> > > 
> > > Lorenzo
> > 
> > Hi Lorenzo,
> > 
> > Is there any better idea about this patch?
> 
> Hi,
> 
> I did not have time to investigate the issue in core code that triggers
> this defect but this patch is not the solution to the problem it is a
> plaster that papers over it, I won't merge it.
> 
> I would appreciate some help. If you could have a look at core code that
> triggers the failure we can analyze what should be done to make it work,
> I do not think it is a defect in your IP.
> 
> Lorenzo

Hi Lorenzo,

This BAR size issue has been fixed by commit
"01b37f851ca150554496fd6e79c6d9a67992a2c0
PCI: Make pci_size() return real BAR size"

So there is no need to add the fixup method, I will remove it in next
version.

Thanks.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
