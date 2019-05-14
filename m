Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A4A1D013
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 21:40:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QWfpsZCJTRFQeDaPwuzRHs5u9kV/KHyREfWH4GdMaiw=; b=oGooCV4/P0mBVSiThCtii5WmfK
	R9tTPRWhMS+pSyxxDFPmKVZfj/YDOgPP3f+WAG8dn2l6+hVha0sVHNsikWBIPoGYmnPf71gaf17om
	705ZHmE+2myMw8qK4Z41kG+H26QsG84bhqF5P7rERwf6SOWr3Eh7EykXbe7QkPJSqTAxarzyKEp+U
	7Lue/658WDL91zr1fgRCLIHf9kB2lTJH3Nbc93i2i6gWgNYz3/7cjSLdtfxfef+sfz43SSRVDIX+Y
	Vw2lzm+CoXB03TtIQlD4KHGkp/2pWzCYi61kfhd78en++Ae+6SbfGorRnghOYp3vDHM4T2sQv67MZ
	pKM/slTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQdI0-0006OM-QA; Tue, 14 May 2019 19:40:40 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQdHj-0006FY-2Y
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 19:40:24 +0000
Received: by mail-pl1-x643.google.com with SMTP id f97so105667plb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 12:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6Xpd5fXby+7ekbmSJL/l5IgMLyrh9k2LAW0LAUPjY/8=;
 b=pIIANLrZhKqr2Fkh7C78m66NcKxrJVDij+1KZsZeOGF17vSoHGgodtnEYmpBobXjPz
 cfMMa12eAB3UL39IcMaJpuecD4/zq384Tw2Yetz7jKKTsuI+7rD4lJXq09bSsnOKSU6g
 kW/npFVGXFftSCPBEjY0JkYT9zTHgwsT2tI0RT6BG8bV//YTisJfE+xu+j7B4KAAgRyx
 BlQU4t3uOWYSxDb1nqpf4clAfeWxd+QuPH/Np2GZs009YZ4IS2PrcRkm+9p2+XvoET1F
 ZVJc+lo5lA2kv2Gkpy/zPMWOL2yb7IYWiJf34p4TNhcsF1NBUkSN3nuu5UB1ItvvYgYp
 m/sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6Xpd5fXby+7ekbmSJL/l5IgMLyrh9k2LAW0LAUPjY/8=;
 b=ddWZtiORAAa/oVqaGbTbKc+NMBjGwkZor32o6H8w8RKEA/sS3Hm7AcXWKkiag8aG7i
 QOE61iioSXKz7OduUCAU4NLvhyqXxobnKvcJIO83Ry26AtlmmeZuz05yaeBY4KTZk/iE
 UYDaERI81Fk68nFJ0GTKa9v053zEnCZO/5NKpJSUgK0yKq7xW8PgwJEpH20TNZZ1Tcq+
 /omoerfNQN9hJc089MJEAeSoQXr8YPQZi/H8PxlrE7a9/nZQjQ17rSjBjd4ZddPxptf0
 Yp05KB9XMAXySnYGrWIA3kzqFIjD6GF3iGEDaOX5yRI4exfcN8HUxKq3EDLzRY7lX0+r
 29GQ==
X-Gm-Message-State: APjAAAX8XnKp4eYQ40kkHdO3Tpz4eZc17+Jx/Tb1ItF68pMPnUtV6EAG
 iDMd5FQGvYr9356oe1oCksq2M82Qva0=
X-Google-Smtp-Source: APXvYqwMLGXfFNFWvtXZg67czC687qRDohmxuHMnmeo+hQ11WZtQSlnx57Y/9WBgt8drUlR2t1QX/Q==
X-Received: by 2002:a17:902:22:: with SMTP id 31mr40062070pla.15.1557862821987; 
 Tue, 14 May 2019 12:40:21 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id w66sm5791196pfb.47.2019.05.14.12.40.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 12:40:21 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 1/6] coresight: etb10: Properly set AUX buffer head in
 snapshot mode
Date: Tue, 14 May 2019 13:40:13 -0600
Message-Id: <20190514194018.23420-2-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190514194018.23420-1-mathieu.poirier@linaro.org>
References: <20190514194018.23420-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_124023_112773_358C0A29 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

Unify amongst sink drivers how the AUX ring buffer head is communicated
to user space.  That way the same algorithm in cs_etm_find_snapshot()
can be used to determine where the latest data is and how much of it
to access.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etb10.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
index 4ee4c80a4354..60e753b1768d 100644
--- a/drivers/hwtracing/coresight/coresight-etb10.c
+++ b/drivers/hwtracing/coresight/coresight-etb10.c
@@ -548,13 +548,14 @@ static unsigned long etb_update_buffer(struct coresight_device *csdev,
 	writel_relaxed(0x0, drvdata->base + ETB_RAM_WRITE_POINTER);
 
 	/*
-	 * In snapshot mode we have to update the handle->head to point
-	 * to the new location.
+	 * In snapshot mode we simply increment the head by the number of byte
+	 * that were written.  User space function  cs_etm_find_snapshot() will
+	 * figure out how many bytes to get from the AUX buffer based on the
+	 * position of the head.
 	 */
-	if (buf->snapshot) {
-		handle->head = (cur * PAGE_SIZE) + offset;
-		to_read = buf->nr_pages << PAGE_SHIFT;
-	}
+	if (buf->snapshot)
+		handle->head += to_read;
+
 	__etb_enable_hw(drvdata);
 	CS_LOCK(drvdata->base);
 out:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
