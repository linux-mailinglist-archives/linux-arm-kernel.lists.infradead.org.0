Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B9E57E4C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 10:36:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sImOmLUq9eariQKgam+diOR3zhKedA9Dv5z8mM/iCG8=; b=BbRlKep+xEPgbp
	BY8vzmWkVCOdepLZWB+74NedWf0Ngf2PMpZiD68mCkbrHn4nShKY8cKVbp4pwHBCmNmWM04UdYJ9s
	oNxxJ11+04GfP3QlhPn+D2MMNNyXpAegPiG1H7ms9aioNIttB2XUE5RLxCrCdziHLKcoZgR0ATLdL
	saV7eRinwt2GcAxkzcE2Hh344/usAxMqWEh/zERqg6A0zw0RGsuuxZAFMPLWvYvcu6hJJWXi+eRMY
	ZrmiLkRKxbTdzWBotKWGx/bBuDnCUVygOgZPnrT4r43NIsoD41t5/PZWHurqjpISj5wiOYK/e/gu0
	KYkhfxoQ5mqqD+o1hWJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgPtR-0005af-9I; Thu, 27 Jun 2019 08:36:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgPsW-0005AY-DH
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 08:35:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CC509D6E;
 Thu, 27 Jun 2019 01:35:32 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6DC873F706;
 Thu, 27 Jun 2019 01:35:31 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
Subject: [PATCH v2 1/5] coresight: etm4x: remove superfluous setting of
 os_unlock
Date: Thu, 27 Jun 2019 09:35:21 +0100
Message-Id: <20190627083525.37463-2-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190627083525.37463-1-andrew.murray@arm.com>
References: <20190627083525.37463-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_013536_638389_1509947C 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: coresight@lists.linaro.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In addition to unlocking the OS lock, etm4_os_unlock will also
set the os_unlock flag. Therefore let's avoid unnecessarily
setting os_unlock flag outside of this function.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 7fe266194ab5..c89190d464ab 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -1047,10 +1047,8 @@ static int etm4_starting_cpu(unsigned int cpu)
 		return 0;
 
 	spin_lock(&etmdrvdata[cpu]->spinlock);
-	if (!etmdrvdata[cpu]->os_unlock) {
+	if (!etmdrvdata[cpu]->os_unlock)
 		etm4_os_unlock(etmdrvdata[cpu]);
-		etmdrvdata[cpu]->os_unlock = true;
-	}
 
 	if (local_read(&etmdrvdata[cpu]->mode))
 		etm4_enable_hw(etmdrvdata[cpu]);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
