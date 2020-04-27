Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC6B1B995E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 10:06:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qdl7nZo4F6DQQ3YjLEFay3rTpJ1qm5G0gB4gFW0gRi4=; b=UC3HZp/3Hl+4Yv
	ocJyPuI/bkMw8FF8hv692mgw1S4KlQqZ/ynCQNSbICr6VKFu3c+Je9I2xA7f4pgQMy8Ka5eOlIIa5
	fsJk36Z3MTFhmp5VLEwmNrI6Vdqz3fYTf+msfZlKQtWSxkaQcukwoMX74kgXTXdpO9uBJi2K1oKKq
	W7+Gyn54dWdz9vTXZ1Ke+/znJGj4dzoevhzsMPWpxblF7K4wmNNQbxqcclQx2hQ0ODPkUxs15dwo4
	Rm6k3HwFU3zAab6V6tKGXQIgVN6R4yGPr38xHDkNcnC4fLAUst8vLi8AA4ejQ7dFRp7eQZ2Pzyqn6
	MGIvX8g8u8s87J8RsI7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSymM-0002ov-NB; Mon, 27 Apr 2020 08:06:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSymE-0002o0-DM
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 08:06:07 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF6B92063A;
 Mon, 27 Apr 2020 08:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587974766;
 bh=zj/dt/5c6Yckt6vj2KqloJRjdxQZ9M9SfMwirnXwTA0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OOt6fQ6WwTbtIjRR6IazVyZ/dpJ29bgrWHVtpS2D1cyDvdJmrC90eJzUqyFEE/Xui
 bcorH73RJWhIdoKnpb/jlE/aPzd66uiDRGzRI7wifeMIeHlc1Y8J6PsRpSTAG+CBcq
 DKPGfWzxC/ns3xKK3b2QoOFlEO4KyUvfV/tC2hLc=
Date: Mon, 27 Apr 2020 09:06:00 +0100
From: Will Deacon <will@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH] kbuild: remove unused AS assignment
Message-ID: <20200427080600.GC11787@willie-the-truck>
References: <20200427003019.2401592-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427003019.2401592-1-masahiroy@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_010606_471066_63214CE9 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-kbuild@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Joel Stanley <joel@jms.id.au>, Nathan Huckleberry <nhuck15@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 09:30:19AM +0900, Masahiro Yamada wrote:
> $(AS) is not used anywhere, hence commit aa824e0c962b ("kbuild: remove
> AS variable") killed it.
> 
> Remove the left-over code in arch/{arm,arm64}/Makefile.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  arch/arm/Makefile   | 2 --
>  arch/arm64/Makefile | 2 --
>  2 files changed, 4 deletions(-)

Acked-by: Will Deacon <will@kernel.org>

(If you post the arm64 part as a separate patch, I can pick it up)

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
