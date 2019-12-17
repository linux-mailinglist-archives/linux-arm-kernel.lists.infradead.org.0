Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7917712367E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 21:07:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tmvB16evs2KlDkzR3EzSpJ+h+/dR+j1hp/8bYo9YU8Y=; b=A70hINEGdtIRdI
	L+CKq4v0Wq54gBqDK7nFepIF3tntk0JVe3fg66mvf8Gg4VixCM8EvYV24748pFJybYpxYWY9KYQ+r
	xwi/vnZAtgjKZJ29DYcohkSbpkf5aUJmLU8gqXFu/jliq5EKZ8A8OeAHnResGpJhG7z5zdy0Iep4+
	Od1Bw31LXC3dZ1WQiSL2TFzHiwqS69Eh99uhZLW7egNiBA6+rRGePxEUlrAJW+2VxJE9C+UBpLqRf
	S8SizwzKLFL+p1n+tqAHM7wFLZj2BArV+Kfs1AgcS7LWfUbnGSVIh8bu6hogfSw81WA04e7wrVWF5
	sDitXNFTMDpqZGiazkqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihJ8G-0001cy-EZ; Tue, 17 Dec 2019 20:07:48 +0000
Received: from out01.mta.xmission.com ([166.70.13.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihJ84-0001Xa-Ui
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 20:07:38 +0000
Received: from in01.mta.xmission.com ([166.70.13.51])
 by out01.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.90_1)
 (envelope-from <ebiederm@xmission.com>)
 id 1ihJ7T-000374-FQ; Tue, 17 Dec 2019 13:06:59 -0700
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in01.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1ihJ7S-0005Fq-8R; Tue, 17 Dec 2019 13:06:58 -0700
From: ebiederm@xmission.com (Eric W. Biederman)
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20191211184027.20130-1-catalin.marinas@arm.com>
 <20191211184027.20130-13-catalin.marinas@arm.com>
 <CAK8P3a1-eaR7NddhDce65vXKCGeZD3xUMrTTAWN4U3oW0ecN=g@mail.gmail.com>
 <87zhfxqu1q.fsf@x220.int.ebiederm.org>
 <20191217174808.GM5624@arrakis.emea.arm.com>
Date: Tue, 17 Dec 2019 14:06:01 -0600
In-Reply-To: <20191217174808.GM5624@arrakis.emea.arm.com> (Catalin Marinas's
 message of "Tue, 17 Dec 2019 17:48:10 +0000")
Message-ID: <877e2ura3a.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1ihJ7S-0005Fq-8R; ; ; mid=<877e2ura3a.fsf@x220.int.ebiederm.org>;
 ; ; hst=in01.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX1/w53SFcKFMEm6MwInTxOOoRY9pew7qlnM=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa01.xmission.com
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=8.0 tests=ALL_TRUSTED,BAYES_00,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,XMNoVowels autolearn=disabled
 version=3.4.2
X-Spam-Virus: No
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 * -3.0 BAYES_00 BODY: Bayes spam probability is 0 to 1%
 *      [score: 0.0056]
 *  1.5 XMNoVowels Alpha-numberic number with no vowels
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa01 1397; Body=1 Fuz1=1 Fuz2=1]
X-Spam-DCC: XMission; sa01 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ;Catalin Marinas <catalin.marinas@arm.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 399 ms - load_scoreonly_sql: 0.03 (0.0%),
 signal_user_changed: 4.6 (1.1%), b_tie_ro: 4.0 (1.0%), parse: 0.64
 (0.2%), extract_message_metadata: 12 (2.9%), get_uri_detail_list: 1.59
 (0.4%), tests_pri_-1000: 5 (1.3%), tests_pri_-950: 1.07 (0.3%),
 tests_pri_-900: 0.86 (0.2%), tests_pri_-90: 34 (8.5%), check_bayes: 33
 (8.2%), b_tokenize: 7 (1.7%), b_tok_get_all: 14 (3.6%), b_comp_prob:
 2.1 (0.5%), b_tok_touch_all: 6 (1.4%), b_finish: 0.56 (0.1%),
 tests_pri_0: 331 (83.1%), check_dkim_signature: 0.39 (0.1%),
 check_dkim_adsp: 2.1 (0.5%), poll_dns_idle: 0.23 (0.1%), tests_pri_10:
 1.79 (0.4%), tests_pri_500: 5 (1.3%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH 12/22] arm64: mte: Add specific SIGSEGV codes
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_120736_992116_1AB20469 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.231 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [166.70.13.231 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 Richard Earnshaw <Richard.Earnshaw@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Marc Zyngier <maz@kernel.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Linux-MM <linux-mm@kvack.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Catalin Marinas <catalin.marinas@arm.com> writes:

> Hi Eric,
>
> On Thu, Dec 12, 2019 at 12:26:41PM -0600, Eric W. Biederman wrote:
>> Arnd Bergmann <arnd@arndb.de> writes:
>> > On Wed, Dec 11, 2019 at 7:40 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>> >>
>> >> From: Vincenzo Frascino <vincenzo.frascino@arm.com>
>> >>
>> >> Add MTE-specific SIGSEGV codes to siginfo.h.
>> >>
>> >> Note that the for MTE we are reusing the same SPARC ADI codes because
>> >> the two functionalities are similar and they cannot coexist on the same
>> >> system.
>> 
>> Please Please Please don't do that.
>> 
>> It is actively harmful to have architecture specific si_code values.
>> As it makes maintenance much more difficult.
>> 
>> Especially as the si_codes are part of union descrimanator.
>> 
>> If your functionality is identical reuse the numbers otherwise please
>> just select the next numbers not yet used.
>
> It makes sense.
>
>> We have at least 256 si_codes per signal 2**32 if we really need them so
>> there is no need to be reuse numbers.
>> 
>> The practical problem is that architecture specific si_codes start
>> turning kernel/signal.c into #ifdef soup, and we loose a lot of
>> basic compile coverage because of that.  In turn not compiling the code
>> leads to bit-rot in all kinds of weird places.
>
> Fortunately for MTE we don't need to change kernel/signal.c. It's
> sufficient to call force_sig_fault() from the arch code with the
> corresponding signo, code and fault address.

Hooray for force_sig_fault at keeping people honest about which
parameters they are passing.

So far it looks like it is just BUS_MCEERR_AR, BUS_MCEERR_AO,
SEGV_BNDERR, and SEGV_PKUERR that are the really confusing ones,
as they go beyond the ordinary force_sig_fault layout.

But we really do need the knowledge of how all of the cases are encoded
or things can get very confusing.  Especially when mixing 32bit and
64bit code.

>> p.s. As for coexistence there is always the possibility that one chip
>> in a cpu family does supports one thing and another chip in a cpu
>> family supports another.  So userspace may have to cope with the
>> situation even if an individual chip doesn't.
>> 
>> I remember a similar case where sparc had several distinct page table
>> formats and we had a single kernel that had to cope with them all.
>
> We have such fun on ARM as well with the big.LITTLE systems where not
> all CPUs support the same features. For example, MTE is only enabled
> once all the secondary CPUs have booted and confirmed to have the
> feature.

Which all makes it possible that the alternative to MTE referenced as
ADI might show up in some future ARM chip.  Which really makes reusing
the numbers a bad idea.

Not that I actually recall what any of this functionality actually is,
but I can tell when people are setting themselves of for a challenge
unnecessarily.

Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
