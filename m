Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B981D016
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 21:41:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=J0Khitkirf5GxFLFfBxqNelz1q8r19yumkNU04NVMmQ=; b=Jm/s5Zwl3Sg/fMbpO8gfQWzMc2
	Am2knOHMKU5NUAYQBgq2Reby4j4bY7PtllZ693i3rcavALU2a+LYCYCjPyR1tLhT5h9uqQDoOyq3q
	Khn1+0JSr9m+nhtDVvxXUb91AyzWzaKruw/F0kVNSjClynepNU7vhvDZ18q3LL9NmyiJzn/aLYpRO
	mdEB6f5wgHNAp7+wUUuIMTCL/89/cAwwzZ7gZ69tLWnD+ib9ByLn1LPwP8RzdZbbqPaG0CpGTLBHb
	7FBPxFdzqPidQW1D/bF0QMWiGzuksSzO2q00YWXpThSTIzYTGGK1w26xWBQn4fSR/uMq+U1yCxgud
	M4luagDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQdIP-0006xV-0G; Tue, 14 May 2019 19:41:05 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQdHl-0006GN-3N
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 19:40:26 +0000
Received: by mail-pl1-x641.google.com with SMTP id c5so91387pll.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 12:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cMypeu62+O4d2QQyEv5D1H2MRXYlgCP4kYc0ttWa7FU=;
 b=JuInKa9BA8nX08TPGghqjluce0xuM9Ra/gvISgsbbNXkIN0szR8TAWCEezVYz1SlCw
 XmZgZwKLIyoDw6wpylHWySLVnVNd/oHnI3mHpYrSD+0eMoFvD/2oOltW1Tr4Z/MPCoB+
 oDLhh7JWgRMl/YjAiAZjGOPnoMQ1AuYIAXo2MZIPWuISZ0fwoeQhGpFgLB6XoaWZyqB9
 7M+ul91cdOYMUbLlbGXPG7M4lbgtjGr1k31Fq6e+WFII8ka4xlm87+/y6IpOQYD6x0Qc
 Nu45dwXLt0hQnPGJ74GsWlMotaNmZmHo6PPW0BPLgu8f9kqBYdtP+6nmEQePiZrTAmDm
 pCBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cMypeu62+O4d2QQyEv5D1H2MRXYlgCP4kYc0ttWa7FU=;
 b=RCLkzGtElMO7vpBCEPhj83TPwgIFCQT5AyZ6mLVFF43BVuKlpSArTTWog769Wqdu0G
 a8lS4uCLkWHYTDfKN94d3y6osuCkkxYO0AZaQ3VCfst6vAjaNxm7gmuM6wy9IO+b4Rnr
 dyZafmQyJlEG6VRcrGcLATu+ggrNJ4ENqoeOcRO9EJxqhCEtzVcGFOOIGnu0ki+pKeHt
 Xe9XcqPqBxUyZf2m0tYlWE/eFJ1MKydDdlpZDC7BGzcLytcVNywQBGN8E5vfS8puXj6j
 xVCVbTTSIxt0dhpPYsdsph5ztXtj8zRwKOvUeF5e9StR43voDaXdE8zxwgNzvlkJEvDv
 8kBg==
X-Gm-Message-State: APjAAAXs4Yd7umHlTX1MAVNqKZovcBro1vGNHUiwIiPy9Kb55q2Pevnr
 LgvIwbPYQwdVFqeB4YV34hS6XckCQsw=
X-Google-Smtp-Source: APXvYqyW4JZffl68wHTIwJqUFBCZKdQ1h1s1FVDOvj2vyVA+bR+jiEOFxbpqvPl4LneRm1ltl2Q5fw==
X-Received: by 2002:a17:902:42:: with SMTP id 60mr39788701pla.79.1557862824173; 
 Tue, 14 May 2019 12:40:24 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id w66sm5791196pfb.47.2019.05.14.12.40.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 12:40:23 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 3/6] coresight: tmc-etf: Properly set AUX buffer head in
 snapshot mode
Date: Tue, 14 May 2019 13:40:15 -0600
Message-Id: <20190514194018.23420-4-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190514194018.23420-1-mathieu.poirier@linaro.org>
References: <20190514194018.23420-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_124025_136499_2F33BFAD 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
 drivers/hwtracing/coresight/coresight-tmc-etf.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
index 2527b5d3b65e..d026bd04a6af 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
@@ -542,11 +542,15 @@ static unsigned long tmc_update_etf_buffer(struct coresight_device *csdev,
 		}
 	}
 
-	/* In snapshot mode we have to update the head */
-	if (buf->snapshot) {
-		handle->head = (cur * PAGE_SIZE) + offset;
-		to_read = buf->nr_pages << PAGE_SHIFT;
-	}
+	/*
+	 * In snapshot mode we simply increment the head by the number of byte
+	 * that were written.  User space function  cs_etm_find_snapshot() will
+	 * figure out how many bytes to get from the AUX buffer based on the
+	 * position of the head.
+	 */
+	if (buf->snapshot)
+		handle->head += to_read;
+
 	CS_LOCK(drvdata->base);
 out:
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
