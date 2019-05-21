Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBDE245B4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 03:44:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VX0iJ1ThBqiSqsSo0ofrt81pX52566Dn7PqNNy0GHL4=; b=TDWdaKnh9zvNi+
	/bGbYXCf1mwiMezHcyuiY5awhhIYhta1pN7JIEgL8YxBBPepmMHKMkRT6D1unYJQfM1fn8xNkp/x8
	gzyap6syXtLgEbKfFSsefjfaCPCb64alcTPkitybhbZZU/VjM4BMHEMWaL2ZhZ6cOCALOXgtpFEoj
	MXpL7UHEmYsj0wTWxEVMZeVzXyTuQYNYFcOVuiFLF3dX5g9708p2tuMlo81Nla8GIGHAoTghDKjv3
	jffWCRRSrloD4OjX+KYziDVxoBNfQYl4xCsr+QquMJNHwVZUb0gBbkqOMPwo7QwMJgr/Q5TK+vm8M
	ZAdc/Iz0XiIS+ywBAYbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hStpd-0000JF-3H; Tue, 21 May 2019 01:44:45 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hStpU-0000Ir-T6
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 01:44:38 +0000
Received: by mail-lj1-x244.google.com with SMTP id h19so14308851ljj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 18:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Hwl+cMX3S6EFVqXoZuj/KSpYvFwXQ/SF5Xnnd8/i/7A=;
 b=iksashuqKL/imapQSKmzgLfYWMee1HnGnglqE5PsJ0NOmw596tvoOxYHyD3djl+q19
 QviZ98r6P4kywTW0+ubmGwBMgRpeamhovOiROhx9y98HOBRkHB/+flFORCUyy1Izjbe7
 oywLC2XDqNKRxHpp0YtWYiXRDt3NosSYPfRw6YK+Zd3i2LM/18qEimBhx70u+D530OQe
 zT3dTvZrNxeMaqzqhJN2BqBjpzaSuKv4WjIbyb3XPWxBghFPh4hdyFKyVdXVnAGcgqXB
 6bXDAuUW6C/0nDqToEMQxDQwtvvFRmjvx6dxWS7+eMAaspAWPTTAUWwKhxoV484e9Lzb
 TRzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Hwl+cMX3S6EFVqXoZuj/KSpYvFwXQ/SF5Xnnd8/i/7A=;
 b=HyMQfl+UfqGYWctjJzrMFJV8K0iM2O2lgh2W2h2q4fnzSsXLHFGcxec8CzpFrwCxag
 ZelZwZWsz1rH/2ty0qcOkI+4+U9ENENFfExk8t53tg/JlJ9HDpIWdJjfHETL8xBgGQC2
 lhp7oSOzBchVbTtuWTBSN1nKFlt6dB90lp0R6YeNOROlk4iwcxpN8XRQGZGROyeXv8E8
 6YgAxHeMCC3XpfXDzRLH/fAQiTwx4Kvg1bJgGA2CIn55Jx2X9B4SVqdrdZ+iYdRWTTsR
 9a55N5tmmrMslaqRseYM/RxHbzOZLQqjcno6s1q8X6rWlE9fBkEZBut1I4ag01vslgk1
 FLCw==
X-Gm-Message-State: APjAAAWJ06SkGRoEBJuDVISwOytegzLI+pT54lvm4xad9okuIC8PwNpi
 8EZIXqtW0bhBrRfK9z3vY4ScWRdEy8E=
X-Google-Smtp-Source: APXvYqwG0NqFC0PpdOwTTBU8kd4oEgzTWIgQzuL18vWxmNIy+FT2aZDpd7Z+rsrmiDQEclz9S+ZBdA==
X-Received: by 2002:a2e:9581:: with SMTP id w1mr25026188ljh.88.1558403073670; 
 Mon, 20 May 2019 18:44:33 -0700 (PDT)
Received: from localhost.localdomain
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id z11sm4232194ljb.68.2019.05.20.18.44.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 18:44:32 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/9 RESEND 2] AFS patches resend 2
Date: Tue, 21 May 2019 03:42:17 +0200
Message-Id: <20190521014230.18463-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_184436_951977_65B881C2 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

This is the second resend of the AFS and AFSv2 partition
parsing patches. I already resent them once for v5.0 but
they weren't applied.

If things are not getting anywhere I suppose I will
submit them to ARM SoC or something for v5.2, I suppose
it is a bit of stressful for MTD right now.

Tell me how I can help out (not co-maintenance sorry,
I have too much on my plate already).

Yours,
Linus Walleij


Linus Walleij (9):
  mtd: afs: Move AFS partition parser to parsers subdir
  mtd: partitions: Add AFS partitions DT bindings
  mtd: partitions: Add OF support to AFS partitions
  mtd: afs: simplify partition parsing
  mtd: afs: simplify partition detection
  mtd: factor out v1 partition parsing
  mtd: afs: factor footer parsing into the v1 part parsing
  mtd: afs: factor the IIS read into partition parser
  mtd: afs: add v2 partition parsing

 .../mtd/partitions/arm,arm-firmware-suite.txt |  17 +
 drivers/mtd/Kconfig                           |  16 -
 drivers/mtd/Makefile                          |   1 -
 drivers/mtd/afs.c                             | 266 ------------
 drivers/mtd/parsers/Kconfig                   |  16 +
 drivers/mtd/parsers/Makefile                  |   1 +
 drivers/mtd/parsers/afs.c                     | 410 ++++++++++++++++++
 7 files changed, 444 insertions(+), 283 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/arm,arm-firmware-suite.txt
 delete mode 100644 drivers/mtd/afs.c
 create mode 100644 drivers/mtd/parsers/afs.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
