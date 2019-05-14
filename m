Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5DA1D01A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 21:41:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FrDGJxrPTolm2LmYX4qIhYLKSsSe91euIg3U/Kq3bhg=; b=noDeQ58AFwvCAb+p8mE0GLDZ8B
	Ym4tDMvkEZ/9/wcTunFrQxYHR+2mirHD4sxX7tVbdv4brv+Rbnff6yX5twRZD+v09gUCeCE6OMZe0
	ooeD6suBZBQ9vLcCDDn9nn/lkMFG0dHYuLI8jX3lEFcfqudj1IAOX4ITnKCCMmL0WH9a6iGO6iTqM
	VtvODzsDChOrhWmhN8e7eIQo4mtoXFqZ2bQ02HlgfFRn3nU+eqhP3u3qjfyKI3ipX3mljh99hvBl2
	8CIxqY8J3eGfZTxLpawVk8bvydwyObl+3hCkin4iOizmSPhQmNTmVyIyWp28pUF5T2ulw/Jp2zLy1
	hgHNBkrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQdIu-0007d8-TA; Tue, 14 May 2019 19:41:36 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQdHp-0006KF-4N
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 19:40:33 +0000
Received: by mail-pl1-x642.google.com with SMTP id n8so93213plp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 12:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ia/ySUxJkS3+hSIVLq78ZfkCxtyaJMeE+VOuGmqDALw=;
 b=qUgM2GWnBZEb56b7w82k9bjLgD8urRgngidn8AER1w1Gw2/lSjB83lCYdwMaaUHjJn
 djkg5WlBoXvr0H/jLM48sGThCCfdo0ABClOCASoheI1EMgdcC/ZucBK+WBfZyojuqh9l
 2w80vOvVpIw8LJc6ffk71cR+oSNotsgHsPXdcj2rc2sKgCHkQKYj/WOQHAnGLTWxhMpj
 UsfKdjIxguoVWXYvEFC5KVabKhyQcRru6tr24nw9jTjgs/qEbCKHf3ZTxUwN3gTxeSkl
 34b+EfoS2O+UHNGwqqjymJwu/0h87Xayy10/zw8JJ6ROcwm6ECDkTIFp5HdSQwS7uEI7
 9tJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Ia/ySUxJkS3+hSIVLq78ZfkCxtyaJMeE+VOuGmqDALw=;
 b=NvXNfK2lAfgUafO0N2uJ4OXWDpIAzyx7Bu4f5b36IERr6bkkGiLU8mXM7Jcj90uLwv
 WCuLT7eurGnj3vXcYZa7obBbr/7CdHwF1NUWGNjZSB/aDSAor8NHbk3aHGuAklCewnIx
 6I/sxEmC09iBr70PsWldt1hXutGxqlkrTrErKjMhXpBA5tgk8ovbYEDyVqUaIK7dVEbr
 fOSCsrXuYCxlmbKLNOqr6h+FIlSADYKII209kzcW6ON2I79nvit/zpa+X4r0Hli85R0N
 PseWTsgWe/SHaqZ4X/d431+Ga7poExOuRu4QRXmweEgmHwhB5Y2H4n3DpE82iTLochZy
 evpQ==
X-Gm-Message-State: APjAAAWzQa8jZGRp6QUtDKjn/l7o8XnqYaQS6YPPgg1zatUjAKr3YV5r
 KuF+2ytxkWXfM3Wx0Ko2BGMLbQgued0=
X-Google-Smtp-Source: APXvYqyF1VnSiyFI3hyzpwKsDCwRgFp6cjiTx8SBby6RvC8Uoul668rWaG0PyrdbWrfTqp5UzSlY4Q==
X-Received: by 2002:a17:902:5c5:: with SMTP id
 f63mr38408813plf.327.1557862827979; 
 Tue, 14 May 2019 12:40:27 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id w66sm5791196pfb.47.2019.05.14.12.40.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 12:40:27 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 6/6] perf tools: Properly set the value of 'old' and 'head'
 in snapshot mode
Date: Tue, 14 May 2019 13:40:18 -0600
Message-Id: <20190514194018.23420-7-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190514194018.23420-1-mathieu.poirier@linaro.org>
References: <20190514194018.23420-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_124029_530781_DA7F2C8C 
X-CRM114-Status: GOOD (  22.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: suzuki.poulose@arm.com, alexander.shishkin@linux.intel.com,
 coresight@lists.linaro.org, acme@kernel.org, peterz@infradead.org,
 mingo@redhat.com, leo.yan@linaro.org, mike.leach@linaro.org
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
 tools/perf/arch/arm/util/cs-etm.c | 124 ++++++++++++++++++++++++++++--
 1 file changed, 119 insertions(+), 5 deletions(-)

diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
index 911426721170..3734e3fd18f8 100644
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
@@ -536,16 +538,126 @@ static int cs_etm_info_fill(struct auxtrace_record *itr,
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
+	/* Free'ed in cs_etm_recording_free() */
+	wrapped = reallocarray(ptr->wrapped, cnt, sizeof(bool));
+	if (!wrapped)
+		return -ENOMEM;
+
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
-	pr_debug3("%s: mmap index %d old head %zu new head %zu size %zu\n",
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
+	pr_debug3("%s: mmap index %d old head %lx new head %lx size %lx\n",
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
@@ -586,6 +698,8 @@ static void cs_etm_recording_free(struct auxtrace_record *itr)
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
