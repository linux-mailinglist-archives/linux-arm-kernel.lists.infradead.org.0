Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 897AB1D8B70
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 01:06:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V5S88TS89g5I/tIRWXgfm2qpoSi6XSK0+dh2yvK6eWk=; b=t4og44FZzNDbIw
	OXdM6M6mzUwUaDcgkBJvcugbjiDFOqKTwE4ev2XRqjJy/B+SLi0l+q2r2ffTEcJhYe0thVCm4z9h2
	qu4jyQtzmw4w0gaheEzMJAecTIqwurdzb/03MoybgDjyDbRMp5iar2Gkzq1eWXF3oOY/InPHBvWyP
	+wqKHhQj+MFQtYEToD88xuhGYkNeRwX7mIMf8/Br69CESn2LqMrleU1vM1y7yymnbXSjvMb4BfwcE
	1ZHg+yM/1lG3rRNEwC33qRwgxHUUaCeTbHGyRtnB3g1euGlE4bg2Geg558TgUs6QL6pplx5OX9wKN
	spwW+exUbDBqzCB/si2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaoqH-0003u0-92; Mon, 18 May 2020 23:06:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaooA-0008Ty-CJ
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 23:04:34 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8F94B20829;
 Mon, 18 May 2020 23:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589843069;
 bh=3y2maqwMpp+Fxno0QvrW+iQc56cD0SyjFD4g0jJFpCg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=H74FaOUd54wjDlZb09az6N8cFuIbZUFFR3duuJqEzPhLsfp5wl1hHGY7oiUcZpT7M
 EyResWo6pbxs4LNTvjaTKMBTq7nNwRXCKlRx9AKRRZWyfseR/fsDxjGfGsutv1oLN1
 SeVmi3sGY/2NS3BPHMaZcFgV1LrDYEPlv9GCi2HM=
From: Will Deacon <will@kernel.org>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Zhou Wang <wangzhou1@hisilicon.com>, Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] drivers/perf: hisi: Permit modular builds of HiSilicon
 uncore drivers
Date: Tue, 19 May 2020 00:04:09 +0100
Message-Id: <158982232018.2952.10341166193942655715.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1588820305-174479-1-git-send-email-wangzhou1@hisilicon.com>
References: <1588820305-174479-1-git-send-email-wangzhou1@hisilicon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_160430_472938_62696584 
X-CRM114-Status: UNSURE (   7.98  )
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
Cc: catalin.marinas@arm.com, Will Deacon <will@kernel.org>, linuxarm@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 7 May 2020 10:58:25 +0800, Zhou Wang wrote:
> This patch lets HiSilicon uncore PMU driver can be built as modules.
> A common module and three specific uncore PMU driver modules will be built.
> 
> Export necessary functions in hisi_uncore_pmu module, and change
> irq_set_affinity to irq_set_affinity_hint to pass compile.

Applied to will (for-next/perf), thanks!

[1/1] drivers/perf: hisi: Permit modular builds of HiSilicon uncore drivers
      https://git.kernel.org/will/c/97807325a02b

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
