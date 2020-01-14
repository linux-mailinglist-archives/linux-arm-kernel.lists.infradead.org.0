Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5100513A48F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 10:55:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ISk3sNyQXH6yoVnP8UQxCD7baVCE4XXfPvSTwdk+7jE=; b=fUHEOKNB5Hfk36
	Ipif5Vri5/XPMzpnomIkmHwb4JVxcptYWG1E4Z+DptMZ+7pRa17Np179U2DFkjNW7aSXfHrCieY0t
	H6UHilVOIcJzFjvSARQgM/bgJs82Fl5I8Iv8k9M/0j/cXHFBJBtOpZCLscgqQJUkA9i6/YEaYN6rS
	hxY4SDecn6sAGapO1GVrUHQr1+abP2QdyB21KiE/7RWFVeROVYckZuIt15DV7xcyNXAxoHSkG+RmG
	V1Nfo1dEB0wPAghN9A6ZUvPlAUYGNrdxtdKY+Wsyv/vhiCCINkWqvH3zDK7eExXe8oVTAgXApHD+L
	94LStoSz/Ppl5OMF3HDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irIv8-0006md-3p; Tue, 14 Jan 2020 09:55:34 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irIu4-0005zp-6y
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 09:54:32 +0000
Received: by mail-pj1-x1044.google.com with SMTP id a6so5475222pjh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 01:54:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ab/jlRDwB+sX63oD6KjQ3FamjJL9BhbF54olV6AcIQA=;
 b=DBG/s5/1sNABlFEmsrQ5h6wCfUh1PPS1vx6ReFeXbF4XMnzk57ED5b5rmgd0w20yWo
 Br6gzijGMw3ebt/2fzK3oIlwZL46/KJC54pTb82j1jEnKMd+KZ/8sCON6rgjpYK3fEbs
 Z9oycSFjH+Xu5StZgjI/UDurlKV6+6uTNGc5jvxxyA6MfU84j4ZxEc9NrMhZH2l0VQD8
 /xEZDNznuJT6CMTT3Ty86mdtf3/wsEJ8zk8YWwQcuDbAdgnmTz95PstIv8w0XnsICFGN
 c0pnigD0xbLJkbSJvgDH/s1d0Eew2n41MrBeA5BGcpT5wlGaiX8A2DADZ3FiaEJemVEz
 ocQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ab/jlRDwB+sX63oD6KjQ3FamjJL9BhbF54olV6AcIQA=;
 b=NfKJVLfxI38KvzKcSnsQnt0rCx5fORPC3MVzAa5Q6UNl32Xp54eDTcoRUyIm+VqKfJ
 scR3hiESCAf+9D0r7S+TBfu82jNDIBlkjJJDgVw8XfDDzPQsNpS1T1HJoCQuQp0TFeVH
 CsGOYkNC2Yq+W3nRlGotizdUtpLzVMTZsW0a8bwbj+SdIPSuJUkoNsLpBg2zAv4MRvMy
 wcRfJA8FQ3AZyfPv8MExRNjxHYDjINSaKgSh1k8ZNb8pjWFPKax+sfSK0sZ3IPK2O3GG
 +bBvR0FIYzVVSZX5Gquvs8iLCDXxuioQcJU0UNHNX0fkzZgsXL7xugxSSMYPXcTeKjHS
 IR6g==
X-Gm-Message-State: APjAAAX7iB3rsOwZ1u2sZVD73GJvcIEv8UCNjeTI/SUH4VrAIq8ZLEDG
 kF3lq/0Nxjeh3kMi9oM7gZA8DA==
X-Google-Smtp-Source: APXvYqwIphzosQtp93N2MnCeDGCAYeq4HHzWsODjt9c4fn9IIe2f07bcj0Vwuw0ys7vAIvpyRLKW/A==
X-Received: by 2002:a17:90b:3d0:: with SMTP id
 go16mr28213338pjb.75.1578995667153; 
 Tue, 14 Jan 2020 01:54:27 -0800 (PST)
Received: from leoy-ThinkPad-X240s (li519-153.members.linode.com.
 [66.175.222.153])
 by smtp.gmail.com with ESMTPSA id 73sm3565016pfy.159.2020.01.14.01.54.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 Jan 2020 01:54:26 -0800 (PST)
Date: Tue, 14 Jan 2020 17:54:18 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Jiri Olsa <jolsa@redhat.com>
Subject: Re: [PATCH v5 2/2] perf parse: Copy string to perf_evsel_config_term
Message-ID: <20200114095418.GA6937@leoy-ThinkPad-X240s>
References: <20200113151806.17854-1-leo.yan@linaro.org>
 <20200113151806.17854-2-leo.yan@linaro.org>
 <20200114091228.GA170376@krava>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114091228.GA170376@krava>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_015428_320320_8391DF46 
X-CRM114-Status: GOOD (  19.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ian Rogers <irogers@google.com>,
 Andi Kleen <ak@linux.intel.com>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Adrian Hunter <adrian.hunter@intel.com>,
 linux-kernel@vger.kernel.org, Arnaldo Carvalho de Melo <acme@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 10:12:28AM +0100, Jiri Olsa wrote:
> On Mon, Jan 13, 2020 at 11:18:06PM +0800, Leo Yan wrote:
> > perf with CoreSight fails to record trace data with command:
> > 
> >   perf record -e cs_etm/@tmc_etr0/u --per-thread ls
> >   failed to set sink "" on event cs_etm/@tmc_etr0/u with 21 (Is a
> >   directory)/perf/
> > 
> > This failure is root caused with the commit 1dc925568f01 ("perf
> > parse: Add a deep delete for parse event terms").
> > 
> > The log shows, cs_etm fails to parse the sink attribution; cs_etm event
> > relies on the event configuration to pass sink name, but the event
> > specific configuration data cannot be passed properly with flow:
> > 
> >   get_config_terms()
> >     ADD_CONFIG_TERM(DRV_CFG, term->val.str);
> >       __t->val.str = term->val.str;
> >         `> __t->val.str is assigned to term->val.str;
> > 
> >   parse_events_terms__purge()
> >     parse_events_term__delete()
> >       zfree(&term->val.str);
> >         `> term->val.str is freed and assigned to NULL pointer;
> > 
> >   cs_etm_set_sink_attr()
> >     sink = __t->val.str;
> >       `> sink string has been freed.
> > 
> > To fix this issue, in the function get_config_terms(), this patch
> > changes to use strdup() for allocation a new duplicate string rather
> > than directly assignment string pointer.
> > 
> > This patch addes a new field 'free_str' in the data structure
> > perf_evsel_config_term; 'free_str' is set to true when the union is used
> > as a string pointer; thus it can tell perf_evsel__free_config_terms() to
> > free the string.
> > 
> > Fixes: 1dc925568f01 ("perf parse: Add a deep delete for parse event terms")
> > Suggested-by: Jiri Olsa <jolsa@kernel.org>
> > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> 
> with that checkpatch changes
> 
> Acked-by: Jiri Olsa <jolsa@kernel.org>

Will fix checkpath warnings and resend patch v6.

Thanks you/Mathieu/Andi's reviewing.

Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
