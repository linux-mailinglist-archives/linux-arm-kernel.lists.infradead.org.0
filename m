Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD301AB298
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 22:39:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QIBLbjQGMQVPpCxL/r41VyliZWp+jc48J/J7Hq+N1Eg=; b=W60JO/QY6pjxvo
	gqmM875ifT899gX1Ok6asCkBGjsFafUtg6Ptbv99ZbPu1d68jp6phtOJjImfyLwIV8MqHODj/UhRu
	adm/7IYE2inNpw1yq+AjVFzA5jESSaWYXB54fyx79eiM1yIv7Ce9rnAPZhsfL5WIytyv9G5rHRLVY
	kFw+Uj+LqSYn1cujCisyoXHm0Mzxw1pIEuom2xs80KjQ/j8Dp4wIkSwGIpUgPnxLiVBdB+cW1D7LV
	iDGXcOecpCgHv/ESatKE2lEwfaUoBI9+/JUwjPp9+6XOXRunXrGM8RnEoGit4Umrz/9sYJbHiuE+O
	RyC+t7ggUbKv1xXP1e1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOoog-0000tV-9L; Wed, 15 Apr 2020 20:39:26 +0000
Received: from out01.mta.xmission.com ([166.70.13.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOooT-0000t4-TF; Wed, 15 Apr 2020 20:39:15 +0000
Received: from in02.mta.xmission.com ([166.70.13.52])
 by out01.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.90_1)
 (envelope-from <ebiederm@xmission.com>)
 id 1jOooS-0004C2-N9; Wed, 15 Apr 2020 14:39:12 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in02.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1jOooR-0003t4-RV; Wed, 15 Apr 2020 14:39:12 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: James Morse <james.morse@arm.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-3-james.morse@arm.com>
Date: Wed, 15 Apr 2020 15:36:12 -0500
In-Reply-To: <20200326180730.4754-3-james.morse@arm.com> (James Morse's
 message of "Thu, 26 Mar 2020 18:07:29 +0000")
Message-ID: <873694h4g3.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1jOooR-0003t4-RV; ; ; mid=<873694h4g3.fsf@x220.int.ebiederm.org>;
 ; ; hst=in02.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX1+X5YLJAn2Oq4fRFsCfQJrXrCxI7w2ruHg=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa03.xmission.com
X-Spam-Level: **
X-Spam-Status: No, score=2.0 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,T_TooManySym_01,XMNoVowels,
 XMSubLong autolearn=disabled version=3.4.2
X-Spam-Virus: No
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.4428] *  0.7 XMSubLong Long Subject
 *  1.5 XMNoVowels Alpha-numberic number with no vowels
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa03 1397; Body=1 Fuz1=1 Fuz2=1]
 *  0.0 T_TooManySym_01 4+ unique symbols in subject
X-Spam-DCC: XMission; sa03 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: **;James Morse <james.morse@arm.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 461 ms - load_scoreonly_sql: 0.02 (0.0%),
 signal_user_changed: 3.5 (0.8%), b_tie_ro: 2.5 (0.5%), parse: 0.55
 (0.1%), extract_message_metadata: 8 (1.7%), get_uri_detail_list: 0.57
 (0.1%), tests_pri_-1000: 8 (1.7%), tests_pri_-950: 0.95 (0.2%),
 tests_pri_-900: 0.72 (0.2%), tests_pri_-90: 294 (63.8%), check_bayes:
 293 (63.6%), b_tokenize: 3.5 (0.8%), b_tok_get_all: 5 (1.1%),
 b_comp_prob: 1.16 (0.3%), b_tok_touch_all: 281 (61.0%), b_finish: 0.66
 (0.1%), tests_pri_0: 137 (29.7%), check_dkim_signature: 0.32 (0.1%),
 check_dkim_adsp: 2.0 (0.4%), poll_dns_idle: 0.79 (0.2%), tests_pri_10:
 1.53 (0.3%), tests_pri_500: 5 (1.1%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH 2/3] mm/memory_hotplug: Allow arch override of non boot
 memory resource names
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_133913_945538_9EF834B3 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
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

> Memory added to the system by hotplug has a 'System RAM' resource created
> for it. This is exposed to user-space via /proc/iomem.
>
> This poses problems for kexec on arm64. If kexec decides to place the
> kernel in one of these newly onlined regions, the new kernel will find
> itself booting from a region not described as memory in the firmware
> tables.
>
> Arm64 doesn't have a structure like the e820 memory map that can be
> re-written when memory is brought online. Instead arm64 uses the UEFI
> memory map, or the memory node from the DT, sometimes both. We never
> rewrite these.
>
> Allow an architecture to specify a different name for these hotplug
> regions.

Gah.  No.

Please find a way to pass the current memory map to the loaded kexec'd
kernel.

Starting a kernel with no way for it to know what the current memory map
is just plain scary.

Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
