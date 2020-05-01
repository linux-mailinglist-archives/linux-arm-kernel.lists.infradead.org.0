Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25ED41C1AE8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 18:56:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4bmvqcjRU6Eua9/I8Hh8Us2SdhV7+a6jqqdg85Wnhk=; b=VBMXtiRPoyj3JB
	fN3fAqmbq4PL8ML7/4dLVlrPksfSJUAHEn0gnx/cXNKjqsUaixyW0Lc+NeT+y9wxiosj/Nb3v/wc7
	g60jPh74g8I9swhUAvgqJrJ55lH9Ypfrbma9lIjTFmT7KPUiOvlZ7QVvSbV0hEmwcokYMM5n55lXO
	9LHj23iruf2Y08MG5EUPiNTulrqA9s7dNu5c6/smxnd0eQdZjIEbRDzzGevjNqY478ud0RcNY6BQN
	P9dSLT/k6DDgunj60601tLoT13VJm3Jb0byIXE9TcGF6yZPLRDaU2TaAPmxuSursJ253XVjoq4pUm
	gBhfLv14jfBQKsSydaPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUYxD-0002T3-9h; Fri, 01 May 2020 16:55:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUYwo-0002G4-5b; Fri, 01 May 2020 16:55:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CEF7E30E;
 Fri,  1 May 2020 09:55:33 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E9F33F305;
 Fri,  1 May 2020 09:55:32 -0700 (PDT)
From: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
To: David Hildenbrand <david@redhat.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-2-james.morse@arm.com>
 <87d088h4k8.fsf@x220.int.ebiederm.org>
 <a694cea6-4449-c77a-98f7-bd7a49cf47fc@arm.com>
 <87y2qn1r18.fsf@x220.int.ebiederm.org>
 <a29beedb-750b-b838-6c2a-6e47ade2186a@redhat.com>
Message-ID: <b5642228-c95b-7aca-b454-a07dde3d1866@arm.com>
Date: Fri, 1 May 2020 17:55:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <a29beedb-750b-b838-6c2a-6e47ade2186a@redhat.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_095534_260658_5C308F04 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi guys,

On 22/04/2020 17:40, David Hildenbrand wrote:
>>>> Usually somewhere in the loaded image
>>>> is a copy of the memory map at the time the kexec kernel was loaded.
>>>> That will invalidate the memory map as well.
>>>
>>> Ah, unconditionally. Sure, x86 needs this.
>>> (arm64 re-discovers the memory map from firmware tables after kexec)

> Does this include hotplugged DIMMs e.g., under KVM?

If you advertise hotplugged memory to the guest using ACPI, yes.

We don't have a practical mechanism to pass 'fact's about the platform between kernels,
instead we rely on those facts being discoverable, or described by firmware.


>>>> All of this should be for a very brief window of a few seconds, as
>>>> the loaded kexec image is quite short.
>>>
>>> It seems I'm the outlier anticipating anything could happen between
>>> those syscalls.
>>
>> The design is:
>> 	sys_kexec_load()
>> 	shutdown scripts
>>         sys_reboot(LINUX_REBOOT_CMD_KEXEC);
>>
>> There are two system call simply so that the shutdown scripts can run.
>> Now maybe someone somewhere does something different but that is not
>> expected.

[...]

> Yes, and AFAIK, memory blocks which hold the reserved crashkernel area
> can usually not get offlined and, therefore, the memory cannot get removed.

The crashkernel area on arm64 will always land in un-removable memory. We set PG_Reserved
on it too.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
