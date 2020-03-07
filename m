Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8490E17CBD6
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 05:00:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IcPu+MaD+nDP9+iaPSQpVd5lgFUI9/HdPQ77OAbRaQQ=; b=nXkXykLWAAA52e
	Tmapadk4U3Jcmjg6S0sRy6JkLNm5fBXMWwT5eZM1GkXKf8iMQLsMczvrA0amgPxhk7Z+PLtqmAiCG
	PionZqorFB3pBtw1UDKF78an0oiJLLl0mnuEv1Qj3tweGFVyk0JsGg7mXrXcQlNmPBqpc52psDBEi
	W8gSrLAXonjmbYnm7gGmpu73+65W/gLvpP7aUu2l+xypDSjmpnuCrT0X0W3KwzjrZX1TYro0eKOk5
	6f8g8JrWiTDNiP1kqGg/ZTzLW1KbC+9J9D7EKZNjvGek8X517Hy5Z5U4xzXHLRqkave/dPZhlfTSN
	JbA7AOMfwgQEDi6X70Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAQdZ-0003uA-Nj; Sat, 07 Mar 2020 04:00:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAQdS-0003sq-Ut
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 04:00:24 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B2EA206D5;
 Sat,  7 Mar 2020 04:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583553618;
 bh=oV9dzypff0UA0jPadqQOWi55OmuNhXb+CU9VyawDDys=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SGgOZOJ38TBhL5PMq2t97iVlOYiTJrLFrJZwUFY+PkmX4j8DweXDMSJ8amOibPULY
 dukXRc++p/7grHQAkoJmRzC/WSXOXanM1qDKv14ejj7flbmiHB/27z6x/csQKB/k1O
 jFq+DE3IugyBsaFEvfl6ba2s2SLpEYfJdkqCDacY=
Date: Fri, 6 Mar 2020 20:00:16 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH v3 07/14] powerpc/32: drop get_pteptr()
Message-Id: <20200306200016.6f3865ada0daa68b645fe5d7@linux-foundation.org>
In-Reply-To: <20200227084608.18223-8-rppt@kernel.org>
References: <20200227084608.18223-1-rppt@kernel.org>
 <20200227084608.18223-8-rppt@kernel.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_200023_022796_8B7CF204 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-sh@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, linux-hexagon@vger.kernel.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Jonas Bonn <jonas@southpole.se>, linux-arch@vger.kernel.org,
 Brian Cain <bcain@codeaurora.org>, Marc Zyngier <maz@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 uclinux-h8-devel@lists.sourceforge.jp, Fenghua Yu <fenghua.yu@intel.com>,
 Arnd Bergmann <arnd@arndb.de>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 openrisc@lists.librecores.org, Stafford Horne <shorne@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Tony Luck <tony.luck@intel.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Michael Ellerman <mpe@ellerman.id.au>,
 nios2-dev@lists.rocketboards.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 27 Feb 2020 10:46:01 +0200 Mike Rapoport <rppt@kernel.org> wrote:

> Commit 8d30c14cab30 ("powerpc/mm: Rework I$/D$ coherency (v3)") and
> commit 90ac19a8b21b ("[POWERPC] Abolish iopa(), mm_ptov(),
> io_block_mapping() from arch/powerpc") removed the use of get_pteptr()
> outside of mm/pgtable_32.c
> 
> In mm/pgtable_32.c, the only user of get_pteptr() is __change_page_attr()
> which operates on kernel context and on lowmem pages only.
> 
> Move page table traversal to __change_page_attr() and drop get_pteptr().

People have been changing things in linux-next and the powerpc patches
are hurting.

I'll disable this patch series for now.  Can you please redo
powerpc-32-drop-get_pteptr.patch and
powerpc-add-support-for-folded-p4d-page-tables.patch (and
powerpc-add-support-for-folded-p4d-page-tables-fix.patch)?

Thanks.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
