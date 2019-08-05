Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D95F81E52
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 15:59:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UpXGDSDg0SIFenx27nNkw0NuhQIkElIMlBcVN1ygd4o=; b=g6wmqvGeefbAkG
	hHYdeXq/dCTjWHns6lI//ykQqwEfWUTJbOSRwr93vCFNAkHHk+F9HZpDu3XVd/XE0Tv/Nfr3ynARH
	dfbr4fHWCQETJYpmhozAKM2BC3d8iXxHp6djVxTCbVvts4fy1jgZMz/fHfrcW72s0xMM/esxjjxQh
	a0ePExZ4m/AaGC8HjLM+ASlACtX6A9J3t7uU83YmvxtKn4RfvPJSMPOyTk+MxyP1JGMu4xm1fkD9c
	/6D8JeaP7t0pRE3kmeRY/slNZN2F7OvGhq5lH5kgdFauZW++iQ8JSvlUe7NPLBlKLz8q5C4dqU2HK
	pRBLU32eHd8aFtpjK7Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hudWO-00018V-Vl; Mon, 05 Aug 2019 13:59:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hudWD-000183-IQ
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 13:59:22 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E502120B1F;
 Mon,  5 Aug 2019 13:59:19 +0000 (UTC)
Date: Mon, 5 Aug 2019 09:59:18 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3] tracing: Function stack size and its name mismatch
 in arm64
Message-ID: <20190805095918.3942c45b@gandalf.local.home>
In-Reply-To: <20190805112524.ajlmouutqckwpqyd@willie-the-truck>
References: <20190802094103.163576-1-jiping.ma2@windriver.com>
 <20190802112259.0530a648@gandalf.local.home>
 <20190803082642.GA224541@google.com>
 <20190805112524.ajlmouutqckwpqyd@willie-the-truck>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_065921_636295_B26869D1 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Jiping Ma <jiping.ma2@windriver.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, takahiro.akashi@linaro.org,
 mingo@redhat.com, Joel Fernandes <joel@joelfernandes.org>,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 5 Aug 2019 12:25:25 +0100
Will Deacon <will@kernel.org> wrote:

> So, I completely agree with Steve that we shouldn't be littering the core code
> with #ifdef CONFIG_ARM64, but we probably do need something in the arch backend
> if we're going to do this properly, and that in turn is likely to need a very
> different algorithm from the one currently in use.

And I'm perfectly fine if someone wants to tear up the current
implementation, and make one that has callbacks to arch code (with
defaults for those that don't need it).

But it has to be clean. We worked hard to get rid of most "#ifdef"
being scattered in the kernel, and I'm not bringing it back in my code.

-- Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
