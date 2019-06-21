Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A65FB4EC12
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:32:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NjaVOAuoVdvj3ESZ9yh/o54GYBtOchnhijmhfzucUQQ=; b=PDxRRQ95TRY34i
	BaXnSIwBaIE4tdedtXpkvfufTcegiJ2whtVkqTeNUxHbZYl1yEqyfxS+RSpVOyuhbY10zm7MumC60
	iyQ0rmmc30+pe/gqpme62eNKNJUe4m7BcihGu4IPeD0grvhetx7jsh6FnSqFv1xrKNrLcZ4yUDsNl
	shywzFWV6xQchUZQxKbZSrfQlA7r565tdk3EYIaVrUvXpAJqWAT7ZqEmQsBFaql3h9YksGu+jaXC+
	E0F/iG6VfM/JF5CaSv419+4EXC474ZckTUMpHb3zajz9jC+WIECgXkqvlcsZyJ6800bJgg724IQZN
	Nl1mlrWkBGTQe1QZ6Jow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLWn-0008Ff-6i; Fri, 21 Jun 2019 15:32:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heLWX-0008F9-8y
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:32:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 833EC344;
 Fri, 21 Jun 2019 08:32:20 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 47EF23F575;
 Fri, 21 Jun 2019 08:32:19 -0700 (PDT)
Date: Fri, 21 Jun 2019 16:32:17 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [RFC PATCH v2 0/8] arm64/sve: First steps towards optimizing
 syscalls
Message-ID: <20190621153217.GV2790@e103592.cambridge.arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613161656.20765-1-julien.grall@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_083221_371233_7A11EF9C 
X-CRM114-Status: GOOD (  21.64  )
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
Cc: Anton.Kirilov@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 oleg@redhat.com, zhang.lei@jp.fujitsu.com, alex.bennee@linaro.org,
 linux-arm-kernel@lists.infradead.org, Daniel.Kiss@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 05:16:48PM +0100, Julien Grall wrote:
> Hi all,
> 
> This is a first attempt to optimize the syscall path when the user
> application uses SVE. The patch series is based on v5.2-rc4.
> 
> Per the syscall ABI, SVE registers will be unknown after a syscall. In
> practice, the kernel will disable SVE and the registers will be zeroed
> (except the first 128-bits of each vector) on the next SVE instruction.
> In a workload mixing SVE and syscalls, this will result to 2 entry/exit
> to the kernel per syscall.
> 
> This series aims to avoid the second entry/exit by zeroing the SVE
> registers on syscall return with a twist when the task will get
> rescheduled.
> 
> This implementation will have an impact on application using SVE
> only once. SVE will now be turned on until the application terminates
> (unless disabling it via ptrace). Cleverer strategies for choosing
> between SVE and FPSIMD context switching are possible (see [1]), but
> it is difficult to assess the benefit right now. We could improve the
> behaviour in the future as a selection of mature hardware platform
> emerges that we can benchmark.

I'm wondering whether we ought to do something about this such as
turning SVE back off after the nth syscall.  Given the complexity of
this code though, let's stabilise the series as-is first.

I probably ask dumb questions in some places, since I'm trying to
refresh my memory of the subtleties of this code as I go...

> It is also possible to optimize the case when the SVE vector-length
> is 128-bit (i.e the same size as the FPSIMD vectors). This could be
> explored in the future respin of the series.
> 
> While developing the series, I have added a series of tracepoint in
> the SVE code. They may not be suitable for upstreaming and hence not
> included in the series. I can provide them if anyone is interested.
> 
> Note that the last patch for the series is is not here to optimize syscall
> but SVE trap access by directly converting in hardware the FPSIMD state
> to SVE state. If there are an interest to have this optimization earlier,
> I can reshuffle the patches in the series.

I think this could make sense.  Maybe see what Will and Catalin think
about it.

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
