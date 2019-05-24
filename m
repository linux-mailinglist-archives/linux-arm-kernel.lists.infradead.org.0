Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 242F329D11
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 19:35:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wANt8/kirQEdObKs+1+FGIWUtytT0E0xi6WjDVF1OEw=; b=kIt
	0qY9JRcmcpwChU52kDlgVZ7Pl/n75r7Bt7DG+w9gnKYYXxxn3r2AY66gLfCDqulJSYDTlH0kBR8H0
	phjKzSpjyvCTy/ChtIXQHLJzSzMKvTkxD/9Zgo+9vSxeGPo+JcrKBs5M8YpX+zZg+1rHdAjBRmQyY
	ofIYcKiHvwA58MQ5VGyttNGd64XXphMciMQKmXlqCGuYx+XnOP673YhttyNWg5nsHt6KfKHJGlfTE
	wRfiq1dNrTBTZWGwHvfpnPt4J3Oreb6blC0gMMShRcC828hchrinJ4CLwNQMXW3+JGTMR6b0LfYyO
	wpCwvMbtvt4rRxbk3VGmxH04h0HOFLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUE6C-0000oU-GN; Fri, 24 May 2019 17:35:20 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUE64-0000mZ-Ae
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 17:35:14 +0000
Received: by mail-pg1-x541.google.com with SMTP id h2so2366576pgg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 10:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=2HZ3k/jKy00KtbnPh50IWBP9tRSwh/NwMqnQ0RiJHoo=;
 b=XHmdTsjRZxyWcl0BiESRKUpcITtgnfIFNSwhltWBUaPNXOip2l2vafL53RMN4o1OWT
 8XihDlq4nPB/anHG9dwBFN3wi3oJkG4a2ozumVpgWfzg2kH5nq1rQ6jN1+Ni6hRaZY81
 Y8MeIMQZqqZtY4EcXgZNbHgHf9El7bHoyUVHtxLadzognn/Yhq6a6MEbcn0mZUp+Mtge
 FL9KNFQBjEaGPWRMxIUi9CDJVLM1S8MZcJMjnPCVb1y/wfjzWano9pBzCAbUOpWn8Dah
 Ra+IdFuHgC4urm3MUsgbyVA8bAIMQgDXs1UzFvTjsvdw/35zMTrQ5ssImr6HmdfpEC3i
 h16w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=2HZ3k/jKy00KtbnPh50IWBP9tRSwh/NwMqnQ0RiJHoo=;
 b=kRkINS0NkpvJAgmQNVihNK90JKpyj+v/yKu9QSFWM6FfwBQzRAWmKDbwNaUTvSuOeZ
 9EgBLbREQOjKhzIc9mrXrxxyzVwINfGsfBgRLaBToNg0AOrVm5seBgLH/uis88IGyxKD
 Ae+jz3QpqTbzcax98kOa4aBNCIs2EKziVo09Awg9I/lJ0GODd9eEIM3iM/fyrd68M+GH
 5+M/oRWSzHXAHL57VkckPEYRGXQDyou25jrGDoKK3DKlyH3llKGr6JNB1niNWdbu5qjF
 g3coWxg9/bk5dO99VwUEDIPaDnwuQr+XokiElwkfx/QYcRqfJXIcUDTi9rzHWZm8onpf
 Gtlw==
X-Gm-Message-State: APjAAAWnpx/Zf7zFWkDcWr3nYewqcTdr2FCQ77Lh5Tw8ohQUPIlxKGwx
 gDhBaYBvBF5h4rz5E55oDgxUUA==
X-Google-Smtp-Source: APXvYqw4pqYeVUQhf+zsUte6EUAM6fXmVy1JUE+SB56WGUiuCq2CqFVrEnXr9G07yqmTZ1HeUC4tqg==
X-Received: by 2002:a17:90a:36d0:: with SMTP id
 t74mr10774523pjb.4.1558719309972; 
 Fri, 24 May 2019 10:35:09 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k13sm2809575pgr.90.2019.05.24.10.35.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 10:35:09 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: acme@kernel.org
Subject: [PATCH v2 00/17] perf tools: Coresight: Add CPU-wide trace support 
Date: Fri, 24 May 2019 11:34:51 -0600
Message-Id: <20190524173508.29044-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_103512_374661_1AEC7114 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, leo.yan@linaro.org, namhyung@kernel.org, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds support for CoreSight CPU-wide trace scenarios.  More 
specifically it extends the work that was done for per thread scenarios to
handle more than a single trace ID.  It also temporally correlate traces
based on timestamp generated by the tracers so that rendering by the perf
mechanic is ordered.

Everything is based on Arnaldo's perf/core branch (46d4c9a05285).  I will
send another revision when it is rebased to a 5.2 rc candidate.

Before this set:
	# root@juno:/home/linaro# perf record -e cs_etm/@20070000.etr/ -C 2,3 sleep 1
	failed to mmap with 12 (Cannot allocate memory)

After this set:
	# root@juno:/home/linaro# perf record -e cs_etm/@20070000.etr/ -C 2,3 sleep 1
	[ perf record: Captured and wrote 1.352 MB perf.data ]

Regards,
Mathieu

Changes for V2:
* Fixed error condition in function cs_etm_set_option() (Leo)
* Fixed changelog spelling error (Leo).
* Moved from calloc() to malloc() in cs_etm__etmq_get_traceid_queue()
* Got rid of CS_ETM_PACKET_QUEUE_NR macro
* Fixed indentation problem in function cs_etm__process_traceid_queue() (Leo).

Mathieu Poirier (17):
  perf tools: Configure contextID tracing in CPU-wide mode
  perf tools: Configure timestsamp generation in CPU-wide mode
  perf tools: Configure SWITCH_EVENTS in CPU-wide mode
  perf tools: Add handling of itrace start events
  perf tools: Add handling of switch-CPU-wide events
  perf tools: Refactor error path in cs_etm_decoder__new()
  perf tools: Move packet queue out of decoder structure
  perf tools: Fix indentation in function
    cs_etm__process_decoder_queue()
  perf tools: Introduce the concept of trace ID queues
  perf tools: Get rid of unused cpu in struct cs_etm_queue
  perf tools: Move thread to traceid_queue
  perf tools: Move tid/pid to traceid_queue
  perf tools: Use traceID aware memory callback API
  perf tools: Add support for multiple traceID queues
  perf tools: Linking PE contextID with perf thread mechanic
  perf tools: Add notion of time to decoding code
  perf tools: Add support for CPU-wide trace scenarios

 tools/perf/Makefile.config                    |    3 +
 tools/perf/arch/arm/util/cs-etm.c             |  186 ++-
 .../perf/util/cs-etm-decoder/cs-etm-decoder.c |  269 +++--
 .../perf/util/cs-etm-decoder/cs-etm-decoder.h |   39 +-
 tools/perf/util/cs-etm.c                      | 1026 +++++++++++++----
 tools/perf/util/cs-etm.h                      |  103 ++
 6 files changed, 1252 insertions(+), 374 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
