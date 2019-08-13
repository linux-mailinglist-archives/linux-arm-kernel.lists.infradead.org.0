Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B80B8B60A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 12:59:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OdRv46mUMPnm3s6PN+0AsRudCA2Zqj0FGgnuJW9Vq0Q=; b=cRU1fe/0y9yktr
	uBrySH1V13aBy556ZTl6zPrAFs3sRJHnQmDlDnj90cgQH4y1NL45hEVdsuLqgk1kAGoDAfIgmUZk5
	np2j10v4Qg4dueFxHCv7gKvvY7goFKl220Le3GSZNjvXozr35ZWsE2xAvJs373NLLUQWqPucgkGyU
	3BcHXkJW9xsGAsb8dl+cLKItDp6JnN5bWKXXTqaqELdEqsAzvdonzvu22HDTBtE26poKjLRlMtSMc
	giYSzKBVpvzv520VAtx0Ytutw1DJoLrpIXs67QTheQxyWdkCpmT5HAPADu4MoEvUJNaYq3N6wqVOj
	rByQhn2WCg6TaA3dXgXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxUWF-0001us-MG; Tue, 13 Aug 2019 10:59:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxUW1-0001uX-J0
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 10:58:58 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E0C402067D;
 Tue, 13 Aug 2019 10:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565693936;
 bh=MaBEiztxgmjdBeftAH2vB9aH9XPEk9n5ETdjdNyHA7s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DgOGa4E7NGp30R3O6Motf5xhP/4uQWkkct3p8WloQsWNB0yxpvj1CoVTwcsrTICfB
 y75jazLM5uJqJIFJmGAcGinq/peFElvzM/ojRylSHjKM6aRpky6zAxUZ419ziKswtH
 qJECBDo6epBCOx20+w85aHHrijinGhk1KbQyOCzQ=
Date: Tue, 13 Aug 2019 11:58:52 +0100
From: Will Deacon <will@kernel.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: "arm64/for-next/core" causes boot panic
Message-ID: <20190813105852.ovk5gtzddwlsm4ly@willie-the-truck>
References: <1565646695.8572.6.camel@lca.pw>
 <20190813090200.h2rz4xphgnb5j5bc@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813090200.h2rz4xphgnb5j5bc@willie-the-truck>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_035857_674003_E557B307 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-arm-kernel@lists.infradead.org, Andrey Konovalov <andreyknvl@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 10:02:01AM +0100, Will Deacon wrote:
> On Mon, Aug 12, 2019 at 05:51:35PM -0400, Qian Cai wrote:
> > Booting today's linux-next on an arm64 server triggers a panic with
> > CONFIG_KASAN_SW_TAGS=y pointing to this line,
> 
> Is this the only change on top of defconfig? If not, please can you share
> your full .config?
> 
> > kfree()->virt_to_head_page()->compound_head()
> > 
> > unsigned long head = READ_ONCE(page->compound_head);
> > 
> > The bisect so far indicates one of those could be bad,
> 
> I guess that means the issue is reproducible on the arm64 for-next/core
> branch. Once I have your .config, I'll give it a go.

FWIW, I've managed to reproduce this using defconfig + SW_TAGS on
for-next/core, so I'll keep investigating.

Will

--->8

[    0.000000] Unable to handle kernel paging request at virtual address 0037fe0007580d08
[    0.000000] Mem abort info:
[    0.000000]   ESR = 0x96000004
[    0.000000]   EC = 0x25: DABT (current EL), IL = 32 bits
[    0.000000]   SET = 0, FnV = 0
[    0.000000]   EA = 0, S1PTW = 0
[    0.000000] Data abort info:
[    0.000000]   ISV = 0, ISS = 0x00000004
[    0.000000]   CM = 0, WnR = 0
[    0.000000] [0037fe0007580d08] address between user and kernel address ranges
[    0.000000] Internal error: Oops: 96000004 [#1] PREEMPT SMP
[    0.000000] Modules linked in:
[    0.000000] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.3.0-rc3-00049-gf964cbd07098 #1
[    0.000000] Hardware name: linux,dummy-virt (DT)
[    0.000000] pstate: 20000085 (nzCv daIf -PAN -UAO)
[    0.000000] pc : kfree+0x44/0x6ac
[    0.000000] lr : apply_wqattrs_prepare+0x390/0x3fc
[    0.000000] sp : ffff9000541d7d00
[    0.000000] x29: ffff9000541d7d80 x28: 4dff0001de034e08 
[    0.000000] x27: b2ff0001de040000 x26: 0000000000000004 
[    0.000000] x25: c1ff0001de034c28 x24: 4dff0001de034e00 
[    0.000000] x23: a8ff0001de034d00 x22: c1ff0001de020a00 
[    0.000000] x21: a8ff0001de034d08 x20: 0000000000000000 
[    0.000000] x19: c1ff0001de034c00 x18: 0000000000000000 
[    0.000000] x17: 0000000000000000 x16: 0000000000000000 
[    0.000000] x15: 1ffff6b000000000 x14: ffff900053ca87e4 
[    0.000000] x13: ffff900052539444 x12: ffff90005253ce48 
[    0.000000] x11: 00000000000000c1 x10: ffff80001de034c1 
[    0.000000] x9 : fffffdffffe00008 x8 : 0138000007780d00 
[    0.000000] x7 : ffffffffffffffff x6 : a8ff0001de034d28 
[    0.000000] x5 : 0000000000000040 x4 : 0000000000000008 
[    0.000000] x3 : 0000000000000100 x2 : ffff9000541ddf68 
[    0.000000] x1 : a8ff0001de034d08 x0 : 4dff0001de034e00 
[    0.000000] Call trace:
[    0.000000]  kfree+0x44/0x6ac
[    0.000000]  apply_wqattrs_prepare+0x390/0x3fc
[    0.000000]  apply_workqueue_attrs+0x70/0xe4
[    0.000000]  alloc_workqueue+0x514/0x728
[    0.000000]  workqueue_init_early+0x36c/0x4a0
[    0.000000]  start_kernel+0x1d0/0x46c
[    0.000000] Code: f2bffc09 d346fd08 f2dfbfe9 927acd08 (f8696909) 
[    0.000000] random: get_random_bytes called from oops_exit+0x4c/0x78 with crng_init=0
[    0.000000] ---[ end trace 0000000000000000 ]---


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
