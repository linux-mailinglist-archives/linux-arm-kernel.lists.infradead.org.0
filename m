Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55793EE71E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 19:15:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9iIE4JW+DfYZoARC0ljX8vExp1yOgcY2WY62ChILxCk=; b=cW/90U6GWuITu5I/ADMecjgGzM
	OrwIqaF++af8JSDqaes6Ywl+OOTr2smdTcpIxJ1zLIQW2IKk0mgA1gRLn0I0wLH+Sd509/zrqOsfT
	3ElOIeynOMs0fF23+oVHGadRVROL3c1UnkLfg5JJx9VM1+ZklWEgIIRnf6FQRqNCrsqAeHH87QOiF
	8h62ja+PeoVEtyVN9RE30OpiTuot/3JKLYeMEmTrGRHEGN6inwyDzv3KBnxwUu/urqpmKBUsAltLT
	IAfa0lFZSMhnrL/b1b+7SEqPx6r/GIi958OGkCtGf9LTW3Ss4qk1phzesR6ySZ2n2JpJHwHp6F9km
	1TjF49eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRgsv-0001y2-Im; Mon, 04 Nov 2019 18:15:25 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRgqd-00073L-Pa
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 18:13:05 +0000
Received: by mail-pg1-x541.google.com with SMTP id z24so7312719pgu.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 10:13:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7stn5BvcqloAoNFXBRjk24YnQtbNG8jrtuNQJLNGPFg=;
 b=EMQbpOtI2YNym5gI75LlpBcBp14xUt5R7POgwM7ZPd9UULrfsWzvLsBIy0RkRVMprw
 vLnspaQOxFB1BYjNjYrhC6eSCyqdMOlvaosK530wtsApKQVKpRieKHKJFahv6E9avbXD
 vtAFBxBriElcz+PI689voveZ014HXJbT74mdK6zrubEhk3UJjIKRT9AyKaHGiJhXn13x
 c2k/omTkcmBzJsJMLJhM+28dBfx7G0QAwbI6KY1N2Ml536/XZ3pRUDLnnhuZld/KO/zB
 xGyEFN+3GcnMsF6BWXu3wNquc5Tkj7h47UE2r+t1roOHuxrUVdTzVy+OWQmbUubOXvtT
 iqzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7stn5BvcqloAoNFXBRjk24YnQtbNG8jrtuNQJLNGPFg=;
 b=cyH50mk3btziE2GbLTonRUwePaVQs0A5FuwyLgvDETUEQSVcnzKTf8dDhn/zKCLFyr
 c+twanNB5l39/mpOw28bP7/3WxQRiFCUYehl84PU5FO561wMKEsY4u4gwbUg5ew4WISs
 XAl+kwdsi9xvMNL3zQ/zbnBKkwx3RqaFTI419vmaTpKIgMCWzgnxrRnlEAE0pFOoZCn5
 Bmz3N07Q+jxuaaasVoskPBRMMu9Gbz8Ys4coKTC75iiEAH++H0AMzKygdPLhJ7TnRRqV
 hbj2Xo5zkvSX1jA3mnF/Wvhz+fv/5cIvp+TM93JITTrk96NOrT/Fa6cdDZ+jeMd2YgDe
 yE6A==
X-Gm-Message-State: APjAAAWwQJll+4U9bQznqN1ajrEFPPNUXq0eM3hZjJ3adye1KKONzWjx
 49naJ+gF52NqoB/hyxcZqLPdUw==
X-Google-Smtp-Source: APXvYqzkQy2pzCtrTxcMra33CDej6fLIaKuyqjk5BkOvfXv7zUxPzz3Io93GJfRoooqN07tfN+gfrQ==
X-Received: by 2002:a63:1c03:: with SMTP id c3mr30491255pgc.198.1572891182711; 
 Mon, 04 Nov 2019 10:13:02 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id o12sm16149520pgl.86.2019.11.04.10.13.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 10:13:02 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 09/14] coresight: etm4x: Improve usability of sysfs - CID and
 VMID masks.
Date: Mon,  4 Nov 2019 11:12:46 -0700
Message-Id: <20191104181251.26732-10-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104181251.26732-1-mathieu.poirier@linaro.org>
References: <20191104181251.26732-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_101303_850501_E3808A9A 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

From: Mike Leach <mike.leach@linaro.org>

Context ID and VM ID masks required 2 value inputs, even when the
second value is ignored as insufficient CID / VMID comparators are
implemented.

Permit a single value to be used if that is sufficient to cover all
implemented comparators.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etm4x-sysfs.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index 8c056dd1a55e..1cfbddda0b4d 100644
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
