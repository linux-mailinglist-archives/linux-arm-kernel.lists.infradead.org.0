Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 190A5DEDBE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 15:37:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v5KnZh7Em00BXzGFUOQbukmJOs7LG0L0EJuwocHlsaw=; b=JwZ/9HQg+CzOZl
	TEkkwAwO+eZosJaFwxJDl/Ln38NtMqc726Led1Fmt3WGLIfy8ST69EhuCILFVgELUfR9wytjXZk5Q
	zejkhVloA2eAMko3SSrgCnn6zb4A0HOW7JofBH4GWXp68+CR46WdO/zMRGhOXDs/bDBh9E1YOG0AC
	4SRxe1KiTSpW/0eTN5dytDmH07hE8mzWdDPE5xcsl8/Husxc2MEFxRXBv5ZEPcA9gQdYzmKXKamPT
	nyQeBNWxQu9vW92vPhwou1lZ+BW9ZTes4mAtbqmtfX0IX5b2Ibc+kgD3efXyB5l5txOq79QrtwRlI
	dJrkeQ63yBHm2PLpu6/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMXsJ-0005eL-Ih; Mon, 21 Oct 2019 13:37:31 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMXsA-0005cG-69
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 13:37:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 013AB493;
 Mon, 21 Oct 2019 06:37:09 -0700 (PDT)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.145.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 87DD13F718;
 Mon, 21 Oct 2019 06:37:08 -0700 (PDT)
Date: Mon, 21 Oct 2019 15:37:07 +0200
From: Christoffer Dall <christoffer.dall@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v3 0/2] Improve handling of stage 2 aborts without
 instruction decode
Message-ID: <20191021133707.GA2652@e113682-lin.lund.arm.com>
References: <20191011110709.2764-1-christoffer.dall@arm.com>
 <865zkjzpbf.wl-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <865zkjzpbf.wl-maz@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_063722_270711_30DC05FE 
X-CRM114-Status: GOOD (  20.69  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Peter Maydell <peter.maydell@linaro.org>,
 =?utf-8?B?IkRhbmllbCBQLiBCZXJyYW5nw6ki?= <berrange@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>, Alexander Graf <graf@amazon.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Stefan Hajnoczi <stefanha@redhat.com>, James Morse <james.morse@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Oct 20, 2019 at 11:25:24AM +0100, Marc Zyngier wrote:
> Hi Christoffer,
> 
> On Fri, 11 Oct 2019 12:07:04 +0100,
> Christoffer Dall <christoffer.dall@arm.com> wrote:
> > 
> > When a guest accesses memory outside the memory slots, KVM usually
> > bounces the access back to userspace with KVM_EXIT_MMIO.  However, on
> > arm/arm64 systems, certain load/store instructions did not provide
> > decoding info for the hypervisor to emulate the instruction, and in this
> > case KVM has rather rudely returned -ENOSYS and printed a not overly
> > helpful error message:
> > 
> >   load/store instruction decoding not implemented
> > 
> > This patch series improves the error message and allows userspace to be
> > notified of this event instead of receiving -ENOSYS, and also allows
> > userspace to ask KVM to inject an external abort to the guest, which it
> > can use for any memory access that it either cannot handle.
> > 
> > One remaining case which this patch set does not address is if the guest
> > accesses an in-kernel emulated device, such as the VGIC, but using a
> > load/store instruction which doesn't provide decode info.  With these
> > patches, this will return to userspace for it to handle, but there's no
> > way for userspace to return the decoding information to KVM and have KVM
> > complete the access to the in-kernel emulated device.  I have no plans
> > to address this limitation.
> 
> You had some pending comments on patch 2, and you seem to indicate
> that you would respin the series. Do you have plans to do so in the
> coming days? I'd like to put that series into -next, but I can either
> wait for your respin, or queue it as it is and apply fixes on top.
> 

I think those for v2 and this is v3 which should address those concerns.
Did I miss something or manage to confuse mysel here?

Thanks,

    Christoffer

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
