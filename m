Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB260360FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 18:16:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YS7hQ0FgriQZ5U+xHEhd+LK0Sp4hGktdAoqZeEYsXH0=; b=GNO
	MxcIqC8P1bJ8gu+SNicoyI3zlOp09JASNbdmbl0CS6DeJK3YbBQvsogtbvLi68mhNrp2hoblu2+mr
	Nk9db2LMJc5FTUV2W+EgOQyn5CUOjaDAVJOf9k+osDxlk4K4r3YCgn4sicUrhPkRe+Ioqnbf7B+9S
	y9VKyFg12AjczfbQvH3AbeG/kXWZECioaehA/H5IGmQDzFsANUQsNDGkMjQmJ5MoIXKSrvKQSpI9G
	zI0/Aef+OZP6qXSMLIG850tAelqqayOtHeTuByZMWc6VaO829ZQu5DI7Kc3I9OudCqsEkaXhPsoEA
	Adzq15GG/dV7Ew+7+GfPcBTzeU+q4cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYYah-00056r-81; Wed, 05 Jun 2019 16:16:43 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYYaa-00056Q-4C
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 16:16:37 +0000
Received: by mail-pl1-x643.google.com with SMTP id go2so9855536plb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 09:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=xLM0D3C8CCsCt6msISf4AYmsTW1+yagPC3E2NizVr1U=;
 b=eaB5VOCIjRJZgBnHDYAAiEnU+dKOASsiuknjI+8nMZt6qESFv5ce4YIaRM0/hHRYGg
 0ms6tPoQtZZ6rTD9Z7eAgNCqXc1lkQUhYryZAPPuN/nTJczsnLpqX0zKdvbDAUpPzPDz
 TjL+4dVtFFckZwUPRCv13wmZ8AimRV+O9DmRI9UT+jVkXZ1/S0/WCEQTnRmocd2Sv2qs
 r+265XEt+GC7ywsBv3zzYQIE95PLnrV2HLavls4tD2Fm5w6Tj3SghLgDfT/ORzIB1vOA
 tyyFgdagSJhHmr/ovWBKL7UXCNofmueRkpdPwMhKFykRbFRklvOgZAPDU9fRTxU748Uf
 Wkxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=xLM0D3C8CCsCt6msISf4AYmsTW1+yagPC3E2NizVr1U=;
 b=UwI4gNEc8lEaQeZsyTEdy+73GWLnqDA7uVbwEeXmAIoxQ2pGQqXHQUcxgrOfMhL8Zn
 EUCGHSZMVbNdVc4LNt0xruGFT81hkIxdxr9hpXJQ6NCxJk335xzuqN0FU/IFkAI+ojA5
 62bhUAJiwNaP6XoNpwfILKf0cH2OPZdcy7RVJsahz5k4c2XqL3ToRvywxKeNeeUXVddP
 cHUXOAs2GQU7WYAMNcP5Cwnz9kjcLG4xJwvGTF2TwSgoAnzdyjwruCtL5DM0E/8LqQDt
 SQkOlNFddH+DwViRDDTLxqfIwWcq9E5gNEey7HYm/0RG/Ap/kfd6YfcAnDAr1oUTFDJS
 3d6g==
X-Gm-Message-State: APjAAAXd9q/atMcookdynmDEM1l3tjwqHGscNVOCS6Tc5B7cBgWn0Yio
 JqWY7SwLwxaDfS4/lmjz9/5OHQ==
X-Google-Smtp-Source: APXvYqxOSvAhSuJnewktzcBpiX3X81UGPPY1Ak2qX6BA7WHwwzKpmaL3neX4DgUhAAubG5li1OrIqA==
X-Received: by 2002:a17:902:16f:: with SMTP id
 102mr2827830plb.94.1559751394983; 
 Wed, 05 Jun 2019 09:16:34 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a16sm16090809pfc.167.2019.06.05.09.16.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 09:16:34 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: acme@kernel.org
Subject: [PATCH] perf tools: Properly set the value of 'old' and 'head' in
 snapshot mode
Date: Wed,  5 Jun 2019 10:16:33 -0600
Message-Id: <20190605161633.12245-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_091636_187620_CA68E2E8 
X-CRM114-Status: GOOD (  21.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: suzuki.poulose@arm.com, peterz@infradead.org, linux-kernel@vger.kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, leo.yan@linaro.org,
 jolsa@redhat.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the necessay intelligence to properly compute the value
of 'old' and 'head' when operating in snapshot mode.  That way we can get
the latest information in the AUX buffer and be compatible with the
generic AUX ring buffer mechanic.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
