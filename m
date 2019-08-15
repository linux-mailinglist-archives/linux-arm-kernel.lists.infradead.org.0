Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CC18E4A3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 07:57:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zQR+ggzooRocMOn3ol+R791z3HX3yp2aKe1TC4ElPpk=; b=n7hEoi2KtYj9BT
	vwZb8/9F6UCRWMKosSaOHCJI+Q6+iZrFlcQotJVrihcan8T+/qNDPpJellj2ttpUv3L6UHDWC/Yr1
	vgEWzq0EWexLTyUscGZLlH1P459iE8yPUYISLemk4eS5Uhx3LjyNmFcRjCyk5Tpoelmo2ZF5lP0ii
	Xah9ffZAsvuc/52vz2JiQTKtIZORAP9wJJfNRrYpTInHdOO4Zi/VFnYCtuEcDcfttDHJe4jBjkm8e
	nmIPyZ6N4oZikepDRBmtmLZLLPgO9qmhWM1ZnMi1d7U38TNADBmhaJgH2l4jsEb2+YNDRBXRJdkfL
	Qzs5uqyKUigWwsXxiHSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy8kw-0003Df-AN; Thu, 15 Aug 2019 05:57:02 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy8kj-0003DK-JF
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 05:56:51 +0000
Received: by mail-pf1-x442.google.com with SMTP id q139so816325pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 22:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LMv7g9wXHCdpQzNDiezF7Zu3048t1TvKSMzmUt6Iaec=;
 b=Nbj7aAtSyq19UJsmQuc+Ex4Pi5NOVB8mnqUFmpwEm8eZ9pi5djFr4/bEE0w3WfaL9K
 hQ9uhKoXOKr60c2HjGyZ0ktcoCzT2DygcUJDSTnRqWY94Ksa+BCCDO1Y920mHFJG1I6z
 J4nY9X4tI1NiH7Qv8Ss6hsDPuOePW26QTHz3AImMkYQVWda0x25iA+i8X5mzbjQ16SxD
 fhAKhqB7/xzpY2Zscpmb/kHU4bp59TXVFfNwFpjGAUqwHofeYomV5KLaxr3BFn3K1FS2
 aRFUmpZ6cK10pm+Ee3ddQLK5Uv7IPd2AYTWEkYzwIZpW2HRYtEgS70wk6XedQCWDBbB5
 uIrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LMv7g9wXHCdpQzNDiezF7Zu3048t1TvKSMzmUt6Iaec=;
 b=HefvcH9byIijPvULMCjf2EXgIJlM0D+5Kc5WGBtDx5IVAsLcCVwdsanuzZfkPOkC2u
 IVhpumDF/in/7Ty9pKx/EIbaQpkRz/4Hhym2b/C8VnGXY6dTU872gRMgJaNpi0ZPaH9C
 hy/okWRR/kUZzZH/c6RcPiUZGkseSW0o5fpFn+p37zdKzwsRMpa+MvfwJLW49yzblJZF
 hwrY1k5DhvnZJQpB4nSxNS4ODLNl9/7tOLSmvRbJuPYy1n5++zCdeQ/A8Tvp2qNBFLmh
 kxu2YKyiznFotRIOR0F80HqzFeR1gE4E/S8bex4ve4r01XSTsHWZjF5Oo0Rn80CqauGm
 lecQ==
X-Gm-Message-State: APjAAAU2VTkzo92VfG2bguDa+6tC2azy9pCijkV5Obi8F4BmO5Mjkv+S
 czDBK8RucQZd5dwNKBvFidI=
X-Google-Smtp-Source: APXvYqzsBrzf5Xl1V4jlpLHO/SSF96Xl57QdQQXXo5hn6qm18ElxdHDbhvSpVTol70QI702+E6r+FA==
X-Received: by 2002:a17:90a:9b08:: with SMTP id
 f8mr771793pjp.103.1565848607504; 
 Wed, 14 Aug 2019 22:56:47 -0700 (PDT)
Received: from localhost.localdomain ([110.225.3.176])
 by smtp.gmail.com with ESMTPSA id 185sm2225057pff.54.2019.08.14.22.56.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 14 Aug 2019 22:56:47 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] i2c: iproc: Make bcm_iproc_i2c_quirks constant
Date: Thu, 15 Aug 2019 11:25:50 +0530
Message-Id: <20190815055550.1588-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_225649_638396_6CEAE225 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Static structure bcm_iproc_i2c_quirks, of type i2c_adapter_quirks, is
only used when being assigned to constant field quirks of a variable
having type i2c_adapter. Hence make bcm_iproc_i2c_quirks constant as
well to prevent it from unintended modification.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/i2c/busses/i2c-bcm-iproc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-bcm-iproc.c b/drivers/i2c/busses/i2c-bcm-iproc.c
index d7fd76baec92..e9f0e5b6eadc 100644
--- a/drivers/i2c/busses/i2c-bcm-iproc.c
+++ b/drivers/i2c/busses/i2c-bcm-iproc.c
@@ -805,7 +805,7 @@ static struct i2c_algorithm bcm_iproc_algo = {
 	.unreg_slave = bcm_iproc_i2c_unreg_slave,
 };
 
-static struct i2c_adapter_quirks bcm_iproc_i2c_quirks = {
+static const struct i2c_adapter_quirks bcm_iproc_i2c_quirks = {
 	.max_read_len = M_RX_MAX_READ_LEN,
 };
 
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
