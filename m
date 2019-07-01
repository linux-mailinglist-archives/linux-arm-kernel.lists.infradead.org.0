Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E425B6DB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 10:30:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/YXDxNQgGYETmJzhkehHnSuLusgD9k2LyvjgnGR7cr4=; b=hQENELbrLuGEnh
	6w9DRxEG+lZN2jytVVV+0tGx4FgO9R45xm1GYS3GfdJWueQBJuGXEjUJye8/6q9h2/Wr3EGMGXJa3
	GZbiJ823TVkc/MzET4scl4Kx7ylUTH42WIoOQjQVBFqQTh5BYIfECQO5D9u33CfcUqqfu+1P6fWiN
	DcgZju7mEU6+kvHxuSQZOxf62Qe0KUJc+v0Za/3edRwwqjP5KEoaQmz2XCo81DptQoSlTj60wA36v
	CRxxDGXdNuLex1FC5tYuYKXeRPq0lI/qBGx7gcWqwcAp+eTs3nPIk9rdDxZ3YlTC2WRNRgpa85c3j
	d1Wl1wrOzN2cKErDTBMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhrhG-00018V-QT; Mon, 01 Jul 2019 08:29:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhrh3-00016c-IR
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 08:29:46 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F0A81212F5;
 Mon,  1 Jul 2019 08:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561969785;
 bh=ow+MPO44JdZUrqodSEW0tNbzUdY22v+64fdg3neAO+s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=waB+Uc+iqcT9XZMXfoTUNoj/opSUxb/RgmQIwUMcTXR07N0bsaBt2FcIjHEq5W7pf
 H9fMTR3PMwxn1T4EwOdGjWnDck7hmPYMAcauxeseqmov4FrV9ZIcxY+ZPJWeXJ3UsG
 o/reO70zSIfkw7+EWHBDVc+L2yAEIBTwB30eDtBc=
Date: Mon, 1 Jul 2019 09:29:41 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCHv2 0/3] arm64: stacktrace: improve robustness
Message-ID: <20190701082940.dkzuvxkmwhevxekr@willie-the-truck>
References: <20190628154639.5308-1-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628154639.5308-1-mark.rutland@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_012945_624113_BC7C216E 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tengfeif@codeaurora.org, catalin.marinas@arm.com, will.deacon@arm.com,
 james.morse@arm.com, dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 04:46:36PM +0100, Mark Rutland wrote:
> The arm64 stacktrace code is careful to only access valid stack
> locations, but in the presence of a corrupted stack where frame records
> form a loop, it will never terminate.
> 
> This series updates the stacktrace code to terminate in finite time even
> when a stack is corrupted. A stacktrace will be terminated if the next
> record is at a lower (or equal) address on the current stack, or when
> the next record is on a stack we've already completed unwinding.
> 
> The first couple of patches come from Dave's prior attempt to fix this
> [1], with the final patch relying on infrastructure which has been
> introduced in the mean time.
> 
> I've given this a quick spin with magic-sysrq L in a KVM guest, and
> things look fine, but further testing would be appreciated.
> 
> This series (based on v5.2-rc1) can also be found in my
> arm64/robust-stracktrace branch on kernel.org [2].
> 
> Since v1 [3]:
> * Use start_backtrace() consistently
> * Don't use tsk in start_backtrace()
> * Track the previous FP and type explicitly

Given that you had to draw a diagram to figure this out, please could you
include something along those lines in the code as well? I worry that this
will just regress otherwise.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
