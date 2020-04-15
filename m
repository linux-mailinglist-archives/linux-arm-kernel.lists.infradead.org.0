Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE2C1AB292
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 22:36:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qf1qQrXErIFI+E6ew5YGPNe3V9MFHchK9UUlyNoPejs=; b=NZAONV3P/QJC/M
	0iWxARHfVdPJpW2YnPhbJ+FBFbw6aJuh2Jcq4dFZUXGDX5jP+o46z6S+cQFwSh0x8prVzrSGb2Ofd
	nFj3/V0EP2bZ9jhax+OpTBhQzw5jc17Rsy8Y/FAYpH1SlIK1cFenhAQPRUR7D57o73OlR3Wvw3r9A
	VcPE8wBzqJKaO6GMuP5P5j+i1ucnKudaMqgiMefoW0C03CRHftRm/3bZOQCuBp7RnbmFIOYXYLumh
	uATZ2Rpk4BNnJaLfEvGazSrYEYrQiRyrDVaeEvnOXEaLqXU8DbLZ3q+ly8s3KuPKaPbbcU7fayqxa
	839U4h4h7NB0RAGWOpyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOomD-0000V3-2C; Wed, 15 Apr 2020 20:36:53 +0000
Received: from out03.mta.xmission.com ([166.70.13.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOom4-0000Uc-Cm; Wed, 15 Apr 2020 20:36:45 +0000
Received: from in02.mta.xmission.com ([166.70.13.52])
 by out03.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.90_1)
 (envelope-from <ebiederm@xmission.com>)
 id 1jOom3-0008B3-3b; Wed, 15 Apr 2020 14:36:43 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in02.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1jOom2-0003Rz-6x; Wed, 15 Apr 2020 14:36:42 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: James Morse <james.morse@arm.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-2-james.morse@arm.com>
Date: Wed, 15 Apr 2020 15:33:43 -0500
In-Reply-To: <20200326180730.4754-2-james.morse@arm.com> (James Morse's
 message of "Thu, 26 Mar 2020 18:07:28 +0000")
Message-ID: <87d088h4k8.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1jOom2-0003Rz-6x; ; ; mid=<87d088h4k8.fsf@x220.int.ebiederm.org>;
 ; ; hst=in02.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX18VhUxMFCc7ESaZTTYHY/imM8juytRRcx0=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa06.xmission.com
X-Spam-Level: *
X-Spam-Status: No, score=1.7 required=8.0 tests=ALL_TRUSTED,BAYES_20,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,XMNoVowels,XMSubLong,
 XM_Body_Dirty_Words autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 * -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
 *      [score: 0.1007]
 *  1.5 XMNoVowels Alpha-numberic number with no vowels
 *  0.7 XMSubLong Long Subject
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa06 1397; Body=1 Fuz1=1 Fuz2=1]
 *  0.5 XM_Body_Dirty_Words Contains a dirty word
X-Spam-DCC: XMission; sa06 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: *;James Morse <james.morse@arm.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 400 ms - load_scoreonly_sql: 0.06 (0.0%),
 signal_user_changed: 12 (3.1%), b_tie_ro: 11 (2.7%), parse: 1.15
 (0.3%), extract_message_metadata: 13 (3.3%), get_uri_detail_list: 1.56
 (0.4%), tests_pri_-1000: 10 (2.6%), tests_pri_-950: 1.26 (0.3%),
 tests_pri_-900: 1.07 (0.3%), tests_pri_-90: 83 (20.8%), check_bayes:
 81 (20.3%), b_tokenize: 6 (1.4%), b_tok_get_all: 29 (7.2%),
 b_comp_prob: 2.0 (0.5%), b_tok_touch_all: 42 (10.4%), b_finish: 0.94
 (0.2%), tests_pri_0: 266 (66.4%), check_dkim_signature: 0.56 (0.1%),
 check_dkim_adsp: 2.5 (0.6%), poll_dns_idle: 0.80 (0.2%), tests_pri_10:
 2.2 (0.5%), tests_pri_500: 6 (1.6%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_133644_430352_F2969F64 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.233 listed in list.dnswl.org]
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

James Morse <james.morse@arm.com> writes:

> An image loaded for kexec is not stored in place, instead its segments
> are scattered through memory, and are re-assembled when needed. In the
> meantime, the target memory may have been removed.
>
> Because mm is not aware that this memory is still in use, it allows it
> to be removed.
>
> Add a memory notifier to prevent the removal of memory regions that
> overlap with a loaded kexec image segment. e.g., when triggered from the
> Qemu console:
> | kexec_core: memory region in use
> | memory memory32: Offline failed.
>
> Signed-off-by: James Morse <james.morse@arm.com>

Given that we are talking about the destination pages for kexec
not where the loaded kernel is currently stored the description is
confusing.

Beyond that I think it would be better to simply unload the loaded
kernel at memory hotunplug time.  Usually somewhere in the loaded image
is a copy of the memory map at the time the kexec kernel was loaded.
That will invalidate the memory map as well.

All of this should be for a very brief window of a few seconds, as
the loaded kexec image is quite short.

So instead of failing in the notifier, if you could simply unload the
loaded image in the notifier I think that would be simpler and more
robust.  While still preventing the loaded image from falling over
when it starts executing.

Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
