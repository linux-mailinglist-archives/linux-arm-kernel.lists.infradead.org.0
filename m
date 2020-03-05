Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F205217A4F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 13:12:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/LgXJiFYMZWbORLKkgNXI6CRzoLleEMvylQ6Kd9yEAU=; b=gPAE7AqvMFof3A
	rjbUntRIxl63pyC5CIefotODKVe9xcS4161Xt5TlrWbjsmxtjmqouNN7wKMnEyhMoo8Ty/DD4SW4W
	ZxZY8imkrcKp77YIfAvyRe/k83yikJpuEqNGSuWsdei2xwD1Ayy3rLWN+09nC2+EvH09DFmxHFhC2
	qj2E5NmSuJN292OXcWVzRVH3VCGgax3ZadDh1ghcTnNzv+3HmRqT1FhBKPpskpSj33y5CT8JGolcd
	KaTqJcOa/ma0IqjdK7dt/1Ztkb4TfR+gCJqqhckaONKW3tEJN2TdQgjwZzQboZGwJ/hvZ9AIQ0CUT
	3luMv+SAdc/hDbn4/p9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9pMA-0005JQ-06; Thu, 05 Mar 2020 12:12:02 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9pM2-0005IX-A8
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 12:11:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 0F5D6B080;
 Thu,  5 Mar 2020 12:11:50 +0000 (UTC)
Subject: Re: [PATCH 2/2] mm/vma: Introduce VM_ACCESS_FLAGS
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <1583391014-8170-1-git-send-email-anshuman.khandual@arm.com>
 <1583391014-8170-3-git-send-email-anshuman.khandual@arm.com>
From: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <b3ab3943-7c3a-9c0a-17ba-bea254c5d5df@suse.cz>
Date: Thu, 5 Mar 2020 13:11:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1583391014-8170-3-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_041154_495805_3048E15C 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Nick Hu <nickhu@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, hughd@google.com,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 linux-kernel@vger.kernel.org, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Rob Springer <rspringer@google.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Mark Salter <msalter@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Guan Xuetao <gxt@pku.edu.cn>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/5/20 7:50 AM, Anshuman Khandual wrote:
> There are many places where all basic VMA access flags (read, write, exec)
> are initialized or checked against as a group. One such example is during
> page fault. Existing vma_is_accessible() wrapper already creates the notion
> of VMA accessibility as a group access permissions. Hence lets just create
> VM_ACCESS_FLAGS (VM_READ|VM_WRITE|VM_EXEC) which will not only reduce code
> duplication but also extend the VMA accessibility concept in general.
> 
> Cc: Russell King <linux@armlinux.org.uk>
> CC: Catalin Marinas <catalin.marinas@arm.com>
> CC: Mark Salter <msalter@redhat.com>
> Cc: Nick Hu <nickhu@andestech.com>
> CC: Ley Foon Tan <ley.foon.tan@intel.com>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
> Cc: Yoshinori Sato <ysato@users.sourceforge.jp>
> Cc: Guan Xuetao <gxt@pku.edu.cn>
> Cc: Dave Hansen <dave.hansen@linux.intel.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Rob Springer <rspringer@google.com>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linuxppc-dev@lists.ozlabs.org
> Cc: linux-s390@vger.kernel.org
> Cc: devel@driverdev.osuosl.org
> Cc: linux-mm@kvack.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>

Reviewed-by: Vlastimil Babka <vbabka@suse.cz>

Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
