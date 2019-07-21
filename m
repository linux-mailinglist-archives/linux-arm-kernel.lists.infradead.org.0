Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E9D6F48C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 21 Jul 2019 20:08:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iRB0DlwDE0uDRoXx/iqlxt9PgEZFPrTuRM4kvdbvdyY=; b=eH5cDFIboRM3fU
	3njPIkVL08TLHpFakvllccK4yU2rW6OTiSvI3mBH62Xy+73t7qb7Gii36thQnnbwO5CVyOVNi79pd
	BYouWxGCvZwth0REvViyEVoJu/WzWkgJRoe7m8bl7eWoE4z6lJv+G8RWTlWlx2qENlyU6WkqJ02Of
	0QN/ejX9PMJMeXJ0XYCXclHsdusxNQeBMY+cJtvx51DzvxihuwjkIFDJKDyMznhzwDjLxQMLdS0xq
	s31RYSDEVGqZElU9csD+XWzCAQ4sy47S6rec4Uv7ZO4zYNO7mFbKeujdKrM76G+QHnrYUWf/x4ywT
	7qJ6+AOudbTqSElSIXPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpGGD-0004pN-WD; Sun, 21 Jul 2019 18:08:38 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpGFz-0004oa-UR
 for linux-arm-kernel@lists.infradead.org; Sun, 21 Jul 2019 18:08:25 +0000
Received: by mail-pf1-x444.google.com with SMTP id r1so16233575pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 21 Jul 2019 11:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=FTXdst5R/SQuzieJLsSNsjPa5PEZl3NiZMobkmxYQpo=;
 b=TTK9qK/8sWitI8E3pN3YavfH2FqVB/+VQYItc84o0fD/vpZ1OeI2c8c0AWWZhLBkfR
 bEXAb5KG8cL2vk1SsPpFStibPjEpYFWeIEzSlkL4PQCDm3mDXuaZuASgZDpRySce1/uj
 8j0v1I+MrFW7tZz0fDRiZDtQLtkKoBwTG2zZV6W2A50fIw7k6caFg64Ut8WzOhK587PD
 za4dfniHkJZdkWRUilpR+08mlWSsjoijWSqllat/ql6W9CfLJF/DW/9VwROFGk/jfzMf
 8LMV2FSt4zR5LXXJIZSE8/u1NbFUmRIXPLXteqUj7BC0iwhNG5mCfH2oXw6U8toPMo5b
 hRbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=FTXdst5R/SQuzieJLsSNsjPa5PEZl3NiZMobkmxYQpo=;
 b=rLRcA0C7MkUMBPQ6ztVgDuJJX7+5EvBwTys5SUHYSpAaI8zcMpNO+vBcoj+Ol9GvTB
 j5w4sIPor6dn4NMduuLIMZykpdt1wCPUmXy1OGvzXNxeHrbzXvfu+kl0HuxsfY1Wagaa
 4w5uDZHgdWHl6hVIShZtD6JECMex7FNH8pQKURQangxSlZOCF4YjqwKhLI8o7aw+p07Q
 ynnihBQ3rjyVlW9Bc9x6jXFpKSnSnPOG2XWn7YbxueTKDIFJQJ12fsiCgsFQHZrW6Rfb
 G6Od/fKCbQGCv/J+s2exyRPn7I1LkEg4vEPJsDgS/JaFLFi58A1CAsQKFZ+YRXUu1eSj
 ew7w==
X-Gm-Message-State: APjAAAW6EfP5P9y+dRR4rIfDqqDv2cWZnQwS4+pMQLzXbFZtmBuJmXxJ
 wwHUGxyRkTIsrRTD6hyECMM=
X-Google-Smtp-Source: APXvYqxKToO74HULDPrAR27wvE/2XIeV/0Bn1VO4CaU+4sIBGxvw1p7b9ZQxXZUdfJFA3s0S9POK3g==
X-Received: by 2002:a17:90a:228b:: with SMTP id
 s11mr70837355pjc.23.1563732500738; 
 Sun, 21 Jul 2019 11:08:20 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id m31sm44011625pjb.6.2019.07.21.11.08.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 21 Jul 2019 11:08:20 -0700 (PDT)
Date: Sun, 21 Jul 2019 23:38:15 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] cpufreq: ap806: Add NULL check after kcalloc
Message-ID: <20190721180815.GA12437@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_110823_986572_3CA431C2 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hariprasad.kelam[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add NULL check  after kcalloc.

Fix below issue reported by coccicheck
./drivers/cpufreq/armada-8k-cpufreq.c:138:1-12: alloc with no test,
possible model on line 151

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/cpufreq/armada-8k-cpufreq.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/cpufreq/armada-8k-cpufreq.c b/drivers/cpufreq/armada-8k-cpufreq.c
index 988ebc3..39e34f50 100644
--- a/drivers/cpufreq/armada-8k-cpufreq.c
+++ b/drivers/cpufreq/armada-8k-cpufreq.c
@@ -136,6 +136,8 @@ static int __init armada_8k_cpufreq_init(void)
 
 	nb_cpus = num_possible_cpus();
 	freq_tables = kcalloc(nb_cpus, sizeof(*freq_tables), GFP_KERNEL);
+	if (!freq_tables)
+		return -ENOMEM;
 	cpumask_copy(&cpus, cpu_possible_mask);
 
 	/*
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
