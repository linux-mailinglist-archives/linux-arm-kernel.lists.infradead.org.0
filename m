Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A04ABC10
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 17:18:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9A9DoTYA8EtAXmqMQxZB7cd0skedy+cqWD0r5iLMezs=; b=TvGwTJF/bykL7O
	OUieOA5RaAkeseOaqfdHW3AN20JTcduOXNRf6e0eFjZ6+Hq+8+sv5/5sb4deYgYeEAjVN4ShFtDzI
	OQzBS4XTd+RdMZAule9aniJfWxslp0Jj01vaYpehl5XqoK8Bmac+bw4mZCSWohl1ghwBAk7VK90bF
	Y9Nc1XqRa7YmYch7bSuW2PGVzw7+KrZ3SQ6r6vS3k7zB8VbPCzjrPq2V2lNc9Faj5yq6nvn3PAeVH
	Vmv9zC9OI2YHfC2NDspCt/hvXcxIubXfNiVmXPbzdcWiyF/k1sopxrDvGUWVmMjn7aMHE9ssV7Ia4
	lJqtj4Lu97BfrI19W+TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Fzt-0002k7-K4; Fri, 06 Sep 2019 15:18:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6FzP-0002TB-Ia; Fri, 06 Sep 2019 15:17:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9C4CC1576;
 Fri,  6 Sep 2019 08:17:30 -0700 (PDT)
Received: from [10.1.196.105] (unknown [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5F5F13F59C;
 Fri,  6 Sep 2019 08:17:27 -0700 (PDT)
From: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v3 02/17] arm64, hibernate: use get_safe_page directly
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-3-pasha.tatashin@soleen.com>
Message-ID: <dc6506a0-9b66-f633-8319-9c8a9dc93d4f@arm.com>
Date: Fri, 6 Sep 2019 16:17:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190821183204.23576-3-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_081731_749478_5AC5410D 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: sashal@kernel.org, mark.rutland@arm.com, vladimir.murzin@arm.com,
 corbet@lwn.net, marc.zyngier@arm.com, catalin.marinas@arm.com,
 bhsharma@redhat.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 jmorris@namei.org, linux-mm@kvack.org, ebiederm@xmission.com,
 matthias.bgg@gmail.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

Nit: The pattern for the subject prefix should be "arm64: hibernate:"..
Its usually possible to spot the pattern from "git log --oneline $file".

On 21/08/2019 19:31, Pavel Tatashin wrote:
> create_safe_exec_page is a local function that uses the
> get_safe_page() to allocate page table and pages and one pages
> that is getting mapped.

I can't parse this.

create_safe_exec_page() uses hibernate's allocator to create a set of page table to map a
single page that will contain the relocation code.


> Remove the allocator related arguments, and use get_safe_page
> directly, as it is done in other local functions in this
> file.
... because kexec can't use this as it doesn't have a working allocator.
Removing this function pointer makes it easier to refactor the code later.

(this thing is only a function pointer so kexec could use it too ... It looks like you're
creating extra work. Patch 7 moves these new calls out to a new file... presumably so
another patch can remove them again)

As stand-alone cleanup the patch looks fine, but you probably don't need to do this.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
