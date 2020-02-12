Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB30915A8E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 13:16:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=crTrSg3xPkYi3rFCbuwovCS85fjxc9AjTws+LpaVruc=; b=QNy8/jdsGqlMSl
	ZUBUbHbm389Kcv9u+UVfOXjVkYlSgW5R8At0I7uIdcOUieRHK1bFZxwSyEJYp+8Art0TMiTUT2bgq
	o5GShxJ24TpDpuKgVKy0kbHEAmJpG+tYaenEwJ5mP7vYmNSbcJQ3XNzLQplUMkxNlpDxouR1kMibN
	f2Mv5qazqs5rSnFQRdvFk9Gl2lNitIJZx+rQPe0smaaRWh6nMg0/g7jLQ0GtPL45+Hts4RBD3TIsH
	rcn39W//c40WB3QAFmdVMcCfDi2Zbpzg+H/T1ZdiAZuUXDd5IHjjncu4jWAch2CAnHtEzTXX5tz9n
	87zTrlBog6mtt07PNnJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1qwN-0007pL-Gn; Wed, 12 Feb 2020 12:16:27 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1qwF-0007om-Lv
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 12:16:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581509778;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4w2cIOIGw1HoVz/WUq0BjNTIHQBA2v9eFc0Bu90fD18=;
 b=CQ0MHcAJ6SQOZWvuVRpwInrjQRMsfsvaZDIEA7Ux9ruSYM3+2wDABztZhKKhbslPWop0dN
 jCBG2x66WLUjp5eBTR5vDTr5wXewuA/nd9w+zynYyI9Q5WoksT44qE3QLqUCJygXUllQI8
 eyRu6XP2K9ayHd8OOtji5hgaK5AVN6g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-419-YqeJu8ahNyuQ5F4EDMGqbA-1; Wed, 12 Feb 2020 07:16:12 -0500
X-MC-Unique: YqeJu8ahNyuQ5F4EDMGqbA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DA015107ACC5;
 Wed, 12 Feb 2020 12:16:09 +0000 (UTC)
Received: from krava (ovpn-204-247.brq.redhat.com [10.40.204.247])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A9D15C110;
 Wed, 12 Feb 2020 12:16:06 +0000 (UTC)
Date: Wed, 12 Feb 2020 13:16:03 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH RFC 5/7] perf pmu: Support matching by sysid
Message-ID: <20200212121603.GJ183981@krava>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <1579876505-113251-6-git-send-email-john.garry@huawei.com>
 <20200210120759.GG1907700@krava>
 <63799909-067b-e5f4-dcf1-9ba1ec145348@huawei.com>
 <20200211134704.GB93194@krava>
 <2a51ce93-fa68-8088-f31f-2fd692253335@huawei.com>
 <f72c7f52-a285-e052-8656-de2940a6fc7f@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f72c7f52-a285-e052-8656-de2940a6fc7f@huawei.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_041619_799485_63DB7D99 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, "liuqi \(BA\)" <liuqi115@huawei.com>,
 ak@linux.intel.com, suzuki.poulose@arm.com, peterz@infradead.org,
 robin.murphy@arm.com, linuxarm@huawei.com, acme@kernel.org,
 linux-kernel@vger.kernel.org, zhangshaokun@hisilicon.com,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, james.clark@arm.com,
 namhyung@kernel.org, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 10:08:44AM +0000, John Garry wrote:

SNIP

> > > 
> > > I wish to see some test for all this.. I can only think about having
> > > 'test' json files compiled with perf and 'perf test' that looks them
> > > up and checks that all is in the proper place
> > 
> > OK, let me consider this part for perf test support.
> 
> I will note that perf test has many issues on my arm64 board:
> 
> do] password for john:
>  1: vmlinux symtab matches kallsyms                       : Skip
>  2: Detect openat syscall event                           : FAILED!
>  3: Detect openat syscall event on all cpus               : FAILED!
>  4: Read samples using the mmap interface                 : FAILED!
>  5: Test data source output                               : Ok
>  6: Parse event definition strings                        : FAILED!
>  7: Simple expression parser                              : Ok
>  8: PERF_RECORD_* events & perf_sample fields             : Ok
>  9: Parse perf pmu format                                 : Ok
> 10: DSO data read                                         : Ok
> 11: DSO data cache                                        : Ok
> 12: DSO data reopen                                       : Ok
> 13: Roundtrip evsel->name                                 : Ok
> 14: Parse sched tracepoints fields                        : FAILED!
> 15: syscalls:sys_enter_openat event fields                : FAILED!

looks like some issue with tracepoints

> 16: Setup struct perf_event_attr                          : Skip
> 17: Match and link multiple hists                         : Ok
> 18: 'import perf' in python                               : Ok
> 21: Breakpoint accounting                                 : Ok
> 22: Watchpoint                                            :
> 22.1: Read Only Watchpoint                                : Ok
> 22.2: Write Only Watchpoint                               : Ok
> 22.3: Read / Write Watchpoint                             : Ok
> 22.4: Modify Watchpoint                                   : Ok
> 23: Number of exit events of a simple workload            : Ok
> 24: Software clock events period values                   : Ok
> 25: Object code reading                                   : Ok
> 26: Sample parsing                                        : Ok
> 27: Use a dummy software event to keep tracking           : Ok
> 28: Parse with no sample_id_all bit set                   : Ok
> 29: Filter hist entries                                   : Ok
> 30: Lookup mmap thread                                    : Ok
> 31: Share thread maps                                     : Ok
> 32: Sort output of hist entries                           : Ok
> 33: Cumulate child hist entries                           : Ok
> 34: Track with sched_switch                               : Ok
> 35: Filter fds with revents mask in a fdarray             : Ok
> 36: Add fd to a fdarray, making it autogrow               : Ok
> 37: kmod_path__parse                                      : Ok
> 38: Thread map                                            : Ok
> 39: LLVM search and compile                               :
> 39.1: Basic BPF llvm compile                              : Skip
> 39.2: kbuild searching                                    : Skip
> 39.3: Compile source for BPF prologue generation          : Skip
> 39.4: Compile source for BPF relocation                   : Skip

Skip is fine ;-)

> 40: Session topology                                      : FAILED!

I'd expect that one to fail if we don't have special
code to support arm in there

> 41: BPF filter                                            :
> 41.1: Basic BPF filtering                                 : Skip
> 41.2: BPF pinning                                         : Skip
> 41.3: BPF prologue generation                             : Skip
> 41.4: BPF relocation checker                              : Skip
> 42: Synthesize thread map                                 : Ok
> 43: Remove thread map                                     : Ok
> 44: Synthesize cpu map                                    : Ok
> 45: Synthesize stat config                                : Ok
> 46: Synthesize stat                                       : Ok
> 47: Synthesize stat round                                 : Ok
> 48: Synthesize attr update                                : Ok
> 49: Event times                                           : Ok
> 50: Read backward ring buffer                             : FAILED!

hum, I thought this was generic code that would work across archs

> 51: Print cpu map                                         : Ok
> 52: Merge cpu map                                         : Ok
> 53: Probe SDT events                                      : Ok
> 54: is_printable_array                                    : Ok
> 55: Print bitmap                                          : Ok
> 56: perf hooks                          umber__scnprintf                : Ok
> 59: mem2node                                              : Ok
> 60: time utils                                            : Ok
> 61: Test jit_write_elf                                    : Ok
> 62: maps__merge_in                                        : Ok
> 63: DWARF unwind                                          : Ok
> 64: Check open filename arg using perf trace + vfs_getname: FAILED!
> 65: Add vfs_getname probe to get syscall args filenames   : FAILED!
> 66: Use vfs_getname probe to get syscall args filenames   : FAILED!

with these we have always a problem across archs,
it's tricky to make script test that works everywhere :-\

> 67: Zstd perf.data compression/decompression              : Ok
> 68: probe libc's inet_pton & backtrace it with ping       : Skip
> john@ubuntu:~/linux$
> 
> I know that the perf tool definitely has issues for system topology for
> arm64, which I need to check on.
> 
> Maybe I can conscribe help internally to help check the rest...

the json/alias test would be also to make sure the x86 still works,
so regardless of some tests failing on arm, I think it's still better
to have that test

thanks,
jirka


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
