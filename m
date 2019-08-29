Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4971BA2912
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 23:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qjXs0862SzxSlXDWOrgdheRwdpmytsfUI3UJlt6fs4I=; b=bKs+DQjCLH5tO5/TkWUrbVo4Uy
	cGqpXpQqFGezxgGUGhMSxFaTelYYjtU2d7CDjzNlb6lL69xQb38aC+421ogfdDQewxvOQGtfDU+z1
	hga4mCSdSlZ8xDilj9lJFtIQUzpM6VBPyXfuDW3s8oDDiqbB1kQAWujk9KpFQHcLlu12WvPPsQLMi
	ibxGIdEqIqp3BZIp3lSBc0UETybhLeSQDUmuWqwxUK13jLI5V6C+2tRWHdHOIP2QyLCiYhMT/5u0o
	byxOQ2nvviY5h6OesA1sH62A8OKgcLCt6CChTebziywiTotXy8vQUN84t6Z5qO4cSyykEjgmkyA9s
	ieSEmJag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3S4a-00043J-Q5; Thu, 29 Aug 2019 21:35:16 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3S2z-0002kd-GX
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 21:33:38 +0000
Received: by mail-wr1-x443.google.com with SMTP id h7so3550400wrt.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 14:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8LXQM9F9gVyH/d7euMv5jJ52783FmwhtSnblpFZBMA8=;
 b=Nvusx6VwpGAACE0gmeUw/7najPohn7VZCFilIhl52UIXX78owxbPhlTLoizwZmLz/N
 Bq7xI4r+m4dj+s2jPW3VzvwH+OLBE6z4NM+1v9oNRppVBD7FT9hhb2U+IFT+3rnURDfb
 rYJVf1vkogJAc7wKkruLtdYR6dfBkzJr8zgiYqE81NMGihHzBqKid+eeZiMBbwoLisWS
 js9OPuD24JRQRpX+2JTMdo1DGHHT8bTMBDuADER3Rr7JpwdZofEEuYyz8HMhFpr30JOA
 Rgl6DpHNnueq5yKBaPGXurmzNHxNH8pnEd3JsU4DjrkPNaMfOzOxzos7iM2tJx38SAJB
 VsPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8LXQM9F9gVyH/d7euMv5jJ52783FmwhtSnblpFZBMA8=;
 b=QrzBZZYoKZV/kI91bnRFfWNjYll+4GDs+eAS68VGJ6bW4NU1wwH089M4f7oup+GWeF
 nIfXIOCvzvslCNznmLKf2ocJCFGdtskIaYgQJM+36UPCf2kk2b41uVbMbcb087owYFZe
 LKm5SNbcXq82mZ6Ef7lGn7ZXfDoBXHTiaHqWqSghx16h00HLfwd8kxi7Tb+Ms/IfP9QL
 LhxCpFwXSck97mhbssgyLJH+rZq1wj4qW3EGsSxYO95C1KepQnEMGvMD3A7IPuUWOOjF
 Vn1v69b+MjfIpV4IPawiMR1yT2gNQba/A8uwWJDBN7pLvvVuQy7gFYI1NkJ34p8MBXxF
 S52Q==
X-Gm-Message-State: APjAAAXK0V4VhrPBHzl3osW9UM/lAHGfuG3X68LGjbDgJlmNa/x8bZiM
 er8L6xpheDHCHLjYXPZxNUclaw==
X-Google-Smtp-Source: APXvYqwEjT44/GOc6WMzs6WjS5qtYwAFA2602XbCSajPmTqOG49K15Uuyydmzc5BsE29aWpkS6rySw==
X-Received: by 2002:a5d:4206:: with SMTP id n6mr14314673wrq.110.1567114415964; 
 Thu, 29 Aug 2019 14:33:35 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:c44b:1415:84d1:2692])
 by smtp.gmail.com with ESMTPSA id o17sm4515711wrx.60.2019.08.29.14.33.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 14:33:35 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, mathieu.poirier@linaro.org,
 linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v2 06/11] coresight: etm4x: Improve usability of sysfs - CID
 and VMID masks.
Date: Thu, 29 Aug 2019 22:33:16 +0100
Message-Id: <20190829213321.4092-7-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829213321.4092-1-mike.leach@linaro.org>
References: <20190829213321.4092-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_143337_564582_E59D4F5A 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: gregkh@linuxfoundation.org, corbet@lwn.net, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Context ID and VM ID masks required 2 value inputs, even when the
second value is ignored as insufficient CID / VMID comparators are
implemented.

Permit a single value to be used if that is sufficient to cover all
implemented comparators.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etm4x-sysfs.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index e4a9ce76ed33..171d3c580968 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
@@ -1794,6 +1794,7 @@ static ssize_t ctxid_masks_store(struct device *dev,
 	unsigned long val1, val2, mask;
 	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 	struct etmv4_config *config = &drvdata->config;
+	int nr_inputs;
 
 	/*
 	 * Don't use contextID tracing if coming from a PID namespace.  See
@@ -1809,7 +1810,9 @@ static ssize_t ctxid_masks_store(struct device *dev,
 	 */
 	if (!drvdata->ctxid_size || !drvdata->numcidc)
 		return -EINVAL;
-	if (sscanf(buf, "%lx %lx", &val1, &val2) != 2)
+	/* one mask if <= 4 comparators, two for up to 8 */
+	nr_inputs = sscanf(buf, "%lx %lx", &val1, &val2);
+	if ((drvdata->numcidc > 4) && (nr_inputs != 2))
 		return -EINVAL;
 
 	spin_lock(&drvdata->spinlock);
@@ -1983,6 +1986,7 @@ static ssize_t vmid_masks_store(struct device *dev,
 	unsigned long val1, val2, mask;
 	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 	struct etmv4_config *config = &drvdata->config;
+	int nr_inputs;
 
 	/*
 	 * only implemented when vmid tracing is enabled, i.e. at least one
@@ -1990,7 +1994,9 @@ static ssize_t vmid_masks_store(struct device *dev,
 	 */
 	if (!drvdata->vmid_size || !drvdata->numvmidc)
 		return -EINVAL;
-	if (sscanf(buf, "%lx %lx", &val1, &val2) != 2)
+	/* one mask if <= 4 comparators, two for up to 8 */
+	nr_inputs = sscanf(buf, "%lx %lx", &val1, &val2);
+	if ((drvdata->numvmidc > 4) && (nr_inputs != 2))
 		return -EINVAL;
 
 	spin_lock(&drvdata->spinlock);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
