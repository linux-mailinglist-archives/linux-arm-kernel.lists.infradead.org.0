Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB07C1C08FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 23:16:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xK2okZJZpT9tQnYXPz9ctB3QbvvjFJGkyYYW3tN0kus=; b=S7Ytc/f9t4RbyT
	wB9dUgUBxW67NyQFSNH0aee4qByOgJ0+5csatao60n/VULM5Fyn7r9uyG58wxQYYznuB2E6wazhSv
	mV8ItqHF+ko4ne5dfGoywYJCPRl3j99zIQBXAhZ3h7SLPZY1XHOa1nZjDGCWyxikBciS4NdGYax18
	lEZlID/ZVo5pn6KAAqUez/ZSIjqh68WjiNeR/G5Y4mVJ05w53XH2/S/ktnHUZp7G/kOpL4JDtvyAy
	U/0PeNBr1rE42A/p6wAqEq1ZR40reGNP5TdcsMpzAC8WggljdNqI0IIzedTH/BH7GMHvgNzf9phHk
	iGWXIPsSHDuQOLG4J6Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUGXE-0001Ue-3t; Thu, 30 Apr 2020 21:15:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUGUA-0005KX-D4
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 21:12:48 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B8077208D6;
 Thu, 30 Apr 2020 21:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588281164;
 bh=BY3Hgo5t4BTs38VcTzig7+9uhGShsbCQBADRcW8MfS8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BzGmNngEM9g0/HwISElCO250AL+9P/5KZvtcVwjFIitnPlFlPOZX0Tz239VASq2k5
 LfaBZfkUMeFGlvMhbk1vGNY+7P6Pixmjc3OCL037Cm1vb+mF+X9zS+U8FqncNJlEq3
 LiySUpgQjPhWCwD7p23SqUFXZ8vhTrD18b4kJ9Zs=
From: Will Deacon <will@kernel.org>
To: mark.rutland@arm.com,
	Tang Bin <tangbin@cmss.chinamobile.com>
Subject: Re: [PATCH] perf:Avoid duplicate printouts
Date: Thu, 30 Apr 2020 22:12:27 +0100
Message-Id: <158827969499.122898.13692306035235615025.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200402115940.4928-1-tangbin@cmss.chinamobile.com>
References: <20200402115940.4928-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_141246_596954_8C3BCECE 
X-CRM114-Status: UNSURE (   6.90  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2 Apr 2020 19:59:40 +0800, Tang Bin wrote:
> Because platform_get_irq() has dev_err(),so this place
> should be removed.

Applied to arm64 (for-next/perf), thanks!

[1/1] drivers/perf: arm_dsu_pmu: Avoid duplicate printouts
      https://git.kernel.org/arm64/c/5810f00ade49

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
