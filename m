Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F331AB289
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 22:33:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oTLnRwrjMVYoWy78Z6AAL3a54MiEii56q1q+UCM16o8=; b=rN07QZH9Id1M1d
	8NmWcD8CEPbJPiwTzWAb4SUuzZ/f7HRq1iFrGTs6cN0g9U46vHt8ickum30k0zYSWS1Pgb8YGsPUR
	fGLUDXspHtdrbzJtoL35rX4YhrjjT/wiQfCAWn1YfwsktlXeNbCnsNJqhUa+7enNajzacjmacg1hh
	HwQcjSKb+/V5EbsXLSDgMH1RORftWKi2fDpP2CJvqSI3dJgZaS6shCe6/jziZZ6tteR65AxKAEhIH
	Ku6aSTW+ubFHLvqLGgHZzxwGelbPAsyYrvsRDooLLwqo5fWbhbZRjrOnFFaBVrcQUhYvGenGGh1Xe
	WbClaOQMSCrkq1ecZA7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOoj3-0005uY-TL; Wed, 15 Apr 2020 20:33:37 +0000
Received: from out01.mta.xmission.com ([166.70.13.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOoix-0005og-4z; Wed, 15 Apr 2020 20:33:32 +0000
Received: from in01.mta.xmission.com ([166.70.13.51])
 by out01.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.90_1)
 (envelope-from <ebiederm@xmission.com>)
 id 1jOoi8-0003Qc-8Z; Wed, 15 Apr 2020 14:32:40 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in01.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1jOohz-0002Qf-Kx; Wed, 15 Apr 2020 14:32:40 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: James Morse <james.morse@arm.com>
References: <20200326180730.4754-1-james.morse@arm.com>
Date: Wed, 15 Apr 2020 15:29:32 -0500
In-Reply-To: <20200326180730.4754-1-james.morse@arm.com> (James Morse's
 message of "Thu, 26 Mar 2020 18:07:27 +0000")
Message-ID: <87sgh4h4r7.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1jOohz-0002Qf-Kx; ; ; mid=<87sgh4h4r7.fsf@x220.int.ebiederm.org>;
 ; ; hst=in01.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX18jmCXnm1risG3zBAgViLxmvp2R1+XuCdQ=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa01.xmission.com
X-Spam-Level: **
X-Spam-Status: No, score=2.0 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,T_TooManySym_01,XMNoVowels,
 XMSubLong autolearn=disabled version=3.4.2
X-Spam-Virus: No
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.4574] *  0.7 XMSubLong Long Subject
 *  1.5 XMNoVowels Alpha-numberic number with no vowels
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa01 1397; Body=1 Fuz1=1 Fuz2=1]
 *  0.0 T_TooManySym_01 4+ unique symbols in subject
X-Spam-DCC: XMission; sa01 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: **;James Morse <james.morse@arm.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 1190 ms - load_scoreonly_sql: 0.17 (0.0%),
 signal_user_changed: 16 (1.4%), b_tie_ro: 14 (1.1%), parse: 1.91
 (0.2%), extract_message_metadata: 37 (3.1%), get_uri_detail_list: 1.74
 (0.1%), tests_pri_-1000: 22 (1.8%), compile_eval: 130 (11.0%),
 tests_pri_-950: 2.2 (0.2%), tests_pri_-900: 14 (1.2%), tests_pri_-90:
 101 (8.5%), check_bayes: 97 (8.2%), b_tokenize: 9 (0.7%),
 b_tok_get_all: 6 (0.5%), b_comp_prob: 2.3 (0.2%), b_tok_touch_all: 59
 (4.9%), b_finish: 0.99 (0.1%), tests_pri_0: 975 (81.9%),
 check_dkim_signature: 0.83 (0.1%), check_dkim_adsp: 40 (3.4%),
 poll_dns_idle: 0.03 (0.0%), tests_pri_10: 3.2 (0.3%), tests_pri_500:
 11 (1.0%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH 0/3] kexec/memory_hotplug: Prevent removal and accidental
 use
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_133331_190140_CED0FA54 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [166.70.13.231 listed in wl.mailspike.net]
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

James Morse <james.morse@arm.com> writes:

> Hello!
>
> arm64 recently queued support for memory hotremove, which led to some
> new corner cases for kexec.
>
> If the kexec segments are loaded for a removable region, that region may
> be removed before kexec actually occurs. This causes the first kernel to
> lockup when applying the relocations. (I've triggered this on x86 too).
>
> The first patch adds a memory notifier for kexec so that it can refuse
> to allow in-use regions to be taken offline.
>
>
> This doesn't solve the problem for arm64, where the new kernel must
> initially rely on the data structures from the first boot to describe
> memory. These don't describe hotpluggable memory.
> If kexec places the kernel in one of these regions, it must also provide
> a DT that describes the region in which the kernel was mapped as memory.
> (and somehow ensure its always present in the future...)
>
> To prevent this from happening accidentally with unaware user-space,
> patches two and three allow arm64 to give these regions a different
> name.
>
> This is a change in behaviour for arm64 as memory hotadd and hotremove
> were added separately.
>
>
> I haven't tried kdump.
> Unaware kdump from user-space probably won't describe the hotplug
> regions if the name is different, which saves us from problems if
> the memory is no longer present at kdump time, but means the vmcore
> is incomplete.
>
>
> These patches are based on arm64's for-next/core branch, but can all
> be merged independently.

So I just looked through these quickly and I think there are real
problems here we can fix, and that are worth fixing.

However I am not thrilled with the fixes you propose.

Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
