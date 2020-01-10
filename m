Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FA61366C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 06:36:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wE7YWlWBtgOClxj3ACbDKAgCLKUk24jCPoQxEiQvh84=; b=ZxhwrpYsE+ocQg
	M9dZV7FEodVrBgN/md5gOHhUYIVKDxnZr5EjBCxOkzhx0t1b+Xg7uSBod6l5GX18icLPnB91uU6Aw
	z3WtmCtZ29VE0C+68ZoKaWieFfMuTIoJgur5UxuuNSTBXmIsF2ki5E+tdRhyIGTWS0vkkPuZ2P1yO
	Mhwq2sR92qAm61463tGw8dzGO/GEZ5F4R+yvCLcr8URYeDdDZjU3u8n9PnlesO8IvDGBJYCg211ey
	MAASPQBpnnbYjObc46r3mjhSyiYThcOoD1da8MNdrQVnnIJ9GWTNxki9wyX8CTqUOohItmpxjnqPO
	IrMAjXQUoWidJVBj3CLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipmy8-00007R-E5; Fri, 10 Jan 2020 05:36:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipmy2-000072-E5
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 05:36:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0E62B1396;
 Thu,  9 Jan 2020 21:36:16 -0800 (PST)
Received: from [10.162.42.128] (p8cg001049571a15.blr.arm.com [10.162.42.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 F05D03F6C4; Thu,  9 Jan 2020 21:36:12 -0800 (PST)
Subject: Re: [PATCH 14/17] arm64: entry: move NO_SYSCALL setup to C
To: Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
References: <20200108185634.1163-1-mark.rutland@arm.com>
 <20200108185634.1163-15-mark.rutland@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <bf68131a-32b8-cb71-5cf8-c11391ec4981@arm.com>
Date: Fri, 10 Jan 2020 11:07:27 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200108185634.1163-15-mark.rutland@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_213618_512732_B2ADEE60 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: keescook@chromium.org, maz@kernel.org, broonie@kernel.org,
 labbott@redhat.com, robin.murphy@arm.com, julien.thierry.kdev@gmail.com,
 alex.popov@linux.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 01/09/2020 12:26 AM, Mark Rutland wrote:
> In the entry assembly we set up pt_regs::syscallno to NO_SYSCALL so that
> any ptrace calls will see a sensible value. For real syscalls, the
> actual syscall number is setup in C code, in do_el0_svc or
> do_el0_svc_compat.
> 
> Given that tracing isn't performed until the usual EL0 entry work is
> performed, we can move the default syscallno setup to C code, making
> things simpler and more legible.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Will Deacon <will@kernel.org>

Reviewed-by: Anshuman Khandual <anshuman.khandual@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
