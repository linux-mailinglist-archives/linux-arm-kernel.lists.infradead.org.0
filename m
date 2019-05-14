Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4511D017
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 21:41:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FTYFI7ktieYNw9yNB4FrREnpw+nrdsoejxZ2tuKmg+g=; b=m+HOOdi7MSnbkKqTUVLesrlrfq
	uwflO4q2j86n9IOHzG5I45CXr8Qe0b1ZiPIc09Q2H/LuM592IOnzm7Y2xtvRbH3hW6NVmmFrjSwow
	vxo3teoX8FAyPy/qjYiI/CzWE22/VNeyFQ1VzvTrel5s0qXHhqhrtg58wNhRl8wcSKJXAfQxdl3s3
	/UPJxJnvEJoZxIn9RQpq7wrwvFudL7cDxZg8EE+lvsW0/LhSaKZUwhpx3KkBmhQJiVE74qKr4A9dn
	98xKMH/Hn4k2fMYXQv1y6alkRz/RYdrAjeTmHclawyN9F08jTPGNOsCpVcL7V4SSAe2X7Ia0hLqWO
	TsS5yjNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQdIZ-0007B7-AY; Tue, 14 May 2019 19:41:15 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQdHm-0006H1-4j
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 19:40:28 +0000
Received: by mail-pl1-x644.google.com with SMTP id f97so105728plb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 12:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ahqTbyLxNKiH4aCMkEpTRiwITDmQrozYIS4vKSWki9g=;
 b=gAq8XVBmDwYtTZ7sHtRfMR64RRvAik45Y0DUQ1a3aXwTJYSFIXudMVBILW3BiwG5bS
 Lx+lW1OyeysKsnD0T4JYNcUVVVTp4ZVBK/Kb0jZzP4HSiCnBpHYDSfDdjOvjNe1V4Box
 bjiQKdfISfQSHaZn9YS65bMokwZSfx+NjdksfSguA2oJIgcVJZp2tjJliP+/4Y8+HE3V
 xPAmaLJUAWIMb0Ctj+N4V1JCBr9ZuuP9v4lwDCNsclh6CtN58ppOHvqPndreL9gtcc1S
 bD/ExmNCtH6rQ506VGCKBgANlu7RU2491pvsge1XeylAUSvDDy3xN2m2rh7en24/Mp9a
 P3qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ahqTbyLxNKiH4aCMkEpTRiwITDmQrozYIS4vKSWki9g=;
 b=PJ/+OfMSMaWKwLWjZ6zO6/ErENUlN3tSkyy9egOGVuisL21HoOmeYg/ncL9agtK1e5
 1SPHucr6jGlfd016rt4j9FxMNBYL0nGiV5rGoIPtuVhW8Enoh2sGAuqp2dyQSvTgbBpS
 r5Ng4O5jINtADShf1bYGPWIAT/9n+WMO8QjItW6Osfpibzc+0LUMmD81Cy63R9pkbw50
 bnGoGCqGnoC8dq05L/Ob1xFEZvZa7yP/JQh/W6CAdshpeNxlhFmQ0uPAOCPVlGb2xU3u
 D7avT8Tg3gvMXn2OpQ4RhHhfBuQrOQJjvOKs7syyEwMtfWNLUQwsqYI09ubC702vmRs4
 lc/Q==
X-Gm-Message-State: APjAAAXGQrkNpFQeZfml3LwP/t0ZOB5Y1X9XqrJWhoocQ69syAsm43F/
 ZMIIe3SXzt+bhcOfuZ1VmQZqMTxFN/c=
X-Google-Smtp-Source: APXvYqwV+d498s+0xPnmEZGl1ixcG6xHhVsUC0a+p0XsVpmUY7HfTlJrRbzjHDEY9c3CMnY/KpAekg==
X-Received: by 2002:a17:902:b490:: with SMTP id
 y16mr10431038plr.161.1557862825253; 
 Tue, 14 May 2019 12:40:25 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id w66sm5791196pfb.47.2019.05.14.12.40.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 12:40:24 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 4/6] coresight: tmc-etf: Fix snapshot mode update function
Date: Tue, 14 May 2019 13:40:16 -0600
Message-Id: <20190514194018.23420-5-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190514194018.23420-1-mathieu.poirier@linaro.org>
References: <20190514194018.23420-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_124026_293071_E3FD4DC4 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

When working in snapshot mode function perf_aux_output_begin()
does not set the handle->size because the size is expected to be
deduced by the placement of the "head" and "old" pointers in user
space.  As such there is no point in trying to adjust the amount
of data to copy to the ring buffer.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Leo Yan <leo.yan@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-tmc-etf.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
index d026bd04a6af..31d41e2ad955 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
@@ -477,9 +477,11 @@ static unsigned long tmc_update_etf_buffer(struct coresight_device *csdev,
 	/*
 	 * The TMC RAM buffer may be bigger than the space available in the
 	 * perf ring buffer (handle->size).  If so advance the RRP so that we
-	 * get the latest trace data.
+	 * get the latest trace data.  In snapshot mode none of that matters
+	 * since we are expected to clobber stale data in favour of the latest
+	 * traces.
 	 */
-	if (to_read > handle->size) {
+	if (!buf->snapshot && to_read > handle->size) {
 		u32 mask = 0;
 
 		/*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
