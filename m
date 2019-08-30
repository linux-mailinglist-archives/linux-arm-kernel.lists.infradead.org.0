Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86964A373D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 14:55:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=s0J9CdDW2Dw0+n8pg4L74Il8fLl5lr2MM3tnDu+db74=; b=kpsGP6fKsZlbWervzqgSgt09Z/
	GY6qDepL9QAuqkpZFuqmLN7pHmPLefUYdAHhEjOkTseC0y9tuPgZsZpfkdeF2C3CVXzfbx4GcP2dx
	WVTHvCHCev1ffWj3ihzU2vUvxCH+KDPu+EwI3ho0cGMYxi/xpSbR8DkfSUBeWYy9ZlFZeKupBoUwo
	spA5tL/pOpe91XFTZ//0htx2cNb6QooRt7qbVrRfDh8WCsu8Db0IWEjtRa69ZZ9VIKkyl/PIAfKcB
	9hZCJFeeK0xQachDWkYwbqi68KZ4Q+XpG5Y4pfjYtOH++g1t2HnvZir2PMhW/sg2zfYpRcRh70vgu
	KtqQze7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3gR7-0005iy-EO; Fri, 30 Aug 2019 12:55:29 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3gQb-0004cN-46
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 12:54:58 +0000
Received: by mail-pg1-x542.google.com with SMTP id d1so3528323pgp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 05:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZEiY82eKE2uACV/S5DxtDNOMIZl6DIjOCif0L4VFLrU=;
 b=k839JJSeGmhijFzWPRyX49gb6r8QPZLMmkUaUjp1GiFqnFD38Vlq+JvhhG3u7UTf9t
 Up/j5M8GMYhb1xKkzsrHtCT5xzJJ9J6pBZGurlPUU+Yqv0lFIfXLfeuHy1QaAd7yHlyf
 g1bjWCe41mSNkKAib32HB7ykqkeOaMjCwxTFEHtRhOoFy44ZXaJpm+hwvd3Vgvtxdah2
 lu8P9rpI8KsQzGF/31Ubfm7qnwT2/Rh9KYTmiRroPMyAoHmsmUExwCev/6CVAOka1aWh
 FS3/nS9LqUUwOuikgsL2ohEGiuP8eVP0HyDU3hfKiLghNx6SKnX4DZn2QA88vodTBOKU
 RHwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZEiY82eKE2uACV/S5DxtDNOMIZl6DIjOCif0L4VFLrU=;
 b=t+jnBWSxm6bOzxscp8NvqyrbWBz2rvUZsTTySIzyrF12tNTVYvc7lu6PFUGBnIpaow
 88Qnu4BvaCmpz8l3HoFMmSndkxrOOjRyD56z5nowY5uKx4fNLpiL+aZXZq93kwHPwlQm
 CYuV3/gJx6VNtZyp77/JxvmwBmYm/RCoyRTSPY2ttzY7XafLlCn4WuCLUkMMi1GQVj0b
 RNAAWN4cgw2Msa/nuxEhriBYuvaRaE1JLyPGOyUGnnhB5blnzYRxKZOmc2KtFFWBuDTo
 K4PRsrjNNXnZd1vWmbIrnR/f24sVKPEO11z7lYVY0WBx01kG5BDmqkcQ6f2ttBeXmJR/
 Q3cg==
X-Gm-Message-State: APjAAAXoA4Zf7pNzIQXcNVFx+eP6wYzdmgrtWnSOtXZ2DsUPDH7zvQPA
 88Ef+xP2ooSRmcDlHUL/1Is=
X-Google-Smtp-Source: APXvYqz3fdB7HFxVbvIG0JkvRWCmruPHJLvE0YtMrU8AtAJfBbHQdGgf0uZ8+f3PHR5t2YR6tk2WMA==
X-Received: by 2002:a63:9d43:: with SMTP id i64mr12985521pgd.306.1567169696440; 
 Fri, 30 Aug 2019 05:54:56 -0700 (PDT)
Received: from localhost.localdomain.com ([115.113.156.3])
 by smtp.gmail.com with ESMTPSA id e189sm5871043pgc.15.2019.08.30.05.54.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 05:54:55 -0700 (PDT)
From: ganapat <gklkml16@gmail.com>
X-Google-Original-From: ganapat <ganapat@localhost.localdomain>
To: linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 1/2] Documentation: perf: Update documentation for
 ThunderX2 PMU uncore driver
Date: Fri, 30 Aug 2019 18:24:35 +0530
Message-Id: <20190830125436.16959-2-ganapat@localhost.localdomain>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190830125436.16959-1-ganapat@localhost.localdomain>
References: <20190830125436.16959-1-ganapat@localhost.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_055457_168931_83BBFA82 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gklkml16[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gklkml16[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, gkulkarni@marvell.com, corbet@lwn.net,
 jglauber@marvell.com, jnair@marvell.com, rrichter@marvell.com, will@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ganapatrao Kulkarni <ganapatrao.kulkarni@marvell.com>

Add documentation for Cavium Coherent Processor Interconnect (CCPI2) PMU.

Signed-off-by: Ganapatrao Kulkarni <gkulkarni@marvell.com>
---
 .../admin-guide/perf/thunderx2-pmu.rst        | 20 ++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/Documentation/admin-guide/perf/thunderx2-pmu.rst b/Documentation/admin-guide/perf/thunderx2-pmu.rst
index 08e33675853a..01f158238ae1 100644
--- a/Documentation/admin-guide/perf/thunderx2-pmu.rst
+++ b/Documentation/admin-guide/perf/thunderx2-pmu.rst
@@ -3,24 +3,26 @@ Cavium ThunderX2 SoC Performance Monitoring Unit (PMU UNCORE)
 =============================================================
 
 The ThunderX2 SoC PMU consists of independent, system-wide, per-socket
-PMUs such as the Level 3 Cache (L3C) and DDR4 Memory Controller (DMC).
+PMUs such as the Level 3 Cache (L3C), DDR4 Memory Controller (DMC) and
+Cavium Coherent Processor Interconnect (CCPI2).
 
 The DMC has 8 interleaved channels and the L3C has 16 interleaved tiles.
 Events are counted for the default channel (i.e. channel 0) and prorated
 to the total number of channels/tiles.
 
-The DMC and L3C support up to 4 counters. Counters are independently
-programmable and can be started and stopped individually. Each counter
-can be set to a different event. Counters are 32-bit and do not support
-an overflow interrupt; they are read every 2 seconds.
+The DMC and L3C support up to 4 counters, while the CCPI2 supports up to 8
+counters. Counters are independently programmable to different events and
+can be started and stopped individually. None of the counters support an
+overflow interrupt. DMC and L3C counters are 32-bit and read every 2 seconds.
+The CCPI2 counters are 64-bit and assumed not to overflow in normal operation.
 
 PMU UNCORE (perf) driver:
 
 The thunderx2_pmu driver registers per-socket perf PMUs for the DMC and
-L3C devices.  Each PMU can be used to count up to 4 events
-simultaneously. The PMUs provide a description of their available events
-and configuration options under sysfs, see
-/sys/devices/uncore_<l3c_S/dmc_S/>; S is the socket id.
+L3C devices.  Each PMU can be used to count up to 4 (DMC/L3C) or up to 8
+(CCPI2) events simultaneously. The PMUs provide a description of their
+available events and configuration options under sysfs, see
+/sys/devices/uncore_<l3c_S/dmc_S/ccpi2_S/>; S is the socket id.
 
 The driver does not support sampling, therefore "perf record" will not
 work. Per-task perf sessions are also not supported.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
