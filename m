Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D61F0E38B5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:46:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0LZfmok+wNVpoWnRPnqlZsOic73RKvFdsDXiuU9+6z8=; b=dinSitGb980Mzu
	KULYqZBWpQHYKGMr/2qBo39xfZrbVp05iuw7BqxEzfqz2kCIRheC08nTESkLYVOHJ92zpKqYdBFnu
	nMh9oDsnj54BlOMC5clw2LANBRaEDQMYJYxK/qYA3trdJqnGUqtfSPiL3q4SZL/vqaXLrA3yus6Pz
	yIX6pp0SrWHB63gfUrbPd8McQ3xx0Qcj9q0/Sx/cJfcwTLUCKwjmhan3FndHe09OXRPVG/FNGcD36
	a+F3C2+eFMT/LmO/lz7NiciXu0OhM4LRgTOSvcNTwyKVnSDYLNi/3s9IckW45xTyHM5fwVGN1ARRq
	2f2Zyplt6aBIPiISaWPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgFz-0003he-Oi; Thu, 24 Oct 2019 16:46:39 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNgFq-0003gl-Dw
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:46:31 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 31E891477CBB0;
 Thu, 24 Oct 2019 09:46:26 -0700 (PDT)
Date: Thu, 24 Oct 2019 09:46:23 -0700 (PDT)
Message-Id: <20191024.094623.2182520936177775102.davem@davemloft.net>
To: steven.price@arm.com
Subject: Re: [PATCH v13 09/22] sparc: mm: Add p?d_leaf() definitions
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191024093716.49420-10-steven.price@arm.com>
References: <20191024093716.49420-1-steven.price@arm.com>
 <20191024093716.49420-10-steven.price@arm.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 24 Oct 2019 09:46:26 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_094630_471376_CDCC2A17 
X-CRM114-Status: UNSURE (   6.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark.Rutland@arm.com, x86@kernel.org, arnd@arndb.de,
 ard.biesheuvel@linaro.org, peterz@infradead.org, catalin.marinas@arm.com,
 dave.hansen@linux.intel.com, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 jglisse@redhat.com, mingo@redhat.com, bp@alien8.de, luto@kernel.org,
 hpa@zytor.com, sparclinux@vger.kernel.org, james.morse@arm.com,
 tglx@linutronix.de, will@kernel.org, akpm@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Steven Price <steven.price@arm.com>
Date: Thu, 24 Oct 2019 10:37:03 +0100

> walk_page_range() is going to be allowed to walk page tables other than
> those of user space. For this it needs to know when it has reached a
> 'leaf' entry in the page tables. This information is provided by the
> p?d_leaf() functions/macros.
> 
> For sparc 64 bit, pmd_large() and pud_large() are already provided, so
> add macros to provide the p?d_leaf names required by the generic code.
> 
> CC: "David S. Miller" <davem@davemloft.net>
> CC: sparclinux@vger.kernel.org
> Signed-off-by: Steven Price <steven.price@arm.com>

Acked-by: David S. Miller <davem@davemloft.net>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
