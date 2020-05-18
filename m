Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEAE1D8B66
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 01:05:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4emQeW34TDAD+L41ISJ4Q+O5grC9AfkBX1k27zbtG6c=; b=m3sPxKkk7efO3F
	Ar2R1hzyvHmqjGcV+Fr0KWY1nAoAgrFWQ/i1QOxx9veBpmVZLQhnT9KOw8OcDnkIbXXbo5AZdWvVF
	asw0qZsDGNj7QTpq+JGVU9+OucCeEjqp8JkGaZuCNbwBoHLTCnBfEiF5gmaJR4/+pIwShUBK4K4Y4
	/+6pixG10keILCiPCObQ3PQDUrvODxQmsZ+4jL3v6euIVfMXgEGPsGVEVMQKlY4HZ6DwK0qF2L9bY
	l6vkykzBsPro8GNz/AtTNk4vaC6lGQNaAnZ/I8G/Eo1GjuLabPBt8cRQck+QnY2Er6QdANhxActXs
	ZvuhymVvN3hA2RLtK/4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaooe-00008r-Q9; Mon, 18 May 2020 23:05:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaoo0-0008Jt-GB
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 23:04:24 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 97D012081A;
 Mon, 18 May 2020 23:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589843060;
 bh=FivWSGA5nKr+8BVNRlfId66BwqKvfngHdf0PvsDY1Gk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VHXwzWPUne9lNRLze2eVuRdHvkAB3cprbaBFfewEjJY46dL74bSD6c43meXBwefFz
 8Ff13vNT0YVAVYK6ZuLCiCBb/hKd8p1jjr5DR7uackt2nEf7mrkdz1hmvgIJkixlww
 eBns6vIZvKw6GHKnaVdx54+jKGUPcy+BwXaxDiHs=
From: Will Deacon <will@kernel.org>
To: Daniel Thompson <daniel.thompson@linaro.org>,
 Douglas Anderson <dianders@chromium.org>,
 Jason Wessel <jason.wessel@windriver.com>
Subject: Re: [PATCH] arm64: Call debug_traps_init() from trap_init() to help
 early kgdb
Date: Tue, 19 May 2020 00:04:04 +0100
Message-Id: <158982068109.260335.5582031208894337234.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200513160501.1.I0b5edf030cc6ebef6ab4829f8867cdaea42485d8@changeid>
References: <20200513160501.1.I0b5edf030cc6ebef6ab4829f8867cdaea42485d8@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_160420_564028_86418586 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, sumit.garg@linaro.org,
 liwei391@huawei.com, "Eric W. Biederman" <ebiederm@xmission.com>,
 "Paul E. McKenney" <paulmck@kernel.org>,
 Alexios Zavras <alexios.zavras@intel.com>, Enrico Weigelt <info@metux.net>,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 jinho lim <jordan.lim@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 kgdb-bugreport@lists.sourceforge.net, Zenghui Yu <yuzenghui@huawei.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, Allison Randal <allison@lohutok.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 May 2020 16:06:37 -0700, Douglas Anderson wrote:
> A new kgdb feature will soon land (kgdb_earlycon) that lets us run
> kgdb much earlier.  In order for everything to work properly it's
> important that the break hook is setup by the time we process
> "kgdbwait".
> 
> Right now the break hook is setup in debug_traps_init() and that's
> called from arch_initcall().  That's a bit too late since
> kgdb_earlycon really needs things to be setup by the time the system
> calls dbg_late_init().
> 
> [...]

Applied to arm64 (for-next/misc), thanks!

[1/1] arm64: Call debug_traps_init() from trap_init() to help early kgdb
      https://git.kernel.org/arm64/c/b322c65f8ca3

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
