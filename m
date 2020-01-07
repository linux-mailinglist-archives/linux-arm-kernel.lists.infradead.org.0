Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33EE1131E1E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 04:44:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rW+D7fPY8uRurkGlvk9FUI7JksHqa0pcDj3sciRuKKs=; b=lV9Ejuno0kfjVW
	K0fsUV4JRTOInYgGleXxLSba/PCRz6mJny/Cfh9dc5sr/HqTw3K/+cEp1GfgnXYpHT/Wr1nOKUhR8
	8k5o/5T53Saq45Iqmuut+lD/28ozsTBNjJ+lOJudhlpvlr2HiwjWN/NYrvFPPkXcmrzwidrnmke4W
	3zirrboCEWS2Y4kmBuRGyFfJE2vtYHCiEaKSb4HEPzO6E11O/4LAm8cjtwK4ZCuchalrq7DIeNGZS
	UGT1i97RLYlYSzXS4IowbUSfRVGFw4qcWdeqsTTJ5d8LcKh0b/oBXf+7oz57XNQOMC4LssoOtus0i
	pPCS5Rov1JO475PtFggQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iofnP-00024e-6N; Tue, 07 Jan 2020 03:44:43 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iofmb-0001Xo-2S
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 03:43:54 +0000
Received: by mail-pl1-x642.google.com with SMTP id c23so22640041plz.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 19:43:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AQ9/DC53GURoy8uPVJwwkeJi6XJeKnxIDYkVR0iQwQs=;
 b=vWBJFj7l6TMl4AOJKf5X9VW3UJTLj5KRhDpkjG/XRys7liNh2J8d1FbteOvt5wznSM
 4zJxH5dUoFjg3fs1CeOhYTcg4KPdDwWSYhF4WPJkik/Ujl97facgI/O+lkxRL1xWboSC
 UAZq0PlnNYZ8d3h+imgzHDEnNREGDJAZv+3jFLZdK8O27Mh1XECf3largM3JwDxXud/z
 wnRmX9QrDVakjRYa4mhYSMcZFT/wTRu5JYgwwzJLAfCT7XEs5+M6+iHQ25Jg2LjyYM+8
 3RiZ72+CCx7+vAhZOTp0pxO9fVIjgeK/JOdzXaSB9ESg778kwqpxf4nbPbHQpQ5iCzaK
 uvRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=AQ9/DC53GURoy8uPVJwwkeJi6XJeKnxIDYkVR0iQwQs=;
 b=g1ZSpeoN4J7YsOLKUXZzbAXClIi1WVkfJ/A+U2UMoBgK7v1tQod8QCIzQ8BSp59jPm
 CexuHKqEKhDQTeitvQrtIyeXMfSUwFBs7WNvax2RRrHbXe8dFdvtGfAE4gfQNZ0J/1X0
 T4qUWCI9JCS/5cbBXvad/wsw8kiy7kHAo547j4vcG1EK+rkA8M0o+/YY26/+S7ZSXWIZ
 hgWQd3g1tyXKdWHi9cdeIAVLcQ13wHIwli5tGcvGuPAc71b7E/LEZOtV3AtTx6uIQorq
 +5h2cdqrp2FvhfaC7Edf50+NF9WYVYw62eC7+OKupTHCWdH06Y3jTU6x6A4Vfe1+VsUt
 CLOA==
X-Gm-Message-State: APjAAAWeoiKxwrtvTtYnLQrsNJXBbvcSn2gtl1VKTyZqbirwzGx6/Cp3
 dtRp+Ag1RPlYMWRMarVuyrs=
X-Google-Smtp-Source: APXvYqzyIqucHdp6zdPgZQRg5EOXhTzApjHSoYm7Ljqb+UGqUCgE+VZlsH2fwIQxYxpGipFu2Gy0qQ==
X-Received: by 2002:a17:902:988f:: with SMTP id
 s15mr101569674plp.98.1578368632288; 
 Mon, 06 Jan 2020 19:43:52 -0800 (PST)
Received: from voyager.lan ([45.124.203.14])
 by smtp.gmail.com with ESMTPSA id g10sm73455929pgh.35.2020.01.06.19.43.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 19:43:51 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
 Eddie James <eajames@linux.ibm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 3/3] video: aspeed: Update copyright information
Date: Tue,  7 Jan 2020 14:13:24 +1030
Message-Id: <20200107034324.38073-4-joel@jms.id.au>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200107034324.38073-1-joel@jms.id.au>
References: <20200107034324.38073-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_194353_177093_3EE49397 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the preferred form for GPL2+, and add IBM and Intel as the authors.
The driver was initially upstreamed by Eddie from IBM, and has had major
contributions from Jae at Intel.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 drivers/media/platform/aspeed-video.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/aspeed-video.c b/drivers/media/platform/aspeed-video.c
index d70b893fd4cf..71e0dbdb37dc 100644
--- a/drivers/media/platform/aspeed-video.c
+++ b/drivers/media/platform/aspeed-video.c
@@ -1,4 +1,6 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
+// Copyright 2020 IBM Corp.
+// Copyright (c) 2019 Intel Corporation
 
 #include <linux/atomic.h>
 #include <linux/bitfield.h>
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
