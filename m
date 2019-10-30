Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 184DCEA23A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 18:02:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bRacwbgNBKn9Tf3WRFCthTudk+/iC+VK5g+7eR07xRM=; b=cfRjzPvzdhZIAn
	eEv5BwhVSM0KByHSDcve0UIqQsaZ046k+XTQObTGtN//CLfVxbjbff8kIctSlPMZTEYnX5LUr0apx
	C3PYm1Uh00+WaFTWg7eTUUbGxGg9H9Fw+W2EG56NDRg7yGswVzlRW7tfbIE2r/2HyEFLSOqgtKn1V
	mxpDBQ6HKEZVJsbeCZVfoX69tI7Tw0sYugtbTZjM4PNIU2wsrrUdIsIFJvItizNcO9sXUXbDM0dYX
	Q5DKWp9qkQjPGXnZNvncb+GtOzNBmAso2eyOzwpqwZX9wyh1XFkKl2dZEgVTd3TFdASSNoU7eqFpW
	k489xkIL3HBDOnYNP3Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPrMn-0000hg-RD; Wed, 30 Oct 2019 17:02:41 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPrMa-0000gZ-JP
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 17:02:30 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A82D6B374;
 Wed, 30 Oct 2019 17:02:26 +0000 (UTC)
Date: Wed, 30 Oct 2019 18:02:24 +0100
From: Torsten Duwe <duwe@suse.de>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCHv2 0/8] arm64: ftrace cleanup + FTRACE_WITH_REGS
Message-ID: <20191030170224.GB965@suse.de>
References: <20191029165832.33606-1-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029165832.33606-1-mark.rutland@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_100228_783863_7C84D88B 
X-CRM114-Status: UNSURE (   6.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: jthierry@redhat.com, linux-parisc@vger.kernel.org, peterz@infradead.org,
 catalin.marinas@arm.com, deller@gmx.de, jpoimboe@redhat.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org,
 James.Bottomley@hansenpartnership.com, takahiro.akashi@linaro.org,
 will@kernel.org, mingo@redhat.com, james.morse@arm.com, jeyu@kernel.org,
 amit.kachhap@arm.com, svens@stackframe.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Whole series, on top of Linus' HEAD 320000e72ec0613e164ce9 (5.4.0-rc5)

[    0.418079] Testing dynamic ftrace: PASSED
[    0.670416] Testing dynamic ftrace ops #1: 
[    0.751367] (1 0 1 0 0) 
[    0.751374] (1 1 2 0 0) 
[    0.857303] (2 1 3 0 281230) 
[    0.857327] (2 2 4 0 281332) PASSED
[    0.930124] Testing dynamic ftrace ops #2: 
[    1.110333] (1 0 1 281189 0) 
[    1.110360] (1 1 2 281329 0) 
[    1.110815] (2 1 3 1 2) 
[    1.110841] (2 2 4 113 114) PASSED
[    1.170653] Testing ftrace recursion: PASSED
[    1.192250] Testing ftrace recursion safe: PASSED
[    1.213819] Testing ftrace regs: PASSED
[    1.235397] Testing tracer nop: PASSED
[    1.235404] Testing tracer wakeup: PASSED
[    1.363921] Testing tracer wakeup_rt: PASSED
[    1.494283] Testing tracer wakeup_dl: PASSED
[    1.623948] Testing tracer function_graph: PASSED

# tracer: function_graph
#
# CPU  DURATION                  FUNCTION CALLS
# |     |   |                     |   |   |   |
 0)               |  wake_up_process() {
 0)               |    try_to_wake_up() {
 0)               |      select_task_rq_fair() {
 0)               |        select_idle_sibling() {
 0)   3.360 us    |          available_idle_cpu();
 0) + 10.940 us   |        }
[...]

The graph tracer is the trickiest part to get working correctly, from my
experience. IOW: everything looks fine.

Whole series,
Tested-by: Torsten Duwe <duwe@suse.de>

	Torsten


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
