Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D3F4BFAB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:32:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2F08bqIQEMFid/2m+3shHTt26fMMKWMxTmFDxQnd7Kk=; b=MjiStC0uEfxr88zzkXordiVUZB
	1yAqptmUmSHIDbAfY/rS0D3a1GQ9iAyykDeF1u7U5LDZWTa3TIxiIE/QZcYcDS9Fj6oYc4X9fj/08
	/q9LWyo4tDT7+qk4+fHS01TwuhteSITy+xXP92Za02cLATGeFtGDXzPE14iFb9eEGZldMtb3S/nbi
	GG3BdKTXEi1aiPA2enctIe0CiJVwwmUIdvqE0YdBNVDKs19epii/hcjTjEqnkXDRV52K8FROF4+9K
	GVnGaV8iYYjIhreH48cRsLhWjt1juK6BqMeYjrcxnlFEqHiQXQq7vxYQ4XNjuGYUrc5GU63Cv6m0F
	WtgYou/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeRO-0001E4-2Q; Wed, 19 Jun 2019 17:32:10 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePD-00072e-EI
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:29:57 +0000
Received: by mail-pl1-x641.google.com with SMTP id bh12so96572plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DntHf6qmXjOCyFeWUksN07Ur/NuqwmdmF3FS5Sa+EJ0=;
 b=ovFVM3s48TGhF8GijshVlefEngqpAJFK7CnqJJwvS7KlyTi57OAaq8VzSW+I1OM4Ew
 e6R2fyrxS3aFTVRTTka0CXAHymjGhO3rrKR6VTd1b4MFYXHdT3w0oL9KATbvZ+/1Lnu3
 /0qW07EhsKIcNVvF5+/W+3lx5enouHyvG1/UfGPRqWZFaNZwuVj+PibrUgm06TdZb5u3
 hWd4p4aW+dTG64zhLheuxzMpKem4OxrkXKMBrKLajigbDHcfSxkfQmDU/Mkc1jMeR34V
 /Kg9i+S+qGmuQYq3XFg241PqrrGPZa24SdTg5DwILZC1LC3S2daZ3VyYZTJXITsXOCXF
 aBOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DntHf6qmXjOCyFeWUksN07Ur/NuqwmdmF3FS5Sa+EJ0=;
 b=RDT0iCOeNmXB4zRKAKO7HlVkz4vUZG70mAQCLgR1iHPK5g7Ba2XZnGGBG9rFtalDiu
 hkH7fXoWy8kztn70vhyycHk6WoeR/YDyoTnvAtZXIqSJyrYo7sp9LH6MTCXEqobXwJTk
 /a1KQcdwCKBBSoAC3vXba23TJdFcYLtTj+qHsNx7n02ry5g31H97/0hHDVNdZmWAQyBl
 JXftmAaiVoBGwyBB5Xam1kxznWhPksmukVHWz85ngxcvPiILoZ/2dhQSQydbkNoYxiYz
 yB3jVgMqRTGJWgj1i+o2QomOuzwkXxNPFuP+ZrSbw1qK1HDHoubYPC9Ti3TBTtExTYSa
 MaMA==
X-Gm-Message-State: APjAAAW108Bj7nXDaOI1E+i+pIssoksudRXWcmKPY33pZWP80Pfbf495
 naDi+MM2wJhoJWbMTME83xOzt7pVj/s+qg==
X-Google-Smtp-Source: APXvYqzpPkaTpHgaLpXe48rxJ1cBMYvomI+njAAwpmnnf0U7iwfs8oOr5VPEkXP0soieDO4pj3LhYw==
X-Received: by 2002:a17:902:23:: with SMTP id 32mr58900748pla.34.1560965394880; 
 Wed, 19 Jun 2019 10:29:54 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.29.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:29:54 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 04/45] coresight: tmc-etf: Fix snapshot mode update function
Date: Wed, 19 Jun 2019 11:29:08 -0600
Message-Id: <20190619172949.4522-5-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_102955_494141_B7EF65C0 
X-CRM114-Status: GOOD (  13.51  )
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

When working in snapshot mode function perf_aux_output_begin()
does not set the handle->size because the size is expected to be
deduced by the placement of the "head" and "old" pointers in user
space.  As such there is no point in trying to adjust the amount
of data to copy to the ring buffer.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Leo Yan <leo.yan@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Tested-by: Leo Yan <leo.yan@linaro.org>
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
