Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8D7154B4C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 19:38:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m3mAHpK9mQOZFgLO84Gy9PgJFTwnehSRfA2JcmNVu5Q=; b=kaCU0Pn2EKppSg
	g/pcKI6D07bAsUhv2Kv8ix1WEo8QStEeytvZn9dPXZhCUhkGN3zKtil9UjCUw1jUELhZz4EDXdGGF
	0lKeR7RkYuAQXqqs5AaSz0knsngtBA+wY4+wds97MWcr09DToV2UrFLnFH61jdzxmiKgRBjRoyM7O
	2n/q8e4TankYaY1suOuzR+xdhXKJ8qOjzrykklEChLX6Q3Ll6D7qjF710cHyJdhlvXSBmiSGJOkVn
	8kI6rBMU/U51fLIh31Xjuc9kJGqxC2GP5GITmMoZnIyqJp1bQpTAGDdh91t0XjpUDqMkY20eA+rEx
	egIvCWFnd8DIYQDgZk+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izm2p-0002xF-33; Thu, 06 Feb 2020 18:38:31 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izm2i-0002wv-95
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 18:38:25 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 10:38:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; d="scan'208";a="279752683"
Received: from linux.intel.com ([10.54.29.200])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Feb 2020 10:38:22 -0800
Received: from [10.251.88.4] (abudanko-mobl.ccr.corp.intel.com [10.251.88.4])
 by linux.intel.com (Postfix) with ESMTP id D2C645803E3;
 Thu,  6 Feb 2020 10:38:15 -0800 (PST)
Subject: Re: [PATCH v6 01/10] capabilities: introduce CAP_PERFMON to kernel
 and user space
To: Stephen Smalley <sds@tycho.nsa.gov>, James Morris <jmorris@namei.org>,
 Serge Hallyn <serge@hallyn.com>, Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>
References: <576a6141-36d4-14c0-b395-8d195892b916@linux.intel.com>
 <a4c5da70-b6d1-b133-9b64-34e164834b03@linux.intel.com>
 <5be0f67c-17e2-7861-37f3-a0f8a82be8f0@tycho.nsa.gov>
 <1bcb4cb1-98c4-cc1a-b8e3-fd8a0e1e606f@linux.intel.com>
 <06cdca0e-65f2-b58d-a84e-5a1907aa9eb5@tycho.nsa.gov>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <e5d8dc64-6573-21f5-80dd-64cfbf72e13f@linux.intel.com>
Date: Thu, 6 Feb 2020 21:38:14 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <06cdca0e-65f2-b58d-a84e-5a1907aa9eb5@tycho.nsa.gov>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_103824_346100_0D0ADF21 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Andi Kleen <ak@linux.intel.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Igor Lubashev <ilubashe@akamai.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, oprofile-list@lists.sf.net,
 Thomas Gleixner <tglx@linutronix.de>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 06.02.2020 21:30, Stephen Smalley wrote:
> On 2/6/20 1:26 PM, Alexey Budankov wrote:
>>
>> On 06.02.2020 21:23, Stephen Smalley wrote:
>>> On 2/5/20 12:30 PM, Alexey Budankov wrote:
>>>>
>>>> Introduce CAP_PERFMON capability designed to secure system performance
>>>> monitoring and observability operations so that CAP_PERFMON would assist
>>>> CAP_SYS_ADMIN capability in its governing role for performance monitoring
>>>> and observability subsystems.
>>>>
>>>> CAP_PERFMON hardens system security and integrity during performance
>>>> monitoring and observability operations by decreasing attack surface that
>>>> is available to a CAP_SYS_ADMIN privileged process [2]. Providing the access
>>>> to system performance monitoring and observability operations under CAP_PERFMON
>>>> capability singly, without the rest of CAP_SYS_ADMIN credentials, excludes
>>>> chances to misuse the credentials and makes the operation more secure.
>>>> Thus, CAP_PERFMON implements the principal of least privilege for performance
>>>> monitoring and observability operations (POSIX IEEE 1003.1e: 2.2.2.39 principle
>>>> of least privilege: A security design principle that states that a process
>>>> or program be granted only those privileges (e.g., capabilities) necessary
>>>> to accomplish its legitimate function, and only for the time that such
>>>> privileges are actually required)
>>>>
>>>> CAP_PERFMON meets the demand to secure system performance monitoring and
>>>> observability operations for adoption in security sensitive, restricted,
>>>> multiuser production environments (e.g. HPC clusters, cloud and virtual compute
>>>> environments), where root or CAP_SYS_ADMIN credentials are not available to
>>>> mass users of a system, and securely unblocks accessibility of system performance monitoring and observability operations beyond root and CAP_SYS_ADMIN use cases.
>>>>
>>>> CAP_PERFMON takes over CAP_SYS_ADMIN credentials related to system performance
>>>> monitoring and observability operations and balances amount of CAP_SYS_ADMIN
>>>> credentials following the recommendations in the capabilities man page [1]
>>>> for CAP_SYS_ADMIN: "Note: this capability is overloaded; see Notes to kernel
>>>> developers, below." For backward compatibility reasons access to system
>>>> performance monitoring and observability subsystems of the kernel remains
>>>> open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN capability
>>>> usage for secure system performance monitoring and observability operations
>>>> is discouraged with respect to the designed CAP_PERFMON capability.
>>>>
>>>> Although the software running under CAP_PERFMON can not ensure avoidance
>>>> of related hardware issues, the software can still mitigate these issues
>>>> following the official hardware issues mitigation procedure [2]. The bugs
>>>> in the software itself can be fixed following the standard kernel development
>>>> process [3] to maintain and harden security of system performance monitoring
>>>> and observability operations.
>>>>
>>>> [1] http://man7.org/linux/man-pages/man7/capabilities.7.html
>>>> [2] https://www.kernel.org/doc/html/latest/process/embargoed-hardware-issues.html
>>>> [3] https://www.kernel.org/doc/html/latest/admin-guide/security-bugs.html
>>>>
>>>> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
>>>
>>> This will require a small update to the selinux-testsuite to correctly reflect the new capability requirements, but that's easy enough.
>>
>> Is the suite a part of the kernel sources or something else?
> 
> It is external,
> https://github.com/SELinuxProject/selinux-testsuite
> 
> I wasn't suggesting that your patch be blocked on updating the testsuite, just noting that it will need to be done.

Ok. Thanks!

~Alexey



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
