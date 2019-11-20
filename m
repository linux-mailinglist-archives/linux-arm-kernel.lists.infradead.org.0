Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10902104424
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 20:18:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQlwZKss+jP+TNHwSqLfUEZdGP1Z95KgwHSoJWJjpKU=; b=OD5eEJ7H962XB2
	rs8Waq23bNBRoLwajuqn9uoZ3DsfR+9fXIjKOg0Mw0BTAsG5MZYDBvLoKBsUxBeziVFSOaTFPtUtL
	g4nsRQukx36nnzoJIJP0qr1SxwLQTi9kFvdlv9yiZHf7x4nd2dqbgwp2PIZ0LplZTLCDhRrdj5P08
	YIYM1VeUovFrZRC+N++p6gKC6dV2QvWf9aApai77WBT/27uFPbzMSsyqCgYOrnZF/KAdH0HDADZsV
	KL01G8zWTf3DUf9yjFzO0Kv1B18mjzaPiQAv0aKBKMV4cGIKyCXYjmGeVpPQX6qJ6JTTLe5oHdSVO
	U7fPuDwElOAjpqEkv2jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXVUk-0006P0-G6; Wed, 20 Nov 2019 19:18:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXVUY-0006OE-Tc
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 19:18:20 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA5C420855;
 Wed, 20 Nov 2019 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574277498;
 bh=7UC1p05lqHNeIwWrK44s+QdCnsy4ZgEBXbsj/3SOi4Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=a9kcqFrnoKUkALPWQpNkZnUzLHHed0WfD+0gr4OxoB3q1iaUI7GT/g/h7g0AbYoQJ
 IUrK+68/Hpw1yEIyq7upZ1+LkOCX11du/YcD1GM2XksuoSYP0yWYOFbjo37YbyBXoI
 s8xnNCm8dmr+NZqua13pcMtSbgOPzMpoYcpK9lUE=
Date: Wed, 20 Nov 2019 19:18:13 +0000
From: Will Deacon <will@kernel.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] ARM: hw_breakpoint: Handle inexact watchpoint addresses
Message-ID: <20191120191813.GD4799@willie-the-truck>
References: <20191019111216.1.I82eae759ca6dc28a245b043f485ca490e3015321@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191019111216.1.I82eae759ca6dc28a245b043f485ca490e3015321@changeid>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_111818_976393_D178B1E5 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Pratyush Anand <panand@redhat.com>,
 Pavel Labath <labath@google.com>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, kinaba@google.com, mka@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 19, 2019 at 11:12:26AM -0700, Douglas Anderson wrote:
> This is commit fdfeff0f9e3d ("arm64: hw_breakpoint: Handle inexact
> watchpoint addresses") but ported to arm32, which has the same
> problem.
> 
> This problem was found by Android CTS tests, notably the
> "watchpoint_imprecise" test [1].  I tested locally against a copycat
> (simplified) version of the test though.
> 
> [1] https://android.googlesource.com/platform/bionic/+/master/tests/sys_ptrace_test.cpp
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> 
>  arch/arm/kernel/hw_breakpoint.c | 96 ++++++++++++++++++++++++---------
>  1 file changed, 70 insertions(+), 26 deletions(-)

Sorry for taking so long to look at this. After wrapping my head around the
logic again, I think it looks fine, so please put it into the patch system
with my Ack:

Acked-by: Will Deacon <will@kernel.org>

One interesting difference between the implementation here and the arm64
code is that I think if you have multiple watchpoints, all of which fire
with a distance != 0, then arm32 will actually report them all whereas
you'd only get one on arm64.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
