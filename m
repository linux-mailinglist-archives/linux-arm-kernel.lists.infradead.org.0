Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D74238EF2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 17:25:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zPNB3qtD/QnClCETo63LytY+68ZqJTYbV8qpWLsRhCQ=; b=jpTYwHMwXJFgfO
	7BmNlV9zlcJxgYh7XkVk2GFb7Cod6yVSa5ClgU3a/OzQZHbjmd5PgnMziFW4D14EwAzkQEs+w+ZAj
	2uquqzIdn3WhfBSx6ch9dHKNPgs4LYBCXX5Ugdao4PDXD+oe8jPMRAGW0WXHgOd8+NWyNkYVC03Xt
	WG7lrR4i/swzELiu2fXH5gjYFjx+ENFxwF9m2bnZyBpZzalI1cEcb4jVsM/+qUEaGlPlL/KQkPoxh
	osJRJ6YuWmUwBDw9DjRPpApl31oz9o4PUgPee/p8cabFMR+2H+3oOIrfEHzTgdTf8b51e+CAy8dDs
	eqAq5xEUETi5hK9HFOhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZGkD-0006qI-UJ; Fri, 07 Jun 2019 15:25:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZGk5-0006px-G1
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 15:25:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D8A39346;
 Fri,  7 Jun 2019 08:25:20 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D270C3F718;
 Fri,  7 Jun 2019 08:25:19 -0700 (PDT)
Date: Fri, 7 Jun 2019 16:25:17 +0100
From: Will Deacon <will.deacon@arm.com>
To: Qian Cai <cai@lca.pw>
Subject: Re: "arm64: Silence gcc warnings about arch ABI drift" breaks clang
Message-ID: <20190607152517.GC19862@fuggles.cambridge.arm.com>
References: <1559920965.6132.56.camel@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559920965.6132.56.camel@lca.pw>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_082521_582782_255592C4 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-efi@vger.kernel.org, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 07, 2019 at 11:22:45AM -0400, Qian Cai wrote:
> The linux-next commit "arm64: Silence gcc warnings about arch ABI drift" [1]
> breaks clang build where it screams that unknown option "-Wno-psabi" and
> generates errors below,

So that can be easily fixed with cc-option...

> [1] https://lore.kernel.org/linux-arm-kernel/1559817223-32585-1-git-send-email-D
> ave.Martin@arm.com/
> 
> ./drivers/firmware/efi/libstub/arm-stub.stub.o: In function
> `install_memreserve_table':
> ./linux/drivers/firmware/efi/libstub/arm-stub.c:73: undefined reference to
> `__efistub___stack_chk_guard'
> ./linux/drivers/firmware/efi/libstub/arm-stub.c:73: undefined reference to
> `__efistub___stack_chk_guard'
> ./linux/drivers/firmware/efi/libstub/arm-stub.c:93: undefined reference to
> `__efistub___stack_chk_guard'
> ./linux/drivers/firmware/efi/libstub/arm-stub.c:93: undefined reference to
> `__efistub___stack_chk_guard'
> ./linux/drivers/firmware/efi/libstub/arm-stub.c:94: undefined reference to
> `__efistub___stack_chk_fail

... but this looks unrelated. Are you saying you don't see these errors if
you revert Dave's patch?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
