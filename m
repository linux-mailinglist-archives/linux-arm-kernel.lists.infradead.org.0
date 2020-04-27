Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 855801BAE4B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 21:44:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=anSCAudoCM245QK3zYfW2ML2VTezgbSAcFLS0LYKo4M=; b=YN5k3Le/B0RILl
	wToMAo012157Bln5jAWmGoecuWENyAtX/HgCS5/39E8MQ7uAHTfnie1nvC/jZItcBZGbkmW0NV6Ra
	7HJy8ysq0Jla2fouPEf7gETrDBsUJMaKgSfBGKmGeziQW13hB3DBxy2XQ7Y4orrbUkFkbQZIOBIoW
	iDGmOKV8FdPx8OD6xY3Jte1YN1NBYE/eq8UIvnrBvuzvA8Q8Y8FVqXlR9Glj9omv2WQleyQBrIpiA
	M8XWH3RN4H8wPAxao4CzTwwif3CEYB7M3c2E9xaUEASLj8UOTpmx+7Zy9AGH+3r9NOQamSkB+YYQC
	fsG1Rb0Vt+g07F0Yn2WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9g5-0004A2-Au; Mon, 27 Apr 2020 19:44:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9eO-0002sM-HQ; Mon, 27 Apr 2020 19:42:46 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B71652078C;
 Mon, 27 Apr 2020 19:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588016562;
 bh=pHSFHwxnqBXxHCqPQAkxUYpCjZ/3lJQClrx+8qthDWQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=BF4/l8XrQ02299gpcli0FvwYPMF2hN3ZsowBym+oFxLCbmSBv6c8XKoMoCpSUs1mZ
 vLIh3Da+bxY+s/o+fJHms7WltoegzNJwopJah4TrVT7ox2ZS8JuHiDXeMfsgI8/UYZ
 lVmACC6y+QfktaRHOt+ND6M6DoBoUgRMxPoCw4LQ=
Date: Mon, 27 Apr 2020 12:42:41 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH 1/4] mm: add DEBUG_WX support
Message-Id: <20200427124241.28adefc19cfddcf83f75d03c@linux-foundation.org>
In-Reply-To: <CANXhq0rW5j+uAymXbfsND9AXHYvM+fPUX9YYYRVXY-Y1u6yo0Q@mail.gmail.com>
References: <cover.1587455584.git.zong.li@sifive.com>
 <23980cd0f0e5d79e24a92169116407c75bcc650d.1587455584.git.zong.li@sifive.com>
 <20200427074915.GA11787@willie-the-truck>
 <CANXhq0rW5j+uAymXbfsND9AXHYvM+fPUX9YYYRVXY-Y1u6yo0Q@mail.gmail.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_124244_673425_985D1E23 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: hpa@zytor.com, catalin.marinas@arm.com, x86@kernel.org,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 linux-mm@kvack.org, mingo@redhat.com, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, bp@alien8.de,
 linux-riscv <linux-riscv@lists.infradead.org>, Will Deacon <will@kernel.org>,
 tglx@linutronix.de, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 27 Apr 2020 16:47:47 +0800 Zong Li <zong.li@sifive.com> wrote:

> > > +       This is useful for discovering cases where the kernel is leaving
> > > +       W+X mappings after applying NX, as such mappings are a security risk.
> > > +       This check also includes UXN, which should be set on all kernel
> > > +       mappings.
> >
> > "UXN" is the name of a bit in the arm64 page-table descriptors, so this
> > should be reworded now that it's in generic help text.
> >
> 
> It's exactly. Sorry for missing the statement.
> 
> Hi Andrew,
> Shall I send a next version patch to fix it? It should be "This is
> useful for discovering cases where the kernel is leaving W+X mappings
> after applying NX, as such mappings are a security risk." here.

I'll add this:

--- a/mm/Kconfig.debug~mm-add-debug_wx-support-fix
+++ a/mm/Kconfig.debug
@@ -128,8 +128,8 @@ config DEBUG_WX
 	help
 	  Generate a warning if any W+X mappings are found at boot.
 
-	  This is useful for discovering cases where the kernel is leaving
-	  W+X mappings after applying NX, as such mappings are a security risk.
+	  This is useful for discovering cases where the kernel is leaving W+X
+	  mappings after applying NX, as such mappings are a security risk.
 	  This check also includes UXN, which should be set on all kernel
 	  mappings.
 
_


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
