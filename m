Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A451C51A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 11:15:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CiSDnhxY0aqnh1+wGLcefUCYNILeAmMGnPmifxa5MvA=; b=J+7HPXFWuj+sLy
	0fM+RfFDrDiswIe64z4k/MTmFe93Rs2lZnwNlXaWTy0CmdyqrU+kXmTaANZtbypT2dGZZrJ8Nxdp0
	qw67TPwr7nFwqPzAChe6x5fFu9ETuef9+YcHYEGyCiTvziDjhBuagi0zueVaMAN1Al3qz71OLHS3M
	EMpP9LDqTivyFMAe4Q36+Ls87WeQFB44ay29NlsRz04bZf/BuJAjb0WfABalRW+NCQ3rwRNS1YVAO
	ql90STPZ/Yxwf+a2p6gTYRAgtm7x04au0tnTewCDlyAKOBGAUOLlZJ45bQW81rXknEPEbWyZB3kHQ
	O1r3yxQZqqeJl9HZyYSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVtfX-0000vP-MQ; Tue, 05 May 2020 09:15:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVtfQ-0000MA-LI
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 09:15:09 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DB648206B8;
 Tue,  5 May 2020 09:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588670107;
 bh=LFCOhBZ2JXq+HjxopdFF9pzjWV4HAjWPfLIwdt/IzZg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qv5WFqGQDQNiWtvs6q5cQkz16BbMRgCl9LZXtEwg6q97wa+gDtaNYrDVUy03EPRA4
 MoZryUSHybG5LBq3LYRHtr0Ov2XKabAMjRr7GyRSGZSjInidX9ifkOat2QJdbdyLlu
 /7BWJc/oMzkmk8UHzE6vrPRIJPHR0XvfLO/4rEwg=
Date: Tue, 5 May 2020 10:15:03 +0100
From: Will Deacon <will@kernel.org>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>
Subject: Re: [PATCH] arm64: atomics: Fix the issue on xchg when switch to
 atomic instruction
Message-ID: <20200505091503.GC16980@willie-the-truck>
References: <1588669355-38741-1-git-send-email-zhangshaokun@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588669355-38741-1-git-send-email-zhangshaokun@hisilicon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_021508_749402_19D7B3CA 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yuqi Jin <jinyuqi@huawei.com>, Andrew Murray <amurray@thegoodpenguin.co.uk>,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 05:02:35PM +0800, Shaokun Zhang wrote:
> From: Yuqi Jin <jinyuqi@huawei.com>
> 
> Since commit addfc38672c7 ("arm64: atomics: avoid out-of-line ll/sc atomics"),
> it has provided inline implementations of both LSE and ll/sc and used a static
> key to select between them, which allows the compiler to generate better
> atomics code.
> However, xchg still uses the original method which would fail to switch to
> the atomic instruction correctly, Let's fix this issue.

Please can you elaborate on the failure mode? The current code looks alright
to me, so I'm clearly missing something. What's broken?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
