Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 529EC1A7F32
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 16:08:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YQMsdsc0E6eNGGg0i021aw8cH3yukE/BDgPyVy3MZfc=; b=Kr5MQzoSLt9UYR
	g2vUlzqAvaIkUP7S9PX9PQn7clE9rvHPrqY+1uiMw5LL9suQ4tNK9nfnFIrGy4g3dNa0dtjEt8RQY
	Uc82ZkruIy3TcNv49nKQKuhXQxaQpyXKkmRy0WUFKBirA9AFhi8ZfNtoXJK3XTME19WayxK3mbykn
	bR5yeEyVJKdp4lK5svxOdmqTAVXMtENH0JFHFqRqtv5NuamH+ChY3FEi5vKkidl+TBJb2mcIlFJnZ
	iP2qWqlFDl1aaXwuX9I3/vCIQmKPBJKYhWDkGniUYHXId8KugbmrHAir6o71VtCaW4qDKOrzsFlpo
	PQHDt631V621ul8PmMzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOMEN-0007HL-6c; Tue, 14 Apr 2020 14:08:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOMEF-0007Gq-4S
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 14:07:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5DC2B30E;
 Tue, 14 Apr 2020 07:07:54 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.30.4])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 691693F73D;
 Tue, 14 Apr 2020 07:07:52 -0700 (PDT)
Date: Tue, 14 Apr 2020 15:07:49 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: Optimize ptrauth by enabling it for non-leaf
 functions
Message-ID: <20200414140749.GI2486@C02TD0UTHF1T.local>
References: <1586856741-26839-1-git-send-email-amit.kachhap@arm.com>
 <20200414100033.GA26395@willie-the-truck>
 <20200414101649.GC1278@C02TD0UTHF1T.local>
 <20200414110056.GB26395@willie-the-truck>
 <20200414110922.GC2486@C02TD0UTHF1T.local>
 <20200414131005.GA28750@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414131005.GA28750@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_070755_216548_9B535BA8 
X-CRM114-Status: GOOD (  16.78  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>, Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org, Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 02:10:06PM +0100, Will Deacon wrote:
> On Tue, Apr 14, 2020 at 12:09:22PM +0100, Mark Rutland wrote:
> > On Tue, Apr 14, 2020 at 12:00:56PM +0100, Will Deacon wrote:
> > > On Tue, Apr 14, 2020 at 11:16:49AM +0100, Mark Rutland wrote:
> > > > I believe this is because leaf functions don't store the LR to the stack
> > > > (as they don't create a frame record), so it cannot be modified by a
> > > > stray memory write.
> > > 
> > > That makes some sense, but doesn't it also mean you can jump into the middle
> > > of a leaf function and it will happily return to whatever sits in LR?
> > 
> > If you can do that, you've already subverted control flow, and can
> > probably do the same for a regular function, since for:
> > 
> > | AUTIASP
> > | RET
> > 
> > ... you can just jump to the RET instead.
> 
> Perhaps, but it's not at all clear to me that being able to jump over the
> AUT instruction is just as easy or useful as being able to jump into the
> middle of a leaf function, which might act as a form of gadget. The commit
> message is quite bold in saying "[this] is not useful from security point
> of view".

Ah, I see.

You're right that this would give some number of potentially useful
gadgets.

> How would this interact with BTI? Would we need to have different landing
> pads for leaf functions?

IIRC the compiler would emit a BTI instruction where the PACIASP would
have been, unless the function were only ever called directly in which
case the BTI can also be omitted.

For functions that can only be called directly, this prevents the whole
function (which might not be AAPCS compliant) from being a gadget. For
functions that can be called indirectly, the only saving is the omission
of AUTIASP, which I suspect is not a significant saving.

The tradeoff isn't clear to me.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
