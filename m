Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DECCC62CD0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 01:54:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9S3HzHMQW70UL+g4ZDcgDrjrhzUo4rX76zSFwRJnvYk=; b=MsDGIA5wuluI+n
	wzKCMBR0Z9mW54BnIuGs7lJuV/zk5hGUj2e7igmImLztRhTfoE8LZEfXKTsCGINJuuWvmvVR5ZpXp
	zK5+FEQQ7guut6eneGXcjQ7v9j/Q7tL86lMGLsHsQEOBg+u/h7zxFddCulNxltnqEZl8lo7144kr9
	gLfmbyL6k5Dxlwe7ZsCL2pPSxnD+1zm1vcNfqVZsHc2s6cAd8U97t+QNsY9qoUPjPxSjC4uNdTcPO
	mcQXn4Up4pC3Xzzc0e6FxdGk2jtbojqlm8BCzHpJ01YyAD4Q6MYzoYkrszz1Skfidz4hm1IhJMbxA
	bEeADphh5XzpB+/n2gqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkdT8-00059e-Ad; Mon, 08 Jul 2019 23:54:50 +0000
Received: from out01.mta.xmission.com ([166.70.13.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkdSu-00057c-Lf; Mon, 08 Jul 2019 23:54:38 +0000
Received: from in01.mta.xmission.com ([166.70.13.51])
 by out01.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1hkdSQ-00040U-44; Mon, 08 Jul 2019 17:54:06 -0600
Received: from ip72-206-97-68.om.om.cox.net ([72.206.97.68]
 helo=x220.xmission.com) by in01.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1hkdSP-0004SP-A3; Mon, 08 Jul 2019 17:54:05 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20190708211528.12392-1-pasha.tatashin@soleen.com>
Date: Mon, 08 Jul 2019 18:53:41 -0500
In-Reply-To: <20190708211528.12392-1-pasha.tatashin@soleen.com> (Pavel
 Tatashin's message of "Mon, 8 Jul 2019 17:15:23 -0400")
Message-ID: <87sgrgjd6i.fsf@xmission.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1hkdSP-0004SP-A3; ; ; mid=<87sgrgjd6i.fsf@xmission.com>; ; ;
 hst=in01.mta.xmission.com; ; ; ip=72.206.97.68; ; ; frm=ebiederm@xmission.com;
 ; ; spf=neutral
X-XM-AID: U2FsdGVkX1/4DFq9bCvzso/ksSBAqAiaDiIvNM15zws=
X-SA-Exim-Connect-IP: 72.206.97.68
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa05.xmission.com
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=8.0 tests=ALL_TRUSTED,BAYES_40,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,XMSubLong autolearn=disabled
 version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 * -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
 *      [score: 0.2412] *  0.7 XMSubLong Long Subject
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa05 1397; Body=1 Fuz1=1 Fuz2=1]
X-Spam-DCC: XMission; sa05 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ;Pavel Tatashin <pasha.tatashin@soleen.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 453 ms - load_scoreonly_sql: 0.05 (0.0%),
 signal_user_changed: 3.8 (0.8%), b_tie_ro: 2.7 (0.6%), parse: 1.36
 (0.3%), extract_message_metadata: 19 (4.1%), get_uri_detail_list: 2.5
 (0.6%), tests_pri_-1000: 18 (3.9%), tests_pri_-950: 1.80 (0.4%),
 tests_pri_-900: 1.45 (0.3%), tests_pri_-90: 26 (5.8%), check_bayes: 24
 (5.4%), b_tokenize: 9 (1.9%), b_tok_get_all: 8 (1.7%), b_comp_prob:
 3.0 (0.7%), b_tok_touch_all: 2.8 (0.6%), b_finish: 0.74 (0.2%),
 tests_pri_0: 368 (81.2%), check_dkim_signature: 0.68 (0.2%),
 check_dkim_adsp: 3.6 (0.8%), poll_dns_idle: 0.07 (0.0%), tests_pri_10:
 2.2 (0.5%), tests_pri_500: 7 (1.5%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [v1 0/5] allow to reserve memory for normal kexec kernel
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_165436_738747_7C93CE16 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.231 listed in list.dnswl.org]
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
Cc: sashal@kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 linux-doc@vger.kernel.org, kexec@lists.infradead.org, jmorris@namei.org,
 linux-kernel@vger.kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pavel Tatashin <pasha.tatashin@soleen.com> writes:

> Currently, it is only allowed to reserve memory for crash kernel, because
> it is a requirement in order to be able to boot into crash kernel without
> touching memory of crashed kernel is to have memory reserved.
>
> The second benefit for having memory reserved for kexec kernel is
> that it does not require a relocation after segments are loaded into
> memory.
>
> If kexec functionality is used for a fast system update, with a minimal
> downtime, the relocation of kernel + initramfs might take a significant
> portion of reboot.
>
> In fact, on the machine that we are using, that has ARM64 processor
> it takes 0.35s to relocate during kexec, thus taking 52% of kernel reboot
> time:
>
> kernel shutdown	0.03s
> relocation	0.35s
> kernel startup	0.29s
>
> Image: 13M and initramfs is 24M. If initramfs increases, the relocation
> time increases proportionally.

Something is very very wrong there.

Last I measured memory bandwidth seriously I could touch a Gigabyte per
second easily, and that was nearly 20 years ago.  Did you manage to
disable caching or have some particularly slow code that does the
reolocations.

There is a serious cost to reserving memory in that it is simply not
available at other times.  For kexec on panic there is no other reliable
way to get memory that won't be DMA'd to.

We have options in this case and I would strongly encourage you to track
down why that copy in relocation is so very slow.  I suspect a 4KiB page
size is large enough that it can swamp pointer following costs.

My back of the napkin math says even 20 years ago your copying costs
should be only 0.037s.  The only machine I have ever tested on where
the copy costs were noticable was my old 386.

Maybe I am out to lunch here but a claim that your memory only runs
at 100MiB/s (the speed of my spinning rust hard drive) is rather
incredible.

Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
