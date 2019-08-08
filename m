Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B63185E94
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 11:35:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M3kXu0MS/GK3Dc4XIuEAd/QwMCfurCF0sPlP3LOPehs=; b=S2OZ0tjCgEp5dl
	4GsssOTlSB7Em54+FNVVBWNPyVArc4mYCpFNeDz/80ea1mGX1u/PSSj+oyOgKZ6ReWyhQ10obmrte
	xCfXGuKUPS7bz9CkDUe9BwCUQfiummbdZmObsQL0YgoCG4ljTOyr/23X+WPFtim9bmOT60X5RPMcP
	ZCGMrOcDsM99/Tx2q0sYVNHAGHxUCWWgW/pk/MWzprqEIaCrbJDx+BuIde9cXi1FcWVZl92IWxcIW
	5CwishMLXJzZxFcYiOTjAm+It/AVwWlAF4H5cJ9Nsi7VWRBna5G/MqjyKUPTr42WbyMngiqcQShgf
	KS5mz35HMDeS7pQPscVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvepi-00074n-5g; Thu, 08 Aug 2019 09:35:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvepT-00073s-It
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 09:35:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2DFBE1576;
 Thu,  8 Aug 2019 02:35:27 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 46D993F706;
 Thu,  8 Aug 2019 02:35:26 -0700 (PDT)
Date: Thu, 8 Aug 2019 10:35:24 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Stefan Agner <stefan@agner.ch>
Subject: Re: Detecting AArch32 support from a AArch64 process in user space
Message-ID: <20190808093522.GG10425@arm.com>
References: <ffbb92107af81971c03ec832cf25116c@agner.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ffbb92107af81971c03ec832cf25116c@agner.ch>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_023527_715536_BD3C7B8F 
X-CRM114-Status: GOOD (  25.43  )
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, ynorov@caviumnetworks.com,
 will.deacon@arm.com, linux-arm-kernel@lists.infradead.org,
 suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 09:36:42AM +0200, Stefan Agner wrote:
> [resend this time with the correct mailing list address]
> 
> Hello,
> 
> I am trying to detect whether an ARMv8 system running in AArch64 state
> supports AArch32 state from a user space process. The arm64_features[]
> in

Why?  Is this just for diagnostic purposes, or some programmatic reason?

In the latter case, just try to do what ever it is you want to do that
depends on AArch32: if it fails, you don't have AArch32.

> arch/arm64/kernel/cpufeature.c lists a CPU feature "32-bit EL0 Support".
> However, afaik this CPU feature is not directly exposed to user-space.
> The features do get printed in the kernel log, but that requires
> privileges and only works directly after boot. There is

Please don't scrape dmesg :)

However, detecting AArch32 support is a bit annoying due to the fact
that there's no hwcap or similar.

> system_supports_32bit_el0() which is used in various places in the arm64
> architecture code. One of the instances where I can make sense of from
> user space is through the personality system call. One idea is to call
> personality(PER_LINUX32). It would then return error code 22 in case
> 32-bit is not supported in user space. However, if successful this
> changes the personality of the current process which might have side
> effects which I do not want...?
> 
> I started to ask myself what PER_LINUX32 actually changes. From what I
> can tell it only changes the behavior of /proc/cpuinfo? The personality
> seems not to be applied automatically to 32-bit processes, so this is a
> opt-in backward compatibility feature?

Basically yes.  Nonetheless, this is probably a reasonable way to test
for AArch32 userspace support.

> To be on the safe side, I was thinking about executing the system call
> in a separate process. However, at that point I could also just execute
> a statically linked AArch32 binary and see whether I get a "exec format
> error". I guess this could then be either due to missing AArch32 CPU
> support or the kernel not being compiled with 32-bit compatibility.

personality() returns the old personality, so you providing you don't
have multiple threads you can probably try to set it to PER_LINUX32
and then restore it.

Otherwise, you would need to fork and try personality() from the child.

Or as you suggest, try to exec a 32-bit binary.
		
> At last I was considering reading directly from the CPU. But from what I
> understand the register used in the kernel to determine 32-bit
> compatibility (ID_AA64PFR0_EL1) is not accessible by user space (due to
> the suffix _EL1).
> 
> Any advice/thoughts on this topic?

This register is emulated for userspace, so you can read it.  However,
the relevant field gets masked out, so this is probably not much use to
you.

We could expose the field, but a test that relies on it wouldn't be
backwards compatible.

If you just want to do this test from a script for diagnostic purposes
and the filesystem has util-linux, then something like

	linux32 /bin/true

might also work (this is effectively a scripted version of the
personality(PER_LINUX32) test).

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
