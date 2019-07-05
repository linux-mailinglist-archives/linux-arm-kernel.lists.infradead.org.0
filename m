Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 769FB60CDA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 22:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qn5DJYyXh/Rba02JV+KPwZCAHnf5ViH7CM+rtef9iOA=; b=QY3ojy5vD4glPJW9KLWrHGi0S
	oeyiWW7nUhwhElz9ioP8HyQ2g0u61GFPOtNhPza63CoSwnPfHcZGw/1aQhKipxCHafYm3b1Lj1w3V
	Cs3Y/Ab/bExrzGvjDe5uA0EW/2+f6GYni/h03uMyk2cRj4ghrshHIfJmQpUYpNUfWMreLqr75uYO5
	KojEGEgvnBg0U+HaZVR+Duf9SHiCBw0hYXQ/5eNYLOyygUdxXqNCtNtIx3vJ+wUKMsNJ3sNbqjwMw
	TFBH2IFs46Y3n/z+ilG1Ob5G+7dWZaWEJXkSZKHOr95bwaHH/JO9VgG6uvRY8ZAzk6wfx07ht7Xet
	LsXfNYFmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjVIk-0004zX-Db; Fri, 05 Jul 2019 20:59:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjVIW-0004zE-IN
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 20:59:13 +0000
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E33A92133F;
 Fri,  5 Jul 2019 20:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562360351;
 bh=blb3ParGsikEh+pFK9nY3PgBtuvBfyUvOjCyCqbNYME=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lK5T1WpJIKPq7+htupiCX8IYnFYw2prXmCoNV96uroJmlSbcnoPtKp+RvmwaYA1lL
 b4Hmcg2m7pxxkjXucAEuovmcYqd9bD9GO4DPOP+KMKQCVrE2ixVY4GQY3EK+hD3u5q
 9/467hFwZ3d49hmMAPVzOy6ksur+rDfhCIFE13l0=
Date: Fri, 5 Jul 2019 16:59:09 -0400
From: Sasha Levin <sashal@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] [STABLE backport 4.9] arm64, vdso: Define
 vdso_{start,end} as array
Message-ID: <20190705205909.GJ10104@sasha-vm>
References: <20190705184726.3221252-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190705184726.3221252-1-arnd@arndb.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_135912_625611_120157E8 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jisheng Zhang <jszhang@marvell.com>, Mark Rutland <mark.rutland@arm.com>,
 Kees Cook <keescook@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, stable@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 05, 2019 at 08:47:20PM +0200, Arnd Bergmann wrote:
>From: Kees Cook <keescook@chromium.org>
>
>Commit dbbb08f500d6146398b794fdc68a8e811366b451 upstream.
>
>Adjust vdso_{start|end} to be char arrays to avoid compile-time analysis
>that flags "too large" memcmp() calls with CONFIG_FORTIFY_SOURCE.
>
>Cc: Jisheng Zhang <jszhang@marvell.com>
>Acked-by: Catalin Marinas <catalin.marinas@arm.com>
>Suggested-by: Mark Rutland <mark.rutland@arm.com>
>Signed-off-by: Kees Cook <keescook@chromium.org>
>Signed-off-by: Will Deacon <will.deacon@arm.com>
>Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>---
>Backported to 4.9, which is lacking the rework from
>2077be6783b5 ("arm64: Use __pa_symbol for kernel symbols")

I've queued both this and the 4.4 backport, thanks!

--
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
