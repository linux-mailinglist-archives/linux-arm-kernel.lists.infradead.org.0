Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 824C433EED
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 08:21:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5uQtk09oD1zp9MfO4hrr+BrluoudnPs23YUp5maRlxU=; b=qnDRSGlC48ar5JN8rWD8GUvP9
	TfBef5va6D8rC8v25RwITRl8KyiEVDQmTzWO+SxByki2p9uP9+v/aN1Og5cwwIbdKXz3K1GMLvld5
	qQ3dWzBEk9RCdI2bEpVBXNjKS5UOeYvW4Lq9r1y7aCLRrAYejSiT6YPjcfKmJWkHCWe8qCyUpTyiC
	Wiyr31/QeUz3I8kEuQQXtHJhLtwNL0libUK7tOXYFsbgwWnAAsXTKtNqBb60K7Jgl3c+CXRl6Pm9C
	NwCitb0UfrZK0R2fJgHuZZLcLzMFJWZi9e5CmJogeebmOuwpxW/X5XnzDHtlcWFAlFsiwA63QJs17
	XoUu/5NTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY2oi-0005lM-9M; Tue, 04 Jun 2019 06:21:04 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY2ob-0005kQ-8l; Tue, 04 Jun 2019 06:20:58 +0000
X-Originating-IP: 79.86.19.127
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 49FAD1C0009;
 Tue,  4 Jun 2019 06:20:38 +0000 (UTC)
Subject: Re: [PATCH v4 05/14] arm64, mm: Make randomization selected by
 generic topdown mmap layout
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20190526134746.9315-1-alex@ghiti.fr>
 <20190526134746.9315-6-alex@ghiti.fr>
 <20190603174001.GL63283@arrakis.emea.arm.com>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <e8dab94d-679e-8898-033e-3b5dbf0cc044@ghiti.fr>
Date: Tue, 4 Jun 2019 02:20:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190603174001.GL63283@arrakis.emea.arm.com>
Content-Language: sv-FI
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_232057_471318_5F3F8CF5 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 James Hogan <jhogan@kernel.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Paul Burton <paul.burton@mips.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-mips@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, Luis Chamberlain <mcgrof@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/3/19 1:40 PM, Catalin Marinas wrote:
> On Sun, May 26, 2019 at 09:47:37AM -0400, Alexandre Ghiti wrote:
>> This commits selects ARCH_HAS_ELF_RANDOMIZE when an arch uses the generic
>> topdown mmap layout functions so that this security feature is on by
>> default.
>> Note that this commit also removes the possibility for arm64 to have elf
>> randomization and no MMU: without MMU, the security added by randomization
>> is worth nothing.
> Not planning on this anytime soon ;).


Great :) Thanks for your time,

Alex


>
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
