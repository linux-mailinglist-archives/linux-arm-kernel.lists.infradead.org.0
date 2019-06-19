Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE334BFA6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:31:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XonHFz5eiXJswPu4D8CFGTzxWHkyYrx5W2Orliy8mV8=; b=IGfYL5fWKCoVFPZgKuPySr5PAs
	LjJdGfRv6coI0iudijBtgsbTk1tDZ1ElKR3j4QiEFOYO3skzfuKV8yE+NhRBDhjw5KwUbSF96J9mp
	bbP+qvgbD92zIatVUXziAMkv56HnWqcfoWzdT07KfmmPuh3EjIsS/YXGolLEOTw24RgC6LkKDQ79U
	J8TVgPqJG09eEgAGHbee00QbKgWAsGWloVXbr4FksDLEqtB4l7VmFGet302TbIl7lTIinfHr3rjeC
	xLbAgFEXk7T9Chj4v9xhgD67fAdLjh5sjmTgg78Ck8/zBVulvO3E2tkl6NZO08K/emeSLw5T7ZNC8
	cwJTVKSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeQl-0000kr-JO; Wed, 19 Jun 2019 17:31:31 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePC-000726-IT
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:29:56 +0000
Received: by mail-pl1-x644.google.com with SMTP id p1so101348plo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xNRhHxUPWncB5rk9ccCc3nU/kF5YdxipsSBDqELFwA4=;
 b=vcKfhxX/oosFu3ZomeEpMgjZGgs/d+rYYAl2uFr9m5l3fGvil3fFS3fC/sUnOvw/1H
 mpX+EMJvI8Ur0umZkCP9MdTaFkj8WIFHY6f5pqkhchzsm7/tG2jM3AGnqZdoDBdFQUbN
 Z5cT+Ck7rKhscV4/MxXDNiBP+mAw98zqUBiB5CHOMqmK9MuChfNrKNOKLYI4nCGjDmlg
 0ksv1KitZqMRx7FD6l7G3T85srJW/k+NC1eKTITOO0FZPKp0w6ymVzfz8DBkQQE8jvxF
 N5x1gN7K3FNf/BnnJ1ZFCy6Ao7hSuMmPWA65Lx6YCbL9v7VEpznmYTxIcme8rUAubWii
 sy3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xNRhHxUPWncB5rk9ccCc3nU/kF5YdxipsSBDqELFwA4=;
 b=mjj/tKLjHJ9DZgcCylkqKJHTAfYoB4H+gOFU56Vvj2VuzB1vCfjGM5/DSSfk6LehEU
 S6Qk8q3egj1Z3RwMKmxmT9fJObaqzwYxePD6lL9eIUtFSbfeHDNgBQa4FWYpizADkN+r
 DlHiRRIUqsSRuAwMao6bYFu+npD2E3rDXm2Ztp3Nk9mlzYJ7RNz/CBDOtPd7Ctuv4m7N
 4GuOphzetZwzZzB1eaaOghiwiWqp8MIc29NkwW0hVusm/j8JGfownCal9Nn+ch8pI6IC
 f3U+16QX+pt41r647zdpLR/kLTH22orlXlcKrfZHpnq+ZN5+iSwpB3vbGv59c6ZsX2q8
 FhoA==
X-Gm-Message-State: APjAAAWggZ+f7kupoY+qsKHO94F/nPsH6A1Cmcwc5Fki+lOdRLc/isXq
 ojWg78sQlHSMCdtbaFzfoLRx++iYROlS0g==
X-Google-Smtp-Source: APXvYqxasAH5gx1S8sAFZBvO4s6IxUVYwvwnwNgLptvOyIe1OPflgarFzrEGeNPAEMDvjBxTuCP3AQ==
X-Received: by 2002:a17:902:e281:: with SMTP id
 cf1mr39640055plb.271.1560965394018; 
 Wed, 19 Jun 2019 10:29:54 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.29.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:29:53 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 03/45] coresight: tmc-etf: Properly set AUX buffer head in
 snapshot mode
Date: Wed, 19 Jun 2019 11:29:07 -0600
Message-Id: <20190619172949.4522-4-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_102954_605632_3A161C31 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Unify amongst sink drivers how the AUX ring buffer head is communicated
to user space.  That way the same algorithm in user space can be used to
determine where the latest data is and how much of it to access.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Tested-by: Leo Yan <leo.yan@linaro.org>
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
