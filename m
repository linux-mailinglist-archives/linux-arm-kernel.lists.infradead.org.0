Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83370EE728
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 19:17:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U4et1/yCcyYq0ZZ6mIXNBLKPDsMsnSMNF5FaTv/a/e4=; b=LDUCwtqAzZRYDGs8w3m0cx05QR
	ysgxOpU0hBdUkvZLc2P9zAFKF/3m4HppWf81w5JOIkmPaiQVTTPnuRmwrVJ8K9W+mkFFbzpoLM7SU
	qHDvBvDVz9WrUN4dGKHCaZK0MipbdxqUwBJjTUMNrKlCJWDrL0N79IXsw+yzM2atRRNZFDGYn8sF7
	DVmFPs+0e6vQaSjzVBnhpadpgTzFRYfCcfQI8D6mCU6MPmmZcpRdu+XUWAZMFQUlv9rmCtbvdfxgu
	Vxw4Am4bYCXMAfgIVQirmCNgl39DMuxrLwXQZNXznCS6tYD66YDRj78TWP/zwFL/eJNVXiCB8lC9y
	jLyKiCPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRguQ-0003Gk-DV; Mon, 04 Nov 2019 18:16:58 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRgqi-00078Z-8G
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 18:13:09 +0000
Received: by mail-pf1-x444.google.com with SMTP id s5so4591743pfh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 10:13:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1T5qb1N1RGdNwfpZMS1nmW4JbJwNZQr2qiFyXV+vsXI=;
 b=rTRqo8+L54opQw9nOOIGSx7QK90W2+ZzHTPDMmxn1hbCSkcZuUL/6fkN+CfvtBKTdZ
 FQyvs5/addpNUheJk5F/Z7kqcvFW/X/4tEeWTflKsewuuK807msXk2yu5EH/mvLFcn8C
 LwwuwkuAW+DuwfVXerxkf7yv5czpA/VeEQv32eOSsUWvEShW1Ybkhi2zgRLzDd8zw7tP
 pSqjxj5VrqKF6AG548xdbuEneE6ki/9iCegyLDgHa/LySbv9FCZWD8BK28HoIAoEiAwY
 d/q6VWHJNPoL3Sj57PjR8LP8rVb4u90xDO2AC9rM93tw7BEO1mg8GLDusfk05LghjoZF
 cx8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1T5qb1N1RGdNwfpZMS1nmW4JbJwNZQr2qiFyXV+vsXI=;
 b=oD3xV4rDfbfsqA5Bb6noIXvAVwrh2Ve3BMXWRASa5RQ8oL7tvo5B2aRMBisTBcb9js
 hMBkdFwAp+dqG+/dG+8D83jFIP6rEDIHezVfjCFxhkgulSePEHbD4l/qnsLHumh5iqDy
 vQ/QWLpBEBKNhJiB6ST+Kjj9UU0n7bai1oirV0OwCCf5UR968Y+DsPBqjoaPCIb9fSGn
 B+CDtkNA9OakEq/ZgCvrb5Jtc6HGaqO9V7FPwEppgvopzOUCcC1kwdXwRjgeXLVP27Vc
 E+CaE8LaMnFfqcc7Y6Xkm8PVoDF2bHiah2zF7c0quwwaKq6zhXL/5cauUZUwtTR5mBkL
 R6Vg==
X-Gm-Message-State: APjAAAX83k3WMt6SzKmXdw5uAHja4oBMu8QjDNf9/L8XXhiJWNy5iDxI
 sm2tpCsGqcO9Brdz4c8moMdvVkKlSW0=
X-Google-Smtp-Source: APXvYqzbD97XULlwKZFLLde0xd3Mo2cIZLDXgoGyIESD931rEzz+EAcepQaHiaccJptP0Iht3Ow9aQ==
X-Received: by 2002:a17:90a:86c1:: with SMTP id y1mr565934pjv.71.1572891187654; 
 Mon, 04 Nov 2019 10:13:07 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id o12sm16149520pgl.86.2019.11.04.10.13.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 10:13:07 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 14/14] coresight: etm4x: Fix BMVAL misuse
Date: Mon,  4 Nov 2019 11:12:51 -0700
Message-Id: <20191104181251.26732-15-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104181251.26732-1-mathieu.poirier@linaro.org>
References: <20191104181251.26732-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_101308_304229_B5F811F2 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rikard Falkeborn <rikard.falkeborn@gmail.com>

The second argument should be the lsb and the third argument should be
the msb.

Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etm4x-sysfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index 3fc12ac44270..ce41482431f9 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
@@ -1246,7 +1246,7 @@ static ssize_t addr_exlevel_s_ns_show(struct device *dev,
 
 	spin_lock(&drvdata->spinlock);
 	idx = config->addr_idx;
-	val = BMVAL(config->addr_acc[idx], 14, 8);
+	val = BMVAL(config->addr_acc[idx], 8, 14);
 	spin_unlock(&drvdata->spinlock);
 	return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
