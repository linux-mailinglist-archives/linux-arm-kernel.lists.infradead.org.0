Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B94081B2120
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:09:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KdRKDSU0OaB2ykmkH+4sUjSjmR2yLIZvjtDJ8TzCvvY=; b=gF6yNWDvmOHzTz
	TgG/CINxG1P06rWy3dvdUs/JS1Lgmu6Bigw92VtGE6+eFJ5xHf9YzV8S5+tERqDvanYQhMkgdOq8U
	qD5gdEV4hIZppUdWq9lzhIR/6VbD4HnQqct2ad5wecIgCnblsgfOJbH3kbxbVQxy53UgPPlV94Flz
	F6Rn2YT5LKwN4y4I4E1uhxfcBQOyT3fFNAjeuVk9n1N3zYjw8gg0kEqdCLXQ7mbLyUdlTj2aklPAE
	CQRliBXvufZprXKnCzc9TG8cgjYTaklauKNKTLyHZ7yF7LOCKyP7nwkzq2NNpePTNkbCGu04GNe6j
	I+2GCc+Vb7YLkrKQd7nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQnyV-0008Fq-SL; Tue, 21 Apr 2020 08:09:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQnyM-0008Em-FQ; Tue, 21 Apr 2020 08:09:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0B5261FB;
 Tue, 21 Apr 2020 01:09:37 -0700 (PDT)
Received: from [10.163.1.9] (unknown [10.163.1.9])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 03BAA3F6CF;
 Tue, 21 Apr 2020 01:09:29 -0700 (PDT)
Subject: Re: [PATCH 2/2] mm/thp: Rename pmd_mknotpresent() as pmd_mknotvalid()
To: Will Deacon <will@kernel.org>
References: <1584680057-13753-1-git-send-email-anshuman.khandual@arm.com>
 <1584680057-13753-3-git-send-email-anshuman.khandual@arm.com>
 <20200420210354.GD29998@willie-the-truck>
 <78fee884-78fc-6102-1a37-12106dc21336@arm.com>
 <20200421070703.GC14448@willie-the-truck>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <73e2d20a-4009-c2f3-03b7-fcd29d098491@arm.com>
Date: Tue, 21 Apr 2020 13:39:15 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200421070703.GC14448@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_010938_559117_CA6FE9E0 
X-CRM114-Status: GOOD (  15.05  )
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
Cc: x86@kernel.org, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 linux-kernel@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Russell King <linux@armlinux.org.uk>, Steven Rostedt <rostedt@goodmis.org>,
 linux-mips@vger.kernel.org, linux-mm@kvack.org, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Dave Hansen <dave.hansen@linux.intel.com>,
 Andy Lutomirski <luto@kernel.org>, Vineet Gupta <vgupta@synopsys.com>,
 nouveau@lists.freedesktop.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-snps-arc@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 04/21/2020 12:37 PM, Will Deacon wrote:
> On Tue, Apr 21, 2020 at 04:57:26AM +0530, Anshuman Khandual wrote:
>>
>>
>> On 04/21/2020 02:33 AM, Will Deacon wrote:
>>> On Fri, Mar 20, 2020 at 10:24:17AM +0530, Anshuman Khandual wrote:
>>>> pmd_present() is expected to test positive after pmdp_mknotpresent() as the
>>>> PMD entry still points to a valid huge page in memory. pmdp_mknotpresent()
>>>> implies that given PMD entry is just invalidated from MMU perspective while
>>>> still holding on to pmd_page() referred valid huge page thus also clearing
>>>> pmd_present() test. This creates the following situation which is counter
>>>> intuitive.
>>>>
>>>> [pmd_present(pmd_mknotpresent(pmd)) = true]
>>>>
>>>> This renames pmd_mknotpresent() as pmd_mknotvalid() reflecting the helper's
>>>> functionality more accurately while changing the above mentioned situation
>>>> as follows. This does not create any functional change.
>>>>
>>>> [pmd_present(pmd_mknotvalid(pmd)) = true]
>>>>
>>>> This is not applicable for platforms that define own pmdp_invalidate() via
>>>> __HAVE_ARCH_PMDP_INVALIDATE. Suggestion for renaming came during a previous
>>>> discussion here.
>>>
>>> Bikeshed alert: maybe pmd_mkinvalid() would be better, given that this is
>>> a one-trick pony for pmdp_invalidate()?
>>
>> I had thought about making it pmd_mkinvalid() earlier. But as we were replacing
>> pmd_mknotpresent(), hence went with similar pattern pmd_mknotvalid() which was
>> originally suggested by Catalin. There is an existing pte_mknotpresent() in arc
>> platform as well. I dont have a very strong opinion either way, will be happy
>> to rename. But then still wondering if we really need to.
> 
> I just think that having pmdp_invalidate() call pmd_mkinvalid() makes a lot
> of sense and, since this is a pure renaming patch, then that's worth taking
> into consideration.

Sure np, will do.

> 
> If you go with pmd_mkinvalid(), then:
> 
> Acked-by: Will Deacon <will@kernel.org>
> 
> Will
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
