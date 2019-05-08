Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B54175C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 12:15:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xHrDEYIqUAd1PZO3yXaKnilReRxEW6Kb3OLcQMGn4Zs=; b=E2R
	2sz8OtivI3IbhDZFYkKA2cMSpzsFC6K28hssmGhW6kK0/UnfZnHV9otQkhOTvmXAfC8FMGPjIws0e
	z2KnrkPDZa6QAfMr7OBNF8Hj9M/QM2rvN3CjeY4E7rhlsRA6Cfg3G2AwiI1DEfutrtpmEmdmlvCPw
	h8/UgO307q++2pEIzjZ5wE89ehEToHhOP4DpMOvkMqRNX6KWmQb8W8YJUf9gimn1owgbAqtrUUNwz
	pXeNIy1icEKooOx3mShnxfBMaKLTWXFZxpnB0N0Up4o4NqAYa2lnEWVO+rw+RoOK8IPvh8oBz2yTr
	866y+3tg2tu767hAwaGcoLi6+OrMzHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOJbR-00012p-81; Wed, 08 May 2019 10:15:09 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOJbE-00011t-MT
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 10:14:58 +0000
Received: by mail-pl1-x643.google.com with SMTP id w24so9710620plp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 03:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=p0PVRgJN8u0SVmWtfEOhULrDoirbepiDPqsJzyAsDR0=;
 b=GjDGBM1MhOzB7g7oZKvrWlHtLNSULP4C2WSeH4ePuxqbOA7kRw/H/w1qQ75qEp5erT
 VahBMI6gdHHpR9d1ynk7u8Y8xrdg+csGkg8v/4taHTiNKY5DPQtP6396fkBjp94EgfQ3
 vPwCjljv445MS1pJQsLA/s17OKSYszZUHdN0lWlqcvvMiS07c0hD0XprAuRpflQFsm2G
 4ytHLaATPWGdGBC/ZH81tOxHaiOciOR5Br4udxrcoW/5Buqp7koKmODpua/D7Xo/uub+
 WdCxDnjdvdpns17mGjxNv++8oyNtHL6YN0Az+h1+Eb0H9qqE3TU7uldrKbLdaLr+Kiur
 U8uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=p0PVRgJN8u0SVmWtfEOhULrDoirbepiDPqsJzyAsDR0=;
 b=ALd8CI7kf4DcuoFdNmFeLZss7njld+qTiO+Cy0m7/koVsF7kqJ4XZj/38ycUEZAF9h
 rSeb7r1cPAymPwhcpfQzaN2y61sGR3FRnX1YuOcF5tO8lTlQqdNETjovmEFRr39RTdIo
 Ndf+X0sgk3uw7gZ7qIa5ANYE6yePV46R+HR2FsDom+c/KI/1eSXz2fYj1ql10kPStbtI
 JeaXz8lm8f/TtSrXuguLxNCzi19HCr0Slt1zFW0Ah0P/goLTmvjRNSfdAutxlf79MiXP
 lxGSJAv9ASDu4ZCWxnBO4O7cWeC/Wc1vte/eL4riuxEcVEnYOBqjZNBleEX4GHUv457p
 udcA==
X-Gm-Message-State: APjAAAVZIvt7pfeaw8IPZrdfFl6KBdIw7HSYIYDcjcbUsmdYHeXzITB2
 QkCWS+KXKrRI0e/KnmWtngL0Ng==
X-Google-Smtp-Source: APXvYqz4nnEbNBomHXi+aIf4iA5eKUG8g1Jt89p6jZkv5pkE5sTsVzYb7gyXpbI9Oyl7jU0qQcBsmA==
X-Received: by 2002:a17:902:e28a:: with SMTP id
 cf10mr5589375plb.77.1557310495213; 
 Wed, 08 May 2019 03:14:55 -0700 (PDT)
Received: from localhost.localdomain ([117.252.67.140])
 by smtp.gmail.com with ESMTPSA id f15sm19014077pgf.18.2019.05.08.03.14.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 08 May 2019 03:14:54 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: jens.wiklander@linaro.org
Subject: [PATCH] MAINTAINERS: Add mailing list for the TEE subsystem
Date: Wed,  8 May 2019 15:44:09 +0530
Message-Id: <1557310449-30450-1-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_031456_736950_8E77A378 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: tee-dev@lists.linaro.org, Sumit Garg <sumit.garg@linaro.org>,
 daniel.thompson@linaro.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a mailing list for patch reviews and discussions related to TEE
subsystem.

Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
---
 MAINTAINERS | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 920a0a1..c05dff7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11556,11 +11556,13 @@ F:	drivers/scsi/st.h
 
 OP-TEE DRIVER
 M:	Jens Wiklander <jens.wiklander@linaro.org>
+L:	tee-dev@lists.linaro.org
 S:	Maintained
 F:	drivers/tee/optee/
 
 OP-TEE RANDOM NUMBER GENERATOR (RNG) DRIVER
 M:	Sumit Garg <sumit.garg@linaro.org>
+L:	tee-dev@lists.linaro.org
 S:	Maintained
 F:	drivers/char/hw_random/optee-rng.c
 
@@ -15312,6 +15314,7 @@ F:	include/media/i2c/tw9910.h
 
 TEE SUBSYSTEM
 M:	Jens Wiklander <jens.wiklander@linaro.org>
+L:	tee-dev@lists.linaro.org
 S:	Maintained
 F:	include/linux/tee_drv.h
 F:	include/uapi/linux/tee.h
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
