Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC09A2806
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:31:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JH+9rqleL3uv8dNDLIe/Q6/RVEkT92C5GeTn75Z2GVg=; b=nIXnD5rN2nwgcVEz5NXe8M4ig2
	xfCfba6WOjS1TouCsxQuInT1wgr04YVsa3wtV50jwp9xRdbzT+PcH0esG769QujRboTQOLoRYn6rm
	WTFVYO4mAq0/u6rRrABULiwr1O0FdYgKvIeUNAT77IGhDiBVJ/RNZaeg9C6ZoKxzxFqkDyFheLUg6
	mHAww9rFrEduIzwhiClNcq4HoI/vB+5u58gmOjHlbYKa3GSji+86ZsA1PssfkquIu8hOuoABYybYC
	BmaoLQWKsIElXbmSWY2lxHsZofAaBQ3MdaBxy2Yu9CUD933SE+t34+CqAzZJG1CKbsYsovA+xRqrg
	l4USWE0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3R52-0007TN-5V; Thu, 29 Aug 2019 20:31:40 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3R2M-0003mu-70
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:28:55 +0000
Received: by mail-pl1-x641.google.com with SMTP id h3so2116869pls.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 13:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=hCklS4e5K72OswsT6XLNGtZ978s0B4rsmlu1tAGe+pE=;
 b=KlirqNSZYVd0ngq8d59iY7oaVkTclRQjLrdaDsQqLysEor8fK5E/UcrrLEtdl5DIW5
 4caTfoY2avnu8ut2uDCh82SMIXWdpyM/Hh3HO6tjiXItu8KVHryny0bEAO7LuGMewn5R
 d2zqWSDecEMx+TCfyrGHpaZzuWcA00w4WfhBj06KSr185GhrBaDMB6C30WZZ/DfKC9Or
 KhudTGzVWdeckguiNF3Jn7wIB6IX0t8fxJkcLuKEp6b6ttDbLscnrY/8c7pmXL9lL/Hq
 4TG3gG3IJZfttDutHyR/j5Hx0jQRZFOJJfkDH6BqoatL2gqSG+3dgmL1xvG1RTtZA1Zg
 Xz5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=hCklS4e5K72OswsT6XLNGtZ978s0B4rsmlu1tAGe+pE=;
 b=MvlNaWDSyZEgqwSopniw2IRiZU5e1kAx/EZSzEJJe6CBkG6m3F25SIDWX6vYeLelLE
 /3yYmIZ97mEBkeEyD/LM9NUcTz+ZHu3bIWsBI/1ryeYPY4pFK44NsvlufF4naoEPbcL6
 ZPqq6wULJ1iQ3JvYfgWGxyFReP8y3EkHxk6QCr11YAHKek7u4/i04JJ4hd1mR30E1JhX
 1Fo5IU2pF+px0XrhUA47T/pI2Yio6RYi0O2ZZ2wDbGAltzWquCDbIjp5oHfAxSvfrvbD
 lmBg/Uu3bS6kKQ7617UIavPWQcxKOumjNQDPXbVZzCC/PfDfg77PbsL3pvom2qqI1GZ9
 SIUg==
X-Gm-Message-State: APjAAAU34yXbKjV43DPFLpFTq34+HzdYVBnRsrO1QJkyx7RQT6qfHBgQ
 HCpxe5eaZpVIXSBS9MeRtmQeQQ==
X-Google-Smtp-Source: APXvYqxZEZyeAX1Hmif6qyrp6Ra6ZB02BXu1SKgnhdQ7ttAERstzbSQBoCX7bljOEDifx4nUlTPKAQ==
X-Received: by 2002:a17:902:1126:: with SMTP id
 d35mr11947965pla.330.1567110533144; 
 Thu, 29 Aug 2019 13:28:53 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k64sm3620947pgk.74.2019.08.29.13.28.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 13:28:52 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 10/17] coresight: etm4x: Use explicit barriers on
 enable/disable
Date: Thu, 29 Aug 2019 14:28:35 -0600
Message-Id: <20190829202842.580-11-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829202842.580-1-mathieu.poirier@linaro.org>
References: <20190829202842.580-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_132854_339870_4A90DF55 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Murray <andrew.murray@arm.com>

Synchronization is recommended before disabling the trace registers
to prevent any start or stop points being speculative at the point
of disabling the unit (section 7.3.77 of ARM IHI 0064D).

Synchronization is also recommended after programming the trace
registers to ensure all updates are committed prior to normal code
resuming (section 4.3.7 of ARM IHI 0064D).

Let's ensure these syncronization points are present in the code
and clearly commented.

Note that we could rely on the barriers in CS_LOCK and
coresight_disclaim_device_unlocked or the context switch to user
space - however coresight may be of use in the kernel.

On armv8 the mb macro is defined as dsb(sy) - Given that the etm4x is
only used on armv8 let's directly use dsb(sy) instead of mb(). This
removes some ambiguity and makes it easier to correlate the code with
the TRM.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
[Fixed capital letter for "use" in title]
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 7ad15651e069..ec9468880c71 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -188,6 +188,13 @@ static int etm4_enable_hw(struct etmv4_drvdata *drvdata)
 		dev_err(etm_dev,
 			"timeout while waiting for Idle Trace Status\n");
 
+	/*
+	 * As recommended by section 4.3.7 ("Synchronization when using the
+	 * memory-mapped interface") of ARM IHI 0064D
+	 */
+	dsb(sy);
+	isb();
+
 done:
 	CS_LOCK(drvdata->base);
 
@@ -453,8 +460,12 @@ static void etm4_disable_hw(void *info)
 	/* EN, bit[0] Trace unit enable bit */
 	control &= ~0x1;
 
-	/* make sure everything completes before disabling */
-	mb();
+	/*
+	 * Make sure everything completes before disabling, as recommended
+	 * by section 7.3.77 ("TRCVICTLR, ViewInst Main Control Register,
+	 * SSTATUS") of ARM IHI 0064D
+	 */
+	dsb(sy);
 	isb();
 	writel_relaxed(control, drvdata->base + TRCPRGCTLR);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
