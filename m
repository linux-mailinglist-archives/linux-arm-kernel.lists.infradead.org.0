Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6312D43D36
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:40:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DF79LrMebpHbZz4nz3eHX3/Tf/sKkAAV+E4h//9ls6U=; b=AI4fyZePWMMKKP
	ragrd4a2J8vvCzYtjsfe9CaeYwJvTuuQyfOvGyE1yYEq8s0VuXt/0Ep1EbU+pWzp4l7F33b2XKZWx
	iMhkMtIPvLtQgFVMdsxMKlBLmdLEWrRPb3X7wwvM5tJ+QDhOQNWVQz5iB0ftngQz9prtfkHMWmVlt
	uvA8ca6tZhvXFpvAFrN6Z6hXkrcq2u6B5ZsgpT8vrSLG6A9g1V1NVswzzchVeB8u1R7kVmXn/D82R
	iD+RF9gJdami5tbRwi4C2ayb4iUXEFrfmzSu6tGsrkgFqljsTuzg+YlyRMp0S4nAXH2chYkwmqKwO
	ieatsklJaV3Dikn7f3qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRpy-0003L0-Jh; Thu, 13 Jun 2019 15:40:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRox-0001Sx-Vc
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:39:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CBCF43EF;
 Thu, 13 Jun 2019 08:39:22 -0700 (PDT)
Received: from C02TF0J2HF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EDD3E3F718;
 Thu, 13 Jun 2019 08:39:16 -0700 (PDT)
Date: Thu, 13 Jun 2019 16:39:07 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v4 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.txt
Message-ID: <20190613153906.GV28951@C02TF0J2HF1T.local>
References: <cover.1560339705.git.andreyknvl@google.com>
 <20190612142111.28161-1-vincenzo.frascino@arm.com>
 <20190612142111.28161-2-vincenzo.frascino@arm.com>
 <20190612153538.GL28951@C02TF0J2HF1T.local>
 <141c740a-94c2-2243-b6d1-b44ffee43791@arm.com>
 <20190613113731.GY28398@e103592.cambridge.arm.com>
 <20190613122821.GS28951@C02TF0J2HF1T.local>
 <20190613132342.GZ28398@e103592.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613132342.GZ28398@e103592.cambridge.arm.com>
User-Agent: Mutt/1.11.2 (2019-01-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_083924_144355_50F4F3B5 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-kselftest@vger.kernel.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 02:23:43PM +0100, Dave P Martin wrote:
> On Thu, Jun 13, 2019 at 01:28:21PM +0100, Catalin Marinas wrote:
> > On Thu, Jun 13, 2019 at 12:37:32PM +0100, Dave P Martin wrote:
> > > On Thu, Jun 13, 2019 at 11:15:34AM +0100, Vincenzo Frascino wrote:
> > > > On 12/06/2019 16:35, Catalin Marinas wrote:
> > > > > On Wed, Jun 12, 2019 at 03:21:10PM +0100, Vincenzo Frascino wrote:
> > > > >> +  - PR_GET_TAGGED_ADDR_CTRL: can be used to check the status of the Tagged
> > > > >> +                             Address ABI.
> > [...]
> > > Is there a canonical way to detect whether this whole API/ABI is
> > > available?  (i.e., try to call this prctl / check for an HWCAP bit,
> > > etc.)
> > 
> > The canonical way is a prctl() call. HWCAP doesn't make sense since it's
> > not a hardware feature. If you really want a different way of detecting
> > this (which I don't think it's worth), we can reinstate the AT_FLAGS
> > bit.
> 
> Sure, I think this probably makes sense -- I'm still getting my around
> which parts of the design are directly related to MTE and which aren't.
> 
> I was a bit concerned about the interaction between
> PR_SET_TAGGED_ADDR_CTRL and the sysctl: the caller might conclude that
> this API is unavailable when actually tagged addresses are stuck on.
> 
> I'm not sure whether this matters, but it's a bit weird.
> 
> One option would be to change the semantics, so that the sysctl just
> forbids turning tagging from off to on.  Alternatively, we could return
> a different error code to distinguish this case.

This is the intention, just to forbid turning tagging on. We could
return -EPERM instead, though my original intent was to simply pretend
that the prctl does not exist like in an older kernel version.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
