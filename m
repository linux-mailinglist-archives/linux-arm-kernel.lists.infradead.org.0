Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 929061402A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 04:58:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JEituuPXEX+jglaLN1vVuEi6cWfF8MeX+Fagbnq0zcE=; b=WmRmORGYbMubY4
	3d7ejNT7rviv/J7B7nz7w41FHZRiZjsBbEZkHjE3kp/+qpKLsT20MV0RCiFCNRfCCHFhSjGcixauw
	ac4QG4mj6S2Hf9qgPO2Cje39VdK1G2oNMPx+7Iw7Pyai/9HjKyt/R2rV+PThSbLlYJjgs4K83orLG
	7AVRosWSxkzbwswHtYB2yL1/p9ohNyGSMrt/iODO2JXqNZnnt5qkHmhaBA4WmQdx8wF+hRQLlA7NS
	8Asve0rBL0r/UPgFd+0LM52AzmC1dU354u51rNawEgRgRQtfHvT5jLQm/JNM/bSJ3YoLGwmaikult
	OYpqBDlkYo3H4WUGEhDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isImH-00075i-Ax; Fri, 17 Jan 2020 03:58:33 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isIm3-000739-FX
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 03:58:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579233498;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=GS6FnA5NNUNJfxm482U+3UbNOpbqVkHtaTFx8YTek68=;
 b=NzsOYh2GjCMHP1Fi0YFgU9pMtjTY+p/hF7SgPlsJ2yJa5OCHvQ4r2oPByOMJqCIewpK42G
 AkZKur+UwYJvZO/Cvt/NsSpN//mxaQit1C0uHs4YljYtVGg4LKjI9EgxprEUFQdJr9YFvC
 zBXuygfEa1Fdp++YIQLVbIdC9JBn5Io=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-343-_pOoDC-COqSvuzkdxWry3Q-1; Thu, 16 Jan 2020 22:58:16 -0500
X-MC-Unique: _pOoDC-COqSvuzkdxWry3Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 330AA184C71F;
 Fri, 17 Jan 2020 03:58:14 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-166.pek2.redhat.com
 [10.72.12.166])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 66F9C5C1D8;
 Fri, 17 Jan 2020 03:58:08 +0000 (UTC)
Date: Fri, 17 Jan 2020 11:58:04 +0800
From: Dave Young <dyoung@redhat.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v7 1/4] x86: kdump: move reserve_crashkernel_low() into
 crash_core.c
Message-ID: <20200117035804.GA16926@dhcp-128-65.nay.redhat.com>
References: <20191223152349.180172-1-chenzhou10@huawei.com>
 <20191223152349.180172-2-chenzhou10@huawei.com>
 <20191227055458.GA14893@dhcp-128-65.nay.redhat.com>
 <09d42854-461b-e85c-ba3f-0e1173dc95b5@huawei.com>
 <20191228093227.GA19720@dhcp-128-65.nay.redhat.com>
 <77c971a4-608f-ee35-40cb-77186a2ddbd1@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <77c971a4-608f-ee35-40cb-77186a2ddbd1@arm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_195819_591483_CC18ECF6 
X-CRM114-Status: GOOD (  30.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kbuild test robot <lkp@intel.com>, horms@verge.net.au,
 linux-doc@vger.kernel.org, Chen Zhou <chenzhou10@huawei.com>,
 catalin.marinas@arm.com, bhsharma@redhat.com, xiexiuqi@huawei.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, mingo@redhat.com,
 tglx@linutronix.de, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01/16/20 at 03:17pm, James Morse wrote:
> Hi guys,
> 
> On 28/12/2019 09:32, Dave Young wrote:
> > On 12/27/19 at 07:04pm, Chen Zhou wrote:
> >> On 2019/12/27 13:54, Dave Young wrote:
> >>> On 12/23/19 at 11:23pm, Chen Zhou wrote:
> >>>> In preparation for supporting reserve_crashkernel_low in arm64 as
> >>>> x86_64 does, move reserve_crashkernel_low() into kernel/crash_core.c.
> >>>>
> >>>> Note, in arm64, we reserve low memory if and only if crashkernel=X,low
> >>>> is specified. Different with x86_64, don't set low memory automatically.
> >>>
> >>> Do you have any reason for the difference?  I'd expect we have same
> >>> logic if possible and remove some of the ifdefs.
> >>
> >> In x86_64, if we reserve crashkernel above 4G, then we call reserve_crashkernel_low()
> >> to reserve low memory.
> >>
> >> In arm64, to simplify, we call reserve_crashkernel_low() at the beginning of reserve_crashkernel()
> >> and then relax the arm64_dma32_phys_limit if reserve_crashkernel_low() allocated something.
> >> In this case, if reserve crashkernel below 4G there will be 256M low memory set automatically
> >> and this needs extra considerations.
> 
> > Sorry that I did not read the old thread details and thought that is
> > arch dependent.  But rethink about that, it would be better that we can
> > have same semantic about crashkernel parameters across arches.  If we
> > make them different then it causes confusion, especially for
> > distributions.
> 
> Surely distros also want one crashkernel* string they can use on all platforms without
> having to detect the kernel version, platform or changeable memory layout...
> 
> 
> > OTOH, I thought if we reserve high memory then the low memory should be
> > needed.  There might be some exceptions, but I do not know the exact
> > one,
> 
> > can we make the behavior same, and special case those systems which
> > do not need low memory reservation.
> 
> Its tricky to work out which systems are the 'normal' ones.
> 
> We don't have a fixed memory layout for arm64. Some systems have no memory below 4G.
> Others have no memory above 4G.
> 
> Chen Zhou's machine has some memory below 4G, but its too precious to reserve a large
> chunk for kdump. Without any memory below 4G some of the drivers won't work.
> 
> I don't see what distros can set as their default for all platforms if high/low are
> mutually exclusive with the 'crashkernel=' in use today. How did x86 navigate this, ... or
> was it so long ago?

It is very rare for such machine without any low memory in X86, at least
from what I know,  so the current way just works fine.

Since arm64 is quite different, I would agree with current way
proposed in the patch, but a question is, for those arm64 systems how can
admin know if low crashkernel memory is needed or not?  and just skip the
low reservation for machine with high memory installed only?

> 
> No one else has reported a problem with the existing placement logic, hence treating this
> 'low' thing as the 'in addition' special case.
> 
> 
> >> previous discusses:
> >> 	https://lkml.org/lkml/2019/6/5/670
> >> 	https://lkml.org/lkml/2019/6/13/229
> > 
> > Another concern from James:
> > "
> > With both crashk_low_res and crashk_res, we end up with two entries in /proc/iomem called
> > "Crash kernel". Because its sorted by address, and kexec-tools stops searching when it
> > find "Crash kernel", you are always going to get the kernel placed in the lower portion.
> > "
> > 
> > The kexec-tools code is iterating all "Crash kernel" ranges and add them
> > in an array.  In X86 code, it uses the higher range to locate memory.
> 
> Then my hurried reading of what the user-space code does was wrong!
> 
> If kexec-tools places the kernel in the low region, there may not be enough memory left
> for whatever purpose it was reserved for. This was the motivation for giving it a
> different name.

Agreed,  it is still a potential problem though.  Say we have both low
and high reserved.  Kdump kernel boots up, the kernel and drivers,
applications will use memory, I'm not sure if there is a memory
allocation policy to let them all use high mem first..  Anyway that is
beyond the kexec-tools and resource name.

Thanks
Dave


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
