Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A483D704E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 09:40:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JsZ5UCbvhGCKCjSxWpykgmqD5yBia1SbOUTiTVqn688=; b=Uj/det21BQd9qE
	DeaYdaDRMwCrqgCA57npWYWuOm2gCHOGEkMw0yJkSpvhbXTkbA8DQID0YWOyOojREg/l7bCYe78Rq
	f7z5Q0b7CKjZYzRlo8xslZYFh+ufIwK35JBumIiUHtdCcUv89JM2Kj0OgFUZSINgiC4pvhBml95qz
	sW5SJdLufPtF/RHGe4NIr6IV+BlrY6+aFRSYy0I2qnaW3nmecUhRYuyHF/WIH0eozq+5W+j35uN1s
	SVmY/99ksXqojiiDZZnnBg5Y9aF+CdJq0o+TlfnNT5bv/b/HJCLAZaMnUT2g/zSh0XkHAMeRZKAEB
	NEyVkdXbd1sUEYNI42cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKHQy-0000eM-4k; Tue, 15 Oct 2019 07:39:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKHQq-0000do-9O
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 07:39:49 +0000
Received: from [172.20.185.47] (93-45-246-98.ip104.fastwebnet.it
 [93.45.246.98])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 50AF42086A;
 Tue, 15 Oct 2019 07:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571125187;
 bh=Aiq4w1ejH9LHSG6B6V0s1DON3wVfA/z9L1lQfdXmY+I=;
 h=Date:In-Reply-To:References:Subject:To:CC:From:From;
 b=M+GjnbMhe3yGCa2sT26UJ4R6+UiE1G1OcWOxUrS3VbGz7fd6M/ribalKGa4ZYg2Bp
 CmAadnUHywHRphF8K0v8pYPzp9pXbUqLqaGV1hBHHG9WgirUpSqwt3l76qG2WENg3n
 5Ws8QKMNXmGpjnE7ETjOqWad+sTfiwJBBqocy8CI=
Date: Tue, 15 Oct 2019 09:39:41 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <20191015004659.l5xbxv4mlpzqpsdl@willie-the-truck>
References: <1569657746-31672-1-git-send-email-rppt@kernel.org>
 <20191015004659.l5xbxv4mlpzqpsdl@willie-the-truck>
MIME-Version: 1.0
Subject: Re: [PATCH v4] arm64: use generic free_initrd_mem()
To: Will Deacon <will@kernel.org>
From: Mike Rapoport <rppt@kernel.org>
Message-ID: <2AB94CD5-3374-4A15-9422-689EE2549FC6@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_003948_346676_42E4F05F 
X-CRM114-Status: UNSURE (   8.85  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, Laura Abbott <labbott@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On October 15, 2019 2:46:59 AM GMT+02:00, Will Deacon <will@kernel.org> wrote:
>On Sat, Sep 28, 2019 at 11:02:26AM +0300, Mike Rapoport wrote:
>> From: Mike Rapoport <rppt@linux.ibm.com>
>> 
>> arm64 calls memblock_free() for the initrd area in its implementation
>of
>> free_initrd_mem(), but this call has no actual effect that late in
>the boot
>> process. By the time initrd is freed, all the reserved memory is
>managed by
>> the page allocator and the memblock.reserved is unused, so the only
>purpose
>> of the memblock_free() call is to keep track of initrd memory for
>debugging
>> and accounting.
>> 
>> Without the memblock_free() call the only difference between arm64
>and the
>> generic versions of free_initrd_mem() is the memory poisoning.
>> 
>> Move memblock_free() call to the generic code, enable it there
>> for the architectures that define ARCH_KEEP_MEMBLOCK and use the
>generic
>> implementation of free_initrd_mem() on arm64.
>> 
>> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
>> ---
>> 
>> v4:
>> * memblock_free() aligned area around the initrd
>
>Looks straightforward to me:
>
>Acked-by: Will Deacon <will@kernel.org>

 Can it go via arm64 tree?

>Will


-- 
Sincerely yours,
Mike

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
