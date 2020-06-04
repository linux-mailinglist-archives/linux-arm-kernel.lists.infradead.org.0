Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 315B01EE962
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 19:26:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=793KiF+SW1JyUE4B2heRu8bBV9nvUOnIqtnMnOzcZxw=; b=i9m/+YWuVohXpz
	I7jcT/+NqR39AERLoQKnvLqKWTWUBeZwgeKuWEfSivSeCf54zOIMFY7JxxMKFhsA39giBf2IVMnVB
	cT2TQtWdJ3IfnuLdi23pZsxi9bx1Qa8GPv5uoNE13px1mHs7X41eNxN7ge4MLxHQqATY7wdObR65M
	uFH/sTaq41P+H3NSSyzvlo8fi2YDnF50Gtq9/nFqh6TAHibEBMB81VSfstdVq5jjDQK5bdIZuBVWQ
	MpZVFGsjNamJGzpTNTsKytGUbAuoLWXcsYnWB+zqOCififDFtH4mzLv0Em7+/JyTNugPX9H9ZwhFU
	ZHxfmy/E8dxRc9qkWUPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgtd3-0002Gw-Bs; Thu, 04 Jun 2020 17:26:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgtcu-0002GF-Ft
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 17:26:01 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2EABB206C3;
 Thu,  4 Jun 2020 17:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591291560;
 bh=+YGZBT+L5I64bnBefLQhWP3bXKiB90McJIuhcQd/wJk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SR1UcK+KmcithgQoOZkzGUjPXVF3HupyIu1ldz0F90jAIJDBBiG8kgWvpdcabiPbV
 L5CJLRcrl+EMx8FSg/4x0ToGjphfdfhv0UsGdoSVT+qCCmXaKHFhoZEncxBnjtZPCD
 dkjpPXfyyOJrcHf1Em7jp8SncjQaEAKdZsylReGk=
From: Will Deacon <will@kernel.org>
To: catalin.marinas@arm.com, mhiramat@kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 gregkh@linuxfoundation.org, paulmck@kernel.org, tglx@linutronix.de,
 dianders@chromium.org
Subject: Re: [PATCH] arm64: debug: mark a function as __init to save some
 memory
Date: Thu,  4 Jun 2020 18:25:41 +0100
Message-Id: <159128408989.162070.15969733421063303923.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200531110015.598607-1-christophe.jaillet@wanadoo.fr>
References: <20200531110015.598607-1-christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_102600_549400_D42AB90B 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel-janitors@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 31 May 2020 13:00:15 +0200, Christophe JAILLET wrote:
> 'debug_monitors_init()' is only called via 'postcore_initcall'.
> It can be marked as __init to save a few bytes of memory.

Applied to arm64 (for-next/core), thanks!

[1/1] arm64: debug: mark a function as __init to save some memory
      https://git.kernel.org/arm64/c/5311ebfb612f

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
