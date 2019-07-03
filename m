Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D605DDB9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 07:20:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSMSVM4V566u4r3XowxnrLl7ywL1zLWhlW9dyDmBklA=; b=JLReQKcYYDKJEM
	tAiKr5JDDuddY6tzUB32x757U3ZmwyCGSRXQdvTFP5JSyqYfien0vMLht9m/C3levuvOA5yQSzjC4
	uq603Jb9UoPyyyQQKF6Cs4uUVcYCns59NR5TZgm9RyivY1mnX/FSlPgZRGuiVAQFOV+/HvLnTEebg
	Dq+6ukeyfeW1cS1Pn9Hx26t4wdbgc8EE2n0B8U0cnnXXxD11eMzw3B1NGA46gqdDtZXixCkM9L6OO
	BKfFqzfKwcrydQdaxIItCbfsw+vTRkNBz735TkTFtp1EBpOpPFQPSy5UaYaybKyKBKZyVIfpI0jcN
	8M7YpyNj6OXHzzNkTsZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiXhK-0004pz-H2; Wed, 03 Jul 2019 05:20:50 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiXh7-0004pS-GG
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 05:20:38 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 22:20:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,445,1557212400"; d="scan'208";a="164232322"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.122])
 ([10.237.72.122])
 by fmsmga008.fm.intel.com with ESMTP; 02 Jul 2019 22:20:27 -0700
Subject: Re: [PATCH v1 10/11] perf intel-pt: Smatch: Fix potential NULL
 pointer dereference
To: Leo Yan <leo.yan@linaro.org>
References: <20190702103420.27540-1-leo.yan@linaro.org>
 <20190702103420.27540-11-leo.yan@linaro.org>
 <cfef1777-141e-4223-e0c1-1a3f3aee1d3c@intel.com>
 <20190703013553.GB6852@leoy-ThinkPad-X240s>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <b65cf4c6-3484-85c8-d191-35021ed6ed3e@intel.com>
Date: Wed, 3 Jul 2019 08:19:19 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190703013553.GB6852@leoy-ThinkPad-X240s>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_222037_554345_BD90091E 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Song Liu <songliubraving@fb.com>, Peter Zijlstra <peterz@infradead.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, Jin Yao <yao.jin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Andi Kleen <ak@linux.intel.com>,
 Eric Saint-Etienne <eric.saint.etienne@oracle.com>,
 Konstantin Khlebnikov <khlebnikov@yandex-team.ru>,
 Ingo Molnar <mingo@redhat.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexios Zavras <alexios.zavras@intel.com>, Davidlohr Bueso <dave@stgolabs.net>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Thomas Richter <tmricht@linux.ibm.com>, linux-kernel@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, Changbin Du <changbin.du@intel.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/07/19 4:35 AM, Leo Yan wrote:
> Hi Adrian,
> 
> On Tue, Jul 02, 2019 at 02:07:40PM +0300, Adrian Hunter wrote:
>> On 2/07/19 1:34 PM, Leo Yan wrote:
>>> Based on the following report from Smatch, fix the potential
>>> NULL pointer dereference check.
>>
>> It never is NULL.  Remove the NULL test if you want:
>>
>> -	if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
>> +	if (session->itrace_synth_opts->set) {
>>
>> But blindly making changes like below is questionable.
> 
> Thanks for suggestions.
> 
> I checked report and script commands, as you said, both command will
> always set session->itrace_synth_opts.  For these two commands, we can
> safely remove the NULL test.
> 
> Because perf tool contains many sub commands, so I don't have much
> confidence it's very safe to remove the NULL test for all cases; e.g.
> there have cases which will process aux trace buffer but without
> itrace options; for this case, session->itrace_synth_opts might be NULL.
> 
> For either way (remove NULL test or keep NULL test), I don't want to
> introduce regression and extra efforts by my patch.  So want to double
> confirm with you for this :)

Yes, intel_pt_process_auxtrace_info() only gets called if a tool sets up the
tools->auxtrace_info() callback.  The tools that do that also set
session->itrace_synth_opts.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
