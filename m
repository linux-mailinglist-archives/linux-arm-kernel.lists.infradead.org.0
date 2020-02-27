Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B69017222A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 16:22:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R5Iwsr6ogBw0f6lj/dFRt54thVxsCVNvHc+NxZC0XdM=; b=I4YZk+jLUkkG44
	KPqlUEYXBnFCjql+1MZV2yjqLYcLhuoUQvinguDauWohBVhQZyWRhBUicx5Yyqek59RQzg449L6/i
	5OPwMdGWbZdA1eXset3hAkV0Vt/qLLueu8KxqEh8W6+nYeLZ1OxtZDUXZsVsg8t+o+qQvNf38uzPB
	qD4QEOJvX/DS3fdctvbRGlOSh+UpsgrnR9craIAMYWKQcULnnM8Qvu7NHstFq6Vpwgst223/AZHeO
	okjiPoqWd2uf5scQF5MtrcwPk94iKMGCtQp2qkSyD6fSOzT3oBjDoZ4Z7HEakQUrd3oFxGR8xJR2k
	U8u2XPK/edD3+rVzhEhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Kzo-0005vi-U5; Thu, 27 Feb 2020 15:22:40 +0000
Received: from out01.mta.xmission.com ([166.70.13.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Kzf-0005vF-FT
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 15:22:33 +0000
Received: from in02.mta.xmission.com ([166.70.13.52])
 by out01.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.90_1)
 (envelope-from <ebiederm@xmission.com>)
 id 1j7Kzd-0002oK-5G; Thu, 27 Feb 2020 08:22:29 -0700
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in02.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1j7Kzc-0004Rt-Be; Thu, 27 Feb 2020 08:22:28 -0700
From: ebiederm@xmission.com (Eric W. Biederman)
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20200226180526.3272848-10-catalin.marinas@arm.com>
 <202002270627.YYGOStB9%lkp@intel.com>
 <20200227110558.GB3281767@arrakis.emea.arm.com>
Date: Thu, 27 Feb 2020 09:20:23 -0600
In-Reply-To: <20200227110558.GB3281767@arrakis.emea.arm.com> (Catalin
 Marinas's message of "Thu, 27 Feb 2020 11:05:58 +0000")
Message-ID: <87tv3cvyyw.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1j7Kzc-0004Rt-Be; ; ; mid=<87tv3cvyyw.fsf@x220.int.ebiederm.org>;
 ; ; hst=in02.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX1/nALEEfqW3mERTujRdYVsPc5xKTukFjx4=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa04.xmission.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=8.0 tests=ALL_TRUSTED,BAYES_20,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG autolearn=disabled
 version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 * -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
 *      [score: 0.1223]
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa04 1397; Body=1 Fuz1=1 Fuz2=1]
X-Spam-DCC: XMission; sa04 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ;Catalin Marinas <catalin.marinas@arm.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 284 ms - load_scoreonly_sql: 0.05 (0.0%),
 signal_user_changed: 2.9 (1.0%), b_tie_ro: 1.98 (0.7%), parse: 0.75
 (0.3%), extract_message_metadata: 15 (5.1%), get_uri_detail_list: 1.59
 (0.6%), tests_pri_-1000: 25 (8.8%), tests_pri_-950: 1.01 (0.4%),
 tests_pri_-900: 0.81 (0.3%), tests_pri_-90: 28 (10.0%), check_bayes:
 27 (9.5%), b_tokenize: 7 (2.5%), b_tok_get_all: 11 (3.7%),
 b_comp_prob: 3.1 (1.1%), b_tok_touch_all: 3.9 (1.4%), b_finish: 0.61
 (0.2%), tests_pri_0: 200 (70.4%), check_dkim_signature: 0.63 (0.2%),
 check_dkim_adsp: 2.5 (0.9%), poll_dns_idle: 0.60 (0.2%), tests_pri_10:
 1.83 (0.6%), tests_pri_500: 6 (2.1%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH v2 09/19] arm64: mte: Add specific SIGSEGV codes
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_072231_516006_BE2E228C 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 kbuild-all@lists.01.org, kbuild test robot <lkp@intel.com>,
 Arnd Bergmann <arnd@arndb.de>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Catalin Marinas <catalin.marinas@arm.com> writes:

> On Thu, Feb 27, 2020 at 06:33:14AM +0800, kbuild test robot wrote:
>> url:    https://github.com/0day-ci/linux/commits/Catalin-Marinas/arm64-Memory-Tagging-Extension-user-space-support/20200227-041230
>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git for-next
>> config: x86_64-defconfig (attached as .config)
>> compiler: gcc-7 (Debian 7.5.0-5) 7.5.0
>> reproduce:
>>         # save the attached .config to linux build tree
>>         make ARCH=x86_64 
>> 
>> If you fix the issue, kindly add following tag
>> Reported-by: kbuild test robot <lkp@intel.com>
>> 
>> All error/warnings (new ones prefixed by >>):
>> 
>>    In file included from include/linux/export.h:43:0,
>>                     from include/linux/linkage.h:7,
>>                     from arch/x86/include/asm/cache.h:5,
>>                     from include/linux/cache.h:6,
>>                     from include/linux/time.h:5,
>>                     from include/linux/compat.h:10,
>>                     from arch/x86/kernel/signal_compat.c:2:
>>    In function 'signal_compat_build_tests',
>>        inlined from 'sigaction_compat_abi' at arch/x86/kernel/signal_compat.c:166:2:
>> >> include/linux/compiler.h:350:38: error: call to '__compiletime_assert_30' declared with attribute error: BUILD_BUG_ON failed: NSIGSEGV != 7
>
> I haven't realised that x86 has a build check for NSIGSEGV. I'll fold in
> the diff below (there are no new fields added to siginfo, so no other
> changes necessary):

Yes.  That looks good.

Acked-by: "Eric W. Biederman" <ebiederm@xmission.com>

> diff --git a/arch/x86/kernel/signal_compat.c b/arch/x86/kernel/signal_compat.c
> index 9ccbf0576cd0..a7f3e12cfbdb 100644
> --- a/arch/x86/kernel/signal_compat.c
> +++ b/arch/x86/kernel/signal_compat.c
> @@ -27,7 +27,7 @@ static inline void signal_compat_build_tests(void)
>  	 */
>  	BUILD_BUG_ON(NSIGILL  != 11);
>  	BUILD_BUG_ON(NSIGFPE  != 15);
> -	BUILD_BUG_ON(NSIGSEGV != 7);
> +	BUILD_BUG_ON(NSIGSEGV != 9);
>  	BUILD_BUG_ON(NSIGBUS  != 5);
>  	BUILD_BUG_ON(NSIGTRAP != 5);
>  	BUILD_BUG_ON(NSIGCHLD != 6);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
