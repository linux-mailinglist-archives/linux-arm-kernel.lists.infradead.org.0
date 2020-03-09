Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A80A17E307
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 16:04:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pGZ/qs6i2N7z0DMSK2JOCMbX863+k3PmjpME+xcBvvU=; b=n0re7oifDTVKMO
	pWSQtQF6euiwIYFhc4si4iIYx29AF/qnNFxN2o43A3kEPs23sK/+vRcSQZfVUATBekWd+CRqGWR07
	KhOFpoz+5N/51Oq43v/voICnHCd5xcHGnqkktXRF4o2OlhJZ1ghmVHTC4diH1CM/IsN85mkPEA374
	ItEJsgfRp+Kl9gUzLlDw1gfm2nHQ1thqR7RXduWvQqAN3RJBo9iZg2DTyGvH/Ge15MTKAlCtoRC51
	lRDVPGR0o6ajmSjtN9z2JcobBlWaKaVy8wnpn1l648bJPFrq5cKKFutsI6oHKbV3iaTpcCUu2J4ER
	saE3NoHSQEihhHVnuYbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBJwh-000449-0W; Mon, 09 Mar 2020 15:03:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBJwX-000435-Ah
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 15:03:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6083C30E;
 Mon,  9 Mar 2020 08:03:42 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 46AE03F6CF;
 Mon,  9 Mar 2020 08:03:40 -0700 (PDT)
Date: Mon, 9 Mar 2020 15:03:28 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Boqun Feng <boqun.feng@gmail.com>
Subject: Re: [PATCH v3 0/3] PCI: hv: Generify pci-hyperv.c
Message-ID: <20200309150319.GA18350@e121166-lin.cambridge.arm.com>
References: <20200210033953.99692-1-boqun.feng@gmail.com>
 <20200221023344.GJ69864@debian-boqun.qqnc3lrjykvubdpftowmye0fmh.lx.internal.cloudapp.net>
 <20200221104454.GA8595@e121166-lin.cambridge.arm.com>
 <20200309143548.GB118238@debian-boqun.qqnc3lrjykvubdpftowmye0fmh.lx.internal.cloudapp.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309143548.GB118238@debian-boqun.qqnc3lrjykvubdpftowmye0fmh.lx.internal.cloudapp.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_080345_459258_2E93B616 
X-CRM114-Status: GOOD (  23.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Sasha Levin <sashal@kernel.org>, linux-hyperv@vger.kernel.org,
 Stephen Hemminger <sthemmin@microsoft.com>, linux-pci@vger.kernel.org,
 Haiyang Zhang <haiyangz@microsoft.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Michael Kelley <mikelley@microsoft.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 "K. Y. Srinivasan" <kys@microsoft.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 09, 2020 at 10:35:48PM +0800, Boqun Feng wrote:
> Hi Lorenzo,
> 
> On Fri, Feb 21, 2020 at 10:44:54AM +0000, Lorenzo Pieralisi wrote:
> > On Fri, Feb 21, 2020 at 10:33:44AM +0800, Boqun Feng wrote:
> > > Ping ;-)
> > > 
> > > Any suggestion or plan on this patchset?
> > 
> > Hi,
> > 
> > I shall have a look shortly, thanks.
> > 
> 
> Any chance you got some time to look into this?

I did last week and I applied it now, pci/hv for v5.7.

Thanks,
Lorenzo

> Regards,
> Boqun
> 
> > Lorenzo
> > 
> > > Thanks and Regards,
> > > Boqun
> > > 
> > > On Mon, Feb 10, 2020 at 11:39:50AM +0800, Boqun Feng wrote:
> > > > Hi,
> > > > 
> > > > This is the first part for virtual PCI support of Hyper-V guest on
> > > > ARM64. The whole patchset doesn't have any functional change, but only
> > > > refactors the pci-hyperv.c code to make it more arch-independent.
> > > > 
> > > > Previous version:
> > > > v1: https://lore.kernel.org/lkml/20200121015713.69691-1-boqun.feng@gmail.com/
> > > > v2: https://lore.kernel.org/linux-arm-kernel/20200203050313.69247-1-boqun.feng@gmail.com/
> > > > 
> > > > Changes since v2:
> > > > 
> > > > *	Rebased on 5.6-rc1
> > > > 
> > > > *	Reword commit logs as per Andrew's suggestion.
> > > > 
> > > > *	It makes more sense to have a generic interface to set the whole
> > > > 	msi_entry rather than only the "address" field. So change
> > > > 	hv_set_msi_address_from_desc() to hv_set_msi_entry_from_desc().
> > > > 	Additionally, make it an inline function as per the suggestion
> > > > 	of Andrew and Thomas.
> > > > 
> > > > *	Add the missing comment saying the partition_id of
> > > > 	hv_retarget_device_interrupt must be self.
> > > > 
> > > > *	Add the explanation for why "__packed" is needed for TLFS
> > > > 	structures.
> > > > 
> > > > I've done compile and boot test of this patchset, also done some tests
> > > > with a pass-through NVMe device.
> > > > 
> > > > Suggestions and comments are welcome!
> > > > 
> > > > Regards,
> > > > Boqun
> > > > 
> > > > Boqun Feng (3):
> > > >   PCI: hv: Move hypercall related definitions into tlfs header
> > > >   PCI: hv: Move retarget related structures into tlfs header
> > > >   PCI: hv: Introduce hv_msi_entry
> > > > 
> > > >  arch/x86/include/asm/hyperv-tlfs.h  | 41 +++++++++++++++++++++++++++
> > > >  arch/x86/include/asm/mshyperv.h     |  8 ++++++
> > > >  drivers/pci/controller/pci-hyperv.c | 43 ++---------------------------
> > > >  3 files changed, 52 insertions(+), 40 deletions(-)
> > > > 
> > > > -- 
> > > > 2.24.1
> > > > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
