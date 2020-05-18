Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB37A1D8387
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:05:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=99+STx63lrGupEsMJcZZvP2tOHOhznCkZOVCDwFPOqc=; b=rkIT/WpESmBabK
	3fXGH5O347AVOjyUoKluEMfvwl61H2S6/+0gTXNEyxZnTsp9y75vwVjHANo0q10qDRUztsjWPUBE0
	MTrnkbn4gnudh4Lkm0/dZHKnxcjZJX4IXFxEZgdDjtGO3n2mX15eUhOrYDrTHBqi+4tUi5ck7W+ZJ
	lhFOaj5To9szzO6L+ekl7BHGAN01ZG64Llx0KksJqx/TVL9zo0oQQSmtIu0jKBp3ULhLMqpuz3Ic9
	iS3GWlAsoDZ/NPOA4kyNH1AliAxYGn99oBXTZN2XrXX1kQ+T5MtcZAkzJTSV9rr3HNsySvzVHTWE2
	T1MgNdz+8ty5UGfIiTrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jak97-0007gu-0q; Mon, 18 May 2020 18:05:49 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jak6H-0003Ij-6o
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:02:55 +0000
Received: by mail-pj1-x102d.google.com with SMTP id cx22so196861pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 11:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3Nj0lWmTeyBc/FhSKF/gfTCgo/kmCMNbvurnmgvzlOU=;
 b=vEvPNVPAKXWK4AnWTWfbC4Zyy0JqQL+9zK2ftDNUV+bgjNuOPHyTtp2FINuVWovNBH
 c/D4sjrvQQOHKDWZcY6Rg3CAmO+bUul2diYq+YOEVERWFW8XNbZXG8yiWVaNJI24Dq0o
 +kpn3tJFxOpqsn8UFYVu65AUOVbKrWNbnxMvoEc1UK+xFCMpjTUkO8TcxIesxdJurg92
 xv+60hYXH4qjKQ4/6h4aK5id5U1akTjb0/6PEjl8UzC8dBaJW1JODZ+w80JSyEykC2/Q
 wfwsi7eDwz5OJ35lNrbCAgD6x6zeYXSUJDgaruMA5N873+DAoCWwm2F1EDGu5jqTaqL9
 zkew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3Nj0lWmTeyBc/FhSKF/gfTCgo/kmCMNbvurnmgvzlOU=;
 b=H9eXKlG0Qil8k4qGYvab7JjNwG+wyOaUhjEOIFCNDYzqUzzbVUfZmrUZBChWCKVHya
 CGriEJYFqM/zXbR4VCP0p8dqOs5ODlfDVVYbg2LPKdhqJYsgbxmMs1Al7gIrySCi3w4m
 d51Jz8QOFlrVNN0gACBAIZhTjcgEX7vfdTPn5phNngodKTFk6k/L2wNbOXTFt2mJ0MtM
 WKgAy57N9sp8NjCrAykz0Fj4Y+iDAdXTcGjUk4zvxJEueqO+0vxXmTrY/rEMPNnpcQ7p
 fpj7jjMhSjUFBdQcFSzJqtW1jaP0klPJT3R1APHIFQpS9dByj7w1FJzI+xZSPcPeRLM0
 TxaA==
X-Gm-Message-State: AOAM531Sg+NgwlHdNdB7anIUwwph8ni9MN5eWTuEp4mzhxG8h5n5Kqti
 wuiQOAiaO3IpwXc/c/clwXP5bfhHBNA=
X-Google-Smtp-Source: ABdhPJyDmAV6di7+KHiRMwgeyIE+y+w0Xi2F72z1sJ/rhU7Sgwqc1CQP5El83nzFgsrt+OxE0DOq/w==
X-Received: by 2002:a17:902:a60a:: with SMTP id
 u10mr16671131plq.249.1589824971445; 
 Mon, 18 May 2020 11:02:51 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v3sm9212314pfv.186.2020.05.18.11.02.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:02:50 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 07/23] docs: trace: coresight-ect.rst: Fix a build warning
Date: Mon, 18 May 2020 12:02:26 -0600
Message-Id: <20200518180242.7916-8-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518180242.7916-1-mathieu.poirier@linaro.org>
References: <20200518180242.7916-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_110253_277919_58729929 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:102d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

Sphinx wants a line after "..", as otherwise it complains with:

	Documentation/trace/coresight/coresight-ect.rst:2: WARNING: Explicit markup ends without a blank line; unexpected unindent.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 Documentation/trace/coresight/coresight-ect.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/trace/coresight/coresight-ect.rst b/Documentation/trace/coresight/coresight-ect.rst
index 50a5623d5d4f..a68732c5c6d6 100644
--- a/Documentation/trace/coresight/coresight-ect.rst
+++ b/Documentation/trace/coresight/coresight-ect.rst
@@ -1,4 +1,5 @@
 .. SPDX-License-Identifier: GPL-2.0
+
 =============================================
 CoreSight Embedded Cross Trigger (CTI & CTM).
 =============================================
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
