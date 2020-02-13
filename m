Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5AE15BC64
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 11:11:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FiGsd3JUEk/cm4WIOib/iL9MuTB4QX21qPIWBNHsfZ4=; b=WlUOv04nFzm36t
	/Lt2IwUxappk76K7u64NiXvmxBgnXdHXtn/WFpJoxHm9mvkq8Ssakx+WZ5grhYgl0oi/PIBY24YSf
	JOUForwa0t6pqpOlhlvPAmdLrgu6cMa1/vi/E0P0tP/cCpVuJG2nDwlvrUFh+IahtMt7NjEEapfN0
	z0vOiTTov0nH1F0hcFop2FXc725V23dwpIFZIwxVkMUCFSv4eAV5t+4sjzIcjcM5V3/FvjqIaZfx2
	uQYW9Sk5I+D2vuq2p2lPkJZnQ0kmgbgL6Fhw2rFMF04wgOa+Pbud5bJ8/4dW55aXH+yDw5CKR1OeK
	FZv33SrRAWOiLC435B5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2BSi-0002Dm-Cm; Thu, 13 Feb 2020 10:11:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2BSY-0002D9-IT
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 10:11:04 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 40FAF20873;
 Thu, 13 Feb 2020 10:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581588662;
 bh=DcTFDh6Btu9NlaDnpCgIMMBV4IDmzSgnefKuvO9pNK8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pjn/5040/9bpqrzAPIPY0NL05Icp8khNKqiWzTH8ehI9lZjKQY8M4aPda7PZocp9E
 /hHaRaM4IYarz/UZQa8TZE2dKpLxCeCCyXaJlN+Us6LOLCkKDRSWd79d6CpUJVrS2q
 XaLhsvSH3GdMGKQgNUYRSv0f57KBocrE/1T0jazk=
Date: Thu, 13 Feb 2020 10:10:58 +0000
From: Will Deacon <will@kernel.org>
To: minyard@acm.org
Subject: Re: [RFC PATCH 0/2] arm64 kgdb fixes for single stepping
Message-ID: <20200213101057.GB1405@willie-the-truck>
References: <20200213031131.13255-1-minyard@acm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213031131.13255-1-minyard@acm.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_021102_887049_92C29149 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 09:11:29PM -0600, minyard@acm.org wrote:
> I got a bug report about using kgdb on arm64, and it turns out it was
> fairly broken.  Patch 2 has a description of what was going on.  I am
> using a Marvell 8100 board.
> 
> The following patches fix the problem, but probably not in the
> best way.  They are what I hacked out to show the problems.
> 
> I am not quite sure how this will interact with kprobes and hardware
> breakpoints which use the same code, but they would have been broken,
> too, so this is not making them any worse.

This should all be handled by kgdb itself, not by changing the low-level
debug exception handling. For example, the '&kgdb_step_hook' can take
care of re-arming the step state machine and kgdb can also simply disable
interrupts during the step if it doesn't want to step into the handler.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
