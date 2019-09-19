Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DE5B775A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 12:25:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c+W85lQUyYraL0r+slicLmRYb3g8B3FpeHuwH3gkpNg=; b=RVq+n59Deyp96y
	7DA5IsEqPgqgv9rMUU2XTatB6rm5XukLsq/d/RETl5F1C//Y2VvkVbELBQwZ6Cn4rDFKl53rx3MDD
	tXTOxb7A8J3h6gEpdzhvu7RkLSs522mm4HEUL6TRk6FtBU0xaQgcVGgtpQqd2DKk/B18w3gaO1p9Q
	otWc56YOxWipVDezV+aRGvaIw1DeRiSxocKEXlZ47q7GydCRZ5zbl7FePoTe0SPDtCi+BE3qvnir4
	MoZAwdfh0Xxydbb14zaCWOIiGgoDu6S/q4q0A09p8s0ZPI0OQeZfLvOZvi6zRJF4CtIit1xpekreO
	LB5qZmMlthLEgAcNX0+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAtdN-0003CP-KT; Thu, 19 Sep 2019 10:25:57 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAtcr-0002wM-9N
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 10:25:27 +0000
Received: by mail-wr1-x444.google.com with SMTP id b9so2546270wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 03:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RQH3sxdCSDhIfGdbCjdRoLM/sLLm5iODyAbQ5C/Ltw0=;
 b=E+UHiJSGEVWW51Mla00YaqY1xV4mU3Y+5rJsa4CDkZOUugcHeGYU8NUsvjyGdh1Y9W
 6ARRrK0ebicbUwvDp1hlZN1n7QfctXKyAu4DzKH5+41QbuAvDnrH33FdTGNAFkSJvfLy
 QM3+A4NxjDFI/AEFwzPmTTBsJZuL/7hvlJu+Vf8r89v9tYTyaECETWLTqQFVOI9fDTz6
 jp3aKuYmkkDyi97/DKgrXUPLbOji6zSqzZFO5bhxbSC7m+BZtVgnQ7VgA2ecK075aFiW
 fC7vMa1LtUIZ2tLG8H1NDl9Y2sjMBKz05YG90pNkgwuuimMWh0mQX+blFA/9c8gYS99O
 ce4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RQH3sxdCSDhIfGdbCjdRoLM/sLLm5iODyAbQ5C/Ltw0=;
 b=YdavVy0A3k0ayaUpZGHxTB+6l17VLtVufedv95jmfnaUz/2cKSnWLoY8J/qPnsi0Yu
 IQ3UXCJj2FMxtTJwhNQA+mdFJhsy1HPajw/IWHHPBW/wEO8fLCxw24o6M0dd9YQNq/sw
 C7osFq9r/OH7yGmKnIyufHKZAnkscQYcm9i2cRXFqPa4XB6dkfvPF2Sqy07y2VS4Jgvo
 NSz31+4Mw0uTmG3aN8BpJHhFgwHXkWeZVqu/fvL8pEkSjtxzBKJ2t4SMGxZgNonXplN7
 bo3GvVQT1Aps2pTA60vdol3WOG/zFggSamgycwhsoQ/eCdczQ7b8ZWGo5r2PiEnJnmCb
 ux5A==
X-Gm-Message-State: APjAAAXPQtKw64akbHwAi+PooYRFrzGKlq2SQkqCGQ/S/+MI5+6utAgK
 icBQHLPOPMleVjc/aYEORToMIQ==
X-Google-Smtp-Source: APXvYqzSCZ+aZ9oAmix9jsUH1YYSrCs7/6e+ESB8ntGfVta/Je5txD9GnmfCeBCpuCV6nDG/Eavdjg==
X-Received: by 2002:adf:eccd:: with SMTP id s13mr6749982wro.288.1568888723655; 
 Thu, 19 Sep 2019 03:25:23 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id a18sm19542000wrh.25.2019.09.19.03.25.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 03:25:23 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: sboyd@kernel.org,
	jbrunet@baylibre.com,
	mturquette@baylibre.com
Subject: [PATCH RFC 1/2] clk: introduce clk_invalidate_rate()
Date: Thu, 19 Sep 2019 12:25:17 +0200
Message-Id: <20190919102518.25126-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190919102518.25126-1-narmstrong@baylibre.com>
References: <20190919102518.25126-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_032525_326963_E4D0AEA8 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This introduces the clk_invalidate_rate() call used to recalculate the
rate and parent tree of a particular clock if it's known that the
underlying registers set has been altered by the firmware, like from
a suspend/resume handler running in trusted cpu mode.

The call refreshes the actual parent and when changed, instructs CCF
the parent has changed. Finally the call will recalculate the rate of
each part of the tree to make sure the CCF cached tree is in sync with
the hardware.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/clk/clk.c   | 70 +++++++++++++++++++++++++++++++++++++++++++++
 include/linux/clk.h | 13 +++++++++
 2 files changed, 83 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index ca99e9db6575..8acf38ce3cc4 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -2557,6 +2557,76 @@ int clk_set_parent(struct clk *clk, struct clk *parent)
 }
 EXPORT_SYMBOL_GPL(clk_set_parent);
 
+/**
+ * __clk_invalidate_tree
+ * @core: first clk in the subtree
+ *
+ * Walks the subtree of clks starting with clk and recalculates the parents,
+ * then accuracies and rates as it goes.
+ */
+static int __clk_invalidate_tree(struct clk_core *core)
+{
+	struct clk_core *parent, *old_parent;
+	int ret, i, num_parents;
+
+	num_parents = core->num_parents;
+
+	for (i = 0; i < num_parents; i++) {
+		parent = clk_core_get_parent_by_index(core, i);
+		if (!parent)
+			continue;
+
+		ret = __clk_invalidate_tree(parent);
+		if (ret)
+			return ret;
+	}
+
+	parent = __clk_init_parent(core);
+
+	if (parent != core->parent) {
+		old_parent = __clk_set_parent_before(core, parent);
+		__clk_set_parent_after(core, parent, old_parent);
+	}
+
+	__clk_recalc_accuracies(core);
+	__clk_recalc_rates(core, 0);
+
+	return 0;
+}
+
+static int clk_core_invalidate_rate(struct clk_core *core)
+{
+	int ret;
+
+	clk_prepare_lock();
+
+	ret = __clk_invalidate_tree(core);
+
+	clk_prepare_unlock();
+
+	return ret;
+}
+
+/**
+ * clk_invalidate_rate - invalidate and recalc rate of the clock and it's tree
+ * @clk: the clk whose rate is too be invalidated
+ *
+ * If it's known the actual hardware state of a clock tree has changed,
+ * this call will invalidate the cached rate of the clk and it's possible
+ * parents tree to permit recalculation of the actual rate.
+ *
+ * Returns 0 on success, -EERROR otherwise.
+ * If clk is NULL then returns 0.
+ */
+int clk_invalidate_rate(struct clk *clk)
+{
+	if (!clk)
+		return 0;
+
+	return clk_core_invalidate_rate(clk->core);
+}
+EXPORT_SYMBOL_GPL(clk_invalidate_rate);
+
 static int clk_core_set_phase_nolock(struct clk_core *core, int degrees)
 {
 	int ret = -EINVAL;
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 853a8f181394..46db47ffb7b2 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -629,6 +629,19 @@ long clk_round_rate(struct clk *clk, unsigned long rate);
  */
 int clk_set_rate(struct clk *clk, unsigned long rate);
 
+/**
+ * clk_invalidate_rate - invalidate and recalc rate of the clock and it's tree
+ * @clk: the clk whose rate is too be invalidated
+ *
+ * If it's known the actual hardware state of a clock tree has changed,
+ * this call will invalidate the cached rate of the clk and it's possible
+ * parents tree to permit recalculation of the actual rate.
+ *
+ * Returns 0 on success, -EERROR otherwise.
+ * If clk is NULL then returns 0.
+ */
+int clk_invalidate_rate(struct clk *clk);
+
 /**
  * clk_set_rate_exclusive- set the clock rate and claim exclusivity over
  *                         clock source
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
