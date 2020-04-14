Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D881A7915
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 13:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E8uvnJAI5wn51/lNkvCFifJGS1uLJ18LyYqz1cEDMVw=; b=hDYeSAaA+uHIKL
	xnmuvgG0STjx8GpXqhcL4zcfvGWcyo9Ib0hEXbF95h1zNH5DD4KtO9juhQ5RO6f/mUNL7TbZE8PEf
	72Jx1nyPt0ILkbIwHOsWggQDWCdGfsndzBRTwXFoV/fkeI42wDc0vsAaHDaFRn3Iha0Njf9pGLsUo
	U03vhfPcr/YdHOPR/dMLLmnQJpgUobaIMngTht/7z4w5wj2ExYr4i95aTpDzv0mJRcn77dgef6iYC
	EqzW1xrFfcwGe+jh+0mhAFYlAKDnMghll2uU8YXcQMeFvQbbkxaU0SlQBDKQgSSOFlHIYNgKhabH0
	XDkS/iy+hfDvR3u/kFhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOJOM-0001hv-LD; Tue, 14 Apr 2020 11:06:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOJOE-0001hY-C8
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 11:06:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D9A441FB;
 Tue, 14 Apr 2020 04:05:59 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.30.4])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 748723F6C4;
 Tue, 14 Apr 2020 04:05:57 -0700 (PDT)
Date: Tue, 14 Apr 2020 12:05:54 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH RFCv1 0/7] Support Async Page Fault
Message-ID: <20200414110554.GB2486@C02TD0UTHF1T.local>
References: <20200410085820.758686-1-gshan@redhat.com>
 <d2882e806ad2f9793437160093c8d3fa@kernel.org>
 <6a1d7e8b-da10-409f-16d0-354004566a1a@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6a1d7e8b-da10-409f-16d0-354004566a1a@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_040602_455735_5A5477B6 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: drjones@redhat.com, suzuki.poulose@arm.com, Marc Zyngier <maz@kernel.org>,
 sudeep.holla@arm.com, eric.auger@redhat.com, james.morse@arm.com,
 shan.gavin@gmail.com, catalin.marinas@arm.com, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Gavin,

On Tue, Apr 14, 2020 at 03:39:56PM +1000, Gavin Shan wrote:
> On 4/10/20 10:52 PM, Marc Zyngier wrote:
> > On 2020-04-10 09:58, Gavin Shan wrote:
> > > In order to fulfil the control flow and convey signals between host
> > > and guest. A IMPDEF system register (SYS_ASYNC_PF_EL1) is introduced.
> > > The register accepts control block's physical address, plus requested
> > > features. Also, the signal is sent using data abort with the specific
> > > IMPDEF Data Fault Status Code (DFSC). The specific signal is stored
> > > in the control block by host, to be consumed by guest.

> > - We don't add IMPDEF sysregs, period. That's reserved for the HW. If
> >    you want to trap, there's the HVC instruction to that effect.

> I really don't understand how IMPDEF sysreg is used by hardware vendors.
> Do we have an existing functionality, which depends on IMPDEF sysreg?
> I was thinking the IMPDEF sysreg can be used by software either, but
> it seems I'm wrong.

The key is in the name: an IMPLEMENTATION DEFINED register is defined by
the implementation (i.e. the specific CPU microarchitecture), so it's
wrong for software to come up with an arbitrary semantic as this will
differ from the implementation's defined semantic for the register.

Typically, IMP DEF resgisters are used for things that firmware needs to
do (e.g. enter/exit coherency), or for bringup-time debug (e.g. poking
into TLB/cache internals), and are not usually intended for general
purpose software.

Linux generally avoids the use of IMP DEF registers, but does so in some
cases (e.g. for PMUs) after FW explicitly describes that those are safe
to access.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
