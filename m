Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D9E1BAF2F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 22:18:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V61a3UU6wxq8BH3AtryFvCrBp0JUELuskLH2rTMpctI=; b=hPs2U9mzx33zQZ
	YNe9Hend+J4PDLS4W/v6t5adUhbBDdNrn+Et/Th4XbmdI5Sd1WqTOUlzLDaxvuKdqat/Mu5HjmT0V
	fCdn4VlgxHpWM+Sef9vqOC0c+HjF4HpmUySAlpm0CiZaXzR0AOl4VUSn3p+ScdvKgdBSZ0r5KHJo5
	C8SiXAUUUTv6xVM7m6ss2hcjHsX6F3eYUy8apJYUY2MJZBMeKNBDzDIHK0hKucILSkec/X8vgPDdd
	YT/R6bf2Q1iPK4HUPfmZUIIxpUEE4xyhWFtLdQARfL42UBVeAvsOkWzOz1RxuvI+7/b66IqyHCipT
	BgsBEjishnrE4cMiW1YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTACl-0000gg-KG; Mon, 27 Apr 2020 20:18:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTACb-0000fV-3n; Mon, 27 Apr 2020 20:18:06 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB8ED2072D;
 Mon, 27 Apr 2020 20:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588018684;
 bh=FZznVs7DKImH4bMp84GuK30NCRT+ks2QZb0zw61Aw2o=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=0dPVwJ/H9B7uUoDHVQh+JzhGMmouLB2JEnhplDQk7I3xuAgcbSFK60H1piEfCx5Sx
 t+jKABLjlMrQXuoJB1Wv7UdopSfsHYSYtmSlzWb93RhaIDNLpcyXt7Avmd+0pazZfN
 HbeEsAjiXXS9v7hdBuMksmtrvhaQ+taOUTUIOuQQ=
Date: Mon, 27 Apr 2020 13:18:02 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Mike Kravetz <mike.kravetz@oracle.com>
Subject: Re: [PATCH v3 2/4] hugetlbfs: move hugepagesz= parsing to arch
 independent code
Message-Id: <20200427131802.3d132055a59535a0e6780e9f@linux-foundation.org>
In-Reply-To: <b1f04f9f-fa46-c2a0-7693-4a0679d2a1ee@oracle.com>
References: <20200417185049.275845-1-mike.kravetz@oracle.com>
 <20200417185049.275845-3-mike.kravetz@oracle.com>
 <7583dfcc-62d8-2a54-6eef-bcb4e01129b3@gmail.com>
 <5a380060-38db-b690-1003-678ca0f28f07@oracle.com>
 <b1f04f9f-fa46-c2a0-7693-4a0679d2a1ee@oracle.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_131805_174092_614EC5FC 
X-CRM114-Status: GOOD (  10.21  )
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
Cc: linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Peter Xu <peterx@redhat.com>,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, Mina Almasry <almasrymina@google.com>,
 linux-s390@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Longpeng <longpeng2@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Vasily Gorbik <gor@linux.ibm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Nitesh Narayan Lal <nitesh@redhat.com>, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, Sandipan Das <sandipan.osd@gmail.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, linuxppc-dev@lists.ozlabs.org,
 "David S.Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 27 Apr 2020 12:09:47 -0700 Mike Kravetz <mike.kravetz@oracle.com> wrote:

> Previously, a check for hugepages_supported was added before processing
> hugetlb command line parameters.  On some architectures such as powerpc,
> hugepages_supported() is not set to true until after command line
> processing.  Therefore, no hugetlb command line parameters would be
> accepted.
> 
> Remove the additional checks for hugepages_supported.  In hugetlb_init,
> print a warning if !hugepages_supported and command line parameters were
> specified.

This applies to [4/4] instead of fixing [2/4].  I guess you'll
straighten that out in v4?

btw, was
http://lkml.kernel.org/r/CADYN=9Koefrq9H1Y82Q8nMNbeyN4tzhEfvDu5u=sVFjFZCYorA@mail.gmail.com
addressed?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
