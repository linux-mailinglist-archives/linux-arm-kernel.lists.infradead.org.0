Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D51E65DF90
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 10:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rCt1uQ+udY4UbeinRiDfNFfdS0TCzl6+RM3Xu9aLNG4=; b=FWHPJH3g+Ik9mR
	zg5zQFJbiJ5Tp9p3fbxCzf2rUPYscZBAXU0QigZyORVBs9zKq8hWLqRi9aaVH2sxlQ0WDqHjxYhGz
	KNFgVFNs7iJ3lmCqLKuIQILG/Sr5pWx5mMNmzMG9yVzYnVu2uNR1zXy+F5NVTj3E5AqGAZQ4m9PyG
	Zh3tdRb3ScKpCMN3wPH6O+IsetEAHxlNspSpL5OSKL7u6naons7TXPB10iatR6CCXSYqrxA50g+H8
	BEtVN2kvTGOhktERr3GgB45fDb69TpDNdYE41Qb7x1pYsAdpwpdqeWdMqPUuA1bCLP7jET6LGOKAJ
	SJXgJ4Xatax46JK1r3eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiaSC-0005ZQ-J5; Wed, 03 Jul 2019 08:17:24 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiaS0-0005Yt-Dy
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 08:17:13 +0000
Received: by mail-ot1-x342.google.com with SMTP id z23so1406290ote.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 01:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KbUJk2ldtGkFXbb/hUiSZglrGE0E+zl75r+apGMwxXc=;
 b=taHtVk2prlLVdkCLv7izJLUW8aglmKjNUhvyHAfVNVSnYnAW3untkvdgmFWHmoiuwi
 uQ8enVGVbsPu+lIBQi6hrm2Au6jS5v209ePxq8WxNT16IrRx4heT1SvAS+fgiHDSZWGp
 7eFBC72rZ19FCVg7ZYwIBT8Ck8L5IhR/+dLEk/3fq5F50Bm5Cp0labne5B2MNjOmdkHc
 bzdQNCIZCMNySeqcr+VsOB9MkTA6+T36eeEAVvhXXf/hmU4lNZGVKVt74Ar8obEX9bS+
 cdAIhdpiL5/KzW1J9yHW1xqM8vM340ZZYmRcSXGMjRROIQw645spS05tc0xGNMfN9wFd
 AOhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KbUJk2ldtGkFXbb/hUiSZglrGE0E+zl75r+apGMwxXc=;
 b=otvPoXfTIsiKxqiPK7Fl64RSIPiUtbHX47jam3cSMUw0MpzpgKOw2cudafzorGrK6y
 QEl+ZDJ2ocGedy9cSgas7UolAy65z1WUer+/Q9n4K1EbteGYFL3qJ31qE/yelNdaYeh/
 eR0wgsPYVOBaNTMpEg3XvqDKU1qu11XXjDSdPvg/3n48hRgEhk1BSAqDD7pFA22tolvO
 vdbgjntpaYvfENrytYAvB+FDD6BwQxK2QtGmfkfPLvxCnk+UCGEnsAcJ+XHWUBOAf4mn
 bIswoZS0FaJ8YSDvVTeN3B79e7BIOBg5g65UJvYtwD7I0sGr0x3xtF0sIfbaBVveEo1n
 Gzgg==
X-Gm-Message-State: APjAAAUAuAPhKHXkEeOKcMqWb3O7KQHgu9xi+OpfzVh8HIVgmDcLwMu/
 TWeVPZHS5yrBhAsfMo6ENjT2xw==
X-Google-Smtp-Source: APXvYqx99yi1XCUO1gr95zNH/ZhvnymqBxz9z0Odjb8hu2+hmpd3LCWQlN/dWNdu5Dn+13anYfM4hA==
X-Received: by 2002:a9d:1718:: with SMTP id i24mr26800741ota.269.1562141831330; 
 Wed, 03 Jul 2019 01:17:11 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li964-79.members.linode.com. [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id d200sm554816oih.26.2019.07.03.01.17.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 03 Jul 2019 01:17:10 -0700 (PDT)
Date: Wed, 3 Jul 2019 16:16:57 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Adrian Hunter <adrian.hunter@intel.com>
Subject: Re: [PATCH v1 10/11] perf intel-pt: Smatch: Fix potential NULL
 pointer dereference
Message-ID: <20190703081657.GD6852@leoy-ThinkPad-X240s>
References: <20190702103420.27540-1-leo.yan@linaro.org>
 <20190702103420.27540-11-leo.yan@linaro.org>
 <cfef1777-141e-4223-e0c1-1a3f3aee1d3c@intel.com>
 <20190703013553.GB6852@leoy-ThinkPad-X240s>
 <b65cf4c6-3484-85c8-d191-35021ed6ed3e@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b65cf4c6-3484-85c8-d191-35021ed6ed3e@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_011712_499905_CE9BA7F6 
X-CRM114-Status: GOOD (  19.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Wed, Jul 03, 2019 at 08:19:19AM +0300, Adrian Hunter wrote:
> On 3/07/19 4:35 AM, Leo Yan wrote:
> > Hi Adrian,
> > 
> > On Tue, Jul 02, 2019 at 02:07:40PM +0300, Adrian Hunter wrote:
> >> On 2/07/19 1:34 PM, Leo Yan wrote:
> >>> Based on the following report from Smatch, fix the potential
> >>> NULL pointer dereference check.
> >>
> >> It never is NULL.  Remove the NULL test if you want:
> >>
> >> -	if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
> >> +	if (session->itrace_synth_opts->set) {
> >>
> >> But blindly making changes like below is questionable.
> > 
> > Thanks for suggestions.
> > 
> > I checked report and script commands, as you said, both command will
> > always set session->itrace_synth_opts.  For these two commands, we can
> > safely remove the NULL test.
> > 
> > Because perf tool contains many sub commands, so I don't have much
> > confidence it's very safe to remove the NULL test for all cases; e.g.
> > there have cases which will process aux trace buffer but without
> > itrace options; for this case, session->itrace_synth_opts might be NULL.
> > 
> > For either way (remove NULL test or keep NULL test), I don't want to
> > introduce regression and extra efforts by my patch.  So want to double
> > confirm with you for this :)
> 
> Yes, intel_pt_process_auxtrace_info() only gets called if a tool sets up the
> tools->auxtrace_info() callback.  The tools that do that also set
> session->itrace_synth_opts.

Yes.

I also checked the another case for 'perf inject', just as you said,
it sets both inject->tool.auxtrace_info and session->itrace_synth_opts
if we use 'itrace' option.  So it's safe to remove the NULL test for
session->itrace_synth_opts.

Will follow your suggestion for new patches.  Thanks a lot for
confirmation and suggestions.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
