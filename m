Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DAC4D5BEF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 09:08:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Tu2cBjsDjfDqNy+pgVJ97jwZXCuIseuNAq6YeLjuelw=; b=BPW9ACjAcn6I92PrzsFH1lBUzR
	LWZSbg9iu/xEdGO2hYUhLKlfY+vdyuqL+AGWBLc60i5XnW9AJgBS/6qJ90QHfJPNC26tDat7Q7Ygl
	giyQXxP5wcGTAqQcHlmkNyDApPdZ7UOftVVhtS119695jbQeJIPqTZ35xRBEcDbCwBUhdSwKG+tNy
	Xhe5jY8iJ8UF4JXA/4OmY7uKOooyWudkc2KNW2F3lkD8uH6/sqYQkxCrYmyxC8KE4QO9LTlvR4iZ6
	yG0oAsEcjRPvwQO/InHo/2m5iySlvGjk/9nPcWxQWTtcJIlYWx8qZR1OAOo7hp3nWXtImWgww8GwI
	WQM4nEKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJuTN-0003lx-Jv; Mon, 14 Oct 2019 07:08:53 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJuSo-0003Tl-Ns
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 07:08:20 +0000
Received: by mail-pf1-x443.google.com with SMTP id v4so9855212pff.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 00:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=1ydsP1Cp9s0wk741A+j1HGA3H7t+pJBn7+BclAM8H+M=;
 b=kahd71I+jydL8AwtKPA5jqJIFN6xTV+kelQ8RxPi/IoS5FJswOPifHzuka0ajgk84D
 Tu/kAVwgphcFPtLaj+ifYHJt6yGsuDBOZ9YiNQIiRoVQYgrzloEfXdpt7jEJvjvQigkC
 7J224xdekYFogIev6qsKXWkQLj8f+B/jIWJRAeOiE5dmZSmnQyTZ29/sT5qNyrrmNm/X
 MiX7W3pwbwf4mckEbkQBSzTufBV4PzkHHmtN6LMVL223bCC1b5NkoQ2+YKnGWwdggELX
 QQZcbbRER3Lpt9PjdGQPnB6IVsyfV6hpzC/LfZ6670MitRmRNIJPiMNunqSEpw0pdfli
 WneA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=1ydsP1Cp9s0wk741A+j1HGA3H7t+pJBn7+BclAM8H+M=;
 b=O0IhNu/D9lEYmewKaLOL2tWfCBbg2ZVncibxzPxCpTuW1SRcgn6FKi69IPBhFPqCcK
 5mzCLkzfHlIe/Ar8BcIY2A2hTIBnsDo/Rq0KmCppopFwRcZQ8gV86MyGxZcXulSgpqWi
 4XmiET+aJ+Rdbas67JZNCj2eyOZ5OQdwTt+EusibNIq8xnqJcdNLUW9O+KI7kqzH1vMF
 5/tLVRRWXjK40GE2E25ni8ry3ptgwArVdcpdIsXdllAAZRsHKnpqsutYMlmsI35MTeI2
 t2Rj1XNF1+xfFJbjZe8t7ZuxcwJIkr4a13r93VD0PYEBJWzJbUfjxsKg+8kyGff4aH+N
 jerQ==
X-Gm-Message-State: APjAAAVlqD4mVYRov6IHU1V/cnRrTbbd9GY/ZE6XrgzW5fIFYaHQstKG
 clyv9/bOL7LN4MuL2Q9ToNfW7A==
X-Google-Smtp-Source: APXvYqxv2BmrjcqFoDObMm2gQRhJZtQRLtBrcLu0vLIyKYJqaaJ45K79YI50OvI+hNc8D356sSDNtw==
X-Received: by 2002:a63:5022:: with SMTP id e34mr15455176pgb.400.1571036898239; 
 Mon, 14 Oct 2019 00:08:18 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id p190sm20619948pfb.160.2019.10.14.00.08.14
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 14 Oct 2019 00:08:17 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: ohad@wizery.com,
	bjorn.andersson@linaro.org
Subject: [PATCH 1/4] hwspinlock: Remove BUG_ON() from the hwspinlock core
Date: Mon, 14 Oct 2019 15:07:43 +0800
Message-Id: <cf225e8ead98e04393b1c663d40b6dd868acc54c.1571036463.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1571036463.git.baolin.wang@linaro.org>
References: <cover.1571036463.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1571036463.git.baolin.wang@linaro.org>
References: <cover.1571036463.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_000818_776125_5E8198E5 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: baolin.wang@linaro.org, zhang.lyra@gmail.com, linus.walleij@linaro.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 orsonzhai@gmail.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The original code use BUG_ON() to validate the parameters when locking
or unlocking one hardware lock, but we should not crash the whole kernel
though the hwlock parameters are incorrect, instead we can return
the error number for users and give some warning.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 drivers/hwspinlock/hwspinlock_core.c |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/hwspinlock/hwspinlock_core.c b/drivers/hwspinlock/hwspinlock_core.c
index 8862445..a22e252c 100644
--- a/drivers/hwspinlock/hwspinlock_core.c
+++ b/drivers/hwspinlock/hwspinlock_core.c
@@ -92,8 +92,8 @@ int __hwspin_trylock(struct hwspinlock *hwlock, int mode, unsigned long *flags)
 {
 	int ret;
 
-	BUG_ON(!hwlock);
-	BUG_ON(!flags && mode == HWLOCK_IRQSTATE);
+	if (WARN_ON(!hwlock || (!flags && mode == HWLOCK_IRQSTATE)))
+		return -EINVAL;
 
 	/*
 	 * This spin_lock{_irq, _irqsave} serves three purposes:
@@ -264,8 +264,8 @@ int __hwspin_lock_timeout(struct hwspinlock *hwlock, unsigned int to,
  */
 void __hwspin_unlock(struct hwspinlock *hwlock, int mode, unsigned long *flags)
 {
-	BUG_ON(!hwlock);
-	BUG_ON(!flags && mode == HWLOCK_IRQSTATE);
+	if (WARN_ON(!hwlock || (!flags && mode == HWLOCK_IRQSTATE)))
+		return;
 
 	/*
 	 * We must make sure that memory operations (both reads and writes),
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
