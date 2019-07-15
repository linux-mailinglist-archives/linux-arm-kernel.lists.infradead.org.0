Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DB568E98
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 16:08:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j3P9clA6qMx0zqLev5PORi97YPtHekuB471b/U/SHpc=; b=ZPEAK6aArSCCQw
	yXRynAtvLFjDTAIShQzX9l0haXuFpot6LmuqvXfnL+xGSduSjVI4La3GAp+58vAwbh4wQnFhIk9qU
	G4kJEj/G5OxDNZ3IWSl9E0RnG5ctY8NRS+hmPtWuX0IAzz0lccbwtxtFSumEYrRfe2Ms9yt42I1yz
	MJxVGpCgJ11w4PVL4+7ik7bqY+jbLZSLDo63cArcUhXZrfLs9iJLDXKRwd4dfKnsWOfpnyNPMq/1O
	ztgWy7l/GEuuNbWophm3vaVpxhTXf7lhgnfETfbl/TdDJ33xaUEBFQZ2YPPf2hVQM2mQ8dd6HilUs
	aJwTe8oWB2kf9nwIAf1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn1eI-0005I1-Sr; Mon, 15 Jul 2019 14:08:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn1e6-0005HE-43
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 14:08:03 +0000
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 46EE620868;
 Mon, 15 Jul 2019 14:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563199681;
 bh=21E28yYC78DofIBAFVkNU2FsYhLQKYybxmuuZCw+0KM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nW/v01SaA9cCQhVkofYfHBuG8Xnvvyva8gPEW7Jooz3TQXfu3ETMrDE7nET7XHoj5
 fuJQgFQK359DhPjpoaVs6Lfjc1oxTmt0mEHyfihqbhpCHglSjYGDn1O/Oafhj8jM68
 5O2zmJsDiDtz6zY3DIys2v85nN8rwQ8f5YRgxQBY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.1 071/219] perf cs-etm: Properly set the value of
 'old' and 'head' in snapshot mode
Date: Mon, 15 Jul 2019 10:01:12 -0400
Message-Id: <20190715140341.6443-71-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715140341.6443-1-sashal@kernel.org>
References: <20190715140341.6443-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_070802_192629_097361B3 
X-CRM114-Status: GOOD (  22.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki Poulouse <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Arnaldo Carvalho de Melo <acme@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, Leo Yan <leo.yan@linaro.org>,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mathieu Poirier <mathieu.poirier@linaro.org>

[ Upstream commit e45c48a9a4d20ebc7b639a62c3ef8f4b08007027 ]

This patch adds the necessary intelligence to properly compute the value
of 'old' and 'head' when operating in snapshot mode.  That way we can
get the latest information in the AUX buffer and be compatible with the
generic AUX ring buffer mechanic.

Tester notes:

> Leo, have you had the chance to test/review this one? Suzuki?

Sure.  I applied this patch on the perf/core branch (with latest
commit 3e4fbf36c1e3 'perf augmented_raw_syscalls: Move reading
filename to the loop') and passed testing with below steps:

  # perf record -e cs_etm/@tmc_etr0/ -S -m,64 --per-thread ./sort &
  [1] 19097
  Bubble sorting array of 30000 elements

  # kill -USR2 19097
  # kill -USR2 19097
  # kill -USR2 19097
  [ perf record: Woken up 4 times to write data ]
  [ perf record: Captured and wrote 0.753 MB perf.data ]

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Tested-by: Leo Yan <leo.yan@linaro.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Link: http://lkml.kernel.org/r/20190605161633.12245-1-mathieu.poirier@linaro.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/arch/arm/util/cs-etm.c | 127 +++++++++++++++++++++++++++++-
 1 file changed, 123 insertions(+), 4 deletions(-)

diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
index 911426721170..0a278bbcaba6 100644
--- a/tools/perf/arch/arm/util/cs-etm.c
+++ b/tools/perf/arch/arm/util/cs-etm.c
@@ -31,6 +31,8 @@ struct cs_etm_recording {
 	struct auxtrace_record	itr;
 	struct perf_pmu		*cs_etm_pmu;
 	struct perf_evlist	*evlist;
+	int			wrapped_cnt;
+	bool			*wrapped;
 	bool			snapshot_mode;
 	size_t			snapshot_size;
 };
@@ -536,16 +538,131 @@ static int cs_etm_info_fill(struct auxtrace_record *itr,
 	return 0;
 }
 
-static int cs_etm_find_snapshot(struct auxtrace_record *itr __maybe_unused,
+static int cs_etm_alloc_wrapped_array(struct cs_etm_recording *ptr, int idx)
+{
+	bool *wrapped;
+	int cnt = ptr->wrapped_cnt;
+
+	/* Make @ptr->wrapped as big as @idx */
+	while (cnt <= idx)
+		cnt++;
+
+	/*
+	 * Free'ed in cs_etm_recording_free().  Using realloc() to avoid
+	 * cross compilation problems where the host's system supports
+	 * reallocarray() but not the target.
+	 */
+	wrapped = realloc(ptr->wrapped, cnt * sizeof(bool));
+	if (!wrapped)
+		return -ENOMEM;
+
+	wrapped[cnt - 1] = false;
+	ptr->wrapped_cnt = cnt;
+	ptr->wrapped = wrapped;
+
+	return 0;
+}
+
+static bool cs_etm_buffer_has_wrapped(unsigned char *buffer,
+				      size_t buffer_size, u64 head)
+{
+	u64 i, watermark;
+	u64 *buf = (u64 *)buffer;
+	size_t buf_size = buffer_size;
+
+	/*
+	 * We want to look the very last 512 byte (chosen arbitrarily) in
+	 * the ring buffer.
+	 */
+	watermark = buf_size - 512;
+
+	/*
+	 * @head is continuously increasing - if its value is equal or greater
+	 * than the size of the ring buffer, it has wrapped around.
+	 */
+	if (head >= buffer_size)
+		return true;
+
+	/*
+	 * The value of @head is somewhere within the size of the ring buffer.
+	 * This can be that there hasn't been enough data to fill the ring
+	 * buffer yet or the trace time was so long that @head has numerically
+	 * wrapped around.  To find we need to check if we have data at the very
+	 * end of the ring buffer.  We can reliably do this because mmap'ed
+	 * pages are zeroed out and there is a fresh mapping with every new
+	 * session.
+	 */
+
+	/* @head is less than 512 byte from the end of the ring buffer */
+	if (head > watermark)
+		watermark = head;
+
+	/*
+	 * Speed things up by using 64 bit transactions (see "u64 *buf" above)
+	 */
+	watermark >>= 3;
+	buf_size >>= 3;
+
+	/*
+	 * If we find trace data at the end of the ring buffer, @head has
+	 * been there and has numerically wrapped around at least once.
+	 */
+	for (i = watermark; i < buf_size; i++)
+		if (buf[i])
+			return true;
+
+	return false;
+}
+
+static int cs_etm_find_snapshot(struct auxtrace_record *itr,
 				int idx, struct auxtrace_mmap *mm,
-				unsigned char *data __maybe_unused,
+				unsigned char *data,
 				u64 *head, u64 *old)
 {
+	int err;
+	bool wrapped;
+	struct cs_etm_recording *ptr =
+			container_of(itr, struct cs_etm_recording, itr);
+
+	/*
+	 * Allocate memory to keep track of wrapping if this is the first
+	 * time we deal with this *mm.
+	 */
+	if (idx >= ptr->wrapped_cnt) {
+		err = cs_etm_alloc_wrapped_array(ptr, idx);
+		if (err)
+			return err;
+	}
+
+	/*
+	 * Check to see if *head has wrapped around.  If it hasn't only the
+	 * amount of data between *head and *old is snapshot'ed to avoid
+	 * bloating the perf.data file with zeros.  But as soon as *head has
+	 * wrapped around the entire size of the AUX ring buffer it taken.
+	 */
+	wrapped = ptr->wrapped[idx];
+	if (!wrapped && cs_etm_buffer_has_wrapped(data, mm->len, *head)) {
+		wrapped = true;
+		ptr->wrapped[idx] = true;
+	}
+
 	pr_debug3("%s: mmap index %d old head %zu new head %zu size %zu\n",
 		  __func__, idx, (size_t)*old, (size_t)*head, mm->len);
 
-	*old = *head;
-	*head += mm->len;
+	/* No wrap has occurred, we can just use *head and *old. */
+	if (!wrapped)
+		return 0;
+
+	/*
+	 * *head has wrapped around - adjust *head and *old to pickup the
+	 * entire content of the AUX buffer.
+	 */
+	if (*head >= mm->len) {
+		*old = *head - mm->len;
+	} else {
+		*head += mm->len;
+		*old = *head - mm->len;
+	}
 
 	return 0;
 }
@@ -586,6 +703,8 @@ static void cs_etm_recording_free(struct auxtrace_record *itr)
 {
 	struct cs_etm_recording *ptr =
 			container_of(itr, struct cs_etm_recording, itr);
+
+	zfree(&ptr->wrapped);
 	free(ptr);
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
