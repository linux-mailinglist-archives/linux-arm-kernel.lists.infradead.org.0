Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 512B41C53A5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 12:50:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GHmte5aEcz06Vgy/zkuvAUpD5kgNNCfCUqErCN9qBJI=; b=iaFRadlcV67Z/G
	9e/tsDlt4vzyvbZGJUzFqiDSKpuYOgWPw3CJdAt5Y9rho42Ojw192N0CLOFykzsI5Z9M+Ya0G6g1m
	5ov7o4Hf3SKNZJeO7Y6yvXJUJ4rfKr9WGlngGLpOYJZxoN7qeO/sN1LHQj0BmzltZ+FOJgK2gQMtZ
	gJ5lIqX81fbL8vEtlKiVGMUmOQoljlDbKSkISyxEY/Lm9FRXJciMD6ldyIuvfnnJcXkqaZgxZsRGU
	uc5C+MA+PQ3C867oOzQ54pfAypWWdCRq3K0qH+DQs2VAMOQLoqSZ2J8PjzHhDs5xHYQ9J+75DN6sV
	AOay9oUpdUS/ABOodnYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVv9m-0006Qf-Sr; Tue, 05 May 2020 10:50:34 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVv9d-0006QL-Vp
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 10:50:27 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 64EB968C4E; Tue,  5 May 2020 12:50:23 +0200 (CEST)
Date: Tue, 5 May 2020 12:50:23 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jann Horn <jannh@google.com>
Subject: Re: [PATCH v2 3/5] coredump: Refactor page range dumping into
 common helper
Message-ID: <20200505105023.GB17400@lst.de>
References: <20200429214954.44866-1-jannh@google.com>
 <20200429214954.44866-4-jannh@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429214954.44866-4-jannh@google.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_035026_174660_5E3656C3 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Rich Felker <dalias@libc.org>, linux-c6x-dev@linux-c6x.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, Oleg Nesterov <oleg@redhat.com>,
 linux-mm@kvack.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Mark Salter <msalter@redhat.com>, linux-fsdevel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Andrew Morton <akpm@linux-foundation.org>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 "Eric W . Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 11:49:52PM +0200, Jann Horn wrote:
> Both fs/binfmt_elf.c and fs/binfmt_elf_fdpic.c need to dump ranges of pages
> into the coredump file. Extract that logic into a common helper.
> 
> Any other binfmt that actually wants to create coredumps will probably need
> the same function; so stop making get_dump_page() depend on
> CONFIG_ELF_CORE.

Why is the #ifdef CONFIG_ELF_CORE in gup.c removed when the only
remaining caller is under the same ifdef?

Otherwise this looks fine to me.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
