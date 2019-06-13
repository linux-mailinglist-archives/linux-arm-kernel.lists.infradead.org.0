Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CAE143590
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 13:37:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1IgKKwHSmwLVKTaL5xC/v0ByEXs4pqN7eopePSGn2qo=; b=JLiyCPN/5RAhNk
	DC/s1dvrmALmi//4ENye2PDTPjnqDji5CjOYQ/pN5OzPxFlfsyKw6bOeyy20MCP5VpdZRvAW347ZT
	0eiT1BVJkoVWJZ3oy8j42PKODv5L2fFCHZZSn1IT+rRIe64i0x+ri6P7jq+zxShoQy+BvDZrDVul4
	s9T2qIpB5clnFaads3Jw12x8yBjQA+f3iTe8+gvX4RIvvOv0FJwrrF1fpfQLVY8t1fwjpXmxazezS
	0Tc61ItVysoyKL/FQVn46SKEjit0Z0qm06gyiK6o0DdpOFGg8T0+Apa3j/CvueKfm7pqruM2z6uD4
	uLmcOidpFBqPY1rHOPMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbO3C-0006ar-OV; Thu, 13 Jun 2019 11:37:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbO2y-0006aV-Od
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 11:37:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EC6DC367;
 Thu, 13 Jun 2019 04:37:35 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B2D923F694;
 Thu, 13 Jun 2019 04:39:17 -0700 (PDT)
Date: Thu, 13 Jun 2019 12:37:32 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v4 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.txt
Message-ID: <20190613113731.GY28398@e103592.cambridge.arm.com>
References: <cover.1560339705.git.andreyknvl@google.com>
 <20190612142111.28161-1-vincenzo.frascino@arm.com>
 <20190612142111.28161-2-vincenzo.frascino@arm.com>
 <20190612153538.GL28951@C02TF0J2HF1T.local>
 <141c740a-94c2-2243-b6d1-b44ffee43791@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <141c740a-94c2-2243-b6d1-b44ffee43791@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_043736_893022_BE46D73B 
X-CRM114-Status: GOOD (  28.06  )
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
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-kselftest@vger.kernel.org,
 Andrey Konovalov <andreyknvl@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 11:15:34AM +0100, Vincenzo Frascino wrote:
> Hi Catalin,
> 
> On 12/06/2019 16:35, Catalin Marinas wrote:
> > Hi Vincenzo,
> > 
> > Some minor comments below but it looks fine to me overall. Cc'ing
> > Szabolcs as well since I'd like a view from the libc people.
> > 
> 
> Thanks for this, I saw Szabolcs comments.
> 
> > On Wed, Jun 12, 2019 at 03:21:10PM +0100, Vincenzo Frascino wrote:
> >> diff --git a/Documentation/arm64/tagged-address-abi.txt b/Documentation/arm64/tagged-address-abi.txt
> >> new file mode 100644
> >> index 000000000000..96e149e2c55c
> >> --- /dev/null
> >> +++ b/Documentation/arm64/tagged-address-abi.txt

[...]

> >> +Since it is not desirable to relax the ABI to allow tagged user addresses
> >> +into the kernel indiscriminately, arm64 provides a new sysctl interface
> >> +(/proc/sys/abi/tagged_addr) that is used to prevent the applications from
> >> +enabling the relaxed ABI and a new prctl() interface that can be used to
> >> +enable or disable the relaxed ABI.
> >> +
> >> +The sysctl is meant also for testing purposes in order to provide a simple
> >> +way for the userspace to verify the return error checking of the prctl()
> >> +command without having to reconfigure the kernel.
> >> +
> >> +The ABI properties are inherited by threads of the same application and
> >> +fork()'ed children but cleared when a new process is spawn (execve()).
> > 
> > "spawned".

I'd just say "cleared by execve()."

"Spawn" suggests (v)fork+exec to me (at least, what's what "spawn" means on
certain other OSes).

> > 
> > I guess you could drop these three paragraphs here and mention the
> > inheritance properties when introducing the prctl() below. You can also
> > mention the global sysctl switch after the prctl() was introduced.
> > 
> 
> I will move the last two (rewording them) to the _section_ 2, but I would still
> prefer the Introduction to give an overview of the solution as well.
> 
> >> +
> >> +2. ARM64 Tagged Address ABI
> >> +---------------------------
> >> +
> >> +From the kernel syscall interface prospective, we define, for the purposes
> >> +of this document, a "valid tagged pointer" as a pointer that either it has
> > 
> > "either has" (no 'it') sounds slightly better but I'm not a native
> > English speaker either.
> > 
> >> +a zero value set in the top byte or it has a non-zero value, it is in memory
> >> +ranges privately owned by a userspace process and it is obtained in one of
> >> +the following ways:
> >> +  - mmap() done by the process itself, where either:
> >> +    * flags = MAP_PRIVATE | MAP_ANONYMOUS
> >> +    * flags = MAP_PRIVATE and the file descriptor refers to a regular
> >> +      file or "/dev/zero"
> >> +  - a mapping below sbrk(0) done by the process itself
> >> +  - any memory mapped by the kernel in the process's address space during
> >> +    creation and following the restrictions presented above (i.e. data, bss,
> >> +    stack).
> >> +
> >> +The ARM64 Tagged Address ABI is an opt-in feature, and an application can
> >> +control it using the following prctl()s:
> >> +  - PR_SET_TAGGED_ADDR_CTRL: can be used to enable the Tagged Address ABI.
> > 
> > enable or disable (not sure we need the latter but it doesn't heart).
> > 
> > I'd add the arg2 description here as well.
> > 
> 
> Good point I missed this.
> 
> >> +  - PR_GET_TAGGED_ADDR_CTRL: can be used to check the status of the Tagged
> >> +                             Address ABI.

For both prctls, you should also document the zeroed arguments up to
arg5 (unless we get rid of the enforcement and just ignore them).


Is there a canonical way to detect whether this whole API/ABI is
available?  (i.e., try to call this prctl / check for an HWCAP bit,
etc.)

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
