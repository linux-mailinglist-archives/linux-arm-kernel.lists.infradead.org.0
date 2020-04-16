Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D71251ABCB6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 11:22:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6lg9wxuWNK1IX10xQDRFXOyrdyB5oV+ssuRSYaMe50g=; b=bigMdwW2F4ICnW
	ZQgKAOezgkcwCTdzSwOFE0KSpQ6Q0jZetBTU4dSOkDKc19qdPLD3luAraKTz+LNtiDCIlQ2qUCxbE
	eP+35G+I7qawghmpMZ39+ODi6x4zIbnSUBizjcti8bh2xyDwV67SHau4qLYC1s9eG0hHclbnxOmZN
	welIua7oOYX/57FqtZku8BruTC4o7Tl6AFwmy7froyUFPjSLzKDFP7w7tjhBPVgNL/KSrN+QoUtsI
	Rz7sC1qcR/ES1qM+7H2kAcBhCUA2Nm7bbESrfCA0ns4T5C6LfAjl/GS7GvTje2hKpLYHsSyFH6vaR
	ABpWNEywYxh9Ruv16n/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP0ie-0001Iq-Ca; Thu, 16 Apr 2020 09:22:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP0iS-0001II-1F
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 09:21:50 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6E136206D6;
 Thu, 16 Apr 2020 09:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587028907;
 bh=I43NbjtBbDTS3CdmNbDTSnB2YBA20hxQfVK2qJSV0pA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g83L9WrWpa7zZKiaiS6luhTWDkfuZ17XTZCP8NRcLRn254JtYa0uGXGudhneZ6pu1
 hyUYQMDC7TNT3NgJXB7B4ek8JM8jfM3LBM11aQ5+nVfs+bRt+caLIyjf8xulpwec3U
 pzEjCIO75dimEISJcPBelM60n/dMQdalKjee+8yE=
Date: Thu, 16 Apr 2020 10:21:41 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH RFCv1 0/7] Support Async Page Fault
Message-ID: <20200416092141.GA30816@willie-the-truck>
References: <20200410085820.758686-1-gshan@redhat.com>
 <d2882e806ad2f9793437160093c8d3fa@kernel.org>
 <6a1d7e8b-da10-409f-16d0-354004566a1a@redhat.com>
 <20200414110554.GB2486@C02TD0UTHF1T.local>
 <5bc62c4f-e19d-82f2-072e-dfa4498dccf3@redhat.com>
 <20200416091621.GA4987@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416091621.GA4987@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_022149_505632_6B5B8E9C 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: drjones@redhat.com, Gavin Shan <gshan@redhat.com>, suzuki.poulose@arm.com,
 catalin.marinas@arm.com, sudeep.holla@arm.com, eric.auger@redhat.com,
 james.morse@arm.com, shan.gavin@gmail.com, Marc Zyngier <maz@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 10:16:22AM +0100, Mark Rutland wrote:
> On Thu, Apr 16, 2020 at 05:59:33PM +1000, Gavin Shan wrote:
> > However, the hypercall number and behaviors are guarded by
> > specification. For example, the hypercalls used by para-virtualized
> > stolen time, which are defined in include/linux/arm-smccc.h, are
> > specified by ARM DEN0057A [1]. So I need a specification to be
> > created, where the hypercalls used by this feature are defined? If
> > it's not needed, can I pick hypercalls that aren't used and define
> > their behaviors by myself?
> > 
> > [1] http://infocenter.arm.com/help/topic/com.arm.doc.den0057a/DEN0057A_Paravirtualized_Time_for_Arm_based_Systems_v1_0.pdf
> 
> Take a look at the SMCCC / SMC Calling Convention:
> 
>  https://developer.arm.com/docs/den0028/c
> 
> ... that defines ranges set aside for hypervisor-specific usage, and
> despite its name it also applies to HVC calls.
> 
> There's been intermittent work to add a probing story for that, so that
> part is subject to change, but for prototyping you can just choose an
> arbitray number in that range -- just be suere to mention in the commit
> and cover letter that this part isn't complete.

Right, might be simplest to start off with:

https://android-kvm.googlesource.com/linux/+/refs/heads/willdeacon/hvc

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
