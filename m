Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BE83064B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 03:45:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ujLZ5v/JSzqiYSBMW4Dqf0SioNxHHi89dwTqFLexb4=; b=HRknIt9cxlPiAP
	OwLHDLL5PGXLMHQol1WdwdZF9PC4Xhv3CzTabpMQpjRpHv/QyiydrowoWjRWepTNRWvbl0GmYO4Q4
	pgH9gYdDG8XR5qoGVoex2pp5NktqOvI5a1qIxRVoen2sBTHPhWVfVnUZ8d6t5s4+KCp+h0j9g9wki
	2KqY76g4+1REd/egzFb8UTOv+YUl6AuZGJo+snhbUBSD2Hnr9m68o9ujlwK7Sw71gaBM+2pPPQHxJ
	MFlNLrjWPx4TxWQ8yWjg/Wy+cs+eWSG9TDznGEmdURjh8VyDj0hbHtzXJUqTKe3EiS9E6CUYhV4ts
	TREjBfwOjLZtlNa2xhEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWWcF-0004a7-A1; Fri, 31 May 2019 01:45:55 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWWc7-0004ZS-Ut
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 01:45:49 +0000
Received: by mail-ot1-x342.google.com with SMTP id l17so7650231otq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 18:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1kzmeVVPqkiMo/xI5ELAii6GxtReXpmBzBpH3mrY8QU=;
 b=JnWtYVGH0MFiUg+7spw56SogTuH9sew5/6iuwbW1odSs5B/8yLAMh+Noi5XLF8Qts3
 B+j9J29T2N0pVYGuMcnd9+s24dbSagFCVD1TwJHj5mrL2IOcoR1ZxWf8BkZza+PLwRCd
 YbxipGZyJV3h/9fVfBXeU8ZrATwVF9Epm0gWFrEv96de2Z+PMnc8sY7ZKQoZMsKZ0t1v
 3WYtwJBtAZcy2osKwkklfLnCOQL5xFHRiR3x1Q2dkOFJKaMUTapHODEYnnGXoFz1ZoGF
 eLJJg0jth+9D5EXrdoHrGLOar4Gcy8ebtgknbk4wuXi8k/m4qYpCQ3A/YKTKdwpuuvt4
 bTwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1kzmeVVPqkiMo/xI5ELAii6GxtReXpmBzBpH3mrY8QU=;
 b=sNMXi7fCW27P3S8NMDvMX+3v+0K2IXtEqU/oC8rMpJSopITPzJhjPNWkxuWNMCZRd7
 /82GeaOAYwdEjc82oniVQT6gbI7/cVe1lIcS3LyVUxDIXnZwCuv6vZszv0LHmY/yk2Sc
 oeq5V+kpaZSLH/pzU82aE/WqD2n6A5PpGly/m1rIGofo9lgHOzpGUbYVXVj+Yz3Ac62B
 lXC9mkTXDJ/hJhJjv9mV1ikQRiAV9mAE9V248IEeADyqM0OKjeeV5jg47/zjUloCsPKw
 lYRbY6YopF+8JrOLpKOlk0Sd4B0H44P8NqoE3fOximVRweIsjbXWEgMaHuIhA+/UuwKl
 Ll1A==
X-Gm-Message-State: APjAAAXlKmHmPEI6d5ajCmqSZtLFVD5/zEae2hWYa50+1xOWPLKt7Mpd
 1RdXN7NEBU6VzGd9M8jJZn6nFQ==
X-Google-Smtp-Source: APXvYqzHtAYjCMIod0bhKOJww4qG12+Qf8STmxFDDlC7pPYrFiOYhNjiqNLvyq8J2M50S3f7WEnMdQ==
X-Received: by 2002:a9d:7c85:: with SMTP id q5mr4621731otn.31.1559267145525;
 Thu, 30 May 2019 18:45:45 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li808-42.members.linode.com.
 [104.237.132.42])
 by smtp.gmail.com with ESMTPSA id n2sm1525287otl.7.2019.05.30.18.45.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 30 May 2019 18:45:43 -0700 (PDT)
Date: Fri, 31 May 2019 09:45:34 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v2 00/17] perf tools: Coresight: Add CPU-wide trace support
Message-ID: <20190531014534.GA5121@leoy-ThinkPad-X240s>
References: <20190524173508.29044-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524173508.29044-1-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_184548_357831_112A442A 
X-CRM114-Status: GOOD (  17.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: suzuki.poulose@arm.com, peterz@infradead.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, acme@kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 jolsa@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 11:34:51AM -0600, Mathieu Poirier wrote:
> This patchset adds support for CoreSight CPU-wide trace scenarios.  More 
> specifically it extends the work that was done for per thread scenarios to
> handle more than a single trace ID.  It also temporally correlate traces
> based on timestamp generated by the tracers so that rendering by the perf
> mechanic is ordered.
> 
> Everything is based on Arnaldo's perf/core branch (46d4c9a05285).  I will
> send another revision when it is rebased to a 5.2 rc candidate.
> 
> Before this set:
> 	# root@juno:/home/linaro# perf record -e cs_etm/@20070000.etr/ -C 2,3 sleep 1
> 	failed to mmap with 12 (Cannot allocate memory)
> 
> After this set:
> 	# root@juno:/home/linaro# perf record -e cs_etm/@20070000.etr/ -C 2,3 sleep 1
> 	[ perf record: Captured and wrote 1.352 MB perf.data ]

I have tested this patch set on Juno and DB410c boards, FWIW:

Tested-by: Leo Yan <leo.yan@linaro.org>

> Regards,
> Mathieu
> 
> Changes for V2:
> * Fixed error condition in function cs_etm_set_option() (Leo)
> * Fixed changelog spelling error (Leo).
> * Moved from calloc() to malloc() in cs_etm__etmq_get_traceid_queue()
> * Got rid of CS_ETM_PACKET_QUEUE_NR macro
> * Fixed indentation problem in function cs_etm__process_traceid_queue() (Leo).
> 
> Mathieu Poirier (17):
>   perf tools: Configure contextID tracing in CPU-wide mode
>   perf tools: Configure timestsamp generation in CPU-wide mode
>   perf tools: Configure SWITCH_EVENTS in CPU-wide mode
>   perf tools: Add handling of itrace start events
>   perf tools: Add handling of switch-CPU-wide events
>   perf tools: Refactor error path in cs_etm_decoder__new()
>   perf tools: Move packet queue out of decoder structure
>   perf tools: Fix indentation in function
>     cs_etm__process_decoder_queue()
>   perf tools: Introduce the concept of trace ID queues
>   perf tools: Get rid of unused cpu in struct cs_etm_queue
>   perf tools: Move thread to traceid_queue
>   perf tools: Move tid/pid to traceid_queue
>   perf tools: Use traceID aware memory callback API
>   perf tools: Add support for multiple traceID queues
>   perf tools: Linking PE contextID with perf thread mechanic
>   perf tools: Add notion of time to decoding code
>   perf tools: Add support for CPU-wide trace scenarios
> 
>  tools/perf/Makefile.config                    |    3 +
>  tools/perf/arch/arm/util/cs-etm.c             |  186 ++-
>  .../perf/util/cs-etm-decoder/cs-etm-decoder.c |  269 +++--
>  .../perf/util/cs-etm-decoder/cs-etm-decoder.h |   39 +-
>  tools/perf/util/cs-etm.c                      | 1026 +++++++++++++----
>  tools/perf/util/cs-etm.h                      |  103 ++
>  6 files changed, 1252 insertions(+), 374 deletions(-)
> 
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
