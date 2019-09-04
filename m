Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FC4A7E9C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 10:59:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ro/4wJstSAfUSaAWA1HaPqfVs2f1EsXV6yZRxFJ0LM=; b=sjONOI0e8W7Wdb
	5R4nAiB6RjwLicP+O+V71NwS5Mr/V/iHE528EUjbN8b9ctsz7LgmM5j52eEV8thWA3iAFbEEwedYm
	MGy0hqE80LADXBEDvlAkcAYL9nukQdzN1guN9BBQw+A2zpbxnBzgYVDsCYYXOP2m7kpRZf/OMHC6x
	7a9ffkEW0t7sXHFzHN35AVtqMhpjyTgXAGs3dh/wPSRBG/SYK92D9tr2s93QZufyi8hGXhKxIQ9Z/
	1nGQQrFDJGiS7W/zJtCmUIqgrv0dPcqx2uyOfoppuXg33AFtcVOf8xkQliD4kB2chDJM9u5JMk8/i
	TWShIzf//V/yeR/ZTtZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5R8c-00085q-FG; Wed, 04 Sep 2019 08:59:38 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5R8S-00084r-0V
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 08:59:29 +0000
Received: by mail-qt1-x844.google.com with SMTP id y26so23555555qto.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 01:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jFVKdea45mJrNywU948vMYq5u5WRFPo01K8iIYZKsrw=;
 b=OrwA+4vKkCB9cklKzP5BVFlg4BG6lgl69PUYcGp5Pb5zditO/wJGwJljrVy1GIHLs2
 i8KYGCQ2pFe6T7LNzk2gleAPCJOhYY3jJE+0CVcnCJOVRWvimJbt4Pq7cdcU2rospPhh
 Ce2FnYU077ib318/G8aFjuNh7rkCLS0A9qHtTVi7PMiPx6Ouhqy3jXQsZx4S9pumNicD
 6B7HTb9f+D/8uUppfMCB9SMt2kZDq8/fRhhPK24rXlr8GIqSNPiihRI5qcnJvObPM2Dr
 vkxJQBQ3QWSk1uDOG3fm1WEV3fUYRJ1WDVuR5qE5TRBU8Qemj1A0qK4EqjU1xkT/snKR
 RyGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jFVKdea45mJrNywU948vMYq5u5WRFPo01K8iIYZKsrw=;
 b=YQn/pi3zsdQMcxeqwvqLr7fg78bX5q3JH7SHdG5BGyvK/RI39rUAcJRMLjay8CQuaL
 C7C+Q081ho1HfgInrxDt4BR+beuw9vqxU+nVkXz85g92wjWWe8jKCW4CtgXqwZvifq1r
 jrjz2Ofj9jxjkA5cqJNv76TWjsKi5B5fVEoZ0+Lf6Hnn23M+xcfKJPZFcwxmLQRdi0BT
 GF9aNsuxsZIPSWbXzqiqPN9l9IkrGzSIXSHQ6M3NCt9pB2fXMQ9tHVoik+lwvD0QiY/v
 Qx+yDVwdJx8/jwcP2g49pR6AE4mgoP9TOyD577MqkVW66oebSI9CoYYxh3w/pOg0SXwX
 3hew==
X-Gm-Message-State: APjAAAXbHRtCRY8RtGPg7o61+fcQ9o7PN74aagj1918Ljlu3P2p4pdk8
 PcAtuYIhDoh57SppGF1HG0hTCQ==
X-Google-Smtp-Source: APXvYqyJag4ggmgi7xh2Gz1Sw+DPkf0OQ7myIaHWJXxifbKX1zyv/8Shs9SPwXg8QVxvQm6vfC0MZw==
X-Received: by 2002:ac8:3a84:: with SMTP id x4mr14802700qte.334.1567587562863; 
 Wed, 04 Sep 2019 01:59:22 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1320-244.members.linode.com.
 [45.79.221.244])
 by smtp.gmail.com with ESMTPSA id c1sm665566qkm.70.2019.09.04.01.59.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 04 Sep 2019 01:59:22 -0700 (PDT)
Date: Wed, 4 Sep 2019 16:59:12 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Adrian Hunter <adrian.hunter@intel.com>
Subject: Re: [PATCH v5] perf machine: arm/arm64: Improve completeness for
 kernel address space
Message-ID: <20190904085912.GA27922@leoy-ThinkPad-X240s>
References: <20190815082521.16885-1-leo.yan@linaro.org>
 <d874e6b3-c115-6c8c-bb12-160cfd600505@intel.com>
 <20190815113242.GA28881@leoy-ThinkPad-X240s>
 <e0919e39-7607-815b-3a12-96f098e45a5f@intel.com>
 <20190816014541.GA17960@leoy-ThinkPad-X240s>
 <363577f1-097e-eddd-a6ca-b23f644dd8ce@intel.com>
 <20190826125105.GA3288@leoy-ThinkPad-X240s>
 <20190902141511.GF4931@leoy-ThinkPad-X240s>
 <c16ee888-73cc-588d-6156-bb5528d635cf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c16ee888-73cc-588d-6156-bb5528d635cf@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_015928_061363_2D908BB5 
X-CRM114-Status: GOOD (  25.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Song Liu <songliubraving@fb.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Suzuki Poulouse <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 netdev@vger.kernel.org, coresight@lists.linaro.org,
 Alexei Starovoitov <ast@kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Peter Zijlstra <peterz@infradead.org>,
 Yonghong Song <yhs@fb.com>, Namhyung Kim <namhyung@kernel.org>,
 bpf@vger.kernel.org, Jiri Olsa <jolsa@redhat.com>,
 Martin KaFai Lau <kafai@fb.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adrian,

On Wed, Sep 04, 2019 at 10:26:13AM +0300, Adrian Hunter wrote:

[...]

> > Could you take chance to review my below replying?  I'd like to get
> > your confirmation before I send out offical patch.
> 
> It is not necessary to do kallsyms__parse for x86_64, so it would be better
> to check the arch before calling that.

Thanks for suggestion, will do it in the formal patch.

> However in general, having to copy and use kallsyms with perf.data if on a
> different arch does not seem very user friendly.

Agree.  Seems it's more reasonable to save related info in
perf.data; TBH, I have no idea for how to do that.

> But really that is up to Arnaldo.

@Arnaldo, if possible could you take a look for below change?

If you don't think below code is the right thing and it's not a common
issue, then maybe it's more feasible to resolve this issue only for
Arm CoreSight specific.

Please let me know how about you think for this?

Thanks,
Leo Yan

> >> For your question for taking a perf.data file to a machine with a
> >> different architecture, we can firstly use command 'perf buildid-list'
> >> to print out the buildid for kallsyms, based on the dumped buildid we
> >> can find out the location for the saved kallsyms file; then we can use
> >> option '--kallsyms' to specify the offline kallsyms file and use the
> >> offline kallsyms to fixup kernel start address.  The detailed commands
> >> are listed as below:
> >>
> >> root@debian:~# perf buildid-list
> >> 7b36dfca8317ef74974ebd7ee5ec0a8b35c97640 [kernel.kallsyms]
> >> 56b84aa88a1bcfe222a97a53698b92723a3977ca /usr/lib/systemd/systemd
> >> 0956b952e9cd673d48ff2cfeb1a9dbd0c853e686 /usr/lib/aarch64-linux-gnu/libm-2.28.so
> >> [...]
> >>
> >> root@debian:~# perf script --kallsyms ~/.debug/\[kernel.kallsyms\]/7b36dfca8317ef74974ebd7ee5ec0a8b35c97640/kallsyms
> >>
> >> The amended patch is as below, please review and always welcome
> >> any suggestions or comments!
> >>
> >> diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
> >> index 5734460fc89e..593f05cc453f 100644
> >> --- a/tools/perf/util/machine.c
> >> +++ b/tools/perf/util/machine.c
> >> @@ -2672,9 +2672,26 @@ int machine__nr_cpus_avail(struct machine *machine)
> >>  	return machine ? perf_env__nr_cpus_avail(machine->env) : 0;
> >>  }
> >>  
> >> +static int machine__fixup_kernel_start(void *arg,
> >> +				       const char *name __maybe_unused,
> >> +				       char type,
> >> +				       u64 start)
> >> +{
> >> +	struct machine *machine = arg;
> >> +
> >> +	type = toupper(type);
> >> +
> >> +	/* Fixup for text, weak, data and bss sections. */
> >> +	if (type == 'T' || type == 'W' || type == 'D' || type == 'B')
> >> +		machine->kernel_start = min(machine->kernel_start, start);
> >> +
> >> +	return 0;
> >> +}
> >> +
> >>  int machine__get_kernel_start(struct machine *machine)
> >>  {
> >>  	struct map *map = machine__kernel_map(machine);
> >> +	char filename[PATH_MAX];
> >>  	int err = 0;
> >>  
> >>  	/*
> >> @@ -2696,6 +2713,22 @@ int machine__get_kernel_start(struct machine *machine)
> >>  		if (!err && !machine__is(machine, "x86_64"))
> >>  			machine->kernel_start = map->start;
> >>  	}
> >> +
> >> +	if (symbol_conf.kallsyms_name != NULL) {
> >> +		strncpy(filename, symbol_conf.kallsyms_name, PATH_MAX);
> >> +	} else {
> >> +		machine__get_kallsyms_filename(machine, filename, PATH_MAX);
> >> +
> >> +		if (symbol__restricted_filename(filename, "/proc/kallsyms"))
> >> +			goto out;
> >> +	}
> >> +
> >> +	if (kallsyms__parse(filename, machine, machine__fixup_kernel_start))
> >> +		pr_warning("Fail to fixup kernel start address. skipping...\n");
> >> +
> >> +out:
> >>  	return err;
> >>  }
> >>  
> >>
> >> Thanks,
> >> Leo Yan
> > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
