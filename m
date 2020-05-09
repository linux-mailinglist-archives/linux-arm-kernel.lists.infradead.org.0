Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0CC1CC258
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 17:18:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aG9xWFyThwJY8kdOlasSgLC+GMGIGwfdN40F+rUIWeE=; b=bxJu5oEU/y+hev
	b/SvlNR50T8pBwJf44B8y+wPV9Be6v9kkdUc6B225knAD0sQAOVTjqJpRzhjDWV1kWDa8lPjcbT8S
	YGysPFtpNQQ+rnaicbLqBjqENEv+9yuLv69N6BKS+XCC/sO/bB2XxqkB9oTWSvfY4c+IbYY8By3po
	3WttIqSCzpTDsjKojke8ANYAquu8uVJWHKz7XEOMoLOPGA2yM6R5JGWmDlKZS7jxT2LiscyTDZhmt
	v7R7RFM9kDW1JokHF2E76P5CmYDB8eJzzdd/YPgQQjpPwwillG949D6b4HqnvvLRxqQt3vJt56uwJ
	r+9jprxcxlTS1Ako1NEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXRFV-0003WQ-Ey; Sat, 09 May 2020 15:18:45 +0000
Received: from out02.mta.xmission.com ([166.70.13.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXRFN-0003TB-8A; Sat, 09 May 2020 15:18:39 +0000
Received: from in01.mta.xmission.com ([166.70.13.51])
 by out02.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.90_1)
 (envelope-from <ebiederm@xmission.com>)
 id 1jXRF4-0002RL-57; Sat, 09 May 2020 09:18:18 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in01.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1jXRF3-00073s-70; Sat, 09 May 2020 09:18:18 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: David Hildenbrand <david@redhat.com>
References: <20200501165701.24587-1-james.morse@arm.com>
 <40b07632-b044-d1cd-96a2-81eec3da93e7@redhat.com>
Date: Sat, 09 May 2020 10:14:49 -0500
In-Reply-To: <40b07632-b044-d1cd-96a2-81eec3da93e7@redhat.com> (David
 Hildenbrand's message of "Fri, 1 May 2020 19:26:39 +0200")
Message-ID: <8736892l92.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1jXRF3-00073s-70; ; ; mid=<8736892l92.fsf@x220.int.ebiederm.org>;
 ; ; hst=in01.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX1/78Q2ZzN+DiVqOLa3MERJ4/bRoZCWRbLY=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa06.xmission.com
X-Spam-Level: *
X-Spam-Status: No, score=1.0 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,XM_Multi_Part_URI
 autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.5000]
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 *  1.2 XM_Multi_Part_URI URI: Long-Multi-Part URIs
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa06 0; Body=1 Fuz1=1 Fuz2=1]
X-Spam-DCC: ; sa06 0; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: *;David Hildenbrand <david@redhat.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 596 ms - load_scoreonly_sql: 0.08 (0.0%),
 signal_user_changed: 12 (2.0%), b_tie_ro: 10 (1.7%), parse: 1.34
 (0.2%), extract_message_metadata: 14 (2.4%), get_uri_detail_list: 2.6
 (0.4%), tests_pri_-1000: 4.8 (0.8%), tests_pri_-950: 1.30 (0.2%),
 tests_pri_-900: 1.06 (0.2%), tests_pri_-90: 163 (27.4%), check_bayes:
 161 (27.0%), b_tokenize: 9 (1.5%), b_tok_get_all: 9 (1.4%),
 b_comp_prob: 3.1 (0.5%), b_tok_touch_all: 136 (22.9%), b_finish: 0.93
 (0.2%), tests_pri_0: 278 (46.7%), check_dkim_signature: 0.64 (0.1%),
 check_dkim_adsp: 2.1 (0.4%), poll_dns_idle: 106 (17.8%), tests_pri_10:
 2.2 (0.4%), tests_pri_500: 114 (19.1%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH] kexec: Discard loaded image on memory hotplug
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_081837_289183_AA1829A0 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [166.70.13.232 listed in wl.mailspike.net]
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
Cc: Baoquan He <bhe@redhat.com>, kexec@lists.infradead.org, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, Dave Young <dyoung@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

David Hildenbrand <david@redhat.com> writes:

> On 01.05.20 18:57, James Morse wrote:
>> On x86, the kexec payload contains a copy of the current memory map.
>> If memory is added or removed, this copy of the memory map becomes
>> stale. Getting this wrong may prevent the next kernel from booting.
>> The first kernel may die if it tries to re-assemble the next kernel
>> in memory that has been removed.
>> 
>> Discard the loaded kexec image when the memory map changes, user-space
>> should reload it.
>> 
>> Kdump is unaffected, as it is placed within the crashkernel reserved
>> memory area and only uses this memory. The stale memory map may affect
>> generation of the vmcore, but the kdump kernel should be in a position
>> to validate it.
>> 
>> Signed-off-by: James Morse <james.morse@arm.com>
>> ---
>> This patch obsoletes:
>>  * kexec/memory_hotplug: Prevent removal and accidental use
>> https://lore.kernel.org/linux-arm-kernel/20200326180730.4754-1-james.morse@arm.com/
>> 
>>  kernel/kexec_core.c | 40 ++++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 40 insertions(+)
>> 
>> diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
>> index c19c0dad1ebe..e1901e5bd4b5 100644
>> --- a/kernel/kexec_core.c
>> +++ b/kernel/kexec_core.c
>> @@ -12,6 +12,7 @@
>>  #include <linux/slab.h>
>>  #include <linux/fs.h>
>>  #include <linux/kexec.h>
>> +#include <linux/memory.h>
>>  #include <linux/mutex.h>
>>  #include <linux/list.h>
>>  #include <linux/highmem.h>
>> @@ -22,10 +23,12 @@
>>  #include <linux/elf.h>
>>  #include <linux/elfcore.h>
>>  #include <linux/utsname.h>
>> +#include <linux/notifier.h>
>>  #include <linux/numa.h>
>>  #include <linux/suspend.h>
>>  #include <linux/device.h>
>>  #include <linux/freezer.h>
>> +#include <linux/pfn.h>
>>  #include <linux/pm.h>
>>  #include <linux/cpu.h>
>>  #include <linux/uaccess.h>
>> @@ -1219,3 +1222,40 @@ void __weak arch_kexec_protect_crashkres(void)
>>  
>>  void __weak arch_kexec_unprotect_crashkres(void)
>>  {}
>> +
>> +/*
>> + * If the memory layout changes, any loaded kexec image should be evicted
>> + * as it may contain a copy of the (now stale) memory map. This also means
>> + * we don't need to check the memory is still present when re-assembling the
>> + * new kernel at machine_kexec() time.
>> + */
>
> Onlining/offlining is not a change of the memory map.

Phrasing it that way is non-sense.  What is important is memory
available in the system.  A memory map is just a reflection upon that,
a memory map is not the definition of truth.

So if this notifier reflects when memory is coming and going on the
system this is a reasonable approach.  

Do these notifiers might fire for special kinds of memory that should
only be used for very special purposes?

This change with the addition of some filters say to limit taking action
to MEM_ONLINE and MEM_OFFLINE looks reasonable to me.  Probably also
filtering out special kinds of memory that is not gernally useful.

Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
