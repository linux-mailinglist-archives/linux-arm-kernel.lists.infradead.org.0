Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C915B1CFC5E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 19:40:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jJNw548w742+y3TN7W0J0xMeodmROS8xR/lTCH7CfNc=; b=SZXb7AUiTjCEW0
	svujq1bpZyceF5nuNE6KUqtvhHtiWY6CPteTF+MQ9jhSmiPCX3KGYt6ueMxFb3cxvodx/pQOUlxwl
	tOjzHvE34tPzXDZaIZNZUyi85OSgQ1ym+rvww5GKQ+df5v5RU5dmPX01uhxy9mzU7RwZeJVjERo6E
	LV67by1DGaLQKGhUNmwnJ1NX9mRmkZ6JTnv6Y0ojxBPmFlGn2HAx7oPjttlWo1YGdmH5RWsHcf+Xo
	Py3sqgLVNrzmgBSEyKGqX78TMcYlFy84vhlKwXDztaU0TEhfWiFCWOHkqAm5L779Sr0TLNtmR52Vk
	VSzxbAxwGSmhhDB2MX3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYYte-0001w6-7I; Tue, 12 May 2020 17:40:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYYtW-0001vO-VQ
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 17:40:44 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 49F55206B9;
 Tue, 12 May 2020 17:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589305242;
 bh=KNugUuSCtmSWA3oV1xUorvRj6aYlzYpaxuIWh3okW8U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1e8tsDo9Csi+i5JNdXQOGNU1QCBCpyHU84wVKNviR1nCgQLJdZH5kmZ92Ix/onOvg
 R04O6LOiz+23HhjIfLhi81FTm1vmO4Z5F9Gi6SzmzNSMmBPq7nqOHVz6DLOJG2rgov
 RZapUWDY2vKtmxortcRbUVo/QCiZoog2J1bJXVc8=
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v2] arm64: bti: Fix support for userspace only BTI
Date: Tue, 12 May 2020 18:40:36 +0100
Message-Id: <158928497101.114591.14091490976224597416.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200512113950.29996-1-broonie@kernel.org>
References: <20200512113950.29996-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_104043_034429_AA58B5CD 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 May 2020 12:39:50 +0100, Mark Brown wrote:
> When setting PTE_MAYBE_GP we check system_supports_bti() but this is
> true for systems where only CONFIG_BTI is set causing us to enable BTI
> on some kernel text. Add an extra check for the kernel mode option,
> using an ifdef due to line length.

Applied to arm64 (for-next/bti), thanks!

[1/1] arm64: bti: Fix support for userspace only BTI
      https://git.kernel.org/arm64/c/e70b3b544798

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
