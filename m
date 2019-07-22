Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24BB46FA1B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 09:14:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Erny45D7vGUzNQtxXIGPio8QIR09Q25LS3UVRhwOLS8=; b=EodfFmyjBv4BJ4
	gDCfQm74P28wi9BBRoQCp0W6WOKwxJnK9+wGyVblkdO7OjPFoiWjkbkV3h/cqgL+MahzZrUFNyZpJ
	DIGHhFi/f2RRFRByfgPBmZmJzUVW8BmGRbr521NBuu9eGTSdT+Vki7Q0jTdplQym94veIe7qqHkd/
	VjIioQe27Y1sR8YS8eIWjiEYfh9lobCKAfc3qkCQUwNc+zZL5yQ/mTNOdflHo6myNC6z0NypHTy7q
	jtZpxbBgX710Y+rGORSw8DEuA5KB8UkCyuJ0useFIVzfQh1cdkqCmT+4ldf13urWFkZDiKolvOHef
	AZzrr9DKv09l2xhskiyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpSWv-0003TX-DL; Mon, 22 Jul 2019 07:14:41 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpSWh-0003T2-1X
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 07:14:28 +0000
Received: by mail-pf1-x442.google.com with SMTP id t16so16911128pfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 00:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rKKwPKQ9nSH1uCbjpYY0QdQfAXfR9yy6okm4F8X7Kfk=;
 b=PP0eSpGL9fJvYulXJ4voZq4Jh7vxlXxo8EL8ugM+R/prryBtWxNwVsTCyjZLqnSAgQ
 /yyZ7O8UA5ScPZgjwDejQ/Yi0WSW6DkAl9fJLgeDXEBOCV0skgYrmsI0WmduD2xClwVw
 krvoRSVZXy975cfdfS7S7STa/dD6nk4tUg0QSqA0ejwJ+mSVTARL+BwLWadmie6HaUKR
 I7kBAxl70FYkvuwxVHT69BbMGtRgFiAFoVB2uNnGZkcA7yB5Li8kobWOj2HD9Plb5uT0
 TKHUCDqEvI1WNiBAwiGTrO5mMhKs7bYFdb/f0Vjq3ytn16P6AVk4+Ox7fruON+gvujrZ
 h8nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rKKwPKQ9nSH1uCbjpYY0QdQfAXfR9yy6okm4F8X7Kfk=;
 b=Lb1PD1KQ8w9UzfWqI7tYN5eMi6RaNnLzUQo+hgpgY8dF+HH2TzaFoVzgXOUO2jIcUV
 b+6v6xj+wGYSYwtIMtNBuzeXttsXULl+iTrFW1NE5LiN6asXt6m/5k76zK78CLDcQwB+
 BqG+7MFsvm3cEg+2ldDS8Rn6paZykMAqCzyXkYLQ0CT4SwUZ7OTswlnDg6E8p5xYz7H+
 NPvsln/bHMlFIikr7gNBj+zp3nfXbYNDOuKFhQv8OuK3HkyxgnUjErNG6WLi7epKH8eb
 TRa7fJ+ZvzYNIFXfE95fQHwWmTSZm6CP95pEwebkouFOuTwufo+eN34zQz2hwKWLl//q
 aGLw==
X-Gm-Message-State: APjAAAWRKPxnsM7LVcTTHwjsKIMXFhmMKzyLCOct5Sqt1JyS9E7Ep2YI
 r031D1GxF9jFtXjD9CQRLLw=
X-Google-Smtp-Source: APXvYqxR6M9vTipkk84zlF3VH62Hs3fFypm9ayC0zj9LFqagpkrYFOqMSV+EYgBVLAjN5A6aykTdBQ==
X-Received: by 2002:a63:5d45:: with SMTP id o5mr70953105pgm.40.1563779666597; 
 Mon, 22 Jul 2019 00:14:26 -0700 (PDT)
Received: from ubt.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id 195sm61983642pfu.75.2019.07.22.00.14.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 00:14:25 -0700 (PDT)
From: Chunyan Zhang <zhang.lyra@gmail.com>
To: Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: check stmfd instruction using right shift
Date: Mon, 22 Jul 2019 15:14:19 +0800
Message-Id: <20190722071419.22535-1-zhang.lyra@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190722071122.22434-1-zhang.lyra@gmail.com>
References: <20190722071122.22434-1-zhang.lyra@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_001427_089467_FDE1F589 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zhang.lyra[at]gmail.com)
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
Cc: Chunyan Zhang <zhang.lyra@gmail.com>,
 Lvqiang Huang <lvqiang.huang@unisoc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lvqiang Huang <Lvqiang.Huang@unisoc.com>

In the commit ef41b5c92498 ("ARM: make kernel oops easier to read"),
-               .word   0xe92d0000 >> 10        @ stmfd sp!, {}
+               .word   0xe92d0000 >> 11        @ stmfd sp!, {}
then the shift need to change to 11.

Fixes: ef41b5c92498 ("ARM: make kernel oops easier to read")
Signed-off-by: Lvqiang Huang <Lvqiang.Huang@unisoc.com>
Signed-off-by: Chunyan Zhang <zhang.lyra@gmail.com>
---
 arch/arm/lib/backtrace.S |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/lib/backtrace.S b/arch/arm/lib/backtrace.S
index 7d7952e..926851b 100644
--- a/arch/arm/lib/backtrace.S
+++ b/arch/arm/lib/backtrace.S
@@ -70,7 +70,7 @@ for_each_frame:	tst	frame, mask		@ Check for address exceptions
 
 1003:		ldr	r2, [sv_pc, #-4]	@ if stmfd sp!, {args} exists,
 		ldr	r3, .Ldsi+4		@ adjust saved 'pc' back one
-		teq	r3, r2, lsr #10		@ instruction
+		teq	r3, r2, lsr #11		@ instruction
 		subne	r0, sv_pc, #4		@ allow for mov
 		subeq	r0, sv_pc, #8		@ allow for mov + stmia
 
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
