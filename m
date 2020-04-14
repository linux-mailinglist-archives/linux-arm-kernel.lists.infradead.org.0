Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCB31A7374
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 08:17:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xYSV2aHHz+2wVgNongD6xScaPPwQPrkpAxSgORQacSs=; b=orf4+0Ex2SHiLh
	vsy5/gzFfkFahBq0L44M3STcb7uhXGwmNqKTbP0ociq6OVCQm9NEJn0o6cT8ez2NYBd7yNO6T1LCT
	+lBRWH7Gv8Yv2YrGhCp7vBUGTqaNlsPbpkMHmaWUtFraJK2jSxCufEO8al/TCaqcnaao9AKw07Lst
	wXC72Ml28RIhfLNWJqA5nx2q3ww1gJKQhRxVRSNInrfCd7DVM3/DGNYKmvMDSvoFBNrla8ESiBqj0
	U5xERqQYPj5x6l4g9/ulCupmUE36vvMGAKVjUbGWwyYoIRZc1daPviS8e4mzs9ero2nwX+T1s47jc
	Hlgt9O1S2XLPO9pUpCaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOEsU-0003A1-54; Tue, 14 Apr 2020 06:16:58 +0000
Received: from out02.mta.xmission.com ([166.70.13.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOEsM-00037q-JA; Tue, 14 Apr 2020 06:16:51 +0000
Received: from in01.mta.xmission.com ([166.70.13.51])
 by out02.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.90_1)
 (envelope-from <ebiederm@xmission.com>)
 id 1jOErv-0006zd-Cp; Tue, 14 Apr 2020 00:16:23 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in01.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1jOEru-0001V9-HH; Tue, 14 Apr 2020 00:16:23 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: Andrew Morton <akpm@linux-foundation.org>
References: <34274b02-60ba-eb78-eacd-6dc1146ed3cd@arm.com>
 <80e4d1d7-f493-3f66-f700-86f18002d692@redhat.com>
 <dfacf85f-d79d-8742-7a13-1ac0a67bad04@arm.com>
 <ba481c82-c69e-043c-4b66-2d2c7732cf07@redhat.com>
 <20200410121013.03b609fd572504c03a666f4a@linux-foundation.org>
 <20200411034414.GH2129@MiWiFi-R3L-srv>
 <20200411093009.GH25745@shell.armlinux.org.uk>
 <20200412053507.GA4247@MiWiFi-R3L-srv>
 <20200412080836.GM25745@shell.armlinux.org.uk>
 <87wo6klbw0.fsf@x220.int.ebiederm.org>
 <20200413023701.GA20265@MiWiFi-R3L-srv>
 <871rorjzmc.fsf@x220.int.ebiederm.org>
 <20200413160144.0e07c0033afc474228bc9218@linux-foundation.org>
Date: Tue, 14 Apr 2020 01:13:25 -0500
In-Reply-To: <20200413160144.0e07c0033afc474228bc9218@linux-foundation.org>
 (Andrew Morton's message of "Mon, 13 Apr 2020 16:01:44 -0700")
Message-ID: <87tv1miohm.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1jOEru-0001V9-HH; ; ; mid=<87tv1miohm.fsf@x220.int.ebiederm.org>;
 ; ; hst=in01.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX18EIUyySboFEvwkJvY092/gKs+mtMsheRQ=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa07.xmission.com
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=8.0 tests=ALL_TRUSTED,BAYES_05,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,XMNoVowels,XMSubLong
 autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 * -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
 *      [score: 0.0432] *  0.7 XMSubLong Long Subject
 *  1.5 XMNoVowels Alpha-numberic number with no vowels
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa07 1397; Body=1 Fuz1=1 Fuz2=1]
X-Spam-DCC: XMission; sa07 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ;Andrew Morton <akpm@linux-foundation.org>
X-Spam-Relay-Country: 
X-Spam-Timing: total 351 ms - load_scoreonly_sql: 0.04 (0.0%),
 signal_user_changed: 11 (3.1%), b_tie_ro: 9 (2.7%), parse: 0.85 (0.2%),
 extract_message_metadata: 14 (4.0%), get_uri_detail_list: 1.25 (0.4%),
 tests_pri_-1000: 15 (4.2%), tests_pri_-950: 1.22 (0.3%),
 tests_pri_-900: 1.01 (0.3%), tests_pri_-90: 62 (17.7%), check_bayes:
 61 (17.3%), b_tokenize: 7 (1.9%), b_tok_get_all: 7 (2.1%),
 b_comp_prob: 2.2 (0.6%), b_tok_touch_all: 41 (11.5%), b_finish: 0.96
 (0.3%), tests_pri_0: 228 (65.0%), check_dkim_signature: 0.73 (0.2%),
 check_dkim_adsp: 2.2 (0.6%), poll_dns_idle: 0.63 (0.2%), tests_pri_10:
 3.1 (0.9%), tests_pri_500: 12 (3.5%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_231650_630554_D8F23CFF 
X-CRM114-Status: GOOD (  13.59  )
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
Cc: Baoquan He <bhe@redhat.com>, David Hildenbrand <david@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, kexec@lists.infradead.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Andrew Morton <akpm@linux-foundation.org> writes:

> On Mon, 13 Apr 2020 08:15:23 -0500 ebiederm@xmission.com (Eric W. Biederman) wrote:
>
>> > For 3), people can still use kexec_load and develop/fix for it, if no
>> > kexec_file_load supported. But 32-bit arm should be a different one,
>> > more like i386, we will leave it as is, and fix anything which could
>> > break it. But people really expects to improve or add feature to it? E.g
>> > in this patchset, the mem hotplug issue James raised, I assume James is
>> > focusing on arm64, x86_64, but not 32-bit arm. As DavidH commented in
>> > another reply, people even don't agree to continue supporting memory
>> > hotplug on 32-bit system. We ever took effort to fix a memory hotplug
>> > bug on i386 with a patch, but people would rather set it as BROKEN.
>> 
>> For memory hotplug just reload.  Userspace already gets good events.
>> 
>> We should not expect anything except a panic kernel to be loaded over a
>> memory hotplug event. The kexec on panic code should actually be loaded
>> in a location that we don't reliquish if asked for it.
>
> Is that a nack for James's patchset?

I have just read the end of the thread and I have the sense that the
patchset had already been rejected.  I will see if I can go back and
read the beginning.

I was mostly reacting to the idea that you could stop maintaining an
interface that people are actively using because there is a newer
interface.

Eric


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
