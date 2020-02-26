Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4709C17087C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 20:08:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b7gqxS5xaKaWEl6243+EitO8eBphpirpi40wqRUm7FM=; b=OSO4TG/cDK3e3C
	QeVEJQBxBbCw+lY9G45K7UE5XAhEXCLh929BcAXkvUM3VngtE+8trOnTuJ5s2UVlCvElbLlIAuh/B
	7mUpwL77ie4vSO+oEEDNq487A5qaYzu9piUJjImyHmKeHgiehg7NWRyzT/3i/cYP38cfZmPPqa+T5
	7v1dYJMDzWDtRTijiWF7P5C9Z7Mdi5UC3Xz1lr4tzF35kHCVLx0wRPxtJus+nr4fXfJz+wIrDMHwN
	BBEhB3dfwcRhGCUpmIlutyb3m6Su8Tdn36E7C+8a3nbgu9fyhnQVK7OKq//ALnn1z67zCgcjRcFLH
	gIKCRsjaGklep4hKXr+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j722o-0005mU-6S; Wed, 26 Feb 2020 19:08:30 +0000
Received: from out02.mta.xmission.com ([166.70.13.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j722b-0005Tv-9i
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 19:08:18 +0000
Received: from in01.mta.xmission.com ([166.70.13.51])
 by out02.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.90_1)
 (envelope-from <ebiederm@xmission.com>)
 id 1j722H-0004xQ-Mj; Wed, 26 Feb 2020 12:07:57 -0700
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in01.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1j722G-0003UI-Hj; Wed, 26 Feb 2020 12:07:57 -0700
From: ebiederm@xmission.com (Eric W. Biederman)
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20200226180526.3272848-1-catalin.marinas@arm.com>
 <20200226180526.3272848-10-catalin.marinas@arm.com>
Date: Wed, 26 Feb 2020 13:05:52 -0600
In-Reply-To: <20200226180526.3272848-10-catalin.marinas@arm.com> (Catalin
 Marinas's message of "Wed, 26 Feb 2020 18:05:16 +0000")
Message-ID: <874kvdxj73.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1j722G-0003UI-Hj; ; ; mid=<874kvdxj73.fsf@x220.int.ebiederm.org>;
 ; ; hst=in01.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX1/0F2i/+wSq/VqwOdFbGsprftz56H+SliE=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa05.xmission.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=8.0 tests=ALL_TRUSTED,BAYES_40,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG autolearn=disabled
 version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 * -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
 *      [score: 0.3193]
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa05 1397; Body=1 Fuz1=1 Fuz2=1]
X-Spam-DCC: XMission; sa05 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ;Catalin Marinas <catalin.marinas@arm.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 534 ms - load_scoreonly_sql: 0.05 (0.0%),
 signal_user_changed: 3.0 (0.6%), b_tie_ro: 1.98 (0.4%), parse: 1.11
 (0.2%), extract_message_metadata: 20 (3.8%), get_uri_detail_list: 2.3
 (0.4%), tests_pri_-1000: 25 (4.7%), tests_pri_-950: 1.36 (0.3%),
 tests_pri_-900: 0.98 (0.2%), tests_pri_-90: 24 (4.5%), check_bayes: 22
 (4.2%), b_tokenize: 7 (1.4%), b_tok_get_all: 7 (1.3%), b_comp_prob:
 2.1 (0.4%), b_tok_touch_all: 3.9 (0.7%), b_finish: 0.61 (0.1%),
 tests_pri_0: 246 (46.1%), check_dkim_signature: 1.02 (0.2%),
 check_dkim_adsp: 6 (1.1%), poll_dns_idle: 195 (36.5%), tests_pri_10:
 2.1 (0.4%), tests_pri_500: 206 (38.6%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH v2 09/19] arm64: mte: Add specific SIGSEGV codes
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_110817_341416_3E4D75FA 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.232 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [166.70.13.232 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

> From: Vincenzo Frascino <vincenzo.frascino@arm.com>
>
> Add MTE-specific SIGSEGV codes to siginfo.h.
>
> Note that the for MTE we are reusing the same SPARC ADI codes because
> the two functionalities are similar and they cannot coexist on the same
> system.

Any chance you can move the v2 notes up into the description or
otherwise fix it.  The description talks about reusing the ADI codes
which is no longer happening.

Otherwise the patch looks good.

Acked-by: "Eric W. Biederman" <ebiederm@xmission.com>

>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Eric W. Biederman <ebiederm@xmission.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> [catalin.marinas@arm.com: renamed precise/imprecise to sync/async]
> [catalin.marinas@arm.com: dropped #ifdef __aarch64__, renumbered]
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> ---
>
> Notes:
>     v2:
>     - Dropped the #ifdef __aarch64__.
>     - Renumbered the SEGV_MTE* values to avoid clash with ADI.
>
>  include/uapi/asm-generic/siginfo.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/include/uapi/asm-generic/siginfo.h b/include/uapi/asm-generic/siginfo.h
> index cb3d6c267181..7aacf9389010 100644
> --- a/include/uapi/asm-generic/siginfo.h
> +++ b/include/uapi/asm-generic/siginfo.h
> @@ -229,7 +229,9 @@ typedef struct siginfo {
>  #define SEGV_ACCADI	5	/* ADI not enabled for mapped object */
>  #define SEGV_ADIDERR	6	/* Disrupting MCD error */
>  #define SEGV_ADIPERR	7	/* Precise MCD exception */
> -#define NSIGSEGV	7
> +#define SEGV_MTEAERR	8	/* Asynchronous ARM MTE error */
> +#define SEGV_MTESERR	9	/* Synchronous ARM MTE exception */
> +#define NSIGSEGV	9
>  
>  /*
>   * SIGBUS si_codes

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
