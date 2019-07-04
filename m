Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF315F9DF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 16:16:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EdtJLyH1KF42r7jk2kyNbFWE3jDSga9avjJtA9TqGTk=; b=EhbBOEwbOpetTz
	04kvDwImh9dOIpzxi3e7xQSKD2So3BvZCpbaOI29V0BnrKAEhgidPVUgt6BXw7bX4RZJwb/LuXR9z
	DYRCqb5iAnkRfbKN/2dQKKaVerDFZdEEL8J6KW46K77rwqi4C7tKcX95uhu/sNSrYJv9pT9gnglfN
	Q92Gmsq/32quGj693RUwRXKR/da/vqs4vv+FUW0xXpgyH1vtGtKKcvzek60HVN/Rs9/ukZW2DMTbD
	7a4k3OSofvDFj6MpF032cS4ciG7JblpZNcTqBxr1vr0044ycbO/LRrS8h1wNoO23D7MiVyTl5gj09
	usVltf5Ks08TLwsq0NcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj2X1-0001kc-NA; Thu, 04 Jul 2019 14:16:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hj2Wp-0001kH-SL
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 14:16:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2413728;
 Thu,  4 Jul 2019 07:16:03 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 DEC253F738; Thu,  4 Jul 2019 07:16:01 -0700 (PDT)
Date: Thu, 4 Jul 2019 15:15:59 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [RFC PATCH v2 7/8] arm64/sve: Don't disable SVE on syscalls return
Message-ID: <20190704141559.GA51773@arrakis.emea.arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
 <20190613161656.20765-8-julien.grall@arm.com>
 <20190621153316.GC2790@e103592.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621153316.GC2790@e103592.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_071603_959222_0E48BC46 
X-CRM114-Status: GOOD (  18.04  )
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
Cc: Anton.Kirilov@arm.com, will.deacon@arm.com, oleg@redhat.com,
 zhang.lei@jp.fujitsu.com, Julien Grall <julien.grall@arm.com>,
 alex.bennee@linaro.org, linux-arm-kernel@lists.infradead.org,
 Daniel.Kiss@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 04:33:16PM +0100, Dave P Martin wrote:
> On Thu, Jun 13, 2019 at 05:16:55PM +0100, Julien Grall wrote:
> > Per the syscalls ABI, SVE registers will be unknown after a syscalls. In
> 
> This patch is quite hard to understand, though this is more down to the
> code being modified than the patch itself.  So, I may ask some stupid
> questions...
> 
> In particular, we now have up to 8 task states (all the combinations of
> TIF_FOREIGN_FPSTATE, TIF_SVE and TIF_SVE_NEEDS_FLUSH).  Sketching out
> the state machine and highlighting any states that we consider invalid
> may be a useful exercise, but I've not attempted that yes.

We definitely need a state machine sketched out (and a formal model as I
can't really get all of it in my head at once). I don't fully understand
the need for a new TIF_SVE_NEEDS_FLUSH. Maybe it becomes obvious if we
had a state machine description.

So, we currently have (IIUC):

TIF_SVE - tells us whether the user space can access SVE registers
without a fault (doesn't CPACR_EL1 tell us this already on kernel entry?
I guess we'd need to store it in a TIF flag anyway for switch_to). The
implications of TIF_SVE on kernel entry is that the SVE state could have
been touched by the user. If entering via syscall, we discard this state
in sve_user_discard().

TIF_FOREIGN_FPSTATE - tells us whether the hardware state is out of sync
with the current thread.

For flushing the SVE state on return from syscall, can we not handle
this entirely in el0_svc_handler while enabling the SVE access at the
same time to avoid a subsequent trap? We need to know whether the SVE
state is valid when we do the context switching but we have TIF_SVE for
this, cleared on syscall entry but can be set again on return from
syscall if we enable access in CPACR_EL1 (sve_user_enable()).

It probably needs some more thinking on signal handling.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
