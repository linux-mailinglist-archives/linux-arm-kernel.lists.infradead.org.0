Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E251F95B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 13:56:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=93d5fHV2oPKjaqNafvGZxI5rXzkzRbVE1MmFu4CWd1g=; b=eYt3O90pUXimGo
	N08EUVpGmKMGck4MFD6Oh3MutVs3/i0Y8Qe4S2YIuhOFOQDVmjQDtNe93ZEzNbZp46Etk4D+J62MQ
	E6K47vOzCzFi/Fo4JVMZ7Yi3QVa4wqACVxXyz29ymDQpII/tmfwngNNckmTVZTxpgYJLujSwRbB81
	jZFxWi1N5eTUj+a2v3aslCyFAmlAJkATg0085r1fBW4SBa4VTVlzgKvhsPmW4299213goDGWNvYGs
	1VkH4BDq+IMDvvuJ+zaFabrZqaNA1+JpPr++PmPPJjx6gn02Z256toBLtBB3VoCLpDoGfUENwDrBg
	iXxNOLnAbauB8jaDeFkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jknid-0004zG-Vu; Mon, 15 Jun 2020 11:56:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkniW-0004yn-5b
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 11:55:57 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 10F7F20707;
 Mon, 15 Jun 2020 11:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592222154;
 bh=AO7AE4H28zPxTT7UHp3OpiQhDU8PH5d+mG1D/8R7SwA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qvzQqPQA3BQ1OLRePjsqrdXDVTmCHirBImXPywATw+TELdMrEIE9m+qbuGqLkMtSI
 awSxXXgOxwAKHGYVeID31HizncxE8uNnVDdmjVGRdfvDS9FpPav4KTqnzQRK3W2Rbr
 ufdyXiqS8JkFdaMr+FFK+/vlwf9rTPYhSHlM5AhU=
Date: Mon, 15 Jun 2020 12:55:49 +0100
From: Will Deacon <will@kernel.org>
To: Achin Gupta <achin.gupta@arm.com>
Subject: Re: [RFC PATCH 1/3] dt-bindings: Add ARM PSA FF binding for
 non-secure VM partitions
Message-ID: <20200615115549.GB2694@willie-the-truck>
References: <20200601094512.50509-1-sudeep.holla@arm.com>
 <20200601094512.50509-2-sudeep.holla@arm.com>
 <20200609223551.GA1620273@bogus>
 <20200610074346.GB15939@willie-the-truck>
 <5B3F18A4-5DA4-411E-9E26-7D25DEE3D414@arm.com>
 <20200611171222.GB7725@willie-the-truck>
 <20200615091639.GD46361@C02TC1ARHF1T>
 <20200615095133.GA2477@willie-the-truck>
 <20200615114220.GE46361@C02TC1ARHF1T>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615114220.GE46361@C02TC1ARHF1T>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_045556_250182_F31E5EF0 
X-CRM114-Status: GOOD (  24.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Marc Zyngier <maz@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sudeep Holla <Sudeep.Holla@arm.com>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 12:42:20PM +0100, Achin Gupta wrote:
> On Mon, Jun 15, 2020 at 10:51:34AM +0100, Will Deacon wrote:
> > On Mon, Jun 15, 2020 at 10:16:39AM +0100, Achin Gupta wrote:
> > > Right! FFA_PARTITION_INFO_GET is meant to help the FF-A driver in the kernel to
> > > determine partition properties. It assumes that EL2 SW has already read each
> > > partition's manifest and will reply to this ABI.
> > >
> > > IIUC, with protected KVM, this information will have to be a part of the
> > > manifest that the KVM host consumes.
> >
> > The host does not consume the manifest directly -- instead, the bootloader
> > will use the manifest to populate these DT nodes. Again, these are *only*
> > for non-secure virtual partitions which are to be managed by KVM.
> 
> Yes. Understand and agree. Manifest is an overloaded term. I was using it to
> describe the DT nodes that the host will consume.

Hmm, I think that conflates two things though because only the partitions
managed by KVM will have DT nodes.

> > > Separate topic, protected KVM does not get dibs on the manifest and it relies on
> > > the KVM host to specify the address ranges for each partition? Does this not
> > > mean that the KVM host can control the physical address space each partition
> > > sees. This seems contrary to the isolation guarantees that protected KVM must
> > > provide?
> >
> > The host is trusted during early boot, and gives up this trust after
> > initialising EL2 fully. So roughly speaking, we:
> >
> > 	* Boot at EL2 and install a shim
> > 	* Drop down to EL2 and start the host kernel
> > 	* Before some initialisation (DT parsing, SMP bringup, etc)
> > 	* Init KVM by calling back up to EL2 to install the full hypervisor
> >
> > At that point, the EL1 host is no longer trusted and the last call
> > effectively "locks it out" from EL2.
> 
> Ok. Protected KVM (PKVM) must create S2 tables when asked to setup a partition
> by the Host. My main concern is if PKVM must trust the Host to provide the
> correct physical address space ranges for a partition?

Yes, but that all happens as part of KVM initialisation: the host parses
the DT nodes and memory reservations, and then passes this information
up to EL2.

> I guess your point is this is not a problem since PKVM can lock the Host out of
> those address ranges in any case?

It has to do this, regardless of how they are probed. Once KVM has
initialised, the host will have a stage-2 which limits it to the memory that
it is allowed to access.

> It is a bit counter intuitive that the Host gets to see and potentially
> manipulate information that was verified and extracted by the bootloader from
> the partition's manifest. This hapens before PKVM sees the same
> information. Can't put my finger on what could go wrong though. Depends upon the
> threat model too!

I think you're trying too hard to separate the host from the EL2 code during
early boot. Don't forget -- this is all part of the same binary payload that
is loaded and initially run at EL2. Having the host take care of early boot
/significantly/ reduces the amount of code at EL2, which has a very
clear security benefit.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
