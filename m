Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8D51F0F37
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jun 2020 21:30:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7cMX3OAmDB2hWBnQGlLTJFMXiPS+j7lzfHPl3HnZdOY=; b=kwRtcmaVo2117n
	ovrs+RZtxjAOCXeHI3Q4EVq9sznKQpUR7WogYWCor0ZLO8dAwnk/hlWVFoIg7miyJJVvtlLqEuHOq
	C4msXcaHYpX59IQq4du42+ecL+JUn5Macy0bZv09kVNYrx8Ug8HugS+S1oqFuV2ux3nlUn0vR5JXu
	n0mZ6p+GNxHcUFw5qc2qcTTxcpabreiI2ccPig8+BrxgurKfJJJ0K+cl5EsmPI9Dhiv93S3FJTXK3
	RuEwwYGHW7sEKIZxHPLaxKSMqLTPW6YpSpzHMysyTfoBAOSQ53oQ+gzreEkNsimDuP3+Do/oItrH9
	ylQUaXJORiAzU4uheE8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ji10C-0004Xr-7q; Sun, 07 Jun 2020 19:30:40 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji102-0004X7-B3
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jun 2020 19:30:31 +0000
Received: by mail-pl1-x644.google.com with SMTP id n9so5809743plk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jun 2020 12:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2YHHUyrDfMTslhHwnsFPD53TwnSHuoF/R4V+ZRJ0yw8=;
 b=uxuZejlKRA4CVE+E+jTvxIs3SiHIy7mAwhd91TYk560WxhhlGakrV6rfiPr/R3j37+
 +14E1dk3+8NmNbc2+BGQ8/ayrFe/pLDUBJFotkqGXJ9LTIbgtORwPRUZ7yHilAD3GabV
 F4UNYa+j413vtwH2OSmu3cvegZGU6F6y7gy+wWM+5swLZhJOy+WO+QxMMhXHExvwIvrx
 r8msBuTPkL0t1S1aWC9BVF00odrPTj5v59C/xxP6kWJRbiqjZdFCTClrHgP8d7Xk3qT5
 w6nHgEo3h7xq5foIVBsnxWR6Va1al4jOWeOpj3ZuxYy2saOU+terrDdckEDeVBqOdFHk
 U5GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2YHHUyrDfMTslhHwnsFPD53TwnSHuoF/R4V+ZRJ0yw8=;
 b=lGBglrNc2yvZgRUUKyY06i6B2+E223bzQ7weVpBwqjDYgiUljhuyldy8SgkVh9y52W
 dLNdV02+ok528STEKxgw3I15+J4WEaz6oLPtHPQhpaXa0WHhdmdRNGPRspJSgMkUUDQI
 iv2IX+0PZtIzwXG2s5JzHAkmdnHxO0el1csQb3sDvXjQ9E8z+L+UFkAqSzsIz6bJqSee
 yOD2Zy2SPWDY+GqC0vQlbQeOfmt2L0gY5KLnjoYKudhhJJSybLbSCCRgWxaRGxqTYtj4
 dCbv3MZl/+EXLweI1DOfd095MZATTqMxyyP2SGRgBZ8uqyN1Q/sd2S3Z3zRUQ47Ec5ol
 zYaQ==
X-Gm-Message-State: AOAM533bAcenIp+xg1dh/yZD2Y/T/wz8k8MEecbk6rWhWVIA+Q6lIGJP
 CF3gG6Vrq0gKjAqXozFNnWRE+UKq
X-Google-Smtp-Source: ABdhPJxICKMh6o53PbWBQbO2RlBmzm99R16l4kJiZG2zbVBcy5deBCAj/hUwC7QBjnzQmvRIk7+z6A==
X-Received: by 2002:a17:902:9885:: with SMTP id
 s5mr17343111plp.204.1591558229238; 
 Sun, 07 Jun 2020 12:30:29 -0700 (PDT)
Received: from localhost.localdomain (S0106d80d17472dbd.wp.shawcable.net.
 [24.79.253.190])
 by smtp.gmail.com with ESMTPSA id m9sm5032758pfo.200.2020.06.07.12.30.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Jun 2020 12:30:28 -0700 (PDT)
From: jassisinghbrar@gmail.com
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] firmware: arm_scmi: fix timeout value for send_message
Date: Sun,  7 Jun 2020 14:30:23 -0500
Message-Id: <20200607193023.52344-1-jassisinghbrar@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_123030_397337_BB2E08F2 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jassisinghbrar[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: robh@kernel.org, arnd@arndb.de, viresh.kumar@linaro.org,
 bjorn.andersson@linaro.org, Jassi Brar <jaswinder.singh@linaro.org>,
 sudeep.holla@arm.com, frowand.list@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jassi Brar <jaswinder.singh@linaro.org>

Currently scmi_do_xfer() submits a message to mailbox api and waits
for an apparently very short time. This works if there are not many
messages in the queue already. However, if many clients share a
channel and/or each client submits many messages in a row, the
timeout value becomes too short and returns error even if the mailbox
is working fine according to the load. The timeout occurs when the
message is still in the api/queue awaiting its turn to ride the bus.

 Fix this by increasing the timeout value enough (500ms?) so that it
fails only if there is an actual problem in the transmission (like a
lockup or crash).

  [If we want to capture a situation when the remote didn't
respond within expected latency, then the timeout should not
start here, but from tx_prepare callback ... just before the
message physically gets on the channel]

Signed-off-by: Jassi Brar <jaswinder.singh@linaro.org>
---
 drivers/firmware/arm_scmi/driver.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index dbec767222e9..46ddafe7ffc0 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -303,7 +303,7 @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
 	}
 
 	if (xfer->hdr.poll_completion) {
-		ktime_t stop = ktime_add_ns(ktime_get(), SCMI_MAX_POLL_TO_NS);
+		ktime_t stop = ktime_add_ns(ktime_get(), 500 * 1000 * NSEC_PER_USEC);
 
 		spin_until_cond(scmi_xfer_done_no_timeout(cinfo, xfer, stop));
 
@@ -313,7 +313,7 @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
 			ret = -ETIMEDOUT;
 	} else {
 		/* And we wait for the response. */
-		timeout = msecs_to_jiffies(info->desc->max_rx_timeout_ms);
+		timeout = msecs_to_jiffies(500);
 		if (!wait_for_completion_timeout(&xfer->done, timeout)) {
 			dev_err(dev, "timed out in resp(caller: %pS)\n",
 				(void *)_RET_IP_);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
