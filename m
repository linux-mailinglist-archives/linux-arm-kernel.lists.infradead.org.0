Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C96A1B2D07
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 18:46:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QRYcKynQC0DvGdBKYN+kvSqjE6/JqyxDhQCvq70FyCo=; b=eNQohQSwWiR7Ed
	Qqw9I0E7Wt8mh3Ete9pvhZ1AERxozAslyh6yV9M9xjk5ikmv1cIPboqey0JDIKeX0MX7IpiPieTAI
	UG3MFUywYivWxYyAKKACiknB8mGQo8Xv1LQv1t5/oH+ERMgTh8pEQH2Qwe8ntMW/8bO2ArAzYow0U
	yucB5j2M8ds72PHF88kN5u8ULci/Z1YR4goenjlsJui0TphqypmCWJpWdwdCZpvLjN/rNpcuCMoq4
	s+6hnR/Iz+fXKHtULFbCRpIDJq+F3q1CgRMNUyfxV3CfOZwXVYC58Op/1L96g4s3gQUKWnW5v9Vyk
	6lWQNPqWlOxne3eFhXZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQw23-0003W2-Af; Tue, 21 Apr 2020 16:45:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQw1s-0003UQ-HD
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 16:45:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 141481FB;
 Tue, 21 Apr 2020 09:45:47 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7EE323F73D;
 Tue, 21 Apr 2020 09:45:45 -0700 (PDT)
Date: Tue, 21 Apr 2020 17:45:43 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH v3 20/23] fs: Allow copy_mount_options() to access
 user-space in a single pass
Message-ID: <20200421164543.GC12076@gaia>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-21-catalin.marinas@arm.com>
 <20200421152948.GC23230@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421152948.GC23230@ZenIV.linux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_094548_629614_4733FF71 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 04:29:48PM +0100, Al Viro wrote:
> On Tue, Apr 21, 2020 at 03:26:00PM +0100, Catalin Marinas wrote:
> > While this function is not on a critical path, the single-pass behaviour
> > is required for arm64 MTE (memory tagging) support where a uaccess can
> > trigger intra-page faults (tag not matching). With the current
> > implementation, if this happens during the first page, the function will
> > return -EFAULT.
> 
> Details, please.

With the arm64 MTE support (memory tagging extensions, see [1] for the
full series), bits 56..59 of a pointer (the tag) are checked against the
corresponding tag/colour set in memory (on a 16-byte granule). When
copy_mount_options() gets such tagged user pointer, it attempts to read
4K even though the user buffer is smaller. The user would only guarantee
the same matching tag for the data it masses to mount(), not the whole
4K or to the end of a page. The side effect is that the first
copy_from_user() could still fault after reading some bytes but before
reaching the end of the page.

Prior to commit 12efec560274 ("saner copy_mount_options()"), this code
had a fallback to byte-by-byte copying. I thought I'd not revert this
commit as the copy_mount_options() now looks cleaner.

[1] https://lore.kernel.org/linux-arm-kernel/20200421142603.3894-1-catalin.marinas@arm.com/

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
